<<<<<<< HEAD
// --- 1. SETUP POSISI & BACKGROUND ---
var box_x = display_get_gui_width() - 600 - 1; 
var box_y = display_get_gui_height() - 249 - 35; 

draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 2. SETUP LOOPING SLOT ---
var start_x = box_x + 90;  // Posisi awal X
var start_y = box_y + 160; // Posisi awal Y
var gap_x   = 110;         // Jarak antar slot

// --- 3. LOOPING ISI TAS (ARRAY) ---
for (var i = 0; i < array_length(global.inv_player); i++) {
    
    // Ambil data item dari slot ke-i
    var _item = global.inv_player[i];
    
    // Cek: Jika slot TIDAK KOSONG (-1 artinya kosong)
    if (_item != -1) {
        
        // Hitung posisi gambar berdasarkan urutan (i)
        var _draw_x = start_x + (i * gap_x);
        var _draw_y = start_y;
        
        // A. GAMBAR SPRITE ITEM
        // Safety Check: Pastikan item punya data sprite valid
        if (variable_struct_exists(_item, "sprite") && _item.sprite != -1) {
            draw_sprite(_item.sprite, 0, _draw_x, _draw_y);
        } 
        else {
            // Jika error/sprite tidak ketemu, gambar tanda tanya
            draw_text(_draw_x, _draw_y, "?"); 
        }
        
        // B. GAMBAR NAMA ITEM
        draw_set_halign(fa_center); // Rata Tengah
        draw_set_color(c_white);
        
        // Geser teks ke kanan (+55) dan ke bawah (+40) agar pas di tengah slot
        draw_text(_draw_x + 55, _draw_y + 40, _item.name);
        
        // C. (OPSIONAL) FITUR BADGE JUMLAH
        // Jika nanti kamu update sistem agar item bisa di-stack (punya quantity)
        if (variable_struct_exists(_item, "quantity")) {
             var badge_x = _draw_x + 55;
             var badge_y = _draw_y + 70;
             
             draw_set_color(c_orange);
             draw_circle(badge_x, badge_y, 14, false);
             
             draw_set_color(c_white);
             draw_set_valign(fa_middle);
             draw_text(badge_x, badge_y, string(_item.quantity));
        }

        // Reset Settingan Gambar (Wajib)
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_color(c_white);
    }
=======
// --- 1. Tentukan Posisi Pojok Kanan Bawah ---
var box_x = display_get_gui_width() - 600 - 1; 
var box_y = display_get_gui_height() - 249 - 35; 
var _x_offset = 0

// --- 2. Gambar Kotak Background ---
draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 3. LOGIKA BARU: Wortel + Angka (Stacking) ---

// Cek: Kalau wortelnya lebih dari 0, baru gambar
if (global.carrot > 0) {
    
    // A. Tentukan Posisi Wortel (Slot 1)
    // SAYA HAPUS "+ (i * 64)" KARENA KITA TIDAK MAU BERJEJER
    var carrot_x = box_x + 90; 
    var carrot_y = box_y + 160; 

    // B. Gambar Icon Wortel (CUKUP SEKALI SAJA)
    draw_sprite(spr_carrot, 0, carrot_x, carrot_y);
    
    // C. Gambar Lingkaran Angka (Badge)
    // Kita gambar di pojok kanan bawah icon wortel
    var badge_x = carrot_x + 55; // Geser ke kanan icon
    var badge_y = carrot_y + 70; // Geser ke bawah icon
    
    // 1. Gambar Lingkaran Oranye
    draw_set_color(c_orange); 
    draw_circle(badge_x, badge_y, 14, false); // Angka 14 itu ukuran lingkarannya
    
    // 2. Gambar Angka Jumlahnya
    draw_set_color(c_white);
    draw_set_halign(fa_center); // Rata Tengah (Wajib biar angka pas di tengah lingkaran)
    draw_set_valign(fa_middle); 
    
    // PENTING: string(global.carrot) mengubah angka jadi tulisan
    draw_text(badge_x, badge_y, string(global.carrot));
    
    // D. Reset Settingan (Supaya UI lain tidak berantakan)
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}

if (global.carrotseed > 0) {
	var carrotseed_x = box_x + 200; 
	var carrotseed_y = box_y + 160; 

 // B. Gambar Icon Wortel (CUKUP SEKALI SAJA)
    draw_sprite(spr_carrot_seed, 0, carrotseed_x, carrotseed_y);
    
    // C. Gambar Lingkaran Angka (Badge)
    // Kita gambar di pojok kanan bawah icon wortel
    var badge_x = carrotseed_x + 55; // Geser ke kanan icon
    var badge_y = carrotseed_y + 70; // Geser ke bawah icon
	
	// 1. Gambar Lingkaran Oranye
    //draw_set_color(c_orange); 
    //draw_circle(badge_x, badge_y, 14, false); // Angka 14 itu ukuran lingkarannya
    
    // 2. Gambar Angka Jumlahnya
   // draw_set_color(c_white);
    //draw_set_halign(fa_center); // Rata Tengah (Wajib biar angka pas di tengah lingkaran)
    //draw_set_valign(fa_middle); 
    
    // PENTING: string(global.carrot) mengubah angka jadi tulisan
    draw_text(badge_x, badge_y, string(global.carrotseed));
}
// -

for(var i = 0; i < ds_list_size(items); i++){
	var _item_x = box_x + 90 + _x_offset
	var _item_y = box_y + 160
	
	var _spr = object_get_sprite(ds_list_find_value(items, i))
	
	draw_sprite(_spr, 0, _item_x, _item_y)
	_x_offset += 100
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf
}