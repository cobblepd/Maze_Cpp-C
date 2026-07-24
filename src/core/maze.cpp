#include "maze.h"
#include <iostream>

namespace {
    constexpr int maxSize = 50;
}

Maze::Maze() = default;

Maze::Maze(int rows, int cols) : 
    rows_(rows), columns_(cols),
    right_walls(std::vector<std::vector<bool>>(rows_, std::vector<bool>(columns_, false))),
    bottom_walls(std::vector<std::vector<bool>>(rows_, std::vector<bool>(columns_, false))) 
{
    if(!validSize(rows, cols)){
        throw std::invalid_argument("Invalid Maze size");
    }

    for(int row=0; row < rows_; row++){
        right_walls[row][columns_ - 1] = true;
    }

    for(int column=0; column < columns_; column++){
        bottom_walls[rows_ - 1][column] = true;
    }
}

bool Maze::validSize(int rows, int cols) {
    return rows > 0 && rows <= maxSize && cols > 0 && cols <= maxSize;
}

bool Maze::validCeil(int rows, int cols){
    return rows >= 0 && rows < rows_ && cols >= 0 && cols < columns_;
}

void Maze::setRightWall(int row, int cols, bool value){
    if(!validCeil(row, cols)){
        throw std::out_of_range("Invalid ceil position");
    }

    right_walls[row][cols] = value;
}
void Maze::setBottomWall(int row, int cols, bool value){
    if(!validCeil(row, cols)){
        throw std::out_of_range("Invalid ceil position");
    }

    bottom_walls[row][cols] = value;
}


void Maze::printMaze(){
    for(int i = 0; i < right_walls.size(); i++){
        for(int j = 0; j < right_walls[i].size(); j++){
            std::cout << right_walls[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;

    for(int i = 0; i < bottom_walls.size(); i++){
        for(int j = 0; j < bottom_walls[i].size(); j++){
            std::cout << bottom_walls[i][j] << " ";
        }
        std::cout << std::endl;
    }
}