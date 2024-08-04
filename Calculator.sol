// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    // Events to log operations
    event Addition(uint256 a, uint256 b, uint256 result);
    event Subtraction(uint256 a, uint256 b, uint256 result);
    event Multiplication(uint256 a, uint256 b, uint256 result);
    event Division(uint256 a, uint256 b, uint256 result);

    // Function to add two numbers
    function add(uint256 a, uint256 b) public returns (uint256) {
        uint256 result = a + b;
        emit Addition(a, b, result);
        return result;
    }

    // Function to subtract two numbers
    function subtract(uint256 a, uint256 b) public returns (uint256) {
        require(b <= a, "Subtraction result would be negative");
        uint256 result = a - b;
        emit Subtraction(a, b, result);
        return result;
    }

    // Function to multiply two numbers
    function multiply(uint256 a, uint256 b) public returns (uint256) {
        uint256 result = a * b;
        emit Multiplication(a, b, result);
        return result;
    }

    // Function to divide two numbers
    function divide(uint256 a, uint256 b) public returns (uint256) {
        require(b > 0, "Division by zero is not allowed");
        uint256 result = a / b;
        emit Division(a, b, result);
        return result;
    }
}
