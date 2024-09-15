package com.alexanderdoma.peruinolvidable.model.mysql;

import com.alexanderdoma.peruinolvidable.model.DAOException;
import com.alexanderdoma.peruinolvidable.model.IProduct;
import com.alexanderdoma.peruinolvidable.model.entity.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProductDAO implements IProduct {

    @Override
    public boolean add(Product o) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public int update(Product o) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean delete(Product o) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<Product> getAll() throws DAOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Product getById(Product o) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Product getObject(ResultSet rs) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
