package models
{
	import interfaces.IBoardElement;
	import interfaces.IProgram;
	import interfaces.IRobot;
	import interfaces.IUpgrade;

	public class MockRobot implements IRobot
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

		public function MockRobot()
		{
		}

		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

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

		public function get direction():String
		{
			return "";
		}

		public function get name():String
		{
			return "";
		}

		public function get health():int
		{
			return 0;
		}

		public function get lives():int
		{
			return 0;
		}

		public function get isPoweredDown():Boolean
		{
			return false;
		}

		public function get upgrades():Vector.<IUpgrade>
		{
			return null;
		}

		public function get archiveLocation():IBoardElement
		{
			return null;
		}

		public function get program():Vector.<IProgram>
		{
			return null;
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
	}
}
