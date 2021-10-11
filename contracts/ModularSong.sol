// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";



/**
    "ModularBase" Concept
*/

contract ModularBase {
    /// Roles ...
    bytes32 public constant URI_SETTER_ROLE = keccak256("URI_SETTER_ROLE");
    bytes32 public constant CREATIVE_ROLE = keccak256("CREATIVE_ROLE");
    bytes32 public constant BUSINESS_ROLE = keccak256("BUSINESS_ROLE");
    bytes32 public constant ARTIST_ROLE = keccak256("ARTIST_ROLE");
    bytes32 public constant PRODUCER_ROLE = keccak256("PRODUCER_ROLE");
    bytes32 public constant EXEC_PRODUCER_ROLE = keccak256("EXEC_PRODUCER_ROLE");
}

/**
    "ModularSong" Token Concept
*/



contract ModularSong is ERC1155, AccessControl, ModularBase {

    /// Song Sections ...
    uint public constant INTRO = 0;
    uint public constant VERSE = 1;
    uint public constant PRECHORUS = 2;
    uint public constant CHORUS = 3;
    uint public constant BRIDGE = 4;
    uint public constant OUTRO = 5;

    /// Ownership ...
    /// -- Points/Shares

    /// ...

    constructor() ERC1155("") {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(URI_SETTER_ROLE, msg.sender);
        /// ...
    }

    function setURI(string memory newuri) public onlyRole(URI_SETTER_ROLE) {
        _setURI(newuri);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC1155, AccessControl)
        returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}