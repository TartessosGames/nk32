#line 1 "mk1.c"
 
 

 
 
#line 1 "c:\z88dk\lib\config\\..\..\/include/spritepack.h"




 




















typedef unsigned char uchar;
typedef unsigned int uint;


 

extern void *u_malloc;       
extern void *u_free;         


 







 








 









 






 






 






























 






















 

struct sp_SS {
   uchar row;            
   uchar col;            
   uchar height;         
   uchar width;          
   uchar hor_rot;
   uchar ver_rot;
   uchar *first;         
   uchar *last_col;
   uchar *last;
   uchar plane;
   uchar type;
};


 

struct sp_CS {
   uchar *next_in_spr;   
   uchar *prev;          
   uchar spr_attr;       
   uchar *left_graphic;
   uchar *graphic;
   uchar hor_rot;
   uchar colour;         
   uchar *next;          
   uchar unused;
};


 

struct sp_Rect {
   uchar row_coord;      
   uchar col_coord;
   uchar height;         
   uchar width;
};


 

struct sp_PSS {
   struct sp_Rect *bounds;   
   uchar flags;              
   uchar x;                  
   uchar y;                  
   uchar colour;             
   void *dlist;              
   void *dirtychars;         
   uchar dirtybit;           
};


 

struct sp_LargeRect {
   uint top;             
   uint bottom;
   uint left;            
   uint right;
};

struct sp_Interval {     
   uint x1;              
   uint x2;              
};


 

struct sp_UDK {
   uint fire;      
   uint right;     
   uint left;
   uint down;
   uint up;
};


 

struct sp_MD {        
   uchar             maxcount;
   uint              dx;
   uint              dy;
};

struct sp_UDM {
   struct sp_UDK    *keys;         
   void             *joyfunc;      
   struct sp_MD    **delta;        
   uchar             state;        
   uchar             count;        
   uint              y;            
   uint              x;
};


 

struct sp_ListNode {               
   void               *item;
   struct sp_ListNode *next;
   struct sp_ListNode *prev;
};

struct sp_List {
   uint               count;       
   uchar              state;       
   struct sp_ListNode *current;    
   struct sp_ListNode *head;       
   struct sp_ListNode *tail;       
};


 

struct sp_HashCell {
   void *key;
   void *value;
   struct sp_HashCell *next;
};

struct sp_HashTable {
   uint               size;        
   struct sp_HashCell **table;     
   void               *hashfunc;   
   void               *match;      
   void               *delete;     
};


 

struct sp_HuffmanJoin {
   union {
      uint freq;
      void *parent;
   } u;
   void *left;
   void *right;
};

struct sp_HuffmanLeaf {
   union {
      uint freq;
      void *parent;
   } u;
   uint c;                 
};

struct sp_HuffmanCodec {
   uint     symbols;       
   void     *addr;         
   uchar    bit;           
   void     *root;         
   union {
      struct sp_HuffmanLeaf **heap;       
      struct sp_HuffmanLeaf **encoder;   
                   
   } u;
};


 

 































































































 

extern void __LIB__  sp_InitIM2(void *default_isr);            
extern void __LIB__ *sp_InstallISR(uchar vector, void *isr);           
extern void __LIB__  sp_EmptyISR(void);
extern void __LIB__ *sp_CreateGenericISR(void *addr);
extern void __LIB__  sp_RegisterHook(uchar vector, void *hook);        
extern void __LIB__  sp_RegisterHookFirst(uchar vector, void *hook);   
extern void __LIB__  sp_RegisterHookLast(uchar vector, void *hook);    
extern int  __LIB__  sp_RemoveHook(uchar vector, void *hook);          


 

extern void __LIB__  sp_Initialize(uchar colour, uchar udg);
extern void __LIB__ *sp_SwapEndian(void *ptr);
extern void __LIB__  sp_Swap(void *addr1, void *addr2, uint bytes);
extern int  __LIB__  sp_PFill(uint xcoord, uchar ycoord, void *pattern, uint stackdepth);
extern int  __LIB__  sp_StackSpace(void *addr);     
extern uint __LIB__  sp_Random32(uint *hi);         
extern void __LIB__  sp_Border(uchar colour);       
extern uchar __LIB__ sp_inp(uint port);
extern void __LIB__  sp_outp(uint port, uchar value);


 

extern int  __LIB__  sp_IntRect(struct sp_Rect *r1, struct sp_Rect *r2, struct sp_Rect *result);
extern int  __LIB__  sp_IntLargeRect(struct sp_LargeRect *r1, struct sp_LargeRect *r2, struct sp_LargeRect *result);
extern int  __LIB__  sp_IntPtLargeRect(uint x, uint y, struct sp_LargeRect *r);
extern int  __LIB__  sp_IntIntervals(struct sp_Interval *i1, struct sp_Interval *i2, struct sp_Interval *result);
extern int  __LIB__  sp_IntPtInterval(uint x, struct sp_Interval *i);


 

extern struct sp_SS __LIB__ *sp_CreateSpr(uchar type, uchar rows, void *graphic);
extern int  __LIB__  sp_AddColSpr(struct sp_SS *sprite, void *graphic);
extern void __LIB__  sp_DeleteSpr(struct sp_SS *sprite);
extern void __LIB__  sp_IterateSprChar(struct sp_SS *sprite, void *hook);
                                        
extern void __LIB__  sp_RemoveDList(struct sp_SS *sprite);
extern void __LIB__  sp_MoveSprAbs(struct sp_SS *sprite, struct sp_Rect *clip, int animate, uchar row, uchar col, uchar hpix, uchar vpix);
extern void __LIB__  sp_MoveSprAbsC(struct sp_SS *sprite, struct sp_Rect *clip, int animate, uchar row, uchar col, uchar hpix, uchar vpix);
extern void __LIB__  sp_MoveSprAbsNC(struct sp_SS *sprite, struct sp_Rect *clip, int animate, uchar row, uchar col, uchar hpix, uchar vpix);
extern void __LIB__  sp_MoveSprRel(struct sp_SS *sprite, struct sp_Rect *clip, int animate, char rel_row, char rel_col, char rel_hpix, char rel_vpix);
extern void __LIB__  sp_MoveSprRelC(struct sp_SS *sprite, struct sp_Rect *clip, int animate, char rel_row, char rel_col, char rel_hpix, char rel_vpix);
extern void __LIB__  sp_MoveSprRelNC(struct sp_SS *sprite, struct sp_Rect *clip, int animate, char rel_row, char rel_col, char rel_hpix, char rel_vpix);


 

extern void __LIB__  sp_PrintAt(uchar row, uchar col, uchar colour, uchar udg);
extern void __LIB__  sp_PrintAtInv(uchar row, uchar col, uchar colour, uchar udg);
extern uint __LIB__  sp_ScreenStr(uchar row, uchar col);
extern void __LIB__  sp_PrintAtDiff(uchar row, uchar col, uchar colour, uchar udg);
extern void __LIB__  sp_PrintString(struct sp_PSS *ps, uchar *s);
extern void __LIB__  sp_ComputePos(struct sp_PSS *ps, uchar x, uchar y);
extern void __LIB__ *sp_TileArray(uchar c, void *addr);
extern void __LIB__ *sp_Pallette(uchar c, void *addr);
extern void __LIB__  sp_GetTiles(struct sp_Rect *r, void *dest);
extern void __LIB__  sp_PutTiles(struct sp_Rect *r, void *src);
extern void __LIB__  sp_IterateDList(struct sp_Rect *r, void *hook);
                      


 

extern void __LIB__ *sp_AddMemory(uchar queue, uchar number, uint size, void *addr);
extern void __LIB__ *sp_BlockAlloc(uchar queue);
extern void __LIB__ *sp_BlockFit(uchar queue, uchar numcheck);
extern void __LIB__  sp_FreeBlock(void *addr);
extern void __LIB__  sp_InitAlloc(void);
extern uint __LIB__  sp_BlockCount(uchar queue);


 

extern void __LIB__  sp_Invalidate(struct sp_Rect *area, struct sp_Rect *clip);
extern void __LIB__  sp_Validate(struct sp_Rect *area, struct sp_Rect *clip);
extern void __LIB__  sp_ClearRect(struct sp_Rect *area, uchar colour, uchar udg, uchar flags);
extern void __LIB__  sp_UpdateNow(void);
extern void __LIB__  sp_UpdateNowEx(unsigned char doSprites);
extern void __LIB__ *sp_CompDListAddr(uchar row, uchar col);
extern void __LIB__ *sp_CompDirtyAddr(uchar row, uchar col, uchar *mask);


 

extern uchar __LIB__ sp_JoySinclair1(void);
extern uchar __LIB__ sp_JoySinclair2(void);
extern uchar __LIB__ sp_JoyTimexEither(void);
extern uchar __LIB__ sp_JoyTimexLeft(void);
extern uchar __LIB__ sp_JoyTimexRight(void);
extern uchar __LIB__ sp_JoyFuller(void);
extern uchar __LIB__ sp_JoyKempston(void);
extern uchar __LIB__ sp_JoyKeyboard(struct sp_UDK *keys);
extern void  __LIB__ sp_WaitForKey(void);
extern void  __LIB__ sp_WaitForNoKey(void);
extern uint  __LIB__ sp_Pause(uint ticks);
extern void  __LIB__ sp_Wait(uint ticks);
extern uint  __LIB__ sp_LookupKey(uchar c);   
extern uchar __LIB__ sp_GetKey(void);         
extern uchar __LIB__ sp_Inkey(void);          
extern int   __LIB__ sp_KeyPressed(uint scancode);
extern void  __LIB__ sp_MouseAMXInit(uchar xvector, uchar yvector);
extern void  __LIB__ sp_MouseAMX(uint *xcoord, uchar *ycoord, uchar *buttons);
extern void  __LIB__ sp_SetMousePosAMX(uint xcoord, uchar ycoord);
extern void  __LIB__ sp_MouseKempston(uint *xcoord, uchar *ycoord, uchar *buttons);
extern void  __LIB__ sp_SetMousePosKempston(uint xcoord, uchar ycoord);
extern void  __LIB__ sp_MouseSim(struct sp_UDM *m, uint *xcoord, uchar *ycoord, uchar *buttons);
extern void  __LIB__ sp_SetMousePosSim(struct sp_UDM *m, uint xcoord, uchar ycoord);


 

extern void __LIB__ *sp_CharDown(void *scrnaddr);
extern void __LIB__ *sp_CharLeft(void *scrnaddr);
extern void __LIB__ *sp_CharRight(void *scrnaddr);
extern void __LIB__ *sp_CharUp(void *scrnaddr);
extern void __LIB__ *sp_GetAttrAddr(void *scrnaddr);
extern void __LIB__ *sp_GetCharAddr(uchar row, uchar col);
extern void __LIB__ *sp_GetScrnAddr(uint xcoord, uchar ycoord, uchar *mask);
extern void __LIB__ *sp_PixelDown(void *scrnaddr);
extern void __LIB__ *sp_PixelUp(void *scrnaddr);
extern void __LIB__ *sp_PixelLeft(void *scrnaddr, uchar *mask);
extern void __LIB__ *sp_PixelRight(void *scrnaddr, uchar *mask);


 













 

