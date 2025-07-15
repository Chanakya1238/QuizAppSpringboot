package com.chanakya.quizapp.service;


import com.chanakya.quizapp.model.QuestionWrapper;
import com.chanakya.quizapp.dao.QuestionDao;
import com.chanakya.quizapp.dao.QuizDao;
import com.chanakya.quizapp.model.Question;
import com.chanakya.quizapp.model.Quiz;
import com.chanakya.quizapp.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class QuizService {

    @Autowired
    QuizDao quizDao;
    @Autowired
    QuestionDao questionDao;

    public ResponseEntity<Quiz> createQuiz(String category, int numQ, String title) {

        List<Question> questions = questionDao.findRandomQuestionsByCategory(category, numQ);

        Quiz quiz = new Quiz();
        quiz.setTitle(title);
        quiz.setQuestions(questions);

        // 1. Save the quiz and capture the return value. It now contains the ID.
        Quiz savedQuiz = quizDao.save(quiz);

        // 2. Return the 'savedQuiz' object, not the string "Success".
        return new ResponseEntity<>(savedQuiz, HttpStatus.CREATED);

    }

    public ResponseEntity<List<QuestionWrapper>> getQuizQuestions(Integer id) {
        Optional<Quiz> quiz = quizDao.findById(id);
        List<Question> questionsFromDB = quiz.get().getQuestions();
        List<QuestionWrapper> questionsForUser = new ArrayList<>();
        for(Question q : questionsFromDB){
            QuestionWrapper qw = new QuestionWrapper(q.getId(), q.getQuestionTitle(), q.getOption1(), q.getOption2(), q.getOption3(), q.getOption4());
            questionsForUser.add(qw);
        }

        return new ResponseEntity<>(questionsForUser, HttpStatus.OK);
    }

    public ResponseEntity<Integer> calculateResult(Integer id, List<Response> responses) {
        Quiz quiz = quizDao.findById(id).get();
        List<Question> questions = quiz.getQuestions();
        int right = 0;
        int i = 0;
        for(Response response : responses){
            if(response.getResponse().equals(questions.get(i).getRightAnswer()))

            right++;

            i++;
        }
        return new ResponseEntity<>(right, HttpStatus.OK);
    }
    public ResponseEntity<String> addQuestion(Question question) {
        questionDao.save(question);
        // You can add error handling here if needed
        return new ResponseEntity<>("success", HttpStatus.CREATED);
    }
}
