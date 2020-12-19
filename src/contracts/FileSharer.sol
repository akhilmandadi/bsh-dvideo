pragma solidity ^0.5.0;

contract FileSharer {
  string public name;
  uint public FileCount = 0;
  mapping(uint => File) public Files;

  struct File {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  event FileCreated(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  constructor() public {
    name = "File Sharer";
  }

  function uploadFile(string memory _imgHash, string memory _description) public {

    require(bytes(_imgHash).length > 0);

    require(bytes(_description).length > 0);

    require(msg.sender!=address(0));
    FileCount ++;
    Files[FileCount] = File(FileCount, _imgHash, _description, 0, msg.sender);
    emit FileCreated(FileCount, _imgHash, _description, 0, msg.sender);
  }

}
