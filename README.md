# Minicom

Welcome to Minicom! A prototype Intercom service. This is a project to help you set up for your interview later on. Inside this directory you'll find a foo website, a bar website, and a Django server that represents a simplified version of how Intercom works.

# What do I have to do?

Follow the setup instructions mentioned in the sections below and once that is accomplished, you should be able to get the prototype running.

1. Run Foo at http://127.0.0.1:8008, verify that an alert with `Yay! Everything works` fires
2. Run Bar at http://127.0.0.1:8009, verify that an alert with `Yay! Everything works` fires

🥳 If those worked, well done! You're all set for the interview!

🤔 **If you can't get it working, please let us know ahead of the interview ASAP**. We want to make sure you have it all set up before the interview day.

## Installation

This project uses the Django framework. Run the command below to install it.

```
# Mac/Linux/Windows with WSL (Windows Subsystem for Linux)
script/django/setup

# Windows without WSL (Windows Subsystem for Linux)
script\django\setup
```

## Getting started

Run the following commands in 3 different terminal windows:

```
script/foo/start
script/bar/start
script/django/start
```

This will get you the foo site running at http://127.0.0.1:8008, the bar interface running at http://127.0.0.1:8009 and a webserver running at http://127.0.0.1:3000.

## About this project

You can read more below about this project, but it's not required before the interview.   
 
### Structure

A quick overview of the application structure:

- **foo/** -- The root of the foo interface.
- **bar/** -- The root of the bar website.

The Django server has 2 endpoints:

- **POST /foo/** (validates that the frontend can talk to backend)
- **POST /bar/** (validates that the frontend can talk to backend)

### Folders

The Django server lives in its own folder and has its own Readme.

- [Django](./django/README.md)
