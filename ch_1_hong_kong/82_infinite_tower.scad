// #82 - infinite tower
// Author: RJ Duran (rjduranjr@gmail.com)
// Date: 2025.01.07

slice_dist = 32;
thickness = 15;

// bottom cylinder
rotate([0,90,90]){
    difference(){
        cylinder(h=thickness, r=30, center=true);
        
        translate([slice_dist,0,0])
            cube([10,60,thickness+1], center=true);
        
        translate([-slice_dist-2,0,0])
            cube([10,60,thickness+1], center=true);
    }
}

// top cylinder
translate([0,0,57.999]){
    rotate([0,90,0]){
        difference(){
            cylinder(h=thickness, r=30, center=true);
            
            translate([slice_dist+2,0,0])
                cube([10,60,thickness+1], center=true);
        }
    }
}