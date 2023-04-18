package com.example.challenge4.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "schedules")
public class SchedulesEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter
    @Setter
    private Long schedule_id;

    @Getter
    @Setter
    private Long film_code;

    @Getter
    @Setter
    private Date tanggal_tayang;

    @Getter
    @Setter
    private LocalDateTime jam_mulai;

    @Getter
    @Setter
    private LocalDateTime jam_selesai;

    @Getter
    @Setter
    private Long harga_tiket;

    @Override
    public String toString() {
        return "SchedulesEntity{" +
                "schedule_id=" + schedule_id +
                ", film_code=" + film_code +
                ", tanggal_tayang=" + tanggal_tayang +
                ", jam_mulai=" + jam_mulai +
                ", jam_selesai=" + jam_selesai +
                ", harga_tiket=" + harga_tiket +
                '}';
    }
}
