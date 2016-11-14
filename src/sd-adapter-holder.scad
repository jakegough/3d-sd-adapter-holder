use <rounded-cube.scad>;

$fn = 24;

inner_height = 45;
inner_width = 35.25 + 3;
inner_depth = 11.5 + 5;
hole_width = 20 + 3;
hole_depth = 10;
wall_thickness = 1.8;
corenr_radius = 1.6;

sd_adapter_holder();

module sd_adapter_holder()
{
    difference()
    {
        // main body
        rounded_cube([
            inner_width + 2 * wall_thickness,
            inner_height + wall_thickness,
            inner_depth + 2 * wall_thickness
        ], radius = corenr_radius);

        // main hole
        translate([wall_thickness, wall_thickness, wall_thickness])
        cube([
            inner_width,
            inner_height + 1,
            inner_depth
        ]);

        // ribbon cable
        ribbon_hole_position_x = wall_thickness + ((inner_width - hole_width) / 2);
        //ribbon_hole_position_z = wall_thickness + ((inner_depth - hole_depth) / 2);
        translate([ribbon_hole_position_x, -1, wall_thickness])
        cube([
            hole_width,
            wall_thickness + 2,
            hole_depth
        ]);
    }
}