// Copyright 2017 Petr Pudlak
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
