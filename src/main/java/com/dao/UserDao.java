package com.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.po.User;
@Repository("userDao")
@Mapper
/*使用Spring自动扫描MyBatis的接口并装配
（Spring将指定包中所有被@Mapper注解标注的接口自动装配为MyBatis的映射接口*/
public interface UserDao {
	/**
	 * 接口方法对应SQL映射文件UserMapper.xml中的id
	 */
	public User selectUserByNumber(Integer number);
	public int insertUser(User user);
	public int deleteUserByNumber(Integer number);
	public int updateUserByNumber(User user);
	public List<User> selectAllUser();
}
