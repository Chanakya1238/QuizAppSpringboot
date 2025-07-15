package com.chanakya.quizapp.dao;

import com.chanakya.quizapp.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface QuizDao extends JpaRepository<Quiz, Integer> {

}