extern struct sp_List __LIB__ *sp_ListCreate(void);
extern uint __LIB__  sp_ListCount(struct sp_List *list);
extern void __LIB__ *sp_ListFirst(struct sp_List *list);
extern void __LIB__ *sp_ListLast(struct sp_List *list);
extern void __LIB__ *sp_ListNext(struct sp_List *list);
extern void __LIB__ *sp_ListPrev(struct sp_List *list);
extern void __LIB__ *sp_ListCurr(struct sp_List *list);
extern int  __LIB__  sp_ListAdd(struct sp_List *list, void *item);
extern int  __LIB__  sp_ListInsert(struct sp_List *list, void *item);
extern int  __LIB__  sp_ListAppend(struct sp_List *list, void *item);
extern int  __LIB__  sp_ListPrepend(struct sp_List *list, void *item);
extern void __LIB__ *sp_ListRemove(struct sp_List *list);
extern void __LIB__  sp_ListConcat(struct sp_List *list1, struct sp_List *list2);
extern void __LIB__  sp_ListFree(struct sp_List *list, void *free);
                                  
extern void __LIB__ *sp_ListTrim(struct sp_List *list);
extern void __LIB__ *sp_ListSearch(struct sp_List *list, void *match, void *item1);
                                  


 

extern struct sp_HashTable __LIB__ *sp_HashCreate(uint size, void *hashfunc, void *match, void *delete);
extern struct sp_HashCell  __LIB__ *sp_HashRemove(struct sp_HashTable *ht, void *key);
extern void __LIB__ *sp_HashLookup(struct sp_HashTable *ht, void *key);
extern void __LIB__ *sp_HashAdd(struct sp_HashTable *ht, void *key, void *value);
extern void __LIB__  sp_HashDelete(struct sp_HashTable *ht);


 

 







extern void __LIB__ sp_Heapify(void **array, uint n, void *compare);
extern void __LIB__ sp_HeapSiftDown(uint start, void **array, uint n, void *compare);
extern void __LIB__ sp_HeapSiftUp(uint start, void **array, void *compare);
extern void __LIB__ sp_HeapAdd(void *item, void **array, uint n, void *compare);  
extern void __LIB__ sp_HeapExtract(void **array, uint n, void *compare);          
                     


 























extern struct sp_HuffmanCodec  __LIB__ *sp_HuffCreate(uint symbols);
extern void  __LIB__  sp_HuffDelete(struct sp_HuffmanCodec *hc);
extern void  __LIB__  sp_HuffAccumulate(struct sp_HuffmanCodec *hc, uchar c);
extern int   __LIB__  sp_HuffExtract(struct sp_HuffmanCodec *hc, uint n);
                       
extern void  __LIB__  sp_HuffSetState(struct sp_HuffmanCodec *hc, void *addr, uchar bit);
extern void  __LIB__ *sp_HuffGetState(struct sp_HuffmanCodec *hc, uchar *bit);
extern uchar __LIB__  sp_HuffDecode(struct sp_HuffmanCodec *hc);
extern void  __LIB__  sp_HuffEncode(struct sp_HuffmanCodec *hc, uchar c);



#line 7 "mk1.c"

 
#asm

		LIB SPMoveSprAbs
		LIB SPPrintAtInv
		LIB SPTileArray
		LIB SPInvalidate
		LIB SPCompDListAddr
#endasm


#line 1 "my/config.h"
 
 

 
                 
 
 
 


 
 


 

	 

	 


	 





 






 
 
 




 

 

 
 
 

 
 

 

 
 
											 
 
 
 

 
 


 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 

 
 

 
 
 
 
 

 
 
 
 
 
 
 

 
 
 

 
 

 

 
 


 
 
 
 
 
 

 
 


 



 



 

 
 
 
 
 
 







 
 

 


 
 
 
 
 

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 

 
 

 
 
 

 
 



 
 
 
 

 
 
 
 

 

 

 
 













 

 


 
 
 
 
 





	 

	struct sp_UDK keys = {
		0x017f,  
		0x01df,  
		0x02df,  
		0x01fd,  
		0x01fb	 
	};


 
 
 

 
 


















 

 
 
 
 

 

 
 
 
 
 
 
 
 
											 
 
 


 
 
 

 
 
 
 

 











 





 
 
 

 
 

 
 
 
 
 
 
 
 
 
 







#line 18 "mk1.c"
#line 1 "prototypes.h"
 
 

 





 

 
void break_wall (void);

 
void bullets_init (void);
void bullets_update (void);
void bullets_fire (void);
void bullets_move (void);

 
void enems_init (void);
void enems_draw_current (void);
void enems_load (void);
void enems_kill (void);
void enems_move (void);

 
unsigned char collide (void);
unsigned char cm_two_points (void);
unsigned char rand (void);
unsigned int abs (int n);
void step (void);
void cortina (void);

 
void hotspots_init (void);
void hotspots_do (void);

 
void player_init (void);
void player_calc_bounding_box (void);
unsigned char player_move (void);
void player_deplete (void);
void player_kill (unsigned char sound);

 
void simple_coco_init (void);
void simple_coco_shoot (void);
void simple_coco_update (void);

 

 
void SetRAMBank(void);

 
void get_resource (unsigned char n, unsigned int destination);
void unpack (unsigned int address, unsigned int destination);

 
void beep_fx (unsigned char n);

 
void prepare_level (void);
void game_ending (void);
void game_over (void);
void time_over (void);
void pause_screen (void);
signed int addsign (signed int n, signed int value);
void espera_activa (int espera);
void locks_init (void);
char player_hidden (void);
void run_fire_script (void);
void process_tile (void);
void draw_scr_background (void);
void draw_scr (void);
void select_joyfunc (void);
unsigned char mons_col_sc_x (void);	
unsigned char mons_col_sc_y (void);
unsigned char distance (void);
int limit (int val, int min, int max);

 
void blackout (void);

 
unsigned char attr (unsigned char x, unsigned char y);
unsigned char qtile (unsigned char x, unsigned char y);
void draw_coloured_tile (void);
void invalidate_tile (void);
void invalidate_viewport (void);
void draw_invalidate_coloured_tile_gamearea (void);
void draw_coloured_tile_gamearea (void);
void draw_decorations (void);
void update_tile (void);
void print_number2 (void);
void draw_objs ();
void print_str (void);
void blackout_area (void);
void clear_sprites (void);

 
void mem_save (void);
void mem_load (void);
void tape_save (void); 
void tape_load (void); 
void sg_submenu (void);

 
void tilanims_add (void);
void tilanims_do (void);
void tilanims_reset (void);

 
void ISR (void);
void wyz_init (void);
void wyz_play_sound (unsigned char fx_number);
void wyz_play_music (unsigned char song_number);
void wyz_stop_sound (void);
#line 19 "mk1.c"

 

 



 








	 

	

 




 


	


		
	









	




unsigned char AD_FREE [ (64 + (  3   * 5))  * 15];

 

#line 1 "definitions.h"
 
 

#asm

	.vpClipStruct defb  2 ,  2  + 20,  1 ,  1  + 30
	.fsClipStruct defb 0, 24, 0, 32
#endasm	


void *joyfunc = sp_JoyKeyboard;		 

const void *joyfuncs [] = {
	sp_JoyKeyboard, sp_JoyKempston, sp_JoySinclair1
};

unsigned char pad0;







void *my_malloc(uint bytes) {
   return sp_BlockAlloc(0);
}

void *u_malloc = my_malloc;
void *u_free = sp_FreeBlock;

 

unsigned char safe_byte 		@ 23296;

unsigned int ram_address 		@ 23297;
unsigned int ram_destination 	@ 23299;


	unsigned char ram_page 		@ 23301;

	
 

struct sp_SS *sp_player;
struct sp_SS *sp_moviles [ 3 ];

	struct sp_SS *sp_bullets [ 3 ];





unsigned char enoffs;

 

char asm_number;
unsigned int asm_int;
unsigned int asm_int_2;
unsigned int seed;
unsigned char half_life;












 
 
 




















 
signed int p_x, p_y;
signed int p_vx, p_vy;
unsigned char *p_current_frame, *p_next_frame;
unsigned char p_saltando, p_cont_salto;
unsigned char p_frame, p_subframe, p_facing;
unsigned char p_estado;
unsigned char p_ct_estado;
unsigned char p_gotten, pregotten;
unsigned char p_life, p_objs, p_keys;
unsigned char p_fuel;
unsigned char p_killed;
unsigned char p_disparando;
unsigned char p_facing_v, p_facing_h;
unsigned char p_ammo;
unsigned char p_killme;
unsigned char p_kill_amt;
unsigned char p_tx, p_ty;



signed int ptgmx, ptgmy;

const unsigned char *spacer = "            ";

unsigned char enit;

unsigned char en_an_base_frame [ 3 ];
unsigned char en_an_frame [ 3 ];
unsigned char en_an_count [ 3 ];
unsigned char *en_an_current_frame [ 3 ], *en_an_next_frame [ 3 ];
unsigned char en_an_state [ 3 ];















unsigned char _en_x, _en_y;
unsigned char _en_x1, _en_y1, _en_x2, _en_y2;
signed char _en_mx, _en_my;
signed char _en_t;
signed char _en_life;

unsigned char *_baddies_pointer;


	unsigned char _en_cx, _en_cy;



	unsigned char bullets_x [ 3 ];
	unsigned char bullets_y [ 3 ];
	char bullets_mx [ 3 ];
	char bullets_my [ 3 ];
	unsigned char bullets_estado [ 3 ];
	
		unsigned char bullets_life [ 3 ];
	

	unsigned char _b_estado;
	unsigned char b_it, _b_x, _b_y;
	signed char _b_mx, _b_my;







 
 
unsigned char map_attr [150];
unsigned char map_buff [150] @  61697 ;
 

	unsigned char brk_buff [150] @ 23296+16;


 
 
unsigned char hotspot_x;
unsigned char hotspot_y;
unsigned char hotspot_destroy;
unsigned char orig_tile;	 

 



unsigned char flags[ 32 ];

 
unsigned char o_pant;
unsigned char n_pant;
unsigned char is_rendering;
unsigned char level, slevel;

	unsigned char warp_to_level = 0;

unsigned char maincounter;

 




 












 

unsigned char gpx, gpox, gpy, gpd, gpc;
unsigned char gpxx, gpyy, gpcx, gpcy;
unsigned char possee, hit_v, hit_h, hit, wall_h, wall_v;
unsigned char gpen_x, gpen_y, gpen_cx, gpen_cy, gpaux;
unsigned char tocado, active;
unsigned char gpit, gpjt;
unsigned char enoffsmasi;
unsigned char *map_pointer;

	unsigned char blx, bly;

unsigned char rdx, rdy, rda, rdb, rdc, rdd, rdn, rdt;

 





int itj;
unsigned char objs_old, keys_old, life_old, killed_old;










	unsigned char *level_str = "LEVEL 0X";






unsigned char *gen_pt;
unsigned char playing;

unsigned char success;

	unsigned char x_pant, y_pant;


unsigned char _x, _y, _n, _t;
unsigned char cx1, cy1, cx2, cy2, at1, at2;
unsigned char x0, y0, x1, y1;
unsigned char ptx1, pty1, ptx2, pty2;
unsigned char *_gp_gen;


unsigned char cx3, cy3, at3, ptx3, pty3;



























 





	unsigned char song_playing = 0;


 
 
 


	unsigned char jump_button_pressed;



	unsigned char top_colision_point;

#line 73 "mk1.c"






	#line 1 "128k.h"
 
 

 

void SetRAMBank(void) {
#asm

	.SetRAMBank
			ld	a, 16
			or	b
			ld	bc, $7ffd
			out (C), a
#endasm

}
 























































































#line 80 "mk1.c"
	#line 1 "assets/ay_fx_numbers.h"
 
 


















