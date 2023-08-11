<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Elxss/Server-Startup-Telegram-Alert">
    <img src="https://raw.githubusercontent.com/Elxss/Elxss.github.io/main/src/img/logo.png" alt="Logo" width="300" height="300">
  </a>

  <h3 align="center">Server Telegram Alert on Startup</h3>

  <p align="center">
    <br />
    <a href="https://github.com/Elxss/Server-Startup-Telegram-Alert/blob/main/img/demo.png">View Demo</a>
    -
    <a href="https://github.com/Elxss/Server-Startup-Telegram-Alert/issues">Report Bug</a>
    ·
    <a href="https://github.com/Elxss/Server-Startup-Telegram-Alert/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#About The Project">About The Project</a></li>
    </li>
    <li><a href="#Installation">Installation</a></li>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

### About The Project

<img src="https://raw.githubusercontent.com/Elxss/Server-Startup-Telegram-Alert/main/img/demo.gif" alt="Demo" width="321" height="288">

Not home ? But you still wanna know when your server goes online
No problem, this project is the answer to your issue.

This program runs on Linux ( Tested on [Debian](https://www.debian.org/) )

This program is oriented for people like me that are using
remote relays to start their computers, However everyone can use it

This project is 100% written in Bash

The script works by simply sending a message through a webhook using the Telegram API.
I chose to write it in Bash to consume as little performance as possible.

At first using the ```get_chatid.sh``` you will get the id of the chat between you and the bot
you can add the bot to a group, it will work too.
Then using the Chat ID you can Setup the core of the project ```telegram_server_alert.sh```
after the Chat ID placed in it, you are ready to go.

The whole setup of everything should take around 15mins.

If you like the project don't forget to leave a Star⭐ !

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps. -->


### Prerequisites

To use this script, you will need 2 things:
* a Telegram bot:
  creating a telegram bot is easy the only 2 things you need to do are to send a message to the account ```@BotFather```:
  <br/>

  and configuring your bot with him:
  <br/>
  <br/>
    <img src="https://raw.githubusercontent.com/Elxss/Server-Startup-Telegram-Alert/main/img/setup.gif" alt="Bot Setup">

* The second on are 2 Apps, git and jq, you can download them easily using the command:
```sh
sudo apt-get install git jq 
```

### Installation

_The installation is fast (around 15 mins)_

1. Then write the following command to install the repo onto your server/computer:
    ```sh
    git clone https://github.com/Elxss/Server-Startup-Telegram-Alert.git
    ```
    dont forget to go in the directory using the command:
    ```sh
    cd Server-Startup-Telegram-Alert
    ```
    
2. Edit the ```get_chatid.sh``` and ```telegram_server_alert.sh``` replace the telegram_bot_token with yours.

4. Write the following commands:
    ```sh
    chmod +x ./get_chatid.sh ./telegram_server_alert.sh
    ```
   
4. Start a conversation with the bot on your Telegram App and then start the ```get_chatid.sh``` script:
    ```sh
    ./get_chatid.sh
    ```
    
5. Using the id that you got from the output of the ```get_chatid.sh``` script:
    ```sh
    Chat ID : 2581182769
    ```
    Edit the ```telegram_server_alert.sh``` replace the telegram_chat_id with yours
    
6. Then you need to schedule this task at each startup.
   You can do this using the command ```crontab -e```
   Select the Editor that you prefer
   Add the following ligne at the bottom of the file:
   ```sh
   @reboot /path/to/telegram_server_alert.sh
   ```
   You wan get the path using the command ```pwd``` when you are in the directory of the program
   
7. Congrats! You just finished the setup of the program now at each startup you are gonna receive a message from your server
   Leave a star⭐ if you enjoy this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [x] Make it work
- [ ] Make a tutorial on my [youtube channel](https://www.youtube.com/@Elxss)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Elxss - discord: Eliasss#8886 - elxssgitcontact@gmail.com - website: [elxss.github.io](https://elxss.github.io/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<p align="center">This is a Readme.md <a href="https://github.com/othneildrew/Best-README-Template/blob/master/README.md">Template</a></p>
