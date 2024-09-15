package com.alexanderdoma.peruinolvidable.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface IGeneric <T, K> {
    boolean add(T o) throws DAOException;
    int update(T o) throws DAOException;
    boolean delete(T o) throws DAOException;
    List<T> getAll() throws DAOException;
    T getById(T o) throws DAOException;
    T getObject(ResultSet rs) throws SQLException;
}
