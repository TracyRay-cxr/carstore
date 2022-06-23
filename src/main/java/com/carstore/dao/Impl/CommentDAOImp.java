package com.carstore.dao.Impl;

import com.carstore.dao.CommentDAO;
import com.carstore.dao.dateBase;
import com.carstore.entity.Comment;

import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CommentDAOImp implements CommentDAO {
    dateBase db=new dateBase();
    @Override
    public int save(Comment comment) throws Exception {
        int r=-1;
        try {
            String sql="insert into carstore_comment values(0,?,?,?,?,?)";
            r=db.executeUpdate(sql, comment.getContent(), comment.getCreateTime(),comment.getNickName(),comment.getReplyTime(),comment.getReplyTime());

        }catch (Exception ex){
            throw ex;
        }
        return r;

    }

    @Override
    public int delete(Long id) throws Exception {
        int r=-1;
        try {
            String sql="delete carstore_comment where id=?";
            r=db.executeUpdate(sql,id);
        }catch (Exception ex){
            throw ex;
        }
        return r;
    }

    @Override
    public int update(Comment comment) throws Exception {
        int r=-1;
        try {
            String sql="update carstore_comment set cc_reply=? ,cc_reply_time=? where cc_id=?";
            r=db.executeUpdate(sql,comment.getReply(),comment.getReplyTime(),comment.getId());
        }catch (Exception ex){
            throw ex;
        }
        return r;

    }

    @Override
    public List<Comment> select() throws Exception {
        ArrayList<Comment> list=new ArrayList<>();
        try{
            String sql="select * from carstore_comment";
            ResultSet res=db.executeQuery(sql);
            while(res.next()){
                Comment comment=new Comment();
                comment.setId(res.getInt("cc_id"));
                comment.setContent(res.getString("cc_content"));
                comment.setCreateTime(res.getTime("cc_create_time"));
                comment.setReply(res.getString("cc_reply"));
                comment.setReplyTime(res.getTime("cc_reply_time"));
                comment.setNickName(res.getString("cc_nick_name"));
                list.add(comment);
            }
        }catch (Exception ex){
            throw ex;
        }


        return list;

    }

    @Override
    public Comment selectById(Long id) throws Exception {
        Comment comment=null;
        try {
            String sql="select * from carstore_comment where cc_id=?";
            ResultSet res=db.executeQuery(sql,id);
            comment.setId(res.getInt("cc_id"));
            comment.setContent(res.getString("cc_content"));
            comment.setCreateTime(res.getTime("cc_create_time"));
            comment.setReply(res.getString("cc_reply"));
            comment.setReplyTime(res.getTime("cc_reply_time"));
            comment.setNickName(res.getString("cc_nick_name"));
        }catch (Exception ex){
            throw ex;
        }
        return comment;
    }

    @Override
    public long getCommentRowCount() throws Exception {
        long lenth=0;
        try{
            String sql="select count(*) from carstore_comment";
            ResultSet res=db.executeQuery(sql);
            lenth=res.getLong(1);
        }catch (Exception ex){
            throw ex;
        }
        return lenth;
    }
}
