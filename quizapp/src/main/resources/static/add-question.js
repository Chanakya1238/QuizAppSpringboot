document.getElementById('add-question-form').addEventListener('submit', async function (e) {
 e.preventDefault();


 const question = {
 questionTitle: document.getElementById('question-title').value,
 option1: document.getElementById('option1').value,
 option2: document.getElementById('option2').value,
 option3: document.getElementById('option3').value,
 option4: document.getElementById('option4').value,
 rightAnswer: document.getElementById('right-answer').value,
 category: document.getElementById('category').value,
 difficultyLevel: 'Medium' // Or get it from the form
 };


 const response = await fetch('http://localhost:8080/question/add', {
 method: 'POST',
 headers: {
 'Content-Type': 'application/json'
 },
 body: JSON.stringify(question)
 });


 if (response.ok) {
 alert('Question added successfully!');
 document.getElementById('add-question-form').reset();
 } else {
 alert('Failed to add question.');
 }
});