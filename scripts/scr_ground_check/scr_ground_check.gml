function scr_ground_check()
{
	jumpKey = keyboard_check_pressed(vk_space);
	jumpKeyAlt = keyboard_check_pressed(vk_up);
	duckKey = keyboard_check(vk_down);
	
	if(duckKey)
	{
		ducking = true;
		jumping = false;
		falling = true;
	}

		if(place_meeting(x, y + 1, obj_block))
		{
		  // We're touching the ground
		  vspd = 0;
		  jumping = false;
		  falling = false;
  
		  if(!duckKey) 
			ducking = false;
	
		  // If the player wants to jump
		  if((jumpKey || jumpKeyAlt) && !duckKey)
		  {
			jumping = true;
			vspd = -jspd;
		  }
		}
		else
		{
			if(ducking)
			{
				vspd += grav * 4;	
			}
			else
			{
				if(vspd < termVelocity)
					vspd += grav;
			
				if(sign(vspd) == 1)
					falling = true;
			}
	
		}
}