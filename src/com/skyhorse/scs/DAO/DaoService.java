package com.skyhorse.scs.DAO;

import java.util.List;

import com.skyhorse.scs.Bean.AdminBean;



public interface DaoService 
{
    public List<AdminBean> loginVerify(String uname);
    
    public String insertData(String UserID,String Uname,String password,String UserEmail,String phone,String Address,String SecQue,String SecAns,String UserRole);
    
    public void updatePassword(String UserId,String oldPassword,String newPassword);
}
