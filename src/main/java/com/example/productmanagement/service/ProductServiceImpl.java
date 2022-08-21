package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{

    private static Map<Integer,Product> products;

    static {
        products = new HashMap();
        products.put(1,new Product(1,"Siêu táo",100,"Táo siêu to khủm lồ``","Vườn táo 33"));
        products.put(2,new Product(2,"Siêu hành",100,"Hành siêu hee``","Vựa hành 99"));
        products.put(3,new Product(3,"Điếu cày",100,"just 2 gõ~","Tiên lãng"));
        products.put(4,new Product(4,"Siêu tỏi",100,"Tỏi siêu to ","Vườn tỏi Việt Cườnggg"));
        products.put(5,new Product(5,"Siêu gừng",100,"Gừng siêu cay","Bãi gừng 4"));
        products.put(6,new Product(6,"Siêu nấm",100,"Nấm siêu to khủm lồ``","Rừng nấm 13"));
        products.put(7,new Product(7,"Siêu ổi",100,"Ổi siêu ngọt","Vườn ổi 4"));
    }

    @Override
    public List<Product> fillAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        this.products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    public Product findByName(String name) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getName().equals(name)){
                return products.get(i);
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
