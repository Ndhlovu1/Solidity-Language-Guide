// SPDX-License-Identifier: MIT
pragma solidity >=0.7.1 <0.9.0;

/*
    CONTRACTS ARE JUST LIKE CLASSES FOUND IN NORMAL PROGRAMMING LANGUAGES. THEY CONTAIN :
        1. STATE VARIABLES
        2. FUNCTIONS
        3. FUNCTION MODIFIERS
        4. EVENTS
        5. ERRORS
        6. STRUCT TYPES
        7. ENUM TYPES

*/

contract StateVariables {

    // STATE VARIABLES ARE VARIABLES WHOSE VALUES ARE PERMANENTLY STORED IN CONTRACT STORAGE

    // THERE ARE VISIBILITY AND GETTERS

    //e.g
    uint storageData;

    //FUNCTIONS ARE THE EXECUTABLE UNITS OF CODE. FUNCTIONS ARE USUALLY DEFINED INSIDE A CONTRACT BUT THEY CAN ALSO BE DEFINED OUTSIDE OF CONTRACTS

    //FUNCTIONS ACCEPT PARAMETERS AND HAVE DIFFERENT LEVELS OF VISIBILITY TOWARDS OTHER CONTRACTS. FUNCTIONS ACCEPT PARAMETERS AND RETURN VARIABLES TO PASS PARAMETERS BETWEEN THEM

    //e.g 1
    function simpleAuction () public payable {
        
    }

    // FUNTION MODIFIERS CAN BE USED TO AMEND THE SMEANTICS OF FUNCTIONS IN A DECLARATIVE WAY. OVERLOADING, THAT IS HAVING THE SAME MODIFIER NAME WITH DIFFERENT PARAMETERS IS NOT POSSIBLE
    
    //LIKE FUNCTIONS, MODIFIERS CAN BE OVERRIDEN.

    //e.g
    address public sellerAccount;

    modifier onlySeller(){
        require(msg.sender == sellerAccount);
        _;
    }

    

    //EVENTS ARE CONVENIENCE INTERFACES WITH THE EVM LOGGING FACILITIES

    //e.g
    event HighestBidIncreased(address _bidder, uint _amount);

    function bid() public payable {
        emit HighestBidIncreased(msg.sender, msg.value);
    }

    //ERRORS ALLOW YOU TO DEFINE DESCRIPTIVE NAMES AND DATA FOR FAILURE SITUATIONS. ERRORS CAN BE USED IN REVERT STATEMENTS. IN COMPARISON TO STRING DESCRIPTIONS, ERRORS ARE MUCH CHEAPER AND ALLOW YOU TO ENCODE ADDITIONAL DATA. YOU CAN USE NATSPEC TO DESCRIBE THE ERROR TO THE USER

    //e.g
    error NotEnoughFunds(uint requested, uint available);

    mapping (address => uint) balances;

    function transfer(address _to, uint _amount) public {
        uint balance = balances[msg.sender];
        if (balance < _amount) 
            revert NotEnoughFunds(_amount, balance);
        
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }

    //STRUCTS ARE CUSTOM DEFINED TYPES THAT CAN GROUP SEVERAL VARIABLES 

    //e.g
    struct Voter {
        uint power;
        bool voted;
        address delegate;
        uint vote;
    }

    //ENUMS CAN BE USED TO CREATE CUSTIM TYPES WITH A FINITE SET OF 'CONTANT VALUES' 

    enum AuctionState{
        STARTED, INPROGRESS, PAUSED ,ENDED
    }



    
}

function simpleAuctionHelper (uint _minAmount, uint _maxAmount) pure returns (uint){
    return _maxAmount - _minAmount;
}





