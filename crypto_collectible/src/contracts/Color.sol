pragma solidity >=0.4.21 <0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Color is ERC721 {
    strng[] public colors;
    mapping(string => bool) _colorExist;

    //First param represent the name and second the symbol of the Token!
    constructor() public ERC721("Color", "COL") {}

    function mint(string memory _color) public {
        require(!_colorExist[_color]);
        
        uint256 colorId = colors.push(_color);
        _mint(msg.sender, colorId);
        _colorExist[_color] = true;
    }
}
