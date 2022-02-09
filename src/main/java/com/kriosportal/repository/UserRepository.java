package com.kriosportal.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.kriosportal.entity.User;



public interface UserRepository extends JpaRepository<User, Integer>{
	
	@Query(value = "SELECT * FROM  user WHERE userName= :userName AND password=:password", nativeQuery = true)
	public User findByUserNameAndPassword (@Param("userName") String userName,@Param("password") String password);
	
	@Query(value = "SELECT * FROM  userRole WHERE usersId= :usersId AND roleId= :roleId", nativeQuery = true)
	public Optional<Integer> checkAuthority(@Param("usersId") Integer usersId,@Param("roleId") Integer roleId);
	
	@Query(value="SELECT * FROM  user WHERE email= :email ", nativeQuery = true)
	public User getUserByUserEmail(@Param("email") String email);
	
	@Query(value = "SELECT * FROM user WHERE email = :emailId", nativeQuery = true)
	public Optional<Integer> checkEmailIdExitsOrNot(String emailId);
	
	@Query(value = "SELECT * FROM  user WHERE userid =:userId AND password=:oldPassword", nativeQuery = true)
	public Optional<Integer> resetPassword(@Param("userId") int userId,@Param("oldPassword") String oldPassword);
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE user SET password=:newPassword ,resetPassword=1 WHERE userid =:userId", nativeQuery = true)
	public Optional<Integer> updatePassword(@Param("userId") int userId,@Param("newPassword") String newPassword);
}
