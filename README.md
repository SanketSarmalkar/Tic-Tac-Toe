# About

Tic Tac Toe is a Famous Game made using Flutter.

## GAME DESCRIPTION:
Tic Tac Toe is a two-player game (one of them being played by computer or human). In this game, there is a board with 3 x 3 squares.

The two players take turns putting marks on a 3x3 board. The goal of Tic Tac Toe game is to be one of the players to get three same symbols in a row - horizontally, vertically or diagonally on a 3 x 3 grid. The player who first gets 3 of his/her symbols (marks) in a row - vertically, horizontally, or diagonally wins the game, and the other loses the game. The game can be played by two players. There are two options for players: (a) Human (b) Computer

## GAME RULES:
A player can choose between two symbols with his opponent, usual game uses “X” and “O”.

The player that gets to play first will get the "X" mark (we call him/her player 1) and the player that gets to play second will get the "O" mark (we call him/her player 2).

Player 1 and 2 take turns making moves with Player 1 playing mark “X” and Player 2 playing mark “O”.

A player marks any of the 3x3 squares with his mark (“X” or “O”) and their aim is to create a straight line horizontally, vertically or diagonally with two intensions:
a. One of the players gets three of his/her marks in a row (vertically, horizontally, or diagonally) i.e. that player wins the game.
b. If no one can create a straight line with their own mark and all the positions on the board are occupied, then the game ends in a draw/tie.

## FUTURE DEVELOPMENT
tic-tac-toe can be made to play with the computer/AI by using MINIMAX algorithm. The brief about it is given below.
### Minimax Algorithm
Minimax is a artificial intelligence algorithm applied to a two player Tic Tac Toe game. This games are known as zero-sum games, because in a mathematical representation: one player wins (+1) and other player loses (-1) or both of anyone not to win (0).

Minimax is a recursive algorithm which is used to choose the best move that leads the Max player to win or not lose (draw). It consider the current state of the game and the available moves at that state, then for each valid move it plays (alternating min and max) until it finds a terminal state - win, draw or lose.

Its goal is to minimize the maximum loss i.e. minimize the worst case scenario.
The key to the Minimax algorithm is a back and forth between the two players, where the player whose "turn it is" desires to pick the move with the maximum score. In turn, the scores for each of the available moves are determined by the opposing player deciding which of its available moves has the minimum score. And the scores for the opposing players moves are again determined by the turn-taking player trying to maximize its score and so on all the way down the move tree to an end state.

A description for the algorithm, assuming X is the turn taking player:

If the game is over, return the score from X's perspective.
Otherwise get a list of new game states for every possible move.
Create a scores list.
For each of these states add the minimax result of that state to the scores list.
If it's X's turn, return the maximum score from the scores list.
If it's O's turn, return the minimum score from the scores list.
