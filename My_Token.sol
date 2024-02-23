// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {
    // Public variables that store the details about the coin
    string public tokenName = "VRTokens";
    string public tokenAbbreviation = "VR";
    uint256 public totalSupply=0;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function that takes an address and a value
    function mint(address _to, uint256 _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    // Burn function that takes an address and a value
    function burn(address _from, uint256 _amount) public {
        require(balances[_from] >= _amount, "Insufficient balance to burn.");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
