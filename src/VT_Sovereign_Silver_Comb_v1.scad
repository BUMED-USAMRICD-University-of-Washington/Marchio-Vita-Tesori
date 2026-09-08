// ============================================================================
// VITA TESORI BY VHALSUEO - MASTER JEWELRY & ACCESSORY PORTFOLIO
// FILE: VT_Sovereign_Silver_Comb_v1.scad
// MATERIAL SPEC: 100% Solid Sterling Silver Casting (Zero Lab Synthetics)
// HISTORICAL BASIS: Imperial Roman-Byzantine Dual-Sided H-Comb Architecture
// ============================================================================

$fn = 80; // High-density curvature smoothing for cast mold accuracy

// Master Sizing Variables (Adjustable in millimeters)
comb_length = 90.0;       // Horizontal scale of the central spine
comb_height = 65.0;       // Vertical scale including both sets of teeth
spine_height = 20.0;      // Height of the flat central engraving panel
thickness = 3.0;          // Structural silver plate depth

module silver_h_comb() {
    union() {
        // 1. Central Structural Spine (The Engraving Spine)
        translate([0, 0, thickness/2])
        cube([comb_length, spine_height, thickness], center=true);
        
        // 2. Coarse Detangling Teeth Layer (Top Side - Wide Spacing)
        // Spaced out mathematically to distribute detangling forces safely
        for (x = [-comb_length/2 + 3 : 6 : comb_length/2 - 3]) {
            translate([x, (spine_height/2) + (comb_height - spine_height)/4, thickness/2])
            // Tapered historical teeth geometry
            cylinder(h=thickness, r1=1.5, r2=0.5, h=(comb_height - spine_height)/2, center=true);
        }
        
        // 3. Fine Smoothing Teeth Layer (Bottom Side - High Density)
        // Dense layout optimized for structural micro-smoothing and cleaning
        for (x = [-comb_length/2 + 1.5 : 2.5 : comb_length/2 - 1.5]) {
            translate([x, -((spine_height/2) + (comb_height - spine_height)/4), thickness/2])
            // Ultra-fine tapered historical teeth geometry
            cylinder(h=thickness, r1=0.8, r2=0.3, h=(comb_height - spine_height)/2, center=true);
        }
    }
}

// Render the 3D Solid Sterling Silver H-Comb Chassis
silver_h_comb();
