package models
{
	import constants.Direction;

	import events.ControllerEvent;

	import interfaces.IGameController;
	import interfaces.IRobot;

	public class Conveyor extends BaseFloor
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

		public function Conveyor(controller:IGameController, direction:String, rotation:String = null)
		{
			super(controller);

			if (Direction.isValid(direction))
				this.direction = direction;
			else
				this.direction = Direction.UP;

			if (Direction.isValidRotation(rotation))
				this.rotation = rotation;
			else
				this.rotation = null;


			controller.addEventListener(ControllerEvent.CONVEY, conveyEventHandler, false, 0, true);
		}

		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

		protected var direction:String;
		protected var rotation:String;

		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------

		override public function set occupant(value:IRobot):void
		{
			if (value == occupant)
				return;

			super.occupant = value;

			if (occupant && rotation)
				controller.rotateRobot(occupant, rotation);
		}

		//--------------------------------------------------------------------------
		//
		//  Public Methods
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Protected Methods
		//
		//--------------------------------------------------------------------------

		protected function conveyOccupant():void
		{
			if (!occupant)
				return;

			controller.moveRobot(occupant, direction);
		}

		protected function conveyEventHandler(event:ControllerEvent):void
		{
			conveyOccupant();
		}

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
