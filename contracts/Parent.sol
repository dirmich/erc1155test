// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Child.sol";

contract Parent {
    string private _name;
    mapping(address => Child) public children;

    constructor(string memory name_) {
        _name = name_;
    }

    function name() public view returns (string memory) {
        return _name;
    }

    function mint(string memory name_, uint8 age) public  returns (Child ) {
        Child c = new Child(name_, age);
        children[address(c)] = c;
        return c;
    }
}
