// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract NFT is ERC721PresetMinterPauserAutoId {
    constructor(
        name,
        symbol,
        baseUrl
    ) ERC721PresetMinterPauserAutoId(name, symbol, baseUrl) {}
}
