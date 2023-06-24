package com.jspider.springmvc.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.jspider.springmvc.pojo.UserPOJO;
import com.mysql.cj.xdevapi.PreparableStatement;

@Repository
public class UserRespository {

	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	private static Query query;
	private static String jpql;

	private static void openConnection() {
		factory = Persistence.createEntityManagerFactory("mock");
		manager = factory.createEntityManager();
		transaction = manager.getTransaction();
	}

	private static void closeConnection() {
		if (factory != null) {
			factory.close();
		}
		if (manager != null) {
			manager.close();
		}
		if (transaction != null) {
			if (transaction.isActive()) {
				transaction.rollback();
			}
		}
	}

	public UserPOJO addUser(String name) {
		openConnection();
		transaction.begin();
		UserPOJO pojo = new UserPOJO();
		pojo.setName(name);
		manager.persist(pojo);
		transaction.commit();
		closeConnection();
		return pojo;
	}
	
	public List<UserPOJO> searchUser(String name) {
		openConnection();
		transaction.begin();
		jpql="from UserPOJO where name like '%"+name+"'";
		query=manager.createQuery(jpql);
		List<UserPOJO> user = query.getResultList();
		transaction.commit();
		closeConnection();
		return user;
	}

}
