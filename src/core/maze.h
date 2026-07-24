#pragma once

#include <vector>

class Maze{
public:
    Maze();
    Maze(int rows, int cols);

    bool validSize(int rows, int cols);
    bool validCeil(int rows, int cols);

    bool hasRightWall(int row, int cols);
    bool hasBottomWall(int row, int cols);
    bool hasLefttWall(int row, int cols);
    bool hasTopWall(int row, int cols);

    void setRightWall(int row, int cols, bool value);
    void setBottomWall(int row, int cols, bool value);

    void printMaze();
private:
    int rows_ = 0;
    int columns_ = 0;

    std::vector<std::vector<bool>> right_walls;
    std::vector<std::vector<bool>> bottom_walls;
};