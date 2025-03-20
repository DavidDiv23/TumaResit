var grid = [
    ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"],
    ["B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8"],
    ["C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8"],
    ["D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8"],
    ["E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8"],
    ["F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8"],
    ["G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8"],
    ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8"]
];

var tile_size = 64; // Tile width & height in pixels
var grid_offset_x = 256; // Starting X position
var grid_offset_y = 64;  // Starting Y position



for (var row = 0; row < 8; row++) {
    
    for (var col = 0; col < 8; col++) {
        var x_pos = col * tile_size + grid_offset_x;
        var y_pos = row * tile_size + grid_offset_y;
		
		
		#region Level1  
		
		//Specifying Special Tiles
		if (grid[row][col] == "C1") //Projector
		{
			instance_create_layer(x_pos, y_pos, "GameObjects", o_Projector);
		}
		else if (grid[row][col] == "F8") //Blue Mirror
		{
			instance_create_layer(x_pos, y_pos, "GameObjects", o_MirrorB);
		}
		else if (grid[row][col] == "G3") //Red Mirror
		{
			instance_create_layer(x_pos, y_pos, "GameObjects", o_MirrorR);
		}
		else if (grid[row][col] == "G6") //Filter
		{
			instance_create_layer(x_pos, y_pos, "GameObjects", o_Filter);
		}
		else
		{ 
			//Creating the rest of the tiles
			instance_create_layer(x_pos, y_pos, "GameObjects", o_Tile);
		}
		
		#endregion
	
		
		
		
	
       /* // Example: Place a wall object on D row
        if (grid[row][col] == "D1" || grid[row][col] == "D2" || grid[row][col] == "D3") {
            instance_create_layer(x_pos, y_pos, "GameObjects", o_Tile);
        }

        // Example: Place a hidden object on A3
        if (grid[row][col] == "A3") {
            instance_create_layer(x_pos, y_pos, "GameObjects", o_Projector);
        }*/
    }
}
