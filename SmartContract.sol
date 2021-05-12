// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Define the contract 
contract SmartContract {
    // Create a dynamic array state variable called 'postList' of the bytes32 type
    bytes32[] public postList;
    // Create a mapping data type where the key value pairs are of the bytes32 type and uint256 type respectively
    // Store the mapping in a state variable called 'likesReceived'
    mapping(bytes32 => uint256) public likesReceived;

    // Define the constructor the takes in a dynamic array or the bytes32 type, commits it to memory, and labels
    // it '_postNames'
    constructor(bytes32[] memory _postNames) {
        // On instantiation set the state variable 'postList' to the argument passed in to the contracts 
        // constructor '_postNames'
        postList = _postNames;
    }

    // Define a function called 'totalLikesFor' that takes in an argument of the bytes32 type called '_post'
    // Set the restriction modifier to 'view' so this function can only read state data and return it, not modify it
    // Set the visibility modifier to public so the function can be called from anywhere
    // Set the return value to be of the uint256 type
    function totalLikesFor(bytes32 _post) view public returns(uint256) {
        // Return the specific value in the 'likesReceived' mapping corresponding to the '_post' argument
        return likesReceived[_post];
    }
    
    // Define a function called 'likePost' that takes in an argument of the bytes32 type called '_post'
    // Set the visibility modifier to be public so the function can be call from anywhere
    function likePost(bytes32 _post) public {
        // Increment the value in the 'likeReceived' mapping corresponding to the '_post' argument
        likesReceived[_post] += 1;
    }
}
