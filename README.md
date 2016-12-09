# Oystercard Challenge #

### Installation ###

Clone the master branch of this Github repository, open your command line, navigate to your project directory and run the `bundle` command. This will install all the necessary gems required. Once `bundle` has run, you can run `require "./lib/oystercard.rb"` to get going with the Oystercard.

### Interacting with thr Oystercard from the command line ###

You must first create a new instance of the oystercard with something like `card = Oystercard.new`. This will create a new Oystercard object. The card starts with a default balance of 0. From here you must call `card.top_up()` with a value of your choice (maximum balance is 90). You can now `touch_in` and `touch_out` to begin and end journeys. To view your journey history you can call `card.journey_history` and it will display all previous journeys. If you try to touch in twice in a row, you will be deducted a penalty fare, the same goes with touching out twice.

### Learning Objectives ###

In this challenge we were tasked with creating a mockup system of the London travel card the Oystercard.

The Oystercard challenge was designed to solidify instance variables, dependency injection and good object oriented design in our minds. There was a large amount of class extraction throughout the challenge, forcing me to think about how I designed my classes and what their actual responsibilities were.
