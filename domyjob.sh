#!/bin/bash

# Check if user is in the right directory
clear;
echo "";
echo "";
echo "You are currently here:"
echo $PWD;
echo "";
echo "Is this the directory you would like to create your Site in ? (y/n)"
sleep 1;

read directoryRight
clear;
sleep 1;
# Exit if user specified bad directory
if [[ $directoryRight == "n" ]]; then
    echo "Please run this script from the root directory of your project";
    sleep 3
    echo "Goodbye"
    sleep 1;
    clear;
    echo "You look beatiful today!"
    exit;
fi
#  See if client directory exists if so ask if we can delete it
if [ -d "client" ];then
    echo "";
    echo "It appears that a directory named 'client' already exists"
    sleep 2;
    echo "Running this script will delete this directory, are you sure you want to continue ? (y/n)"
    read input
    clear;
    if [[ $input == "n" ]];then
        clear;
        echo "Goodbye!"
        sleep 3;
        clear;
        echo "You are Awesome!";
        exit;
    else
        clear
        echo "Removing existing 'client' directory";
        rm -rf client;
        sleep 2;
        echo "Deletion Successfull!";
        sleep 2
        clear;
    fi
fi
# See if server directory exists, if so ask if we can delete it
if [ -d "server" ];then
    echo "It appears that a directory named 'server' already exists"
    sleep 2;
    echo "Running this script will delete this directory, are you sure you want to continue ? (y/n)"
    read input
    if [[ $input == "n" ]];then
        clear;
        echo "Goodbye!"
        sleep 3;
        clear;
        echo "You are Awesome!";
        exit;
    else
        clear
        echo "Removing existing 'server' directory";
        rm -rf server;
        sleep 2;
        echo "Deletion Successfull!";
        sleep 2
        clear;
    fi
