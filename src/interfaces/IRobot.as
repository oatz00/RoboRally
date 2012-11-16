package interfaces
{
	public interface IRobot
	{
		function get direction():String;

		function get name():String;

		function get health():int;

		function get lives():int;

		function get isPoweredDown():Boolean;

		function get upgrades():Vector.<IUpgrade>;

		function get savePoint():IBoardElement

		function get program():Vector.<IProgram>;
	}
}
