union()
{
    linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
    {
        scale([45.0, 15.0])
        {
            M52();
        }
    }
    linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
    {
        scale([15.0, 45.0])
        {
            M52();
        }
    }
}

module M52()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}
