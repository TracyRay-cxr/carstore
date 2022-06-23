package com.carstore.service.Impl;

import com.carstore.dao.dateBase;
import com.carstore.dao.ProductDAO;
import com.carstore.dao.Impl.ProductDAOImp;
import com.carstore.entity.Product;
import com.carstore.entity.ProductCategory;
import com.carstore.service.ProductService;

import java.util.List;

public class ProductServiceImpl implements ProductService {

    ProductDAO productDAO=new ProductDAOImp();

    @Override
    public Product findById(String id) throws Exception {
        try
        {
            return  productDAO.findById(Long.parseLong(id));
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public int save(Product product) throws Exception {
        try
        {
            return  productDAO.save(product);
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public List<Product> getProducts2() throws Exception {
        try
        {
            return  productDAO.getProducts2();
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public List<Product> getProducts() throws Exception {
        try
        {
            return  productDAO.getProducts();
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public int update(Product product) throws Exception {
        try
        {
            return  productDAO.update(product);
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public int delete(String id) throws Exception {
        try
        {
            return  productDAO.delete(Long.parseLong(id));
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public List<Product> getProductsByCategory(String categoryId) throws Exception {
        try
        {
            return  productDAO.getProductsByCategoryLevelOne(Long.parseLong(categoryId));
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public ProductCategory findCategoryById(String id) throws Exception {
        try
        {

        }catch (Exception ex)
        {
            throw  ex;
        }
        return  null;
    }

    @Override
    public int deleteCategory(String id) throws Exception {
        try
        {
            return  productDAO.delete(Long.parseLong(id));
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public List<ProductCategory> getProductCategories(String parentId) throws Exception {
        try
        {
            return  null;
        }catch (Exception ex)
        {
            throw  ex;
        }
    }

    @Override
    public int saveCategory(ProductCategory productCategory) throws Exception {
        return 0;
    }

    @Override
    public int updateCategory(ProductCategory productCategory, String type) throws Exception {
        return 0;
    }

    @Override
    public List<ProductCategory> getRootCategories() throws Exception {
        return null;
    }

    @Override
    public int updateCategoryName(ProductCategory productCategory) throws Exception {
        return 0;
    }

    @Override
    public long getProductRowCount(String categoryId) throws Exception {
        return 0;
    }

    @Override
    public Long getNewProductId() throws Exception {
        return null;
    }
}
