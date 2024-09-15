package com.alexanderdoma.peruinolvidable.model.mysql;

import com.alexanderdoma.peruinolvidable.model.DAOException;
import com.alexanderdoma.peruinolvidable.config.Connector;
import com.alexanderdoma.peruinolvidable.model.IUser;
import com.alexanderdoma.peruinolvidable.model.entity.User;
import com.alexanderdoma.peruinolvidable.utilies.SQLSentencesManager;
import com.alexanderdoma.peruinolvidable.utilies.MessagesManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUser{

    private final String GETALL = SQLSentencesManager.getProperty("USER_GETALL");
    private final String INSERT = SQLSentencesManager.getProperty("USER_INSERT");
    private final String UPDATE = SQLSentencesManager.getProperty("USER_UPDATE");
    private final String DELETE = SQLSentencesManager.getProperty("USER_DELETE");
    private final String GETBYID = SQLSentencesManager.getProperty("USER_GETBYID");
    private final String VERIFY = SQLSentencesManager.getProperty("USER_VERIFY");
    
    Connector objConnector = null;

    @Override
    public List<User> getAll() throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        List<User> objUsersList = new ArrayList<>();
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareStatement(GETALL);
            objResultSet = objPreparedStatement.executeQuery();
            while(objResultSet.next()) {
                objUsersList.add(getObject(objResultSet));
            }
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
        return objUsersList;
    }

    @Override
    public boolean add(User o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        boolean isSuccess = false;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareStatement(INSERT);
            int i=1;
            objPreparedStatement.setString(i++, o.getName());
            objPreparedStatement.setString(i++, o.getLastname());
            objPreparedStatement.setString(i++, o.getUsername());
            objPreparedStatement.setString(i++, o.getPassword());
            objPreparedStatement.setString(i++, o.getEmail());
            objPreparedStatement.setString(i++, o.getDni());
            objPreparedStatement.setString(i++, o.getPhone());
            objPreparedStatement.setDate(i++, o.getBirthdate());
            objPreparedStatement.setString(i++, o.getGender());
            objPreparedStatement.setInt(i++, o.getPayment_method_id());
            objPreparedStatement.setInt(i++, o.getAddress_id());
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
    public int update(User o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        int isSuccess = 0;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareCall(UPDATE);
            int i=0;
            objPreparedStatement.setString(0, o.getName());
            objPreparedStatement.setString(i++, o.getLastname());
            objPreparedStatement.setString(i++, o.getUsername());
            objPreparedStatement.setString(i++, o.getPassword());
            objPreparedStatement.setString(i++, o.getEmail());
            objPreparedStatement.setString(i++, o.getDni());
            objPreparedStatement.setString(i++, o.getPhone());
            objPreparedStatement.setDate(i++, o.getBirthdate());
            objPreparedStatement.setString(i++, o.getGender());
            objPreparedStatement.setInt(i++, o.getPayment_method_id());
            objPreparedStatement.setInt(i++, o.getAddress_id());
            objPreparedStatement.setInt(i++, o.getId());
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
    public boolean delete(User o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        boolean isSuccess = false;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareCall(DELETE);
            objPreparedStatement.setInt(0, o.getId());
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
    public User getById(User o) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        User objUser = null;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareCall(GETBYID);
            objPreparedStatement.setInt(0, o.getId());
            objResultSet = objPreparedStatement.executeQuery();
            objUser = getObject(objResultSet);
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
        return objUser;
    }

    @Override
    public User getObject(ResultSet rs) throws SQLException {
        return new User(
                rs.getInt("id"),
                rs.getString("name"),
                rs.getString("lastname"),
                rs.getString("username"),
                rs.getString("password"),
                rs.getString("email"),
                rs.getString("dni"),
                rs.getString("phone"),
                rs.getDate("birthdate"),
                rs.getString("gender"),
                rs.getTimestamp("created_at"),
                rs.getInt("payment_method_id"),
                rs.getInt("address_id")
        );
    }

    @Override
    public User login(String username, String password) throws DAOException {
        PreparedStatement objPreparedStatement = null;
        ResultSet objResultSet = null;
        User objUser = null;
        try {
            objConnector = new Connector();
            Connection objConnection = objConnector.getConnection();
            objPreparedStatement = objConnection.prepareStatement(VERIFY);
            int i = 1;
            objPreparedStatement.setString(i++, username);
            objPreparedStatement.setString(i++, password);
            objResultSet = objPreparedStatement.executeQuery();
            if(!(objResultSet.next())) { return null; }
            objUser = getObject(objResultSet);
        } catch (SQLException ex) {
            throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_VERIFY") + " " + ex.getMessage());
        } finally {
            try {
                if(objResultSet != null) objResultSet.close();
                if(objPreparedStatement != null) objPreparedStatement.close();
            } catch (SQLException ex) {
                throw new DAOException(MessagesManager.getProperty("DATABASE_ERROR_VERIFY") + " " + ex.getMessage());
            }
        }
        return objUser;
    }
}
