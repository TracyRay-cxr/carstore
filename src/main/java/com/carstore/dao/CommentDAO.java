package com.carstore.dao;

import com.carstore.entity.Comment;

import java.util.List;

public interface CommentDAO {
    /**
     * 保存评论信息
     * @param comment
     * @return
     * @throws Exception
     */
    int save(Comment comment)throws Exception;

    /**
     * 删除评论信息
     * @param id
     * @return
     * @throws Exception
     */
    int delete(Long id)throws Exception;

    /**
     * 更新评论信息
     * @param comment
     * @return
     * @throws Exception
     */
    int update(Comment comment)throws Exception;

    /**
     * 查询所有评论信息
     * @return
     * @throws Exception
     */
    List<Comment> select()throws  Exception;

    /**
     * 根据id查询评论信息
     * @param id
     * @return
     * @throws Exception
     */
    Comment selectById(Long id)throws Exception;

    /**
     * 返回评论的总数
     * @return
     * @throws Exception
     */
    long getCommentRowCount() throws Exception;

}
