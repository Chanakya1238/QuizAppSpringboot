let quizId;
let questions = [];


async function createQuiz() {
    const category = document.getElementById('category').value;
    const title = document.getElementById('title').value;
    const numQ = 5;

    // --- ADD THIS VALIDATION ---
    if (!category || !title) {
        alert('Please enter both a category and a title.');
        return; // Stop the function here
    }
    // -------------------------

    // The rest of your fetch request...
    const response = await fetch(`http://localhost:8080/quiz/create?category=${category}&numQ=${numQ}&title=${title}`, {
        method: 'POST'
    });

    if (response.ok) {
        // The .text() method might fail if the response body is not what you expect.
        // Let's get the quiz ID more safely. The ID is part of the response from the server.
        // In your controller, you return a ResponseEntity with the body "Success", but it might be better to return the ID of the created quiz.
        // For now, let's assume the backend will provide the ID.
        // Let's modify the createQuiz method in QuizService to return the ID.

        // After this change, the following code in app.js should work:
        const quiz = await response.json(); // Assuming the server returns the quiz object with its ID.
        quizId = quiz.id;

        document.getElementById('quiz-selection').style.display = 'none';
        document.getElementById('quiz-container').style.display = 'block';
        document.getElementById('quiz-title').innerText = title;
        fetchQuizQuestions();
    } else {
        alert('Failed to create quiz. Check console for details.');
    }
}

async function fetchQuizQuestions() {
 const response = await fetch(`http://localhost:8080/quiz/get/${quizId}`);
 questions = await response.json();
 const questionsContainer = document.getElementById('questions-container');
 questionsContainer.innerHTML = '';
 questions.forEach((q, index) => {
 const questionElement = document.createElement('div');
 questionElement.innerHTML = `
 <p>${index + 1}. ${q.questionTitle}</p>
 <input type="radio" name="question${q.id}" value="${q.option1}"> ${q.option1}<br>
 <input type="radio" name="question${q.id}" value="${q.option2}"> ${q.option2}<br>
 <input type="radio" name="question${q.id}" value="${q.option3}"> ${q.option3}<br>
 <input type="radio" name="question${q.id}" value="${q.option4}"> ${q.option4}<br>
 `;
 questionsContainer.appendChild(questionElement);
 });
}


async function submitQuiz() {
 const responses = [];
 questions.forEach(q => {
 const selectedOption = document.querySelector(`input[name="question${q.id}"]:checked`);
 if (selectedOption) {
 responses.push({ id: q.id, response: selectedOption.value });
 }
 });


 const response = await fetch(`http://localhost:8080/quiz/submit/${quizId}`, {
 method: 'POST',
 headers: {
 'Content-Type': 'application/json'
 },
 body: JSON.stringify(responses)
 });


 if (response.ok) {
 const result = await response.text();
 document.getElementById('result').innerText = `Your score is: ${result}`;
 } else {
 alert('Failed to submit quiz.');
 }
}