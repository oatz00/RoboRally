package controller
{
	import flash.events.EventDispatcher;

	import interfaces.IGameController;
	import interfaces.IRobot;

	import utils.DirectionUtil;

	public class GameController extends EventDispatcher implements IGameController
	{
		//--------------------------------------------------------------------------
		//
		//  Class Constants
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------

		public function GameController(robots:Vector.<IRobot>)
		{
			this.robots = robots;
		}

		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

		protected var robots:Vector.<IRobot>;

		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Public Methods
		//
		//--------------------------------------------------------------------------

		public function moveRobot(robot:IRobot, direction:String):void
		{
			if (!DirectionUtil.isValid(direction))
				return;

			//do the move
		}

		public function rotateRobot(robot:IRobot, direction:String):void
		{
			if (!DirectionUtil.isValidRotation(direction))
				return;

			//do the rotation
		}

		//--------------------------------------------------------------------------
		//
		//  Protected Methods
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Private Methods
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Overrides
		//
		//--------------------------------------------------------------------------
	}
}
