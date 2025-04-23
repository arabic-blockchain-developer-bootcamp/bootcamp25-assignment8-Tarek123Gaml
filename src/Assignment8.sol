// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";    
import "@openzeppelin/contracts/access/Ownable.sol";

contract Assignment8 is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;

    constructor() ERC721("assTok", "ast") Ownable(msg.sender){}

    function mintNFT(string memory jsonURI) external {
        _mint(msg.sender, _tokenIdCounter);
        _setTokenURI(_tokenIdCounter, jsonURI);
        _tokenIdCounter++;
    }
}
