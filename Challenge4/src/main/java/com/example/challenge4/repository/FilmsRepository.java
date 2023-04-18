package com.example.challenge4.repository;

import com.example.challenge4.entities.FilmsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilmsRepository extends JpaRepository<FilmsEntity, Long> {
}
