package com.example.challenge4.controller;

import com.example.challenge4.entities.SchedulesEntity;
import com.example.challenge4.repository.SchedulesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/schedules")
public class SchedulesController {

    @Autowired
    SchedulesRepository schedulesRepository;

    @PostMapping(value = "addSchedules")
    public SchedulesEntity addSchedules(@RequestBody SchedulesEntity param) {
        schedulesRepository.save(param);
        return param;
    }

    @GetMapping(value = "getAllSchedules")
    public List<SchedulesEntity> getAllSchedules() {
        return schedulesRepository.findAll();
    }

    @GetMapping(value = "getByScheduleCode")
    public SchedulesEntity getByScheduleCode(@RequestParam Long schedule_id) {
        return schedulesRepository.findById(schedule_id).get();
    }

    @PostMapping(value = "updateSchedules")
    public SchedulesEntity updateSchedule(@RequestBody SchedulesEntity param) {
        return schedulesRepository.save(param);
    }

    @GetMapping(value = "deleteSchedule")
    public List<SchedulesEntity> deleteSchedule(@RequestParam Long schedule_id) {
        schedulesRepository.deleteById(schedule_id);

        List<SchedulesEntity> scheduleList = schedulesRepository.findAll();
        return scheduleList;
    }



}
