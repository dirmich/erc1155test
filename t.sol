// File: contracts/Child.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Child {
    address private parent;
    string private _name;
    uint8 private _age;

    constructor(string memory name_, uint8 age) {
        parent = msg.sender;
        _name = name_;
        _age = age;
    }

    event ChildInfo(string name, uint8 age);

    function name() public view virtual returns (string memory) {
        return _name;
    }

    function info() public virtual {
        emit ChildInfo(_name, _age);
    }
}

// File: contracts/Parent.sol


pragma solidity >=0.4.22 <0.9.0;


contract Parent {
    string private _name;
    mapping(address => Child) public children;


    event CreateChild(string name, uint8 age);


    constructor(string memory name_) {
        _name = name_;
    }


    function name() public view returns (string memory) {
        return _name;
    }

    function mint(string memory name_, uint8 age) public returns (Child) {
        Child c = new Child(name_, age);
        children[address(c)] = c;
        emit CreateChild(name_, age);
        return c;
    }
}
