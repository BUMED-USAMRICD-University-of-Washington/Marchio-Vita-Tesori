// ============================================================================
// VITA TESORI BY VHALSUEO - MASTER JEWELRY PORTFOLIO
// FILE: VT_Sovereign_Signet_v1.scad
// MATERIAL SPEC: 100% Solid 24K Gold Casting (Zero Lab Synthetics)
// ============================================================================

$fn = 100; // Calibrate for flawless high-density rendering curves

// Master Sizing & Grading Variables (Adjustable for all finger sizes)
ring_size_inner_diameter = 19.8; // Graded for standard US Size 10
band_thickness = 2.5;            // Structural wall thickness (mm)
bezel_width = 24.0;             // Flat upper signet face diameter (mm)
bezel_height = 16.0;            // Vertical oval scale (mm)

module sovereign_signet_chassis() {
    difference() {
        // Outer Solid Ring Matrix Hull
        union() {
            // Main Torus Band Shape
            rotate_extrude()
            translate([ring_size_inner_diameter/2 + band_thickness/2, 0, 0])
            circle(d=band_thickness * 3);
            
            // Architectural Bezel Extension
            translate([0, ring_size_inner_diameter/2 + band_thickness, 0])
            rotate([90, 0, 0])
            scale([bezel_width/bezel_height, 1, 1])
            cylinder(h=band_thickness * 2, r=bezel_height/2, center=true);
        }
        
        // Inner Anatomical Zero-Squeeze Core Cut
        cylinder(h=100, d=ring_size_inner_diameter, center=true);
        
        // Flattening Plane for the Gold Enging Surface
        translate([0, ring_size_inner_diameter/2 + band_thickness * 2, 0])
        cube([bezel_width + 10, band_thickness, bezel_height + 10], center=true);
    }
}

// Render the 3D Solid Gold Signet Chassis
sovereign_signet_chassis();
