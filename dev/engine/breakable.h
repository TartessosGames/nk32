// breakable.h

void break_wall (void) {
    gpaux = COORDS (_x, _y);
    if (brk_buff [gpaux] < BREAKABLE_WALLS_LIFE) {
        #ifdef BREAKABLE_WALLS_HIT_CHANGE
            if (brk_buff [gpaux] == 0) {
                _n = map_buff[gpaux]; // Preservar _n
                _t = BREAKABLE_WALLS_HIT_TILE;
                update_tile ();
            }
        #endif
        
        ++brk_buff [gpaux];
        
        #ifdef MODE_128K
            gpit = SFX_BREAKABLE_HIT;			
        #else
            gpit = 1;
        #endif
        #include "my/ci/on_wall_hit.h"
    } else {
        _n = _t = 0; 
        update_tile ();
        #ifdef MODE_128K
            gpit = SFX_BREAKABLE_BREAK;
        #else
            gpit = 0;
        #endif
        #include "my/ci/on_wall_broken.h"
    }
    #ifdef MODE_128K
        wyz_play_sound (gpit);
    #else			
        sp_UpdateNow ();
        beep_fx (gpit);
    #endif
}