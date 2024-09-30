// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

/*

    SOLIDITY IS A STATICALLY TYPED LANGUAGES : HENCE WE MUST SPECIFY THE TYPE OF EACH LOCAL AND STATE VARIABLE.

    IN ADDITION : TYPES CAN INTERACT WITH EACH OTHER IN EXPRESSIONS CONTAINING OPERATORS.

    NO NULL OR UNDEFINED VALUES IN SOL.

    NEWLY CREATED VALUES ALWAYS HAVE A DEFAULT VALUE DEPEDENT ON ITS TYPE.

    TO HANDLE ANY UNEXPECTED VALUES, USE, REVERT FUNCTION TO REVERT THE WHOLE TRANSACTION, OR RETURN A TUPLE WITH A SECOND BOOL VALUE DENOTING SUCCESS

*/

contract ValueTypes{

    // BOOLEANS : bool only has true and false constant possible values

    /*
        OPERATORS :
            1. ! (logical negation)

            2. && (logical conjunction, "and")

            3. || (logical discunction, "or")

            4. == (equality)

            5. != inequality 
    
    */

    function isKing(uint _num1, uint _num2) public pure returns (bool){
        return _num1 == _num2;
    }

    // INTEGERS : int / uint Signed / UnSigned integers of various sizes, uint8 to uint256 and same int8 to int256

    /*
        OPERATORS
            1. <=, <, == , !=, >=, > (evaluate to bool)

            2. & , | , ^ (Bitwise exclusive or), ~(bitwise negation) these are often known as Bit Operators

            3. << (left shift), >> (right shift)

            4. Arithmetic Operators : + , - , - (unary operator these are only for signed integers), *, /, % (modulo), ** (exponentiation)

            For an int type x, you can use type(x).min and type(x).max to access the minimum and the maximum value representable by the type 


        NB: INTS ARE RESTRICTED TO A CERTAIN RANGE 

            e.g. uint32, has the maximum value of 2**32 -1

            hence uint256, has the maximum value of 2**256-1

            Math in solidity are always in checked mode by default, however you can use the unchecked{} to switch to unchecked mode

            Checked mode reverts through a failing assertion

    */

    uint8 _smallestPossibleValue;






}



