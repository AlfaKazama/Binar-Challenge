package com.example.challenge4.repository;

import com.example.challenge4.entities.UsersEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<UsersEntity, Long> {

}
