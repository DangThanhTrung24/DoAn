package com.kshop.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kshop.main.domain.Customers;
import com.kshop.main.domain.Users;

@Repository
public interface CustomerRepository extends JpaRepository<Customers, Long>{

    Customers findOneByEmail(String email);
	//Query Creation

    Object findFirstByOrderByIdDesc();

    Customers findByEmail(String email);

    Customers findByEmailOrUsername(String email, String string);
}
