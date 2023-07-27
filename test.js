const students = [
  { name: 'david', score: 80},
  { name: 'vindoth', score: 77},
  { name: 'divya', score: 88},
  { name: 'ishitha', score: 95},
  { name: 'thomas', score: 68},
 ];
    
 let sum;
students.map(score => {
  sum += score;
})
const average = sum / 5

console.log("Average: ", average)