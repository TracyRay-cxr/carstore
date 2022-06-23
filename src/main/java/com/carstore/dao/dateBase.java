package com.carstore.dao;

import com.carstore.util.PropertiesUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 * 获取数据库连接以及DAO通用方法
 */
public class dateBase {

    /**
     * 驱动类
     */
    private final String DRIVERCLASS=PropertiesUtil.getProperty("db.properties","driver");
    /**
     * 连接字符串
     */
    private final String URL=PropertiesUtil.getProperty("db.properties","url");

    /**
     * 连接数据用户名
     */
    private final String NAME=PropertiesUtil.getProperty("db.properties","user");
    /**
     * 连接数据库密码
     */
    private final String PASSWORD=PropertiesUtil.getProperty("db.properties","password");

    /**
     * 获取数据库连接方法
     */
    public Connection getConnection()throws Exception{
        Connection connection=null;
        try {
            Class.forName(DRIVERCLASS);
            connection= DriverManager.getConnection(URL,NAME,PASSWORD);
        }catch (Exception ex){
            throw ex;
        }
        return connection;
    }

    /**
     * 数据库查询通用方法
     * @param sql
     * @param parms
     * @return
     * @throws Exception
     */
    public ResultSet executeQuery(String sql,Object...parms)throws Exception{

        ResultSet res=null;
        try{
            Connection conn=getConnection();
            PreparedStatement ps=conn.prepareStatement(sql);
            if (parms!=null&&parms.length>0){
                int i=1;
                for (Object obj:parms){
                    ps.setObject(i,obj);
                    i++;
                }
            }
            res=ps.executeQuery();

        }catch (Exception ex){
            throw ex;
        }
        return res;

    }
    /**
     * 数据库通用增，删，改
     * @param sql
     * @param parms
     * @return
     * @throws Exception
     */
    public int executeUpdate(String sql,Object...parms)throws Exception{
        int r=-1;
        try{
            Connection conn=getConnection();
            PreparedStatement ps=conn.prepareStatement(sql);
            if (parms!=null&&parms.length>0){
                int index=1;
                for (Object obj:parms){
                    ps.setObject(index,obj);
                    index++;
                }
            }
            r=ps.executeUpdate();
            closeConnection(null,ps,conn);
        }catch (Exception ex){
            throw ex;
        }
        return r;
    }

    /**
     * 关闭数据库连接
     * @param rs
     * @param ps
     * @param conn
     * @throws Exception
     */
    public void closeConnection(ResultSet rs,PreparedStatement ps,Connection conn)throws Exception{
        try{
            if(rs!=null){
                rs.close();
            }
            if (ps!=null){
                ps.close();
            }
            if (conn!=null){
                conn.close();
            }
        }catch (Exception ex){
            throw ex;
        }
    }


    /**
     * 测试连接和通用方法
     * @param args
     */
    public static void main(String[] args) {
        dateBase baseDAO=new dateBase();
        try {

//            String sql="insert into  carstore_news(cn_title,cn_content,cn_create_time,cn_type) values(?,?,?,?)";
            String sql2="select * from carstore_news where cn_id=?";
//            Object [] parms={"今天真热","你说的真对",new Date(),"1"};
            Object [] parms2={"2"};
            ResultSet res=baseDAO.executeQuery(sql2,parms2);
//            int r=baseDAO.executeUpdate(sql,parms);

//            System.out.println(r);
            while(res.next()){
                System.out.println(res.getInt(1)+res.getString(2)+res.getString(3)+res.getString(
                        4
                ));
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
