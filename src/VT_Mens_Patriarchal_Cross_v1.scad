// ============================================================================
// VITA TESORI BY VHALSUEO - MASTER JEWELRY PORTFOLIO
// FILE: VT_Mens_Patriarchal_Cross_v1.scad
// MATERIAL SPEC: 100% Solid 24K Gold Casting (Zero Lab Synthetics)
// ============================================================================

$fn = 100; // Flawless high-density rendering curves for casting

// Adjustable Master Dimensions (mm)
cross_height = 50.0;     // Total vertical axis height
main_width = 30.0;       // Width of primary lower crossbar
upper_width = 20.0;      // Width of smaller upper crossbar
stem_thickness = 4.0;    // Thickness of the square cross beams
depth = 3.5;             // Total solid gold plate depth

module patriarchal_cross() {
    union() {
        // 1. Central Vertical Stem
        translate([0, 0, depth/2])
        cube([stem_thickness, cross_height, depth], center=true);
        
        // 2. Primary Lower Crossbar
        translate([0, -5, depth/2])
        cube([main_width, stem_thickness, depth], center=true);
        
        // 3. Smaller Upper Crossbar
        translate([0, 12, depth/2])
        cube([upper_width, stem_thickness, depth], center=true);
        
        // 4. Heavy Duty Suspension Bail (Top Loop for Chain Pass-Through)
        translate([0, cross_height/2 + 4, depth/2])
        rotate([90, 0, 0])
        difference() {
            cylinder(h=depth, r=5, center=true);
            cylinder(h=depth+2, r=2.5, center=true);
        }
    }
}

// Render the 3D Solid Gold Patriarchal Cross
patriarchal_cross();