#line 81 "mk1.c"
	#line 1 "assets/librarian.h"
 
 

 
 

typedef struct {
    unsigned char ramPage;
    unsigned int ramOffset;
} RESOURCE;

RESOURCE resources [] = {
    { 3, 0xC000 },
    { 3, 0xC641 },
    { 3, 0xCBD4 },
    { 3, 0xD115 }
};






#line 82 "mk1.c"


#line 1 "aplib.h"
 
 

#asm


	; aPPack decompressor
	; original source by dwedit
	; very slightly adapted by utopian
	; optimized by Metalbrain

	;hl = source
	;de = dest

	.depack		ld	ixl,128
	.apbranch1	ldi
	.aploop0	ld	ixh,1		;LWM = 0
	.aploop		call 	ap_getbit
			jr 	nc,apbranch1
			call 	ap_getbit
			jr 	nc,apbranch2
			ld 	b,0
			call 	ap_getbit
			jr 	nc,apbranch3
			ld	c,16		;get an offset
	.apget4bits	call 	ap_getbit
			rl 	c
			jr	nc,apget4bits
			jr 	nz,apbranch4
			ld 	a,b
	.apwritebyte	ld 	(de),a		;write a 0
			inc 	de
			jr	aploop0
	.apbranch4	and	a
			ex 	de,hl 		;write a previous byte (1-15 away from dest)
			sbc 	hl,bc
			ld 	a,(hl)
			add	hl,bc
			ex 	de,hl
			jr	apwritebyte
	.apbranch3	ld 	c,(hl)		;use 7 bit offset, length = 2 or 3
			inc 	hl
			rr 	c
			ret 	z		;if a zero is encountered here, it is EOF
			ld	a,2
			adc	a,b
			push 	hl
			ld	iyh,b
			ld	iyl,c
			ld 	h,d
			ld 	l,e
			sbc 	hl,bc
			ld 	c,a
			jr	ap_finishup2
	.apbranch2	call 	ap_getgamma	;use a gamma code * 256 for offset, another gamma code for length
			dec 	c
			ld	a,c
			sub	ixh
			jr 	z,ap_r0_gamma		;if gamma code is 2, use old r0 offset,
			dec 	a
			;do I even need this code?
			;bc=bc*256+(hl), lazy 16bit way
			ld 	b,a
			ld 	c,(hl)
			inc 	hl
			ld	iyh,b
			ld	iyl,c

			push 	bc
			
			call 	ap_getgamma

			ex 	(sp),hl		;bc = len, hl=offs
			push 	de
			ex 	de,hl

			ld	a,4
			cp	d
			jr 	nc,apskip2
			inc 	bc
			or	a
	.apskip2	ld 	hl,127
			sbc 	hl,de
			jr 	c,apskip3
			inc 	bc
			inc 	bc
	.apskip3		pop 	hl		;bc = len, de = offs, hl=junk
			push 	hl
			or 	a
	.ap_finishup	sbc 	hl,de
			pop 	de		;hl=dest-offs, bc=len, de = dest
	.ap_finishup2	ldir
			pop 	hl
			ld	ixh,b
			jr 	aploop

	.ap_r0_gamma	call 	ap_getgamma		;and a new gamma code for length
			push 	hl
			push 	de
			ex	de,hl

			ld	d,iyh
			ld	e,iyl
			jr 	ap_finishup


	.ap_getbit	ld	a,ixl
			add	a,a
			ld	ixl,a
			ret	nz
			ld	a,(hl)
			inc	hl
			rla
			ld	ixl,a
			ret

	.ap_getgamma	ld 	bc,1
	.ap_getgammaloop	call 	ap_getbit
			rl 	c
			rl 	b
			call 	ap_getbit
			jr 	c,ap_getgammaloop
			ret

#endasm


	void get_resource (unsigned char n, unsigned int destination) {
		ram_page = resources [n].ramPage; 
		ram_address = resources [n].ramOffset;
		ram_destination = destination;
		#asm	

			di
			ld a, (_ram_page)
			ld b, a
			call SetRAMBank
			
			ld hl, (_ram_address)
			ld de, (_ram_destination)
			call depack
			
			ld b, 0
			call SetRAMBank
			ei
		#endasm

	}









		
#line 85 "mk1.c"
#line 1 "pantallas.h"
 
 

 
 
 






















void blackout (void) {
	#asm

		ld hl, 22528
		ld (hl), 0
		push hl
		pop de
		inc de
		ld bc, 767
		ldir
	#endasm

}
#line 86 "mk1.c"


	#line 1 "assets/levels.h"
 
 

 


 
 

 
 

 
 
 
 
 
 
 
 
 

 

 


 

typedef struct {
	unsigned char map_w, map_h;
	unsigned char scr_ini, ini_x, ini_y;
	unsigned char max_objs;
	unsigned char enems_life;
	unsigned char d01;	 
	unsigned char d02;
	unsigned char d03;
	unsigned char d04;
	unsigned char d05;
	unsigned char d06;
	unsigned char d07;
	unsigned char d08;
	unsigned char d09;
} LEVELHEADER;

typedef struct {
    unsigned char np, x, y, st;
} CERROJOS;

typedef struct {
	unsigned char x, y;
	unsigned char x1, y1, x2, y2;
	char mx, my;
	unsigned char t, life;
} MALOTE;

typedef struct {
	unsigned char xy, tipo, act;
} HOTSPOT;

 

extern unsigned char font [0];
#asm

	._font BINARY "font.bin"
#endasm


extern LEVELHEADER level_data [0];
#asm

	._level_data defs 16
#endasm


extern unsigned char mapa [0];

	#asm

		._mapa defs  10  *  2  * 75
	#endasm


	extern CERROJOS cerrojos [0];
	#asm

		._cerrojos defs 128	; 32 * 4
	#endasm


extern unsigned char tileset [0];
#asm

	._tileset defs 1792 ; 192 * 8 + 256
#endasm


extern MALOTE malotes [0];
#asm

	._malotes defs  10  *  2  * 3 * 10
#endasm


extern HOTSPOT hotspots [0];
#asm

	._hotspots defs  10  *  2  * 3
#endasm


extern unsigned char behs [0];
#asm

	._behs defs 48
#endasm


extern unsigned char sprites [0];
#asm

	._sprites
#endasm


	#line 1 "./assets/sprites-empty.h"
 
 

 
 
 
 
extern unsigned char sprite_1_a []; 
extern unsigned char sprite_1_b []; 
extern unsigned char sprite_1_c []; 
extern unsigned char sprite_2_a []; 
extern unsigned char sprite_2_b []; 
extern unsigned char sprite_2_c []; 
extern unsigned char sprite_3_a []; 
extern unsigned char sprite_3_b []; 
extern unsigned char sprite_3_c []; 
extern unsigned char sprite_4_a []; 
extern unsigned char sprite_4_b []; 
extern unsigned char sprite_4_c []; 
extern unsigned char sprite_5_a []; 
extern unsigned char sprite_5_b []; 
extern unsigned char sprite_5_c []; 
extern unsigned char sprite_6_a []; 
extern unsigned char sprite_6_b []; 
extern unsigned char sprite_6_c []; 
extern unsigned char sprite_7_a []; 
extern unsigned char sprite_7_b []; 
extern unsigned char sprite_7_c []; 
extern unsigned char sprite_8_a []; 
extern unsigned char sprite_8_b []; 
extern unsigned char sprite_8_c []; 
extern unsigned char sprite_9_a []; 
extern unsigned char sprite_9_b []; 
extern unsigned char sprite_9_c []; 
extern unsigned char sprite_10_a []; 
extern unsigned char sprite_10_b []; 
extern unsigned char sprite_10_c []; 
extern unsigned char sprite_11_a []; 
extern unsigned char sprite_11_b []; 
extern unsigned char sprite_11_c []; 
extern unsigned char sprite_12_a []; 
extern unsigned char sprite_12_b []; 
extern unsigned char sprite_12_c []; 
extern unsigned char sprite_13_a []; 
extern unsigned char sprite_13_b []; 
extern unsigned char sprite_13_c []; 
extern unsigned char sprite_14_a []; 
extern unsigned char sprite_14_b []; 
extern unsigned char sprite_14_c []; 
extern unsigned char sprite_15_a []; 
extern unsigned char sprite_15_b []; 
extern unsigned char sprite_15_c []; 
extern unsigned char sprite_16_a []; 
extern unsigned char sprite_16_b []; 
extern unsigned char sprite_16_c []; 
 
#asm

        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
 
    ._sprite_1_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
			defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_1_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_1_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_2_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_2_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_2_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_3_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_3_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_3_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_4_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_4_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_4_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_5_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_5_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_5_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_6_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_6_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_6_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_7_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_7_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
 
    ._sprite_7_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_8_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_8_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_8_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_9_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_9_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_9_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_10_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_10_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_10_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_11_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
 	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_11_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_11_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_12_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_12_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_12_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_13_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_13_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_13_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_14_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_14_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_14_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_15_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_15_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_15_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_16_a
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_16_b
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
 	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
    ._sprite_16_c
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
        defb 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
#endasm

 
#line 118 "assets/levels.h"

#line 89 "mk1.c"
	#line 1 "assets/extrasprites.h"
 
 

 
 
 
 

 


	extern unsigned char sprite_17_a []; 


extern unsigned char sprite_18_a []; 


	extern unsigned char sprite_19_a [];
	extern unsigned char sprite_19_b [];



	#asm

	    ._sprite_17_a
	        BINARY "sprites_extra.bin"
	#endasm


#asm

	._sprite_18_a
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
			defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
			
	._sprite_18_b
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
	
	._sprite_18_c
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
		defb 0, 255, 0, 255, 0, 255, 0, 255
	
#endasm


	#asm	              	

		._sprite_19_a
			BINARY "sprites_bullet.bin"
	#endasm

#line 90 "mk1.c"
	#line 1 "my/levelset.h"
 
 

 

 
 
 


	 
	typedef struct {
		unsigned char resource_id;
		unsigned char music_id;
		


	} LEVEL;

 

















 

extern unsigned char my_binary [0];

#asm

	._my_binary
		BINARY "../bin/my_binary.bin"	
#endasm


 
 
LEVEL levels [] = {  {  0 , 1 },

	
};
#line 91 "mk1.c"








#line 1 "my/ci/extra_vars.h"
 
 

#line 100 "mk1.c"


	#line 1 "wyzplayer.h"
 
 

 

 
 
 

 
 







 

 
#asm

	defw 0	 
#endasm


void ISR(void) {	
	#asm

		ld b, 1
		call SetRAMBank
		call  0xC000 
		ld b, 0
		call SetRAMBank			
	#endasm

}

void wyz_init (void) {
	#asm

		ld b,1
		call SetRAMBank
		call  0xC018 	
		ld b,0
		call SetRAMBank
	#endasm

}

void __FASTCALL__ wyz_play_sound (unsigned char fx_number) {
	#asm

		di
		ld b, 1
		call SetRAMBank
		; __FASTCALL__ -> fx_number is in l!
		ld b, l
		call  0xC47E 
		ld b, 0
		call SetRAMBank
		ei
	#endasm

}

void __FASTCALL__ wyz_play_music (unsigned char song_number) {
	#asm

		di
		ld b, 1
		call SetRAMBank
		; __FASTCALL__ -> song_number is in l!
		ld a, l
		call  0xC087 
		ld b, 0
		call SetRAMBank
		ei
	#endasm

	song_playing = song_number;
}

