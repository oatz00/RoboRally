package models
{
	import controller.MockGameController;

	import interfaces.IGameController;
	import interfaces.IRobot;

	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertNull;

	public class BaseBoardElementTest
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

		public function BaseBoardElementTest()
		{
		}

		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

		private var boardElement:BaseBoardElement;
		private var controller:IGameController;

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

		[Before]
		public function setUp():void
		{
			controller = new MockGameController();
			boardElement = new BaseBoardElement(controller);
		}

		[After]
		public function tearDown():void
		{
			controller = null;
			boardElement = null;
		}

		[Test]
		public function testOccupant():void
		{
			var robot:IRobot = new MockRobot();

			assertNull(boardElement.occupant);

			boardElement.occupant = robot;

			assertEquals(robot, boardElement.occupant);
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
