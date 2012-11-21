package models
{
	import constants.Direction;

	import events.ControllerEvent;

	import interfaces.IGameController;

	import utils.DirectionUtil;

	public class Pit extends BaseFloor
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

		public function Pit(controller:IGameController, direction:String)
		{
			super(controller);

			if (DirectionUtil.isValid(direction))
				this.direction = direction;
			else
				this.direction = Direction.UP;

			controller.addEventListener(ControllerEvent.KILL, pitEventHandler, false, 0, true);
		}

		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

		protected var direction:String;

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

		//--------------------------------------------------------------------------
		//
		//  Protected Methods
		//
		//--------------------------------------------------------------------------

		protected function killOccupant():void
		{
			if (!occupant)
				return;

			controller.killRobot(occupant);
		}

		protected function pitEventHandler(event:ControllerEvent):void
		{
			killOccupant();
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
