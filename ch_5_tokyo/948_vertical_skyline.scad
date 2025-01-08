// #948 - vertical skyline
// Author: RJ Duran (rjduranjr@gmail.com)
// Date: 2025.01.07

// 31 layers of rectangles stacked

width = 60;
layer_height = 3;
depth = [
30, 40, 50, 40, 45, 55, 47, 40, 42, 30,
40, 30, 28, 60, 40, 35, 30, 25, 40, 50,
30, 40, 55, 30, 40, 45, 30, 40, 30, 40, 50
];
    
for(i = [0 : 1 : len(depth)-1]){
    translate([0,0,layer_height*i])
        cube([width,depth[i],layer_height]);
}