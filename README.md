# Stock Picker

## Description
This project is part of The Odin Project curriculum. It implements a method called stock_picker that takes an array of stock prices (where each price represents a day) and returns the best pair of days to buy and sell the stock for maximum profit. The first day in the returned array is the buy day, and the second day is the sell day.

## Usage 

```ruby
# Example usage
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4] # Buy at $3 (day 1) and sell at $15 (day 4) for a profit of $12
stock_picker([10, 7, 5, 8, 11, 9, 1])
=> [2, 4] # Buy at $5 (day 2) and sell at $11 (day 4) for a profit of $6
```

## Prerequisites
- Ruby installed on your system

## Installation
1. Clone this repository
    ```bash
    git clone https://github.com/joao4xz/stock_picker.git
    ```
2. Navigate to the project directory
    ```bash
    cd stock_picker
    ```
3. Run the script:
    ```bash
    ruby app.rb
    ```