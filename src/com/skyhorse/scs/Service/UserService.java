package com.skyhorse.scs.Service;

import java.util.ArrayList;
import java.util.List;


public interface UserService {
	
 public String insertData(String UserID,String Uname,String password,String UserEmail,String phone,String Address,String SecQue,String SecAns,String UserRole);

 public void updatePassword(String UserId,String oldPassword,String newPassword);
}