void wyz_stop_sound (void) {
	#asm

		di
		ld b,1
		call SetRAMBank
		call  0xC062 
		ld b,0
		call SetRAMBank
		ei
	#endasm

}
#line 103 "mk1.c"




#line 1 "printer.h"
 
 

 

unsigned char attr (unsigned char x, unsigned char y) {
	if (x >= 15 || y >= 10) return 0;
	return map_attr [x + (y << 4) - y];
}

unsigned char qtile (unsigned char x, unsigned char y) {
	return map_buff [x + (y << 4) - y];
}



 
 
 




































	

	




void draw_coloured_tile (void) {
	

 











 


 














 






 




















 

 




 







 















 

 



 







 















 

 




 



 















 


















 










 








 















 










 










 








 















 











 










 








 

















 









 

 






 

 

 
 


 
 



 

 
 


 
 


 

 
 


 
 



 

 
 


 
 


		#asm

			 






			 

				ld  a, (__x)
				ld  c, a
				ld  a, (__y)
				call SPCompDListAddr
				ex de, hl

				 

				 
				ld  a, (__t)
				sla a
				sla a 				 
				add 64 				 
				
				ld  hl, _tileset +  1536 
				ld  b, 0
				ld  c, a
				add hl, bc 			 
				
				ld  c, a 			 

				 
				
				ld  a, (hl) 		 
				ld  (de), a 		 
				inc de
				inc hl 				 

				ld  a, c  			 
				ld  (de), a			 
				inc de
				inc a 				 
				ld  c, a 

				inc de
				inc de 				 

				ld  a, (hl) 		 
				ld  (de), a 		 
				inc de
				inc hl 				 

				ld  a, c  			 
				ld  (de), a			 
				inc a 				 
				
				ex  de, hl
				ld  bc, 123
				add hl, bc
				ex  de, hl			 
				ld  c, a 

				ld  a, (hl) 		 
				ld  (de), a 		 
				inc de
				inc hl 				 

				ld  a, c  			 
				ld  (de), a			 
				inc de
				inc a 				 
				ld  c, a 

				inc de
				inc de 				 

				ld  a, (hl) 		 
				ld  (de), a 		 
				inc de

				ld  a, c  			 
				ld  (de), a			 
		#endasm

	}

void invalidate_tile (void) {
	#asm

			; Invalidate Rectangle
			;
			; enter:  B = row coord top left corner
			;         C = col coord top left corner
			;         D = row coord bottom right corner
			;         E = col coord bottom right corner
			;        IY = clipping rectangle, set it to "ClipStruct" for full screen

			ld  a, (__x)
			ld  c, a
			inc a
			ld  e, a
			ld  a, (__y)
			ld  b, a
			inc a
			ld  d, a
			ld  iy, fsClipStruct
			call SPInvalidate			
	#endasm

}

void invalidate_viewport (void) {
	#asm

			; Invalidate Rectangle
			;
			; enter:  B = row coord top left corner
			;         C = col coord top left corner
			;         D = row coord bottom right corner
			;         E = col coord bottom right corner
			;        IY = clipping rectangle, set it to "ClipStruct" for full screen

			ld  b,  2 
			ld  c,  1 
			ld  d,  2 +19
			ld  e,  1 +29
			ld  iy, vpClipStruct
			call SPInvalidate
	#endasm

}

void draw_invalidate_coloured_tile_gamearea (void) {
	draw_coloured_tile_gamearea ();
	invalidate_tile ();
}

void draw_coloured_tile_gamearea (void) {
	_x =  1  + (_x << 1); _y =  2  + (_y << 1); draw_coloured_tile ();
}

void draw_decorations (void) {
	 
	#asm

			ld  hl, (__gp_gen)

		._draw_decorations_loop
			ld  a, (hl)
			cp  0xff
			ret z

			ld  a, (hl)
			inc hl
			ld  c, a
			and 0x0f
			ld  (__y), a
			ld  a, c
			srl a
			srl a
			srl a
			srl a
			ld  (__x), a

			ld  a, (hl)
			inc hl
			ld  (__t), a

			push hl

			ld  b, 0
			ld  c, a
			ld  hl, _behs
			add hl, bc
			ld  a, (hl)
			ld  (__n), a

			call _update_tile

			pop hl
			jr  _draw_decorations_loop
	#endasm

}

unsigned char utaux = 0;
void update_tile (void) {
	 

	 





	#asm

		ld  a, (__x)
		ld  c, a
		ld  a, (__y)
		ld  b, a
		sla a 
		sla a 
		sla a 
		sla a 
		sub b
		add c
		ld  b, 0
		ld  c, a
		ld  hl, _map_attr
		add hl, bc
		ld  a, (__n)
		ld  (hl), a
		ld  hl, _map_buff
		add hl, bc
		ld  a, (__t)
		ld  (hl), a

		call _draw_coloured_tile_gamearea

		ld  a, (_is_rendering)
		or  a
		ret nz

		call _invalidate_tile
	#endasm

}

void print_number2 (void) {
	rda = 16 + (_t / 10); rdb = 16 + (_t % 10);
	#asm

			; enter:  A = row position (0..23)
			;         C = col position (0..31/63)
			;         D = pallette #
			;         E = graphic #

			ld  a, (_rda)
			ld  e, a

			ld  d,  7 
			
			ld  a, (__x)
			ld  c, a

			ld  a, (__y)

			call SPPrintAtInv

			ld  a, (_rdb)
			ld  e, a

			ld  d,  7 
			
			ld  a, (__x)
			inc a
			ld  c, a

			ld  a, (__y)

			call SPPrintAtInv
	#endasm

}

	void draw_objs () {
		 
 






 






 


 


 



 


 


 


 


 


 



 


 


 

 













			
				_x =  30 ; _y =  0 ; 
				


					_t = p_objs; 
				
				print_number2 ();
			
		
	}


void print_str (void) {
	#asm

		ld  hl, (__gp_gen)
		.print_str_loop
			ld  a, (hl)
			or  a
			ret z 

			inc hl
			
			sub 32
			ld  e, a

			ld  a, (__t)
			ld  d, a

			ld  a, (__x)
			ld  c, a
			cp  31
			jr  z, print_str_no_inc_a
			inc a
		.print_str_no_inc_a			
			ld  (__x), a
			
			ld  a, (__y)

			push hl
			call SPPrintAtInv
			pop  hl
			
			jr  print_str_loop
	#endasm

}

	void blackout_area (void) {
		#asm

			ld  de, 22528 + 32 *  2  +  1 
			ld  b, 20
		.bal1
			push bc
			ld  h, d 
			ld  l, e
			ld	(hl), 0
			inc de
			ld  bc, 29
			ldir
			inc de
			inc de
			pop bc
			djnz bal1
		#endasm

	}

void clear_sprites (void) {
	#asm

			ld  ix, (_sp_player)
			ld  iy, vpClipStruct
			ld  bc, 0
			ld  hl, 0xdede
			ld  de, 0
			call SPMoveSprAbs
	
			xor a
		.hide_sprites_enems_loop
			ld  (_gpit), a

			sla a
			ld  c, a
			ld  b, 0
			ld  hl, _sp_moviles
			add hl, bc
			ld  e, (hl)
			inc hl
			ld  d, (hl)
			push de
			pop ix

			ld  iy, vpClipStruct
			ld  bc, 0
			ld  hl, 0xfefe	 
			ld  de, 0

			call SPMoveSprAbs

			ld  a, (_gpit)
			inc a
			cp  3
			jr  nz, hide_sprites_enems_loop

						xor a
			.hide_sprites_bullets_loop
				ld  (_gpit), a

				sla a
				ld  c, a
				ld  b, 0
				ld  hl, _sp_bullets
				add hl, bc
				ld  e, (hl)
				inc hl
				ld  d, (hl)
				push de
				pop ix

				ld  iy, vpClipStruct
				ld  bc, 0
				ld  hl, 0xfefe	 
				ld  de, 0

				call SPMoveSprAbs

				ld  a, (_gpit)
				inc a
				cp   3 
				jr  nz, hide_sprites_bullets_loop
			#endasm

}
#line 108 "mk1.c"
#line 1 "my/ci/extra_functions.h"
 
 
#line 109 "mk1.c"








#line 1 "engine/general.h"
 
 

 

unsigned char collide (void) {
	
			
			return ((gpx +  13  >= cx2) && (gpx <= cx2 +  13 ) && (gpy +  28   >= cy2) && (gpy + top_colision_point <= cy2 +  28 ));
			


	






	
}

unsigned char cm_two_points (void) {
	 






	
	#asm

			ld  a, (_cx1)
			cp  15
			jr  nc, _cm_two_points_at1_reset

			ld  a, (_cy1)
			cp  10
			jr  c, _cm_two_points_at1_do

		._cm_two_points_at1_reset
			xor a
			jr  _cm_two_points_at1_done

		._cm_two_points_at1_do
			ld  a, (_cy1)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx1)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_attr
			add hl, de
			ld  a, (hl)

		._cm_two_points_at1_done
			ld (_at1), a

			ld  a, (_cx2)
			cp  15
			jr  nc, _cm_two_points_at2_reset

			ld  a, (_cy2)
			cp  10
			jr  c, _cm_two_points_at2_do

		._cm_two_points_at2_reset
			xor a
			jr  _cm_two_points_at2_done

		._cm_two_points_at2_do
			ld  a, (_cy2)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx2)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_attr
			add hl, de
			ld  a, (hl)

		._cm_two_points_at2_done
			ld (_at2), a
					ld  a, (_cx3)
			cp  15
			jr  nc, _cm_two_points_at3_reset

			ld  a, (_cy3)
			cp  10
			jr  c, _cm_two_points_at3_do

		._cm_two_points_at3_reset
			xor a
			jr  _cm_two_points_at3_done

		._cm_two_points_at3_do
			ld  a, (_cy3)
			ld  b, a
			sla a
			sla a
			sla a
			sla a
			sub b
			ld  b, a
			ld  a, (_cx3)
			add b
			ld  e, a
			ld  d, 0
			ld  hl, _map_attr
			add hl, de
			ld  a, (hl)

		._cm_two_points_at3_done
			ld (_at3), a
		
	#endasm

}

unsigned char rand (void) {
	#asm

		.rand16
			ld	hl, _seed
			ld	a, (hl)
			ld	e, a
			inc	hl
			ld	a, (hl)
			ld	d, a
			
			;; Ahora DE = [SEED]
						
			ld	a,	d
			ld	h,	e
			ld	l,	253
			or	a
			sbc	hl,	de
			sbc	a, 	0
			sbc	hl,	de
			ld	d, 	0
			sbc	a, 	d
			ld	e,	a
			sbc	hl,	de
			jr	nc,	nextrand
			inc	hl
		.nextrand
			ld	d,	h
			ld	e,	l
			ld	hl, _seed
			ld	a,	e
			ld	(hl), a
			inc	hl
			ld	a,	d
			ld	(hl), a
			
			;; Ahora [SEED] = HL
		
			ld  l, e
			ret
	#endasm

}

unsigned int abs (int n) {
	if (n < 0)
		return (unsigned int) (-n);
	else 
		return (unsigned int) n;
}


















