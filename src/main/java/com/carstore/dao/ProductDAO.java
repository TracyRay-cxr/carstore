package com.carstore.dao;

import com.carstore.entity.Product;

import java.util.List;

public interface ProductDAO {
    /**
     * 根据ID查询商品信息
     * @param id
     * @return
     * @throws Exception
     */
    Product findById(Long id) throws Exception;


    /**
     * 根据分类ID查询商品信息
     * @param id
     * @return
     * @throws Exception
     */
    List<Product> getProductsByCategoryLevelOne(Long id) throws Exception;

    List<Product> getProductsByCategoryLevelTwo(Long id)
            throws Exception;

    List<Product> getProducts()
            throws Exception;

    /**
     * 查询今日优惠
     * @return
     * @throws Exception
     */
    List<Product> getProducts2()
            throws Exception;

    /**
     * 根据SQL语句更新商品信息
     * @return
     * @throws Exception
     */
    int modifyCategoryOfProductBySql(String sql) throws Exception;
    /**
     * 删除商品信息
     * @return
     * @throws Exception
     */
    public int delete(Long id) throws Exception;
    /**
     * 保存商品信息
     * @return
     * @throws Exception
     */
    int save(Product product) throws Exception;
    /**
     * 新新商品信息
     * @return
     * @throws Exception
     */
    int update(Product product) throws Exception;

    long getProductRowCountByCategoryLevelTwo(Long categoryId) throws Exception;

    int updateStock(Long id, long quantity) throws Exception;

    Long getNewProductId()  throws Exception;
}
