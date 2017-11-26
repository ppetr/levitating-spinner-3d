use <holes_lib.scad>;

$fn = 50;

rotate([180, 0, 0]) {
    difference() {
        cylinder(h=5, r=40);
        hole();
        hole_circle(r=35, n=12);
        hole_circle(r=30, n=12, shift=0.5);
        hole_circle(r=20, n=12);
        hole_circle(r=10, n=6, shift=0.25);
    }
}