void cortina (void) {
	#asm

		;; Antes que nada vamos a limpiar el PAPER de toda la pantalla
		;; para que no queden artefactos feos
		
		ld	de, 22528			; Apuntamos con DE a la zona de atributos
		ld	b,	3				; Procesamos 3 tercios
	.clearb1
		push bc
		
		ld	b, 0				; Procesamos los 256 atributos de cada tercio
	.clearb2
	
		ld	a, (de)				; Nos traemos un atributo
		and	199					; Le hacemos la máscara 11000111 y dejamos PAPER a 0
		ld	(de), a				; Y lo volvemos a poner
		
		inc de					; Siguiente atributo
	
		djnz clearb2
		
		pop bc
		djnz clearb1
		
		;; Y ahora el código original que escribí para UWOL:	
	
		ld	a,	8
	
	.repitatodo
		ld	c,	a			; Salvamos el contador de "repitatodo" en 'c'
	
		ld	hl, 16384
		ld	a,	12
	
	.bucle
		ld	b,	a			; Salvamos el contador de "bucle" en 'b'
		ld	a,	0
	
	.bucle1
		sla (hl)
		inc hl
		dec a
		jr	nz, bucle1
			
		ld	a,	0
	.bucle2
		srl (hl)
		inc hl
		dec a
		jr	nz, bucle2
			
		ld	a,	b			; Restituimos el contador de "bucle" a 'a'
		dec a
		jr	nz, bucle
	
		ld	a,	c			; Restituimos el contador de "repitatodo" a 'a'
		dec a
		jr	nz, repitatodo
	#endasm

}
#line 118 "mk1.c"

	#line 1 "engine/breakable.h"
 

void break_wall (void) {
    gpaux =  (( _x )+( _y <<4)-( _y )) ;
    if (brk_buff [gpaux] <  5 ) {
        
            if (brk_buff [gpaux] == 0) {
                _n = map_buff[gpaux];  
                _t =  28 ;
                update_tile ();
            }
        
        
        ++brk_buff [gpaux];
        
        
            gpit =  1 ;			
        


        #line 1 "./my/ci/on_wall_hit.h"
 
 

 

 
#line 22 "engine/breakable.h"
    } else {
        _n = _t = 0; 
        update_tile ();
        
            gpit =  2 ;
        


        #line 1 "./my/ci/on_wall_broken.h"
 
 

#line 31 "engine/breakable.h"
    }
    
        wyz_play_sound (gpit);
    



}
#line 120 "mk1.c"


	#line 1 "engine/bullets.h"
 
 

 

void bullets_init (void) {
	b_it = 0; while (b_it <  3 ) { 
		bullets_estado [b_it] = 0; ++ b_it;
	}	
}

void bullets_update (void) {
	 
	#asm

		ld  de, (_b_it)
		ld  d, 0

		ld  hl, _bullets_estado
		add hl, de
		ld  a, (__b_estado)
		ld  (hl), a

		ld  hl, _bullets_x
		add hl, de
		ld  a, (__b_x)
		ld  (hl), a

		ld  hl, _bullets_y
		add hl, de
		ld  a, (__b_y)
		ld  (hl), a

		ld  hl, _bullets_mx
		add hl, de
		ld  a, (__b_mx)
		ld  (hl), a

		ld  hl, _bullets_my
		add hl, de
		ld  a, (__b_my)
		ld  (hl), a
	#endasm

}

 





void bullets_fire (void) {
	



	


	
	 
	for (b_it = 0; b_it <  3 ; ++ b_it) {
		if (bullets_estado [b_it] == 0) {
			_b_estado = 1;
			
 



























 







































				








				{
					_b_y = gpy +  6 ;
					_b_my = 0;
				}


				


					if (p_facing == 0) {
						_b_x = gpx - 4;
						_b_mx = - 8 ;
					} else {
						_b_x = gpx + 12;
						_b_mx =  8 ;
					}
				





			

			
				wyz_play_sound ( 4 );
			



			
				
					bullets_life [b_it] =  8 ;
				


			

			#line 1 "./my/ci/on_player_fires.h"
 
 

#line 183 "engine/bullets.h"

			bullets_update ();

			


			
			break;
		}
	}
}

void bullets_move (void) {
	for (b_it = 0; b_it <  3 ; b_it ++) {
		if (bullets_estado [b_it]) {
			#asm

				ld  de, (_b_it)
				ld  d, 0

				ld  hl, _bullets_x
				add hl, de
				ld  a, (hl)
				ld  (__b_x), a

				ld  hl, _bullets_y
				add hl, de
				ld  a, (hl)
				ld  (__b_y), a

				ld  hl, _bullets_mx
				add hl, de
				ld  a, (hl)
				ld  (__b_mx), a

				ld  hl, _bullets_my
				add hl, de
				ld  a, (hl)
				ld  (__b_my), a

				ld  a, 1
				ld  (__b_estado), a
			#endasm


			if (_b_mx) {
				_b_x += _b_mx;								
				if (_b_x > 240) {
					_b_estado = 0;
				}
			} 
			





			_x = (_b_x + 3) >> 4;
			_y = (_b_y + 3) >> 4;
			rda = attr (_x, _y);
			
				if (rda & 16) break_wall ();
			
			if (rda > 7) _b_estado = 0;
		
			
				if (bullets_life [b_it] > 0) {
					-- bullets_life [b_it];
				} else {
					_b_estado = 0;
				}
			

			bullets_update ();				
		}	
	}	
}
#line 123 "mk1.c"





	#line 1 "engine/c_levels.h"
#line 1 "engine/../assets/levels.h"
 
 

 


 
 

 
 

 
 
 
 
 
 
 
 
 

 

 


 






 

























 





























































#line 2 "engine/c_levels.h"

void prepare_level (void) {
	
		get_resource (levels [level].resource_id, (unsigned int) (level_data));

		


			if (warp_to_level == 0)
		
		{
			n_pant = level_data.scr_ini;
			gpx = level_data.ini_x << 4; p_x = gpx << 6;   
			gpy = level_data.ini_y << 4; p_y = gpy << 6;   
		}

		
 

	









 
 
















}
#line 129 "mk1.c"

#line 1 "engine.h"
 
 




































 





 
 
 
 





 
 
 





	 
	 
	const unsigned char *player_cells [] = {
		sprite_6_a, sprite_7_a, sprite_6_a, sprite_5_a,
		sprite_2_a, sprite_3_a, sprite_2_a, sprite_1_a,
		sprite_8_a, sprite_4_a
	};


const unsigned char *enem_cells [] = {
	sprite_9_a, sprite_10_a, sprite_11_a, sprite_12_a, 
	sprite_13_a, sprite_14_a, sprite_15_a, sprite_16_a
};

#line 1 "my/fixed_screens.h"
 
 











void game_ending (void) {
	sp_UpdateNow();
	blackout ();
	
		 
		get_resource ( 2 , 16384);
	







	
	



	
	espera_activa (500);
}

void game_over (void) {
	_x = 10; _y = 11; _t = 79; _gp_gen = spacer; print_str ();
	_x = 10; _y = 12; _t = 79; _gp_gen = " GAME OVER! "; print_str ();
	_x = 10; _y = 13; _t = 79; _gp_gen = spacer; print_str ();
	sp_UpdateNow ();

	
	




	espera_activa (500);
}




























	void zone_clear (void) {
		_x = 10; _y = 11; _t = 79; _gp_gen = spacer; print_str ();
		_x = 10; _y = 12; _t = 79; _gp_gen = " ZONE CLEAR "; print_str ();
		_x = 10; _y = 13; _t = 79; _gp_gen = spacer; print_str ();
		sp_UpdateNowEx (0);
		espera_activa (250);			
	}

#line 77 "engine.h"

signed int addsign (signed int n, signed int value) {
	if (n >= 0) return value; else return -value;
}





void espera_activa (int espera) {
	while (sp_GetKey ());
	do {
		


			#asm

				halt
			#endasm

				if (sp_GetKey ()) break;
	} while (--espera);
}






















   void process_tile(void) {
    
         
        if (qtile(x0, y0) == 10) {
            for (gpit = 0; gpit <  32 ; ++gpit) {
                if (cerrojos[gpit].x == x0 && cerrojos[gpit].y == y0 && cerrojos[gpit].np == n_pant) {
                    if (p_keys > 0) {
                         
                        cerrojos[gpit].st = 0;
                        _x = x0; _y = y0; _t = 0; _n = 0; update_tile();

                         
                        _x = x0; _y = y0 + 1; _t = 0; _n = 0; update_tile();
                        for (gpjt = 0; gpjt <  32 ; ++gpjt) {   
                            if (cerrojos[gpjt].x == x0 && cerrojos[gpjt].y == y0 + 1 && cerrojos[gpjt].np == n_pant) {
                                cerrojos[gpjt].st = 0;
                                break;
                            }
                        }

                        --p_keys;
                        
                            wyz_play_sound( 3 );
                        


                        #line 1 "my/ci/on_unlocked_bolt.h"
 
 

#line 149 "engine.h"
                    }
                    return;   
                }
            }
        }
    

        
            


            {
                


                 
                if ((qtile(x0, y0) == 10 || qtile(x0, y0) == 14) && attr(x1, y1) == 0 && x1 < 15 && y1 < 10) {
                    rda = map_buff[ (( x1 )+( y1 <<4)-( y1 )) ];
                    _x = x0; _y = y0; _t = 0; _n = 0; update_tile();
                    _x = x1; _y = y1; _t = 14; _n = 10; update_tile();
                    
                        wyz_play_sound( 3 );
                    


                    




                    




                    #line 1 "my/ci/on_tile_pushed.h"
 
 

#line 185 "engine.h"
                }
            }
        
    }


void draw_scr_background (void) {
	


		map_pointer = mapa + (n_pant * 75);
	
		
	seed = n_pant;

	_x =  1 ; _y =  2 ;

	 
	
	


		for (gpit = 0; gpit < 150; ++ gpit) {	
			
 
 





























				 
				 










				#asm

						ld  a, (_gpit)
						and 1
						jr  nz, _draw_scr_packed_existing
					._draw_scr_packed_new
						ld  hl, (_map_pointer)
						ld  a, (hl)
						ld  (_gpc), a
						inc hl
						ld  (_map_pointer), hl

						srl a
						srl a
						srl a
						srl a
						jr  _draw_scr_packed_done

					._draw_scr_packed_existing
						ld  a, (_gpc)
						and 15

					._draw_scr_packed_done
						ld  (__t), a
						
						ld  b, 0
						ld  c, a
						ld  hl, _behs
						add hl, bc
						ld  a, (hl)

						ld  bc, (_gpit)
						ld  b, 0
						ld  hl, _map_attr
						add hl, bc
						ld  (hl), a

				




















						ld  hl, _map_buff
						add hl, bc
						
						ld  (hl), a
				#endasm

			
			
				 
				#asm

						ld  hl, _brk_buff
						add hl, bc
						xor a
						ld  (hl), a
				#endasm

			
			





			draw_coloured_tile ();

			 
			#asm

					ld  a, (__x)
					add 2
					cp  30 +  1 
					jr  c, _advance_worm_no_inc_y

					ld  a, (__y)
					add 2
					ld  (__y), a

					ld  a,  1 

				._advance_worm_no_inc_y
					ld  (__x), a
			#endasm

		}
	}

