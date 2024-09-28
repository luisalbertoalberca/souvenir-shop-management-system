package com.alexanderdoma.peruinolvidable.model;

import com.alexanderdoma.peruinolvidable.model.entity.Order;
import com.alexanderdoma.peruinolvidable.model.entity.Orderline;
import java.util.List;

public interface IOrder extends IGeneric<Order, Integer> {
    void add(Order objOrder, List<Orderline> orderlineList) throws DAOException;
}
