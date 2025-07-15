package com.chanakya.quizapp.controller;

import com.chanakya.quizapp.model.Question;
import com.chanakya.quizapp.model.QuestionWrapper;
import com.chanakya.quizapp.model.Quiz;
import com.chanakya.quizapp.model.Response;
import com.chanakya.quizapp.service.QuestionService;
import com.chanakya.quizapp.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("quiz")
public class QuizController {

    @Autowired
    QuizService quizService;
    @Autowired
    QuestionService questionService;

    @PostMapping("create")
    public ResponseEntity<Quiz> createQuiz(@RequestParam String category, @RequestParam int numQ, @RequestParam String title) {
        return quizService.createQuiz(category, numQ, title);
    }

    @GetMapping("get/{id}")
    public ResponseEntity<List<QuestionWrapper>> getQuizQuestions(@PathVariable Integer id) {
        quizService.getQuizQuestions(id);
        return quizService.getQuizQuestions(id);
    }

    @PostMapping("submit/{id}")
    public ResponseEntity<Integer> submitQuiz(@PathVariable Integer id, @RequestBody List<Response> responses) {
        return quizService.calculateResult(id, responses);
    }
    @PostMapping("add")
    public ResponseEntity<String> addQuestion(@RequestBody Question question) {
        return questionService.addQuestion(question);
    }

}

