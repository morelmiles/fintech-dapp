// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.0;

contract DaiToken {
    string public name = "Mock DaiToken";
    string public symbol = "mDai";
    uint256 public totalSupply = 100000000000000;
    uint public decimals = 18;

    event Transfer (
        address indexed_from, 
        address indexed_to,
        uint256 _value; 
    );

    event Approval (
        address indexed_owner, 
        address indexed_spender, 
        uint256 _value
    );

    mapping(address =>uint256) public balanceOf; 
    mapping(address => mapping(address => uint256 )) public allowance; 

    constructor ()  {
        balanceOf[msg.sender] = totalSupply;
    };

    function transfer(address _to uint256) public returns (bool success) {
        require(balanceOf[msg.sender]) >= _value;
        balanceOf[msg.sender] -= value;
        balanceOf[_to] += value; 
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

function approve(address _spender, uint256 _value) public returns (bool success) {
    allowance[msg.sender][_spender] = value;
    emit Approval(msg.sender, _spender, _value);
    return true; 
}
    
    function TransferFrom( address _from, address _to, uint256 _value) public returns (bool success){
        require(_value <= balanceOf[_from];)
        require(_value <= allowance[_from][msg.sender]);
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value); 
        return true;
    } 

}