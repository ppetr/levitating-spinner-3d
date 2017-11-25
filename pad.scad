module hole() {
    translate([0, 0, -1]) {
        cylinder(h=4, r=2.5);
        cylinder(h=7, r=1);
    }
}

difference() {
    cylinder(h=5, r=40);
    for(i = [1 : 12]) {
        rotate([0, 0, 360 * i / 12]) {
            translate([35, 0, 0]) {
                hole();
            }
            rotate([0, 0, 180 / 12]) {
                translate([30, 0, 0]) {
                    hole();
                }
            }
        }
    }
    for(i = [1 : 12]) {
        rotate([0, 0, 360 * i / 12]) {
            translate([20, 0, 0]) {
                hole();
            }
        }
    }
    for(i = [1 : 6]) {
        rotate([0, 0, 360 * (i + 0.25) / 6]) {
            translate([10, 0, 0]) {
                hole();
            }
        }
    }
}