fi
#Create clientside
echo "Setting up client folder"
mkdir client;
echo "client directory created";
sleep 1;
cd client;
touch index.html;
echo "Created index.html";
sleep 1;
## ADD HTML 5 Boilerplate
echo '<!DOCTYPE html>' >> index.html;
echo '<html lang="en">' >> index.html;
echo '<head>' >> index.html;
echo '<meta charset="UTF-8">' >> index.html;
echo '<meta http-equiv="X-UA-Compatible" content="IE=edge">' >> index.html;
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">' >> index.html;
echo '<title>PageTitle</title>' >> index.html
echo '<!--Linking CSS scripts-->' >> index.html;
echo '<link rel="stylesheet" href="style.css">' >> index.html;
echo '<!--Linking Javascript-->' >> index.html;
echo '<script src="/socket.io/socket.io.js " defer></script>' >> index.html;
echo '<script src="main.js" defer></script>' >> index.html;
echo '</head>' >> index.html;
echo '<body>' >> index.html;
echo '<h1>Hello World!</h1>' >> index.html;
echo '</body>' >> index.html;
echo '</html>' >> index.html;
echo "Added HTML 5 Boilerplate to index.html";
sleep 1;
touch style.css;
echo "Created style.css";
sleep 1;
##Add pink background to test link
echo 'body{background-color:pink}' >> style.css;
touch main.js;
echo "Created main.js";
sleep 1;
## Add Console log to test link
echo 'console.log("Javascript is linked");' >> main.js;
sleep 1;
echo "Client directory complete:";
echo "  Files created:";
echo "      index.html";
echo "      style.css";
echo "      main.js";
sleep 3;
echo "";
echo "Let's open up our page in the browser";
sleep 2;
open index.html;
sleep 2;
echo "Did it work ?"
sleep 1;
echo "Great!";
sleep 1;
echo "Just like you!, you are great!";
sleep 1
cd ..
sleep 5;
clear;
echo "Setting up server folder";
sleep 1;
##Create server side folder
mkdir server;
echo "Server folder created";
sleep 1;
cd server;
echo "Running 'npm init -y' to create package.json";
sleep 2;
npm init -y;
sleep 3;
clear;
echo "Package initialised";
sleep 1;
echo "Installing Express.js";
npm install express --save;
clear;
echo "Express installed!"
sleep 3;
touch "index.js"
echo "Created index.js";
sleep 1;
echo "Requiring express and http in index.js";
sleep 1;
echo "/*We will use express and http to make it easy to host our client*/" >> index.js;
echo "const express = require('express');" >> index.js;
echo "Created constant: express in index.js";
sleep 1;
echo "const http = require('http');" >> index.js;
echo "Created constant http in index.js";
sleep 1;
echo " " >> index.js;
echo "/*Defining WebApp*/" >> index.js;
echo "const app = express();" >> index.js;
echo " " >> index.js;
echo "/*Give our client path to app*/" >> index.js;
echo 'const clientPath = `${__dirname}/../client`;' >> index.js;
echo "/*Use express JS to host the client*/" >> index.js;
echo 'app.use(express.static(clientPath));' >> index.js;
echo '/*Use http to serve the Express app*/' >> index.js;
echo 'const server = http.createServer(app);' >> index.js;
echo '/*Make server listen on localhost*/' >> index.js;
echo 'const PORT = 8080;' >> index.js;
echo 'server.listen(PORT, () =>{' >> index.js;
echo '   console.log("server running on "+PORT);' >> index.js;
echo '});' >> index.js;
echo "index.js all setup!";
sleep 1;
echo "Node server configured to show the client folder"
sleep 5;
clear;
echo "Installing Socket.io"
sleep 1;
echo "Executing npm install socket.io --save";
npm install socket.io --save;
echo "^^!!!!!^^READ^^!!!!!!^^"
sleep 3;
echo 'No, seriously. If it earns you a living.';
sleep 1;
echo 'Share a piece of bread to those who gave you your lambo!';
sleep 3;
echo "Socket.io installed";
sleep 1;
clear;
echo "Configuring clientside main.js to use socket";
sleep 1;
cd ..;
cd client;
echo "/* Defining the nodejs server socket clientside */" >> main.js;
echo "let socket = io.connect();" >> main.js;
echo "socket added to main.js;";
sleep 1;
cd ..;
cd server;
echo "Configuring serverside index.js to use socket";
sleep 1;
echo "const io = require('socket.io')(server);" >> index.js;
echo " " >> index.js;
echo "/* Execute arrow function on connection */" >> index.js;
echo "let counter = 0;" >> index.js;
echo "io.on('connection', (socket) => {" >> index.js;
echo "    console.log('The server received: ' + counter + ' connections so far.');" >> index.js;
echo "counter++" >> index.js;
echo "});" >> index.js;
echo "index.js configured";
sleep 2;
clear;
echo "Let's see if it works!";
sleep 2;
echo "We just did the readme up to step 11";
sleep 2;
echo "Keep this script running and open a new Shell";
sleep 2;
echo "Make sure the shell is navigated to the server directory"
sleep 2;
echo "run 'node server' to start the server";
sleep 2;
echo "Go to http://localhost:8080 to view your project";
sleep 5;
echo "";
echo "Hopefully you see the same pink page greeting the world!";
sleep 5;
echo "";
echo "Have I told you that you're awesome ?";
sleep 2;
echo "Well, You are awesome!";
echo "Fancy loading animation.....";
echo -ne '#                     (0%)\r';
sleep 1;
echo -ne '#####                     (33%)\r';
sleep 1;
echo -ne '#############             (66%)\r';
sleep 1;
echo -ne '#######################   (100%)\r';
sleep 2;
echo -ne '\n'
sleep 2;
echo "Allright,I'm Ready to continue!";
sleep 2;
echo "Did everything work out ?";
sleep 2;
echo "If not, try running this script again";
sleep 2;
echo "don't worry about the existing files, rerunning will take care of them!";
sleep 2;
echo " ";
echo " ";
echo "We are now on step 11 in the readme";
sleep 2;
echo "If you would like moving on yourself from here on out go ahead!"
sleep 2;
echo "Would you like for the script to continue ? (y/n)";
sleep 2;
echo "Don't worry :) all the code will be commented!";
read answer;
if [[ $answer == "n" ]];then
    clear;
    echo "Allright, beatiful!";
    sleep 1;
    echo "I am out of here";
    sleep 1;
    echo "You are amazing!";
    exit;
