// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;



/**
*    Individual Member Contracts
*/


contract Individual {
    
    enum Field {
        Creative,
        Business
    }

    address payable addr;
    uint birthdate;
    string legalName;
    /// ...
}

contract CreativeMember is Individual {
    Field field = Field.Creative;
}

contract BusinessMember is Individual {
    string orgName;
    Field field = Field.Business;
}


contract Artist is CreativeMember {
    /// ...
}


contract Producer is CreativeMember {}


contract Manager is BusinessMember {}


contract Agent is BusinessMember {}



/**
*    Group Member Contracts
*/


contract Group {
    string name;

}

contract Team {
    
}

contract ArtistGroup is Group {

}