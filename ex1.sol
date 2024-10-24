//SPDX-License-Identifier: GPL2.0
pragma solidity ^0.8.0;

contract Quadrangle{
    uint32 ______ area;
    uint32 ______ perimeter;
    string ______ colour;
    string ______ shape;
    event display(string, string, uint32, uint32);
    //setter
    function setColourAndShape(string ______ _colour, string ______ _shape) public {
        colour = _colour;
        shape  = _shape;
    }
    function getPerimeter() public ____ returns(uint32){
        return _________;
    }
    function displayAll() public returns (string ______, string ______, uint32, uint32){
        emit display(colour, shape, area, perimeter);
        return(colour, shape, area, perimeter);
    }
}

contract Square is Quadrangle{
    uint32 public width;
    function setWidth(uint32 _width) public {
        width = _width;
    }
    function setArea() public {
        area = _____ * _____;
    }
    function setPerimeter() public{
        perimeter = 4 * _____;
    }
}

contract Rectangle is Quadrangle{
    uint32 public width;
    uint32 public height;
    function setWidthHeight(uint32 _width, uint32 _height) public {
        width = _width;
        height = _height;
    }
    function setArea() public {
        area = _____ * ______;
    }
    function setPerimeter() public{
        perimeter = 2 * ( _____ +  ______);
    }
}


contract Test{
    Square square = new Square();
    Rectangle rectangle = new Rectangle();
    function testSquare() public {
    square.setColourAndShape("Red", "Square");
    square.setWidth(3);
    square.setArea();
    square.setPerimeter();
    square.displayAll();
    }

    function testRectangle() public {
    rectangle.setWidthHeight(3,7);
    rectangle.setColourAndShape("Blue", "Rectangle");
    rectangle.setArea();
    rectangle.setPerimeter();
    rectangle.displayAll();
    }
}
