package com.chanakya.quizapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import lombok.Data;

@Data
@Entity
public class Question {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String questionTitle;
    private String Option1;
    private String Option2;
    private String Option3;
    private String Option4;
    private String rightAnswer;
    private String difficultyLevel;
    private String category;
}
