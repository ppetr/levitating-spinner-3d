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

use <holes_lib.scad>;

$fn = 50;

difference() {
    union() {
        cylinder(h=5, r=10);
        cylinder(h=15, r1=2, r2=1, $fn=6);
    }
    hole_circle(r=6.5, n=6);
}
