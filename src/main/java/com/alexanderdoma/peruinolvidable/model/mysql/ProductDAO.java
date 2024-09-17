package com.alexanderdoma.peruinolvidable.model.mysql;

import com.alexanderdoma.peruinolvidable.config.Connector;
import com.alexanderdoma.peruinolvidable.model.DAOException;
import com.alexanderdoma.peruinolvidable.model.IProduct;
import com.alexanderdoma.peruinolvidable.model.entity.Product;
import com.alexanderdoma.peruinolvidable.utilies.MessagesManager;
import com.alexanderdoma.peruinolvidable.utilies.SQLSentencesManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProduct {

    private final String GETALL = SQLSentencesManager.getProperty("PRODUCT_GETALL");
    private final String INSERT = SQLSentencesManager.getProperty("PRODUCT_INSERT");
    private final String UPDATE = SQLSentencesManager.getProperty("PRODUCT_UPDATE");
    private final String DELETE = SQLSentencesManager.getProperty("PRODUCT_DELETE");
    private final String GETBYID = SQLSentencesManager.getProperty("PRODUCT_GETBYID");
    private final String FILTER = SQLSentencesManager.getProperty("PRODUCT_FILTER");
    Connector objConnector = null;
    
    @Override
    public boolean add(Product o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        boolean isSuccess = false;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareStatement(INSERT);
            int i=1;
            objPreparedStatement.setString(i++, o.getName());
            objPreparedStatement.setString(i++, o.getDescription());
            objPreparedStatement.setDouble(i++, o.getPrice());
            objPreparedStatement.setString(i++, o.getBrand());
            objPreparedStatement.setInt(i++, o.getStock());
            objPreparedStatement.setBoolean(i++, o.getIsActive());
            objPreparedStatement.execute();
            isSuccess = true;
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_INSERT") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_INSERT") + ex.getMessage());
            }
        }
        return isSuccess;
    }

    @Override
    public int update(Product o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        int isSuccess = 0;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareStatement(UPDATE);
            int i=1;
            objPreparedStatement.setString(i++, o.getName());
            objPreparedStatement.setString(i++, o.getDescription());
            objPreparedStatement.setDouble(i++, o.getPrice());
            objPreparedStatement.setString(i++, o.getBrand());
            objPreparedStatement.setInt(i++, o.getStock());
            objPreparedStatement.setBoolean(i++, o.getIsActive());
            isSuccess = objPreparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_UPDATE") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_UPDATE") + ex.getMessage());
            }
        }
        return isSuccess;
    }

    @Override
    public boolean delete(Product o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        boolean isSuccess = false;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareCall(DELETE);
            objPreparedStatement.setInt(1, o.getId());
            isSuccess = objPreparedStatement.execute();
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_DELETE") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_DELETE") + ex.getMessage());
            }
        }
        return isSuccess;
    }

    @Override
    public List<Product> getAll() throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        List<Product> objProductsList = new ArrayList<>();
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareStatement(GETALL);
            objResultSet = objPreparedStatement.executeQuery();
            while(objResultSet.next()) {
                objProductsList.add(getObject(objResultSet));
            }
            objConnection.close();
        } catch (SQLException ex) {
            throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_GETALL") + ex.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_GETALL") + ex.getMessage());
            }
        }
        return objProductsList;
    }

    @Override
    public Product getById(Product o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        Product objProduct = null;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareCall(GETBYID);
            objPreparedStatement.setInt(1, o.getId());
            objResultSet = objPreparedStatement.executeQuery();
            objProduct = getObject(objResultSet);
        } catch (SQLException e) {
            throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_GETBYID") + e.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_GETBYID") + ex.getMessage());
            }
        }
        return objProduct;
    }

    @Override
    public Product getObject(ResultSet rs) throws SQLException {
        return new Product(
                rs.getInt("id"),
                rs.getString("name"),
                rs.getString("description"),
                rs.getDouble("price"),
                rs.getString("brand"),
                rs.getInt("stock"),
                rs.getBoolean("isActive"),
                rs.getTimestamp("created_at")
        );
    }
}
