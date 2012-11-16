package constants
{
	public class Direction
	{
		public static const DOWN:String = "down";
		public static const LEFT:String = "left";
		public static const RIGHT:String = "right";
		public static const UP:String = "up";

		public static function isValid(direction:String):Boolean
		{
			if (direction == DOWN || direction == LEFT || direction == RIGHT || direction == UP)
				return true;

			return false;
		}

		public static function isValidRotation(direction:String):Boolean
		{
			if (direction == LEFT || direction == RIGHT)
				return true;

			return false;
		}
	}
}
