# Twitter_Bot
A Twitter Bot that retweets news from around the world and provides a daily quote. If he is on the mood you could even get a reponse from him!

## Built With

- Ruby

## Getting Started

To get a local copy up and running follow these simple example steps.

Go to https://github.com/srizzuto/Twitter_Bot

1. Click on the code and copy the HTML code.
2. Use terminal to clone this repository on your local machine.
3. Run <code>git checkout -b your-branch-name</code>. Make your contributions.
4. Push your branch up to your forked repository.
5. Open a Pull Request with a detailed description of the development branch of the original project for a review.

## Running tests

To run the rspec tests locally :

1) If you want a specific block:
    - On terminal <code>rspec ./spec/mentions_ans.rb</code>, <code>rspec ./spec/quotes.rb</code>, <code>rspec ./spec/teirobot.rb</code> or <code>rspec ./spec/news_retweets.rb</code>

2) If you want to execute all at once
    - On terminal <code>ruby ./spec_run_all.rb</code>

## Instructions

1) Open your terminal:
    - On Windows => <code>Win + R</code>
    - On Linux => <code>ctrl + alt + T</code>
    - On Mac => <code>Control + Option + Shift + T</code>

2) Go to the directory where the game is located, it will be the one where you cloned the repository. Execute the main.rb by typing:
    - <code>bin/main.rb</code>

3) Alright! The bot is already on, unless you modified the parameters it will do three different things every five minutes:

      a) It will retweet a notice for each tag passed as parameter (in this case, world news)
      b) It will post a quote (it has over 100 famous quotes stored!)
      c) If the bot is mentioned, before doing retweets and post the quote it will take the last mention and answer to it.

4) Whenever you want to terminate the program, use <code>ctrl + C</code> to finish the program.

Have fun!

## Authors

👤 **Sebastian Rizzuto**

- GitHub: [@srizzuto](https://github.com/srizzuto)
- Twitter: [@sbstnrzzt](https://twitter.com/sbstnrzzt)
- LinkedIn: [Sebastian Rizzuto](https://www.linkedin.com/in/srizzuto/)
## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/srizzuto/Twitter_Bot/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- To my brother
- To my Stand Up Team who kept my morale up!
