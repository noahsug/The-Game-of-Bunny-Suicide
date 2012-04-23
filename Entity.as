package {
	import flash.display.MovieClip;
	
	public class Entity {
		public var img:MovieClip;
		public var active:Boolean;
		public var type:int;
		public var clipDistance:int;
		
		//movement
		public var movementType:int;
		public var movementVars:Object;
		public var prevX:Number, prevY:Number;
		
		//gravity
		public var effectedByGravity:Boolean;
		public var gravityVelocity:Number;
		public var onGround:Boolean;
		public var ground:Entity;
		
		public function Entity(img:MovieClip):void {
			active = true;
			movementType = 0;
			type = 0;
			this.img = img;
			movementVars = new Object();
			gravityVelocity = 0;
			onGround = false;
			effectedByGravity = false;
			prevX = x;
			prevY = y;
			clipDistance = 0;
		}
		
		public function get x():Number {
			return img.x;
		}
		public function get y():Number {
			return img.y;
		}
		public function set x(x:Number):void {
			img.x = x;
		}
		public function set y(y:Number):void {
			img.y = y;
		}
	}
}