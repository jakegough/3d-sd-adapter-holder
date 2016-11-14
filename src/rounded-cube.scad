rounded_cube([10, 10, 10]);

module rounded_cube(size, radius = 1)
{
    hull()
    {
        x = size[0];
        y = size[1];
        z = size[2];

        translate([radius, radius, radius])
        sphere(r = radius);

        translate([x - radius, radius, radius])
        sphere(r = radius);

        translate([x - radius, y - radius, radius])
        sphere(r = radius);

        translate([radius, y - radius, radius])
        sphere(r = radius);

        translate([radius, radius, z - radius])
        sphere(r = radius);

        translate([x - radius, radius, z - radius])
        sphere(r = radius);

        translate([x - radius, y - radius, z - radius])
        sphere(r = radius);

        translate([radius, y - radius, z - radius])
        sphere(r = radius);
    }
}