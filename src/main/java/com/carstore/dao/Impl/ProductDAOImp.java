package com.carstore.dao.Impl;

import com.carstore.dao.ProductDAO;
import com.carstore.dao.dateBase;
import com.carstore.entity.Product;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImp implements ProductDAO {

    dateBase db=new dateBase();


    @Override
    public Product findById(Long id) throws Exception {
        Product product=null;
        try {
            String sql = "select * from  carstore_product  where cp_id=?";

            ResultSet rs=db.executeQuery(sql,id);

            while(rs.next())
            {
                product=new Product();
                product.setId(rs.getLong("cp_id"));
                product.setName(rs.getString("cp_name"));
                product.setDescription(rs.getString("cp_description"));
                product.setPrice(rs.getFloat("cp_price"));
                product.setStock(rs.getLong("cp_stock"));
                product.setCategoryId(rs.getLong("cpc_id"));
                product.setChildId(rs.getLong("cpc_child_id"));
                product.setFileName(rs.getString("cp_file_name"));
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return product;
    }

    @Override
    public List<Product> getProductsByCategoryLevelOne(Long id) throws Exception {

        List<Product> list=new ArrayList<>();

        try {
            String sql = "select * from  carstore_product  where cpc_id=?";

            ResultSet rs=db.executeQuery(sql,id);

            while(rs.next())
            {
                Product product=new Product();
                product.setId(rs.getLong("cp_id"));
                product.setName(rs.getString("cp_name"));
                product.setDescription(rs.getString("cp_description"));
                product.setPrice(rs.getFloat("cp_price"));
                product.setStock(rs.getLong("cp_stock"));
                product.setCategoryId(rs.getLong("cpc_id"));
                product.setChildId(rs.getLong("cpc_child_id"));
                product.setFileName(rs.getString("cp_file_name"));
                list.add(product);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return list;
    }

    @Override
    public List<Product> getProductsByCategoryLevelTwo(Long id) throws Exception {

        List<Product> list=new ArrayList<>();

        try {
            String sql = "select * from  carstore_product  where cpc_child_id=?";

            ResultSet rs=db.executeQuery(sql,id);
            
            while(rs.next())
            {
                Product product=new Product();
                product.setId(rs.getLong("cp_id"));
                product.setName(rs.getString("cp_name"));
                product.setDescription(rs.getString("cp_description"));
                product.setPrice(rs.getFloat("cp_price"));
                product.setStock(rs.getLong("cp_stock"));
                product.setCategoryId(rs.getLong("cpc_id"));
                product.setChildId(rs.getLong("cpc_child_id"));
                product.setFileName(rs.getString("cp_file_name"));
                list.add(product);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return list;
    }

    @Override
    public List<Product> getProducts() throws Exception {
        List<Product> list=new ArrayList<>();

        try {
            String sql = "select * from  carstore_product order by  cp_price limit 0,8";

            ResultSet rs=db.executeQuery(sql);

            while(rs.next())
            {
                Product product=new Product();
                product.setId(rs.getLong("cp_id"));
                product.setName(rs.getString("cp_name"));
                product.setDescription(rs.getString("cp_description"));
                product.setPrice(rs.getFloat("cp_price"));
                product.setStock(rs.getLong("cp_stock"));
                product.setCategoryId(rs.getLong("cpc_id"));
                product.setChildId(rs.getLong("cpc_child_id"));
                product.setFileName(rs.getString("cp_file_name"));
                list.add(product);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return list;
    }

    @Override
    public List<Product> getProducts2() throws Exception {
        List<Product> list=new ArrayList<>();

        try {
            String sql = "select * from  carstore_product order by  cp_price limit 0,8";

            ResultSet rs=db.executeQuery(sql);

            while(rs.next())
            {
                Product product=new Product();
                product.setId(rs.getLong("cp_id"));
                product.setName(rs.getString("cp_name"));
                product.setDescription(rs.getString("cp_description"));
                product.setPrice(rs.getFloat("cp_price"));
                product.setStock(rs.getLong("cp_stock"));
                product.setCategoryId(rs.getLong("cpc_id"));
                product.setChildId(rs.getLong("cpc_child_id"));
                product.setFileName(rs.getString("cp_file_name"));
                list.add(product);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return list;
    }

    @Override
    public int modifyCategoryOfProductBySql(String sql) throws Exception {
        int r=-1;
        try {
            r=db.executeUpdate(sql,null);
        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;

    }

    @Override
    public int delete(Long id) throws Exception {
        int r=-1;
        try {
            String sql = " DELETE FROM carstore_product where cp_id=?";

            r=db.executeUpdate(sql,id);

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public int save(Product product) throws Exception {
        int r=-1;
        try {
            String sql = " INSERT INTO carstore_product(cp_name,cp_description,cp_price,"
                    + "cp_stock,cpc_id,cpc_child_id,cp_file_name) values(?,?,?,?,?,?,?)";

            Object [] param={product.getName(),product.getDescription(),product.getPrice(),product.getStock(),product.getCategoryId(),product.getChildId(),product.getFileName()};

            r=db.executeUpdate(sql,param);

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public int update(Product product) throws Exception {
        int r=-1;
        try {
            String sql = " UPDATE carstore_product SET cp_name=?,cp_description=?,cp_price=?,"
                    + "cp_stock=?,cpc_id=?,cpc_child_id=?,cp_file_name=? where cp_id=?";

            Object [] param={product.getName(),product.getDescription(),product.getPrice(),product.getStock(),product.getCategoryId(),product.getChildId(),product.getFileName(),product.getId()};

            r=db.executeUpdate(sql,param);

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public long getProductRowCountByCategoryLevelTwo(Long categoryId) throws Exception {
        return 0;
    }

    @Override
    public int updateStock(Long id, long quantity) throws Exception {

        return 0;
    }

    @Override
    public Long getNewProductId() throws Exception {
        return null;
    }
}