void draw_scr (void) {
	is_rendering = 1;

	


	



	draw_scr_background ();

	 

	enems_load ();

	



 
 
 


	#line 1 "my/ci/entering_screen.h"
 
 

#line 383 "engine.h"

	 












	#asm 

			ld  a, 240
			ld  (_hotspot_y), a

			 
			 

			ld  a, (_n_pant)
			ld  b, a
			sla a
			add b

			ld  c, a
			ld  b, 0

			 

			ld  hl, _hotspots
			add hl, bc

			 

			ld  a, (hl) 		 
			ld  b, a

			srl a
			srl a
			srl a
			srl a
			ld  (__x), a

			ld  a, b
			and 15
			ld  (__y), a

			inc hl 				 
			ld  b, (hl) 		 
			inc hl 				 
			ld  c, (hl) 		 

			 

			xor a
			or  b
			jr  z, _hotspots_setup_done  
			
			xor a
			or  c
			jr  z, _hotspots_setup_done

		._hotspots_setup_do
			ld  a, (__x)
			ld  e, a
			sla a
			sla a
			sla a
			sla a
			ld  (_hotspot_x), a

			ld  a, (__y)
			ld  d, a
			sla a
			sla a
			sla a
			sla a
			ld  (_hotspot_y), a

			 
			 
			sub d
			add e

			ld  e, a
			ld  d, 0
			ld  hl, _map_buff
			add hl, de
			ld  a, (hl)
			ld  (_orig_tile), a

			 
			ld  a, b
			cp  3
			jp  nz, _hotspots_setup_set

		._hotspots_setup_set_refill
			xor a
		._hotspots_setup_set
			add 16
			ld  (__t), a		

			call _draw_coloured_tile_gamearea

		._hotspots_setup_done
	#endasm


			 
		 










		#asm

				 
				ld  hl, _cerrojos
				ld  b,  32 
			._open_locks_loop
				push bc
				
				ld  a, (_n_pant)
				ld  c, a

				ld  b, (hl)			 
				inc hl

				ld  d, (hl) 		 
				inc hl

				ld  e, (hl)			 
				inc hl

				ld  a, (hl)			 
				inc hl

				or  a
				jr  nz, _open_locks_done

				ld  a, b
				cp  c
				jr  nz, _open_locks_done
				
			 
							ld  a, b
				or  d
				or  e
				jr  z, _open_locks_done				
			

			._open_locks_do
				ld  a, d
				ld  (__x), a
				ld  a, e
				ld  (__y), a
				
				sla a
				sla a
				sla a
				sla a
				sub e
				add d

				ld  b, 0
				ld  c, a
				xor a
				
				push hl 			 
				
				ld  hl, _map_attr
				add hl, bc
				ld  (hl), a
				ld  hl, _map_buff
				add hl, bc
				ld  (hl), a

				ld  (__t), a

				call _draw_coloured_tile_gamearea

				pop hl

			._open_locks_done
				
				pop bc
				dec b
				jr  nz, _open_locks_loop
		#endasm

	
	
		bullets_init ();
	

	



	invalidate_viewport ();
	is_rendering = 0;
}

void select_joyfunc (void) {
	
	





	
	while (1) {
		gpjt = sp_GetKey ();
		if (gpjt >= '1' && gpjt <= '3') {
			joyfunc = joyfuncs [gpjt - '1'];

			



			break;
		}			
	}

	
		wyz_play_sound ( 0 );
		sp_WaitForNoKey ();
	
}






























 















#line 131 "mk1.c"
#line 1 "engine/player.h"
 
 

 

void player_init (void) {
	 
	 
		
	



	p_vy = 0;
	p_vx = 0;
	p_cont_salto = 1;
	p_saltando = 0;
	p_frame = 0;
	p_subframe = 0;
	



		p_facing = 1;
	
	p_estado = 	 0 ;
	p_ct_estado = 0;
	


	p_objs =	0;
	p_keys = 0;
	p_killed = 0;
	p_disparando = 0;
	







	















	
		top_colision_point =  0 ;
	
	
}

void player_calc_bounding_box (void) {
	


































































		#asm

			ld  a, (_gpx)
			srl a
			srl a
			srl a
			srl a
			ld  (_ptx1), a
			ld  a, (_gpx)
			add 15
			srl a
			srl a
			srl a
			srl a
			ld  (_ptx2), a
			ld  a, (_gpy)
			 
			 
			add  8 

			srl a
			srl a
			srl a
			srl a
			ld  (_pty1), a
			ld  a, (_gpy)

			add 15
			srl a
			srl a
			srl a
			srl a
			ld  (_pty3), a
			ld  a, (_gpy)
			add 31



			srl a
			srl a
			srl a
			srl a
			ld  (_pty2), a
		#endasm

	}

unsigned char player_move (void) {	
		
	 
	 
	 

	

		
			


			{
				 
				
				#asm

						; Signed comparisons are hard
						; p_vy <=  512  -  64 

						; We are going to take a shortcut.
						; If p_vy < 0, just add  64 .
						; If p_vy > 0, we can use unsigned comparition anyway.

						ld  hl, (_p_vy)
						bit 7, h
						jr  nz, _player_gravity_add 	; < 0

						ld  de,  512  -  64 
						or  a
						push hl
						sbc hl, de
						pop hl
						jr  nc, _player_gravity_maximum

					._player_gravity_add
						ld  de,  64 
						add hl, de
						jr  _player_gravity_vy_set

					._player_gravity_maximum
						ld  hl,  512 

					._player_gravity_vy_set
						ld  (_p_vy), hl

					._player_gravity_done

					




						ld  a, (_p_gotten)
						or  a
						jr  z, _player_gravity_p_gotten_done

						xor a
						ld  (_p_vy), a

					._player_gravity_p_gotten_done
				#endasm

			}	
			

	





 

























	















	#line 1 "./my/ci/custom_veng.h"
 
 

 
 
#line 295 "engine/player.h"

	p_y += p_vy;
	
	
		if (p_gotten) p_y += ptgmy;
	

	 
		
	if (p_y < 0) p_y = 0;

	if (p_y > 9216) p_y = 9216;



	

	gpy = p_y >> 6;

	 

	player_calc_bounding_box ();

	hit_v = 0;
	cx1 = ptx1; cx2 = ptx2;
	


		if (p_vy + ptgmy < 0) 
	
	{
		cy1 = cy2 = pty1;
		cm_two_points ();

		if ((at1 & 8) || (at2 & 8)) {
			#line 1 "./my/ci/bg_collision/obstacle_up.h"
 
 
#line 331 "engine/player.h"

			


				p_vy = 0;
			

			






				gpy = ((pty1 + 1) << 4);
			

			p_y = gpy << 6;

			


		}
	}
	
	


		if (p_vy + ptgmy > 0)
	
	{
		cy1 = cy2 = pty2;
		cm_two_points ();

		


			 
			 
			if ((at1 & 8) || (at2 & 8) || (((gpy - 1) & 15) < 8 && ((at1 & 4) || (at2 & 4))))
			 
		
		{
			#line 1 "./my/ci/bg_collision/obstacle_down.h"
 
 
#line 375 "engine/player.h"

			


				p_vy = 0;
			
				
			









				
					gpy = ((pty2 - 1) << 4) - 16;	
				


							
			

			p_y = gpy << 6;
			
			


		}
	}

	
		if (p_vy) hit_v = ((at1 & 1) || (at2 & 1));
	
	
	gpxx = gpx >> 4;
	gpyy = gpy >> 4;

	
		
			cy1 = cy2 = (gpy + 32) >> 4;
		


		cx1 = ptx1; cx2 = ptx2;
		cm_two_points ();
		possee = ((at1 & 12) || (at2 & 12)) && (gpy & 15) < 8;
		
			if (possee) top_colision_point =  0 ;
		
	

	 

	
		


		{
			
				rda = (pad0 &  0x01 ) == 0;
			





			if (rda) {
				if (p_saltando == 0) {
				
						if (jump_button_pressed == 0)
				
					{
						if (possee || p_gotten || hit_v) {
							p_saltando = 1;
						
							top_colision_point =  8 ;
						
				
								jump_button_pressed = 1;
				
							p_cont_salto = 0;
							
							
								wyz_play_sound ( 12 );
							


							
				
							p_vy -=  576 ;
				
						}
					}
				} 
			
				else {
				





				}
			
			} else {
				p_saltando = 0;
			
				jump_button_pressed  = 0;
			
			}
		}
	

	 

	
























	 
	 
	 

	
		if ( ! ((pad0 &  0x04 ) == 0 || (pad0 &  0x08 ) == 0)) {
			


			 








			
			p_vx = 0;
			wall_h = 0;
		}

		if ((pad0 &  0x04 ) == 0) {
			


			 







			p_facing = 0;
			p_vx = - 192 ;
		}

		if ((pad0 &  0x08 ) == 0) {
			


			 







			p_facing = 1;
			p_vx =  192 ;
		}
	

	#line 1 "./my/ci/custom_heng.h"
 
 

 
#line 575 "engine/player.h"

	p_x = p_x + p_vx;
	
		p_x += ptgmx;
	
	
	 
	
	if (p_x < 0) p_x = 0;
	if (p_x > 14336) p_x = 14336;

	gpox = gpx;
	gpx = p_x >> 6;
		
	 
	player_calc_bounding_box ();

	hit_h = 0;
	cy1 = pty1; cy2 = pty2;
	cy3 = pty3;

	


		if (p_vx + ptgmx < 0)
	
	{
		cx1 = cx2 = cx3 = ptx1;
		cm_two_points ();

		if ((at1 & 8) || (at2 & 8) || (at3 & 8)) {
			#line 1 "./my/ci/bg_collision/obstacle_left.h"
 
 
#line 607 "engine/player.h"

			


				p_vx = 0;
			

			


				gpx = ((ptx1 + 1) << 4);
			

			p_x = gpx << 6;
			wall_h =  3 ;
		}
		
			else hit_h = ((at1 & 1) || (at2 & 1));
		

	}

	


		if (p_vx + ptgmx > 0)
	
	{
		cx1 = cx2 = cx3 = ptx2; 
		cm_two_points ();

		if ((at1 & 8) || (at2 & 8) || (at3 & 8)) {
			#line 1 "./my/ci/bg_collision/obstacle_right.h"
 
 
#line 640 "engine/player.h"

			


				p_vx = 0;
			

			


				gpx = (ptx1 << 4);
			

			p_x = gpx << 6;
			wall_h =  4 ;
		}
		
			else hit_h = ((at1 & 1) || (at2 & 1));
		

	}

	 

	















	cx1 = p_tx = (gpx + 8) >> 4;
	cy1 = p_ty = (gpy + 8) >> 4;

	rdb = attr (cx1, cy1);

	 
	if (rdb & 128) {
		#line 1 "./my/ci/on_special_tile.h"
 
 

#line 688 "engine/player.h"
	}

	
		

 














 















		if (wall_h ==  3 ) {		
			 
			


				cx1 = (gpx - 1) >> 4;
			

			if (attr (cx1, cy1) == 10) {
				y0 = y1 = cy1; x0 = cx1; x1 = cx1 - 1;
				process_tile ();
			}
		} else if (wall_h ==  4 ) {
			 
			


				cx1 = (gpx + 16) >> 4;		
			
			if (attr (cx1, cy1) == 10) {
				y0 = y1 = cy1; x0 = cx1; x1 = cx1 + 1;
				process_tile ();
			}
		}
	

	
		 
		if ((pad0 &  0x80 ) == 0 && p_disparando == 0) {
			p_disparando = 1;
			
 

				bullets_fire ();
			
 

		}
		
		if ((pad0 &  0x80 )) 
			p_disparando = 0;

	

	
		 
		 
		hit = 0;
		if (hit_v) {
			hit = 1;
				p_vy = addsign (-p_vy,  192 );
		} else if (hit_h) {
			hit = 1;
				p_vx = addsign (-p_vx,  192 );
		}
		
		if (hit) {
			
				if (p_estado ==  0 )
			
			{
				
					p_killme =  13 ;
				


			}
		}
	

	 

	
























		if (!possee && !p_gotten) {
			p_next_frame = player_cells [8 + p_facing];
		} else {
			gpit = p_facing << 2;
			if (p_vx == 0) {
				rda = 3;
			} else {
				rda = ((gpx + 4) >> 3) & 3;
			}
			p_next_frame = player_cells [gpit + rda];
		}
	
}

