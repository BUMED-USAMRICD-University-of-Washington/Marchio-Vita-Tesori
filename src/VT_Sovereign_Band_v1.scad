// ============================================================================
// VITA TESORI BY VHALSUEO - MASTER JEWELRY PORTFOLIO
// FILE: VT_Sovereign_Band_v1.scad
// MATERIAL SPEC: 100% Solid 24K Gold Casting (Zero Lab Synthetics)
// ============================================================================

$fn = 60; // Optimized geometry for interwoven pattern segments

ring_size_inner_diameter = 19.8; // Graded for standard US Size 10
band_width = 6.0;                // Structural vertical band height (mm)
loop_count = 24;                 // Number of repeating Byzantine geometric weaves

module byzantine_weave_loop() {
    // A single interwoven gold wire profile
    rotate_extrude()
    translate([1.2, 0, 0])
    circle(r=0.6);
}

module sovereign_byzantine_band() {
    union() {
        // Generate the repeating interlocking structural ring wall
        for (i = [0 : loop_count - 1]) {
            rotate([0, 0, i * (360 / loop_count)])
            translate([ring_size_inner_diameter/2 + 0.6, 0, 0])
            rotate([45, 25, 0]) // Traditional old-school intersection angle
            byzantine_weave_loop();
        }
        
        // Internal structural stabilizer rim (Bottom Edge)
        difference() {
            cylinder(h=0.8, d=ring_size_inner_diameter + 1.6, center=true);
            cylinder(h=2, d=ring_size_inner_diameter, center=true);
        }
        // Internal structural stabilizer rim (Top Edge)
        translate([0, 0, band_width - 0.8])
        difference() {
            cylinder(h=0.8, d=ring_size_inner_diameter + 1.6, center=true);
            cylinder(h=2, d=ring_size_inner_diameter, center=true);
        }
    }
}

// Render the 3D Solid Open-Weave Byzantine Band
sovereign_byzantine_band();
