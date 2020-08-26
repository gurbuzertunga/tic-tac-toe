# The Tic-Tac-Toe

> In this project, we are building a Tic Tac Toe game. The main goal is to put into practice the main concepts of Object Oriented Programming. Particularly, classes, modules and objects and access their attributes.

For this project, we wrote a Ruby executable script main.rb that allows the user to play the game of Tic, Tac, Toe in the Terminal.

## How To Play

'Tic, Tac, Toe' is a traditional game for two players played on a board with 9 squares.

Each player is represented by a symbol, either 'X' or 'O'. The players then take turns to place their respective symbols in an empty square on the board, with O's going first - in our version of the game, these squares are represented by the numbers 1 to 9.

The aim of the game is to have three of your symbols form a line, be it vertically, horizontally or diagonally, as illustrated in the image below.

![A Winning Combination of Tic, Tac, Toe](.github/winning-screenshot.webp)

In the event that all 9 squares are taken without either player getting three of their symbols in a line, a draw is declared.

### Accessing The Game

- To quickly play the game, follow the link in the [Live Demo section](#live-demo) and hit the Run button in the header. The game will begin in the window on the right.

- To download the contents of this repository and play the game locally, follow the steps in the ['Local Installation' section](#local-installation).

## Built With

- Ruby
- VSCode
- Rubocop

## Live Demo

To quickly see our project in action, visit the [live demo]('#') on repl.it.

There are no pre-requisites for enjoying the game through this method.

## Local Installation

### Prerequisites

If you intend to download the project, you will need to have Ruby already installed on your machine. For more information on how to install Ruby, follow [this link](https://www.ruby-lang.org/en/downloads/).

### Installation Instructions

To get your own copy of our project simply clone the repository to your local machine.

**Step 1**: Using the Command Line, navigate into the location where you would like to have the repository. Then enter the following line of code:

`git clone https://github.com/gurbuzertunga/tic-tac-toe.git`

**Step 2**: Once the repo has been cloned, navigate inside it by entering the following command:

`cd tic-tac-toe`

**Step 3**: Once in the root directory of the repository, simply enter the following line of code to start a game:

`bin/main.rb`

From there, the game will begin, and the user need only follow the subsequent instructions that appear in the Terminal.

## Repository Contents

The code for the project is divided into two main directories: **./bin** and **./lib**.

The **./bin** folder contains the executable **main.rb** file. This is the only file that contains the Kernel.puts and Kernel.gets methods, allowing for interaction with the game via the Terminal. _This is the only file that should be run if you want to play the game._

The **./lib** folder contains subsidiary files that set up all of the classes and methods used in bin/main.rb

- **player.rb**, where the Player class is defined.
- **board.rb**, where the Board class is defined.

In addition to the above, the repo also contains .rubocop.yml for linting.

## Tests

1. Open Terminal

2. Install RSpec on your system by running:

    `gem install rspec`

3. Run the tests with the command:

    `rspec`



## Authors

:bust_in_silhouette: **Mohab Akram**
- Github: [@mohabakram](https://github.com/mohapakram)
- Twitter: [@mohabakram](https://twitter.com/mohapakram)
- LinkedIn: [@Mohab Akram](https://www.linkedin.com/in/mohab-akram-667093131/)

:bust_in_silhouette:**Gürbüz Ertunga**
- Github: [@gurbuzertunga](https://github.com/gurbuzertunga)
- LinkedIn: [@Gurbuz Ertunga](https://www.linkedin.com/in/gurbuz-ertunga-a607a2a5/)
## :handshake: Contributing

## Show your support
If you've read this far, you must like the project! Give us a :star:️!
## Acknowledgments
- This Project was part of an assignment available on The Odin Project.
- Our thanks to Microverse and all our peers and colleagues there.
## :memo: License
This project has no license