void player_deplete (void) {
	p_life = (p_life > p_kill_amt) ? p_life - p_kill_amt : 0;
}

void player_kill (unsigned char sound) {
	p_killme = 0;

	player_deplete ();

	
		wyz_play_sound (sound);
	



	







 


	
		p_estado =  2 ;
		p_ct_estado = 50;
	
}

#line 132 "mk1.c"
#line 1 "engine/enengine.h"
 
 

 























void enems_draw_current (void) {
	_en_x = malotes [enoffsmasi].x;
	_en_y = malotes [enoffsmasi].y;
	
	#asm

		; enter: IX = sprite structure address 
		;        IY = clipping rectangle, set it to "ClipStruct" for full screen 
		;        BC = animate bitdef displacement (0 for no animation) 
		;         H = new row coord in chars 
		;         L = new col coord in chars 
		;         D = new horizontal rotation (0..7) ie horizontal pixel position 
		;         E = new vertical rotation (0..7) ie vertical pixel position 

		 
		ld  a, (_enit)
		sla a
		ld  c, a
		ld  b, 0 				 
		ld  hl, _sp_moviles
		add hl, bc
		ld  e, (hl)
		inc hl 
		ld  d, (hl)
		push de						
		pop ix

		 
		ld  iy, vpClipStruct

		 
		 
		ld  hl, _en_an_current_frame
		add hl, bc 				 
		ld  e, (hl)
		inc hl 
		ld  d, (hl) 			 

		ld  hl, _en_an_next_frame
		add hl, bc 				 
		ld  a, (hl)
		inc hl
		ld  h, (hl)
		ld  l, a 				 

		or  a 					 
		sbc hl, de 				 

		push bc 				 

		ld  b, h
		ld  c, l 				 

		 
		ld  a, (__en_y)					
		srl a
		srl a
		srl a
		add  2 
		ld h, a

		ld  a, (__en_x)
		srl a
		srl a
		srl a
		add  1 
		ld  l, a

		 
		ld  a, (__en_x)
		and 7
		ld  d, a

		ld  a, (__en_y)
		and 7
		ld  e, a

		call SPMoveSprAbs

		 

		pop bc 					 

		ld  hl, _en_an_current_frame
		add hl, bc
		ex  de, hl 				 

		ld  hl, _en_an_next_frame
		add hl, bc 				 
		
		ldi
		ldi
	#endasm

}

void enems_load (void) {
	 
	enoffs = n_pant * 3;
	
	for (enit = 0; enit <  3 ; ++ enit) {
		en_an_frame [enit] = 0;
		en_an_state [enit] = 0;
		en_an_count [enit] = 3;
		enoffsmasi = enoffs + enit;

		 









		#line 1 "./my/ci/enems_custom_respawn.h"
 
 

 

#line 145 "engine/enengine.h"

		en_an_next_frame [enit] = sprite_18_a;

		switch (malotes [enoffsmasi].t & 0x1f) {
			case 1:
			case 2:
			case 3:
			case 4:
				en_an_base_frame [enit] = (malotes [enoffsmasi].t - 1) << 1;
				break;

			











			















			





				#line 1 "./my/ci/enems_load.h"
 
 

#line 191 "engine/enengine.h"
		}

		#line 1 "./my/ci/enems_extra_mods.h"
 
 
#line 194 "engine/enengine.h"
	}
}

void enems_kill (void) {
	if (_en_t != 7) _en_t |= 16;
	++ p_killed;

	



	#line 1 "./my/ci/on_enems_killed.h"
 
 

#line 206 "engine/enengine.h"

	
 

}

void enems_move (void) {
	tocado = p_gotten = ptgmx = ptgmy = 0;

	for (enit = 0; enit <  3 ; enit ++) {
		active = 0;
		enoffsmasi = enoffs + enit;

		 
		
		#asm

				 
				 
				 
				 
				ld 	hl, (_enoffsmasi)
				ld  h, 0

							add hl, hl 				 
				ld  d, h
				ld  e, l 				 
				add hl, hl 				 
				add hl, hl 				 

				add hl, de 				 
			

 
 
 
 

 


				ld  de, _malotes
				add hl, de

				ld  (__baddies_pointer), hl 		 

				ld  a, (hl)
				ld  (__en_x), a
				inc hl 

				ld  a, (hl)
				ld  (__en_y), a
				inc hl 

				ld  a, (hl)
				ld  (__en_x1), a
				inc hl 

				ld  a, (hl)
				ld  (__en_y1), a
				inc hl 

				ld  a, (hl)
				ld  (__en_x2), a
				inc hl 

				ld  a, (hl)
				ld  (__en_y2), a
				inc hl 

				ld  a, (hl)
				ld  (__en_mx), a
				inc hl 

				ld  a, (hl)
				ld  (__en_my), a
				inc hl 

				ld  a, (hl)
				ld  (__en_t), a
				and 0x1f
				ld  (_rdt), a

			
				inc hl 

				ld  a, (hl)
				ld  (__en_life), a
			
		#endasm


					_en_cx = _en_x; _en_cy = _en_y;
		
		
		
			if (en_an_state [enit] ==  4 ) {
				-- en_an_count [enit];
				if (en_an_count [enit] == 0) {
					en_an_state [enit] = 0;
					en_an_next_frame [enit] = sprite_18_a;
					continue;
				}
			}
		

		
			


				pregotten = (gpx + 15 >= _en_x && gpx <= _en_x + 15);
			
		

		switch (rdt) {
			case 1:
			case 2:
			case 3:
			case 4:
			


				#line 1 "./engine/enem_mods/enem_type_lineal.h"
 
 

 

 













#asm

		ld 	a, 1
		ld  (_active), a

		ld  a, (__en_mx)
		ld  c, a
		ld  a, (__en_x)
		add a, c
		ld  (__en_x), a

		ld  c, a
		ld  a, (__en_x1)
		cp  c
		jr  z, _enems_lm_change_axis_x
		ld  a, (__en_x2)
		cp  c

	







		jr  nz, _enems_lm_change_axis_x_done
	

	._enems_lm_change_axis_x
		ld  a, (__en_mx)
		neg
		ld  (__en_mx), a

	._enems_lm_change_axis_x_done

		ld  a, (__en_my)
		ld  c, a
		ld  a, (__en_y)
		add a, c
		ld  (__en_y), a

		ld  c, a
		ld  a, (__en_y1)
		cp  c
		jr  z, _enems_lm_change_axis_y
		ld  a, (__en_y2)
		cp  c

	








		jr  nz, _enems_lm_change_axis_y_done
	
		
	._enems_lm_change_axis_y
		ld  a, (__en_my)
		neg
		ld  (__en_my), a

	._enems_lm_change_axis_y_done

#endasm

	
#line 329 "engine/enengine.h"
				




				break;

			




			




			#line 1 "./my/ci/enems_move.h"
 
 

#line 347 "engine/enengine.h"
			 



		}
		
		if (active) {			
			 
			if (en_an_base_frame [enit] != 99) {
				 







				#asm

						ld  bc, (_enit)
						ld  b, 0

						ld  hl, _en_an_count
						add hl, bc
						ld  a, (hl)
						inc a
						ld  (hl), a

						cp  4
						jr  nz, _enems_move_update_frame_done

						xor a
						ld  (hl), a

						ld  hl, _en_an_frame
						add hl, bc
						ld  a, (hl)
						xor 1
						ld  (hl), a
						
						ld  hl, _en_an_base_frame
						add hl, bc
						ld  d, (hl)
						add d 							; A = en_an_base_frame [enit] + en_an_frame [enit]]

						sla c 							; Index 16 bits; it never overflows.
						ld  hl, _en_an_next_frame
						add hl, bc
						ex de, hl 						; DE -> en_an_next_frame [enit]

						sla a
						ld  c, a
						ld  b, 0

						ld  hl, _enem_cells
						add hl, bc 						; HL -> enem_cells [en_an_base_frame [enit] + en_an_frame [enit]]

						ldi
						ldi 							; Copy 16 bit
					._enems_move_update_frame_done
				#endasm

			}
			
			 
			
							 
				if (_en_t == 4) {
					if (pregotten) {

						 
						if (_en_mx) {
											if (gpy + 33 >= _en_y && gpy + 24 <= _en_y) {
								p_gotten = 1;
								ptgmx = _en_mx << 6;
								gpy = (_en_y - 32); p_y = gpy << 6;
							}
				






						}

						 
				
						if (
							(_en_my < 0 && gpy + 34 >= _en_y && gpy + 24 <= _en_y) ||
							(_en_my > 0 && gpy + 33 + _en_my >= _en_y && gpy + 24 <= _en_y)
						) {
							p_gotten = 1;
							ptgmy = _en_my << 6;
							gpy = (_en_y - 32); p_y = gpy << 6;						
						}
				










					}
				} else
			
			{
				#line 1 "./my/ci/custom_enems_player_collision.h"
 
 

 
 

 
 

 
#line 459 "engine/enengine.h"
			
				cx2 = _en_x; cy2 = _en_y;
				if (!tocado && collide () && p_estado ==  0 ) {
					
 

























					{
						tocado = 1;
						








						
							
								p_killme =  14 ;
							


						
						
						
























						#line 1 "./my/ci/on_enems_collision.h"
 
 

#line 534 "engine/enengine.h"
					}
				}
			}
			player_enem_collision_done:
			
			
				 
				


				{
					for (gpjt = 0; gpjt <  3 ; gpjt ++) {
						if (bullets_estado [gpjt] == 1) {
							blx = bullets_x [gpjt] + 3; 
							bly = bullets_y [gpjt] + 3;
							if (blx >= _en_x && blx <= _en_x + 15 && bly >= _en_y && bly <= _en_y + 15) {
								




								_en_x = _en_cx;
								_en_y = _en_cy;
								en_an_next_frame [enit] = sprite_17_a;
								bullets_estado [gpjt] = 0;
								
									if (_en_t != 4) -- _en_life;
								


								
								if (_en_life == 0) {
									enems_draw_current ();
									sp_UpdateNow ();
									
										en_an_state [enit] =  4 ;
										en_an_count [enit] = 12;
										wyz_play_sound ( 6 );
									



									
									



									enems_kill ();					
								}

								
									wyz_play_sound ( 7 );
								


							}
						}
					}

				}
			

			#line 1 "./my/ci/enems_extra_actions.h"
 
 
#line 597 "engine/enengine.h"
		} 

		#asm		

				 
				 

				ld  hl, (__baddies_pointer) 		 

				ld  a, (__en_x)
				ld  (hl), a
				inc hl

				ld  a, (__en_y)
				ld  (hl), a
				inc hl

				ld  a, (__en_x1)
				ld  (hl), a
				inc hl

				ld  a, (__en_y1)
				ld  (hl), a
				inc hl

				ld  a, (__en_x2)
				ld  (hl), a
				inc hl

				ld  a, (__en_y2)
				ld  (hl), a
				inc hl

				ld  a, (__en_mx)
				ld  (hl), a
				inc hl

				ld  a, (__en_my)
				ld  (hl), a
				inc hl

				ld  a, (__en_t)
				ld  (hl), a
				inc hl

							ld  a, (__en_life)
				ld  (hl), a
			
		#endasm	

	}

	

}
#line 133 "mk1.c"
#line 1 "engine/hotspots.h"
 
 

 









