/*I created a random number guessing game using basic condtional statements, if/else statements, and Boolean values.*/
//This assumes the player did not guess correctly.
var correctGuess = false;
//This tells browser to generate a random number.
var randomNumber = Math.floor(Math.random() * 10) + 1;
var guess = prompt("I am thinking of a number between 1 and 10. What is it?");
/*The following cond statements tests:
1. a correct guess?
2. guessed too high?
3. guessed too low?
*/
if (parseInt(guess) === randomNumber) {
  correctGuess = true;
} else if (parseInt(guess) < randomNumber) {
  var guessMore = prompt('Try again, guess a higher number.');
}
if (parseInt(guessMore) === randomNumber) {
  correctGuess = true;
} else if (parseInt(guess) > randomNumber) {
  var guessLess = prompt('Try again, guess a lower number.');
}
if (parseInt(guessLess) === randomNumber) {
  correctGuess = true;
}
//Last statement tests if player was ultimately wrong/right
if (correctGuess) {
  document.write('<p>You guessed the number- Hooray!');
} else {
  document.write('<p>Sorry. The number was ' + randomNumber + '</p>');
}
