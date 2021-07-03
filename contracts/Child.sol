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
