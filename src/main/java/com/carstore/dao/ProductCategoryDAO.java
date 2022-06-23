package com.carstore.dao;

import com.carstore.entity.ProductCategory;

import java.util.List;

public interface ProductCategoryDAO {
    /**
     * 根据分类ID查询分类信息
     * @param id
     * @return
     * @throws Exception
     */
    ProductCategory findById(long id) throws Exception;

    /**
     * 根据分类父ID查询分类信息
     * @param parentId
     * @return
     * @throws Exception
     */
    List<ProductCategory> getProductCategories(Long parentId)
            throws Exception;

    /**
     * 查询所有分类信息
     * @return
     * @throws Exception
     */
    List<ProductCategory> getRootCategories() throws Exception;

    /**
     * 根据分类ID删除分类
     * @return
     * @throws Exception
     */
    int delete(long parseLong) throws Exception;
    /**
     * 保存分类
     * @return
     * @throws Exception
     */
    int save(ProductCategory productCategory) throws Exception;
    /**
     * 更新分类
     * @return
     * @throws Exception
     */
    int update(ProductCategory productCategory) throws Exception;
}
