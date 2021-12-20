pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract NFT is ERC721 {
  uint public nextTokenId;
  address public admin;

  constructor() ERC721('My NFT', 'NFT') {
    admin = msg.sender;
  }

  function mint(address to) external {
    require(msg.sender == admin, 'only admin');
    _safeMint(to, nextTokenId);
    nextTokenId++;
  }

  function _baseURI() internal view override returns (string memory) {
    return 'https://shrouded-brook-60525.herokuapp.com/';
  }
  function imghash() public pure returns (string memory) {
    return 'BA4F21DA16BD11B052A8F709A88551A34787DE2FB33C6F455EF3AF27CEA9D609';
  }
}
