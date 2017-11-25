$fn = 50;

module cylinder_outer(h, r, fn) {
    fudge = 1/cos(180/fn);
    cylinder(h=h, r=r*fudge, $fn=fn);
}

module hole() {
    translate([0, 0, -1]) {
        cylinder_outer(h=4, r=2.5, fn=$fn);
        cylinder_outer(h=7, r=1, fn=$fn);
    }
}

module hole_circle(r, n, shift=0) {
    for(i = [1 : n]) {
        rotate([0, 0, 360 * (i + shift) / n]) {
            translate([r, 0, 0]) {
                hole();
            }
        }
    }
}

difference() {
    union() {
        cylinder(h=5, r=10);
        cylinder(h=15, r1=2, r2=1, $fn=6);
    }
    hole_circle(r=6.5, n=6);
}
