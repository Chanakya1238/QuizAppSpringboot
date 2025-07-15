package com.chanakya.quizapp.service;


import com.chanakya.quizapp.dao.AddQDao;
import com.chanakya.quizapp.model.AddQ;
import com.chanakya.quizapp.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class AddQService {

    @Autowired
    private AddQDao addQDao;
     public ResponseEntity<String> addQuestion(AddQ addQ) {

         if(addQ == null) {
             return new ResponseEntity<>("Question data cannot be null", HttpStatus.BAD_REQUEST);
         }
         String questionTitle = addQ.getQuestionTitle();
         if(questionTitle == null || questionTitle.trim().isEmpty()) {
             return new ResponseEntity<>("Question title is required", HttpStatus.BAD_REQUEST);
         }

         String category = addQ.getCategory();
         if(category == null || category.trim().isEmpty()) {
             return new ResponseEntity<>("Category is required", HttpStatus.BAD_REQUEST);
         }

         if(addQDao.existsByQuestionTitleAndCategory(questionTitle, category)) {
             return new ResponseEntity<>("This question already exists in the category", HttpStatus.CONFLICT);
         }

         if (!areOptionsValid(addQ)) {
             return new ResponseEntity<>("All options and right answer must be provided", HttpStatus.BAD_REQUEST);
         }

         addQDao.save(addQ);
         return new ResponseEntity<>("Question added successfully", HttpStatus.CREATED);
     }
    public ResponseEntity<String> addNewQuestion(AddQ addQ) {
        addQDao.save(addQ);
        return ResponseEntity.ok("Question added");
    }

     private boolean areOptionsValid(AddQ addQ) {
         return addQ.getOption1() != null && !addQ.getOption1().trim().isEmpty()
             && addQ.getOption2() != null && !addQ.getOption2().trim().isEmpty()
                 && addQ.getOption3() != null && !addQ.getOption3().trim().isEmpty()
                 && addQ.getOption4() != null && !addQ.getOption4().trim().isEmpty()
                 && addQ.getRightAnswer() != null && !addQ.getRightAnswer().trim().isEmpty();
     }
}
