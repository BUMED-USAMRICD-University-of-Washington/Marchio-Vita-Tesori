// ============================================================================
// VITA TESORI BY VHALSUEO - MASTER JEWELRY PORTFOLIO
// FILE: VT_Womens_Encolpion_v1.scad
// MATERIAL SPEC: 100% Solid 24K Gold Casting (Zero Lab Synthetics)
// ============================================================================

$fn = 120; // High-fidelity circle optimization for luxury casting

// Adjustable Master Dimensions (mm)
medallion_diameter = 35.0; // Outer face diameter
rim_thickness = 2.0;       // Width of structural decorative border step
base_depth = 4.0;          // Total structural thickness

module imperial_encolpion() {
    union() {
        // 1. Main Medallion Body (Stepped Concentric Geometry)
        difference() {
            // Outer Shield Floor
            cylinder(h=base_depth, d=medallion_diameter, center=true);
            
            // Recessed Flat Center Intended for Laser Engraving
            translate([0, 0, rim_thickness])
            cylinder(h=base_depth, d=medallion_diameter - (rim_thickness * 2), center=true);
        }
        
        // 2. Heavy-Duty Flanged Bail (Top Loop reinforced for combat load chains)
        translate([0, medallion_diameter/2 + 4, 0])
        rotate([90, 0, 0])
        difference() {
            cylinder(h=base_depth - 1, r=6, center=true);
            cylinder(h=base_depth + 2, r=3, center=true);
        }
    }
}

// Render the 3D Solid Gold Women's Encolpion Medallion
imperial_encolpion();
