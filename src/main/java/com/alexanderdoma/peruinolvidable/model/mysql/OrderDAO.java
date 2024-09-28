package com.alexanderdoma.peruinolvidable.model.mysql;

import com.alexanderdoma.peruinolvidable.config.Connector;
import com.alexanderdoma.peruinolvidable.model.DAOException;
import com.alexanderdoma.peruinolvidable.model.IOrder;
import com.alexanderdoma.peruinolvidable.model.entity.Order;
import com.alexanderdoma.peruinolvidable.model.entity.User;
import com.alexanderdoma.peruinolvidable.model.entity.Orderline;
import com.alexanderdoma.peruinolvidable.utilies.MessagesManager;
import com.alexanderdoma.peruinolvidable.utilies.SQLSentencesManager;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO implements IOrder{
    
    private final String GETALL = SQLSentencesManager.getProperty("ORDER.GETALL");
    private final String INSERT = SQLSentencesManager.getProperty("ORDER.INSERT");
    private final String UPDATE = SQLSentencesManager.getProperty("ORDER.UPDATE");
    private final String DELETE = SQLSentencesManager.getProperty("ORDER.DELETE");
    private final String GETBYID = SQLSentencesManager.getProperty("ORDER.GETBYID");
    
    @Override
    public void add(Order objOrder, List<Orderline> orderlineList) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        try(Connection objConnection = Connector.getInstance().getConnection()) {
            objPreparedStatement = objConnection.prepareStatement(INSERT, PreparedStatement.RETURN_GENERATED_KEYS);
            int i=1;
            objPreparedStatement.setDate(i++, objOrder.getDate());
            objPreparedStatement.setDouble(i++, objOrder.getSubtotal());
            objPreparedStatement.setDouble(i++, objOrder.getTotal());
            objPreparedStatement.setString(i++, objOrder.getStatus());
            objPreparedStatement.setString(i++, objOrder.getPayment_id());
            objPreparedStatement.setInt(i++, objOrder.getUser().getId());
            objPreparedStatement.executeUpdate();
            objResultSet = objPreparedStatement.getGeneratedKeys();
            if(objResultSet.next()){
                objOrder.setId(objResultSet.getInt(1));
                OrderlineDAO objOrderlineDAO = new OrderlineDAO();
                for(Orderline objOrderline : orderlineList){
                    objOrderline.setOrder(objOrder);
                    objOrderlineDAO.add(objOrderline);
                }
            }
            objConnection.close();
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.INSERT") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.INSERT") + ex.getMessage());
            }
        }
    }

    @Override
    public Order update(Order o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        try(Connection objConnection = Connector.getInstance().getConnection()) {
            objPreparedStatement = objConnection.prepareStatement(UPDATE);
            int i=1;
            objPreparedStatement.setDate(i++, o.getDate());
            objPreparedStatement.setDouble(i++, o.getSubtotal());
            objPreparedStatement.setDouble(i++, o.getTotal());
            objPreparedStatement.setString(i++, o.getStatus());
            objPreparedStatement.setString(i++, o.getPayment_id());
            objPreparedStatement.setInt(i++, o.getUser().getId());
            objPreparedStatement.setInt(i++, o.getId());
            objPreparedStatement.executeUpdate();
            objConnection.close();
            return o;
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.UPDATE") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.UPDATE") + ex.getMessage());
            }
        }
    }

    @Override
    public void delete(int id) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        try(Connection objConnection = Connector.getInstance().getConnection()) {
            objPreparedStatement = objConnection.prepareCall(DELETE);
            objPreparedStatement.setInt(1, id);
            new OrderlineDAO().delete(id);
            objPreparedStatement.executeUpdate();
            objConnection.close();
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.DELETE") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.DELETE") + ex.getMessage());
            }
        }
    }

    @Override
    public List<Order> getAll() throws DAOException {
        CallableStatement objCallableStatement = null;
        ResultSet objResultSet = null;
        List<Order> objOrdersList = new ArrayList<>();
        try(Connection objConnection = Connector.getInstance().getConnection()) {
            objCallableStatement = objConnection.prepareCall(GETALL);
            objCallableStatement.execute();
            objResultSet = objCallableStatement.getResultSet();
            while(objResultSet.next()) {
                objOrdersList.add(getObject(objResultSet));
            }
            objConnection.close();
            return objOrdersList;
        } catch (SQLException ex) {
            throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.GETALL") + ex.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objCallableStatement != null) objCallableStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.GETALL") + ex.getMessage());
            }
        }
    }

    @Override
    public Order getById(int id) throws DAOException {
        CallableStatement objCallableStatement = null;
        ResultSet objResultSet = null;
        Order objOrder = null;
        try(Connection objConnection = Connector.getInstance().getConnection()) {
            objCallableStatement = objConnection.prepareCall(GETBYID);
            objCallableStatement.setInt(1, id);
            objCallableStatement.execute();
            objResultSet = objCallableStatement.getResultSet();
            while(objResultSet.next()){
                objOrder = getObject(objResultSet);           
            }
            objConnection.close();
            return objOrder;
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.GETBYID") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objCallableStatement != null) objCallableStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE.ERROR.GETBYID") + ex.getMessage());
            }
        }
    }

    @Override
    public Order getObject(ResultSet rs) throws DAOException {
        try {
            User objUser = new UserDAO().getById(rs.getInt("user_id"));
            return new Order(
                    rs.getInt("order_id"),
                    rs.getDate("order_date"),
                    rs.getDouble("order_subtotal"),
                    rs.getDouble("order_total"),
                    rs.getString("order_status"),
                    rs.getString("order_payment_id"),
                    rs.getTimestamp("order_created_at"),
                    objUser
            );
        } catch (SQLException ex) {
            throw new DAOException(ex.getMessage());
        }
    }

    @Override
    public void add(Order o) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
