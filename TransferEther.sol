// pragma solidity ^ 0.4.20;
pragma solidity >=0.7.0 <0.9.0;

contract Receiver {
    function GetBalance() public view returns(uint){
        return address(this).balance;
    }

    fallback() external {} 
}

contract Transfer {
    function Send(address payable _add) public payable {
        _add.transfer(msg.value);
    }
}