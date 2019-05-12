package model;

import javax.persistence.*;

@Entity
@Table(name="study")
public class Study {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String patient;
    private String description;
    private String status;
    @Column(name="planned_start_time")
    private String startTime;
    @Column(name="estimated_end_time")
    private String endTime;

    public Study() {
    }

    public Study(Long id, String patient, String description, String status, String startTime) {
        this.id = id;
        this.patient = patient;
        this.description = description;
        this.status = status;
        this.startTime = startTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPatient() {
        return patient;
    }

    public void setPatient(String patient) {
        this.patient = patient;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
}
