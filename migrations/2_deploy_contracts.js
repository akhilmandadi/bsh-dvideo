const FileSharer = artifacts.require("./src/contracts/FileSharer");

module.exports = function(deployer) {
  deployer.deploy(FileSharer);
};
