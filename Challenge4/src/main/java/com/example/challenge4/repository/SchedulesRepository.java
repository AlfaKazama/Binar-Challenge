package com.example.challenge4.repository;

import com.example.challenge4.entities.SchedulesEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SchedulesRepository extends JpaRepository<SchedulesEntity, Long> {
}