void hotspots_do (void) {
	if (hotspots [n_pant].act == 0) return;

	cx2 = hotspot_x; cy2 = hotspot_y; if (collide ()) {
		 
		hotspot_destroy = 1;
			
		switch (hotspots [n_pant].tipo) {
			
				case 1:
					

















						++ p_objs;
						



						
							wyz_play_sound ( 5 );
						



						











					
					break;
			

			
				case 2:
					p_keys ++;
					
						wyz_play_sound ( 10 );
					


					break;
			

			
				case 3:
					p_life +=  10 ;
					if (p_life >  99 )
						p_life =  99 ;
					
						wyz_play_sound ( 11 );
					


					break;
			

			













			













			










			#line 1 "./my/ci/hotspots_custom.h"
 
 

#line 133 "engine/hotspots.h"
		}
			
		if (hotspot_destroy) {
			hotspots [n_pant].act = 0;
			_x = hotspot_x >> 4; _y = hotspot_y >> 4; _t = orig_tile;
			draw_invalidate_coloured_tile_gamearea ();
			hotspot_y = 240;
		}
	}
}
#line 134 "mk1.c"





#line 1 "mainloop.h"
 
 

 
 

void main (void) {

	 
	
	#asm

		di
	#endasm

	
			sp_InitIM2(0xf1f1);
		sp_CreateGenericISR(0xf1f1);
		sp_RegisterHook(255, ISR);
		
		#asm

			ei
		#endasm


		wyz_init ();
	
	cortina ();
	
	 
	sp_Initialize (0, 0);
	sp_Border ( 0x00 );
	sp_AddMemory(0,  (64 + (  3   * 5)) , 14, AD_FREE);
	
	 
			gen_pt = font;
	

	gpit = 0; do {
		sp_TileArray (gpit, gen_pt);
		gen_pt += 8;
		gpit ++;
		
			if (gpit == 64) gen_pt = tileset;
		
	} while (gpit);

	 
	




















		
			sp_player = sp_CreateSpr ( 0x00 , 5, sprite_2_a);
		


		sp_AddColSpr (sp_player, sprite_2_b);
		sp_AddColSpr (sp_player, sprite_2_c);
		p_current_frame = p_next_frame = sprite_2_a;
		
		for (gpit = 0; gpit <  3 ; gpit ++) {
			
				sp_moviles [gpit] = sp_CreateSpr( 0x00 , 5, sprite_9_a);
			


 			sp_AddColSpr (sp_moviles [gpit], sprite_9_b);
			sp_AddColSpr (sp_moviles [gpit], sprite_9_c);	
			en_an_current_frame [gpit] = en_an_next_frame [gpit] = sprite_9_a;
		}
	

	
		for (gpit = 0; gpit <  3 ; gpit ++) {
			


				sp_bullets [gpit] = sp_CreateSpr ( 0x40 , 2, sprite_19_a);
			
			sp_AddColSpr (sp_bullets [gpit], sprite_19_a+32);
		}
	

	










	#line 1 "my/ci/after_load.h"
 
 

#line 115 "mainloop.h"

	while (1) {
		



		level = 0;

		 
		
		#line 1 "my/title_screen.h"
 
 

 

{
	sp_UpdateNow ();
	blackout ();
	
	
		get_resource ( 1 , 16384);
		wyz_play_music (0);
	







	select_joyfunc ();
}
#line 126 "mainloop.h"
		
		



		#line 1 "my/ci/before_game.h"
 
 

#line 132 "mainloop.h"

		
			



			
				p_life =  99 ;
			

			


				warp_to_level = 0;
			

			while (1) 
		
		
		{
			
				#line 1 "my/level_screen.h"
 
 

 

{
	blackout_area ();
	
	level_str [7] = 49 + level;
	_x = 12; _y = 12; _t = 71; _gp_gen = level_str; print_str ();
	sp_UpdateNow ();
	
		wyz_play_sound ( 0 );
	



	espera_activa (100);
}
#line 154 "mainloop.h"
			
				prepare_level (level);				
			
					
			
				 
				cortina ();
				sp_UpdateNow();
				
					 
					get_resource ( 3 , 16384);
				






			

			 
			#line 1 "mainloop/game_loop.h"
 
 

 

	#asm

		; Makes debugging easier
		._game_loop_init
	#endasm


	playing = 1;
	player_init ();

	

	





	
		


	

	



	maincounter = 0;

	


	
	
			 
		
			wyz_play_music (levels [level].music_id);
		


	

	
 



	#line 1 "./my/ci/entering_game.h"
 
 

#line 55 "mainloop/game_loop.h"
	
	

 




	p_killme = success = half_life = 0;
		
	objs_old = keys_old = life_old = killed_old = 0xff;
	


	



	
		
		x_pant = n_pant % level_data.map_w;
y_pant = n_pant / level_data.map_w;
		


	

	





	



	o_pant = 0xff;
	while (playing) {
		#asm

			; Makes debugging easier
			._game_loop_do
		#endasm


		



		p_kill_amt = 1;
		pad0 = (joyfunc) (&keys);

		if (o_pant != n_pant) {
			#line 1 "./my/ci/before_entering_screen.h"
 
 

#line 110 "mainloop/game_loop.h"
			draw_scr ();
			o_pant = n_pant;
		}

		







 







































 










		#line 1 "./mainloop/hud.h"
 
 

 

	
		if (p_objs != objs_old) {
			draw_objs ();
			objs_old = p_objs;
		}
	

	
		if (p_life != life_old) {
			_x =  5 ; _y =  0 ; _t = p_life; print_number2 ();
			life_old = p_life;
		}
	

	
		if (p_keys != keys_old) {
			_x =  16 ; _y =  0 ; _t = p_keys; print_number2 ();
			keys_old = p_keys;
		}
	

	
		





	

	






	





#line 174 "mainloop/game_loop.h"

		maincounter ++;
		half_life = !half_life;
		
		 
		player_move ();
		
		 
		enems_move ();

		
 



		if (p_killme) {
			if (p_life) {
			player_kill (p_killme);
			#line 1 "./my/ci/on_player_killed.h"
 
 

#line 193 "mainloop/game_loop.h"
			} else playing = 0;
		}

		
			 
			bullets_move ();
		

		



		 
		







		 
		if (o_pant == n_pant) {
			#line 1 "./mainloop/update_sprites.h"
 
 

 

	for (enit = 0; enit <  3 ; enit ++) {
		enoffsmasi = enoffs + enit;
		enems_draw_current ();
	}

	if ( (p_estado &  2 ) == 0 || half_life == 0 ) {
		 
		#asm

				ld  ix, (_sp_player)
				ld  iy, vpClipStruct

				ld  hl, (_p_next_frame)
				ld  de, (_p_current_frame)
				or  a
				sbc hl, de
				ld  b, h
				ld  c, l

				ld  a, (_gpy)
				srl a
				srl a
				srl a
				add  2 
				ld  h, a 

				ld  a, (_gpx)
				srl a
				srl a
				srl a
				add  1 
				ld  l, a 
				
				ld  a, (_gpx)
				and 7
				ld  d, a

				ld  a, (_gpy)
				and 7
				ld  e, a

				call SPMoveSprAbs
		#endasm

	} else {
		 
		#asm

				ld  ix, (_sp_player)
				ld  iy, vpClipStruct

				ld  hl, (_p_next_frame)
				ld  de, (_p_current_frame)
				or  a
				sbc hl, de
				ld  b, h
				ld  c, l

				ld  hl, 0xfefe
				ld  de, 0
				call SPMoveSprAbs
		#endasm

	}

	p_current_frame = p_next_frame;

			for (gpit = 0; gpit <  3 ; gpit ++) {
			if (bullets_estado [gpit] == 1) {
				rdx = bullets_x [gpit]; rdy = bullets_y [gpit];
				 
				#asm

						ld  a, (_gpit)
						sla a
						ld  c, a
						ld  b, 0 				 
						ld  hl, _sp_bullets
						add hl, bc
						ld  e, (hl)
						inc hl 
						ld  d, (hl)
						push de						
						pop ix

						ld  iy, vpClipStruct
						ld  bc, 0

						ld  a, (_rdy)
						srl a
						srl a
						srl a
						add  2 
						ld  h, a

						ld  a, (_rdx)
						srl a
						srl a
						srl a
						add  1 
						ld  l, a

						ld  a, (_rdx)
						and 7
						ld  d, a 

						ld  a, (_rdy)
						and 7
						ld  e, a 
						
						call SPMoveSprAbs
				#endasm

			} else {
				 
				#asm

						ld  a, (_gpit)
						sla a
						ld  c, a
						ld  b, 0 				 
						ld  hl, _sp_bullets
						add hl, bc
						ld  e, (hl)
						inc hl 
						ld  d, (hl)
						push de						
						pop ix

						ld  iy, vpClipStruct
						ld  bc, 0

						ld  hl, 0xfefe
						ld  de, 0 
						
						call SPMoveSprAbs
				#endasm

			}
		}
			
	 


 




































 




 



















#line 217 "mainloop/game_loop.h"

			sp_UpdateNow();
		}

		
			 
			if (p_estado ==  2 ) {
				p_ct_estado --;
				if (p_ct_estado == 0)
					p_estado =  0 ; 
			}
		
		
		 
		hotspots_do ();

		 
		
		
 




























 





		
 













 

 








		 
			
		#line 1 "./mainloop/flick_screen.h"
 
 

 


	
		if (gpx == 0 && p_vx < 0 && x_pant > 0) {
			--n_pant;
			--x_pant;
			gpx = 224;
			p_x = 14336;
		}

		
			if (gpx == 224 && p_vx > 0 && x_pant < (level_data.map_w - 1))
		


		{
			++n_pant;
			++x_pant;					
			gpx = p_x = 0;
		}
	

	
		if (gpy == 0 && p_vy < 0 && y_pant > 0) {
			
				n_pant -= level_data.map_w;
			


			--y_pant;					
			gpy = 144;
			p_y = 9216;	
		}

		
			if (gpy == 144 && p_vy > 0 && y_pant < (level_data.map_h - 1)) {
				n_pant += level_data.map_w;
		



			++y_pant;					
			gpy = p_y = 0;
			if (p_vy > 256) p_vy = 256;	
		}
	







 

















 

























#line 300 "mainloop/game_loop.h"

		 
		
		if (0
			


			
				|| p_objs ==  1 
			
			






		) {
			success = 1;
			playing = 0;
		}
		
		 
		












		#line 1 "./my/ci/extra_routines.h"
 
 

_x = 14;           
_y = 1;           
 
 
_t = brk_buff[gpaux];
  
print_number2();   

#line 337 "mainloop/game_loop.h"
	}
	sp_UpdateNow ();
	sp_WaitForNoKey ();

	
		wyz_stop_sound ();
	

	#line 1 "./my/ci/after_game_loop.h"
 
 

#line 346 "mainloop/game_loop.h"
#line 176 "mainloop.h"

			
				if (success) {
					
						 
					
					
					zone_clear ();

					


						if (warp_to_level == 0)
					
					++ level;
					
					if (level >=  1  
						


					) {
						game_ending ();
						break;
					}
				} else {
					
						 
					

					


						game_over ();
					
					
					
						wyz_stop_sound ();
					
					break;
				}
			



 



			
				cortina ();
			
		}
		
		clear_sprites ();
	}
}
#line 140 "mk1.c"


 



