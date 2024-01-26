extends CharacterBody2D

const SPEED = 150.0
var last_InputDir = Vector2.ZERO
var animated_sprite


func _ready():
	animated_sprite = $AnimatedSprite2D




func _physics_process(delta):
	var InputDir = Input.get_vector("ui_left","ui_right","ui_up","ui_down",0)
	velocity = InputDir * SPEED
	
	if InputDir != Vector2.ZERO:
		last_InputDir = InputDir
		
		move_and_slide()
		
		if InputDir.x>0:
			$AnimatedSprite2D.play("walk Right")
			$AnimatedSprite2D.flip_h = false	
	
		elif InputDir.x <0:	
			$AnimatedSprite2D.play("walk Right")
			$AnimatedSprite2D.flip_h = true
		elif InputDir.y >0:
			$AnimatedSprite2D.play("walk Down")	
			$AnimatedSprite2D.flip_h = false
		elif InputDir.y<0:
			$AnimatedSprite2D.play("walk Up")
			$AnimatedSprite2D.flip_h = false
			
		else:
			
			if last_InputDir.x!=0:
				animated_sprite.play("idle Right")
				$AnimatedSprite2D.flip_h=false
		
				
			
		
			
		
				
				
				 
				
			
	   		
			
	   		
			
	   		
		

		
		
		
	