fi
clear;
echo "Great,Let's do this!";
sleep 1;
echo "Adding some new elements to our index.html";
sleep 1;
cd ..;
cd client;
touch tmpStorage.ed;
echo "16i" >> tmpStorage.ed;
echo "<!--Start of step 11 - Now let's make something happen, add an input field, 2 buttons and a target div.-->" >> tmpStorage.ed;
echo '<input type="text" id="user-input">' >> tmpStorage.ed;
echo '<button id="send-to-all">Send to all</button>' >> tmpStorage.ed;
echo '<button id="send-to-me">Send to me</button>' >> tmpStorage.ed;
echo '<div id="target">' >> tmpStorage.ed;
echo '<p>Target Div:</p>' >> tmpStorage.ed;
echo '</div>' >> tmpStorage.ed;
echo "." >> tmpStorage.ed;
echo "w" >> tmpStorage.ed;
echo "q" >> tmpStorage.ed;
ed index.html < tmpStorage.ed;
sleep 1
echo "Created:";
echo "      Inputfield";
echo "      Send to All button";
echo "      Send to Me button";
echo "      Target Div with indicator";
sleep 1;
rm tmpStorage.ed;
echo "tmpStorage for write deleted"
sleep 2;
clear;
echo "Grabbing new html elements in main.js"
sleep 1;
echo '/*On click of a button, do an emit to the server.*/' >> main.js;
echo '/*Get all buttons*/' >> main.js;
echo 'const btnSendToAll = document.getElementById("send-to-all");' >> main.js;
echo 'const btnSendToMe = document.getElementById("send-to-me");' >> main.js;
echo '/*Get user input field*/' >> main.js;
echo 'const userInput = document.getElementById("user-input");' >> main.js;
echo '/*Get the target field*/' >> main.js;
echo 'const target = document.getElementById("target");' >> main.js;
echo "Adding event listeners to main.js";
sleep 1;
echo '/*Add event listeners*/' >> main.js;
echo 'btnSendToAll.addEventListener("click", () => {' >> main.js;
echo '/*Get the message from the inputfield*/' >> main.js;
echo 'const message = userInput.value;' >> main.js;
echo '/*Tell server we have a message to send to everyone :D*/' >> main.js;
echo 'socket.emit("sendToAll", message);' >> main.js;
echo '});' >> main.js;
echo 'btnSendToMe.addEventListener("click", () => {' >> main.js;
echo '/*Get the message from the inputfield*/' >> main.js;
echo 'const message = userInput.value;' >> main.js;
echo '/*Tell server we have a message only ment for me!*/' >> main.js;
echo 'socket.emit("sendToMe", message);' >> main.js;
echo '});' >> main.js;
echo "Adding Socket listeners to main.js";
sleep 1;
echo '/*Listen to the socket for a request called displayMessage*/' >> main.js;
echo '/*and execute an arrow function */' >> main.js;
echo 'socket.on("displayMessage", (message) => {' >> main.js;
echo '/*Show the returned message in the browser console*/' >> main.js;
echo 'console.log(`Received from server:${message}`);' >> main.js;
echo '/*Create an element to hold the received message*/' >> main.js;
echo 'const messageParagraph = document.createElement("p");' >> main.js;
echo '/*Put the received message within the <p> element */' >> main.js;
echo 'messageParagraph.innerText = message;' >> main.js;
echo '/*Append the element to our target container */' >> main.js;
echo 'target.appendChild(messageParagraph);' >> main.js;
echo '});' >> main.js;
echo '/*Listen to the socket for a request called displayPrivateMessage and execute a funciton/ */' >> main.js;
echo 'socket.on("displayPrivateMessage", (message) => {' >> main.js;
echo '/*Show the returned message in the browser console*/' >> main.js;
echo 'console.log(`Received from the server ${message}`);' >> main.js;
echo '/*Create an element to hold the received message*/' >> main.js;
echo 'const messageParagraph = document.createElement("p");' >> main.js;
echo '/*Put the received message within the <p> element */' >> main.js;
echo 'messageParagraph.innerText = message + "  (This message is private)";' >> main.js;
echo '/*Append the element to our target container */' >> main.js;
echo 'target.appendChild(messageParagraph);' >> main.js;
echo '});' >> main.js;
sleep 2;
echo "Main.js configured";
cd ..;
cd server;
clear;
echo "Setting up index.js on server";
touch tmpStorage.ed;
echo "Writing tempfile to hold JS";
echo "25i" >> tmpStorage.ed;
echo '/*React to buttons clicked on clientside*/' >> tmpStorage.ed;
echo '/*This is an observer that waits until the message "sendToAll" gets passed to the server.*/' >> tmpStorage.ed;
echo 'socket.on("sendToAll", (message) => {' >> tmpStorage.ed;
echo '/*Show the message in the server console*/' >> tmpStorage.ed;
echo 'console.log(`Received from client ${message}`);' >> tmpStorage.ed;
echo '/*Send displayMessage to all clients and attach message*/' >> tmpStorage.ed;
echo 'io.emit("displayMessage", message);' >> tmpStorage.ed;
echo '});' >> tmpStorage.ed;
echo 'socket.on("sendToMe", (message) => {' >> tmpStorage.ed;
echo '//Show the message in the server console' >> tmpStorage.ed;
echo 'console.log(`Received from client ${message}`);' >> tmpStorage.ed;
echo '/*The user wants to keep this ""private"" so we return this message trough the socket the client gave us*/' >> tmpStorage.ed;
echo 'socket.emit("displayPrivateMessage", message);' >> tmpStorage.ed;
echo '});' >> tmpStorage.ed;
echo "." >> tmpStorage.ed;
echo "w" >> tmpStorage.ed;
echo "q" >> tmpStorage.ed;
echo "writing JS to index.js";
sleep 1;
ed index.js < tmpStorage.ed;
sleep 3;
rm tmpStorage.ed;
cd ..;
sleep 2;
echo "All set!";
sleep 2;
echo "If node server is still running use ^C to quit it";
sleep 2;
echo "Now run it again! hehe";
sleep 2;
echo "Now open http://localhost:8080/ in two seperate tabs."
sleep 2;
echo "You can now talk to yourself, as I have been doing this whole script!";
sleep 2;
echo "Don't forget to check the terminal window that runs the node server";
sleep 2;
echo "it's your console.log for the NODE runtime";
sleep 2;
echo "Anything clientside will end up in your browser's console!";
sleep 1;
sleep 5;
echo "You can now safely quit this script if you would like to.";
sleep 1;
echo 'Quiting automaticly in:'
echo -ne '10 seconds\r';
sleep 1;
echo -ne '8 seconds\r';
sleep 1;
echo -ne '7 seconds\r';
sleep 1;
echo -ne '6 seconds\r';
sleep 1;
echo -ne '5 seconds\r';
sleep 1;
echo -ne '4 seconds\r';
sleep 1;
echo -ne '3 seconds\r';
sleep 1;
echo -ne '2 seconds\r';
sleep 1;
echo -ne '1 seconds\r';
sleep 1;
echo -ne '0 seconds\r';
sleep 1;
echo -ne 'Goodbye!         \r';
echo -ne '\n'
sleep 5;
clear;
echo "You are awesome!";
exit;