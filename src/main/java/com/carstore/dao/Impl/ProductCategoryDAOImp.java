package com.carstore.dao.Impl;

import com.carstore.dao.ProductCategoryDAO;
import com.carstore.dao.dateBase;
import com.carstore.entity.ProductCategory;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductCategoryDAOImp implements ProductCategoryDAO {
    dateBase db=new dateBase();

    @Override
    public ProductCategory findById(long id) throws Exception {
        ProductCategory productCategory = null;
        try
        {
            String sql="select * from carstore_product_category where cpc_id=? ";

            ResultSet rs=db.executeQuery(sql,id);

            if(rs.next())
            {
                productCategory=new ProductCategory();
                productCategory.setId(rs.getLong("cpc_id"));
                productCategory.setName(rs.getString("cpc_name"));
                productCategory.setParentId(rs.getLong("cpc_parent_id"));
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return  productCategory;
    }

    @Override
    public List<ProductCategory> getProductCategories(Long parentId) throws Exception {
        List<ProductCategory> list=new ArrayList<>();

        try
        {
            String sql="select * from carstore_product_category where cpc_parent_id=? ";

            ResultSet rs=db.executeQuery(sql,parentId);

            if(rs.next())
            {
                ProductCategory productCategory = new ProductCategory();
                productCategory.setId(rs.getLong("cpc_id"));
                productCategory.setName(rs.getString("cpc_name"));
                productCategory.setParentId(rs.getLong("cpc_parent_id"));
                list.add(productCategory);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return  list;
    }

    @Override
    public List<ProductCategory> getRootCategories() throws Exception {
        List<ProductCategory> list=new ArrayList<>();

        try
        {
            String sql="select * from carstore_product_category ";
            ResultSet rs=db.executeQuery(sql);
            if(rs.next())
            {
                ProductCategory productCategory = new ProductCategory();
                productCategory.setId(rs.getLong("cpc_id"));
                productCategory.setName(rs.getString("cpc_name"));
                productCategory.setParentId(rs.getLong("cpc_parent_id"));
                list.add(productCategory);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return  list;
    }

    @Override
    public int delete(long parseLong) throws Exception {
        int r=-1;
        try {
            String sql = " DELETE FROM carstore_product_category where cpc_id=?";

            r=db.executeUpdate(sql,parseLong);

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public int save(ProductCategory productCategory) throws Exception {
        int r=-1;
        try {
            String sql = " INSERT INTO carstore_product_category(cpc_name,cpc_parent_id) values(?,?)";


            r=db.executeUpdate(sql,productCategory.getName(),productCategory.getParentId());

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public int update(ProductCategory productCategory) throws Exception {
        int r=-1;
        try {
            String sql = " UPDATE carstore_product_category SET cpc_name=?,cpc_parent_id=? where cpc_id=?";


            r=db.executeUpdate(sql,productCategory.getName(),productCategory.getParentId(),productCategory.getId());

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }
}
