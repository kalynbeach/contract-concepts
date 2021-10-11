// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./People.sol";


/**
*    Individual Member Contracts
*/


contract Music {
    address payable artist;
    string artistName;
    string title;
    uint completedDate;
    uint releaseDate;
    bool completed;
    bool released;
    /// ...
    constructor() {

    }
}


contract Playlist {}


contract Song is Music {}


contract ExtendedPlay is Music, Playlist {}


contract LongPlay is Music, Playlist {}


contract Release {}
