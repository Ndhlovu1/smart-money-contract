pragma solidity 0.8.15;

contract SendMoneyContract {

    string public myQuote = "Aim for the best";

    function updateQuote(string memory _newQuote) public payable {
        if( msg.value == 1 ether){
            myQuote = _newQuote;
        }else{
            //Send Money back to the sender
            //Payable turns the address into a receivable address
            payable(msg.sender).transfer(msg.value);
        }
    }





}  