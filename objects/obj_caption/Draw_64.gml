<<<<<<< HEAD
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 30E7C56F
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "var" "typedWord"
draw_text(10, 10, string("Caption: ") + string(typedWord));
=======
/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 202D45D9
/// @DnDArgument : "color" "$FF3A3A60"
draw_set_colour($FF3A3A60 & $ffffff);
var l202D45D9_0=($FF3A3A60 >> 24);
draw_set_alpha(l202D45D9_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4808BB8F
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 488171B9
<<<<<<< HEAD
/// @DnDArgument : "font" "fnt_main"
/// @DnDSaveInfo : "font" "fnt_main"
draw_set_font(fnt_main);
=======
/// @DnDArgument : "font" "fnt_caption"
/// @DnDSaveInfo : "font" "fnt_caption"
draw_set_font(fnt_caption);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 30E7C56F
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "typedWord"
draw_text(room_width/2, 30,  + string(typedWord));
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf
