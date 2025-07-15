package com.chanakya.quizapp.dao;


import com.chanakya.quizapp.model.AddQ;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AddQDao extends JpaRepository<AddQ, Integer> {
    boolean existsByQuestionTitleAndCategory(String questionTitle, String category);
    @Query("SELECT COALESCE(MAX(q.id), 0) FROM Question q")
    Integer getMaxId();
}
