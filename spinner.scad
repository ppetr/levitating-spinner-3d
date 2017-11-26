use <holes_lib.scad>;

$fn = 50;

difference() {
    union() {
        cylinder(h=5, r=10);
        cylinder(h=15, r1=2, r2=1, $fn=6);
    }
    hole_circle(r=6.5, n=6);
}
