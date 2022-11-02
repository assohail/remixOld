// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract One {
    function OneFunc() public virtual pure returns (string memory){
        return "Func 1";
    }
}

contract Two is One {
    function OneFunc() public virtual override pure returns (string memory){
        return "Func 2";
    }
    function accessContractOne() public pure returns (string memory){
        return super.OneFunc();
    }
}

contract Three is Two {
    function OneFunc() public override pure returns (string memory){
        return "Func 3";
    }
    function acessContractTwo() public pure returns (string memory){
        return super.accessContractOne();
    }
}