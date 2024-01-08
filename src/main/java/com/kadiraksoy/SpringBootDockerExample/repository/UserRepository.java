package com.kadiraksoy.SpringBootDockerExample.repository;

import com.kadiraksoy.SpringBootDockerExample.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
