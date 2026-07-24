#include "maze.h"
#include <iostream>

int main(){
    Maze a(4,4);
    a.printMaze();
    std::cout << std::endl;
    a.setBottomWall(0, 1, true);
    a.setBottomWall(0, 2, true);
    a.setBottomWall(0, 3, true);

    a.setRightWall(0, 2, true);
    a.setRightWall(0, 1, true);
    a.setRightWall(0, 2, true);
    a.setRightWall(0, 3, true);

    a.printMaze();
}