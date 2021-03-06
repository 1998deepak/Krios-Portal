package com.kriosportal.service;

import java.util.List;

import org.springframework.http.ResponseEntity;

import com.kriosportal.bean.RolesBean;
import com.kriosportal.bean.UserBean;
import com.kriosportal.entity.User;

public interface UserService {

	public User findByUserNameAndPassword(String userName, String password);

	public ResponseEntity<?> saveUser(User user, RolesBean roleBean);

	public ResponseEntity<?> updateUser(User user);

	public void deleteUser(User user);

	public List<User> getUserList();

	public List<User> getUsersByRole(int roleId);

	public UserBean getById(int id);

	public void deleteById(int id);

	public void sendEmail(String to, String body, String topic);

	public void sendAutoMailFinance(List<User> users);

	public int checkAuthority(int userId, int roleId);

	public boolean resetPasswordEamil(String subject, String message, String to);

	public void sendIntimateMail(String to, String body, String topic);

	public int resetPasswordRequest(int userId, String oldPassword);

	public int updatePassword(int userId, String newPassword);

	public int checkEmailIdExitsOrNot(String emailId);
}
