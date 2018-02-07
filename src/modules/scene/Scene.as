package modules.scene
{
	import flash.display.Sprite;
	
	public class Scene extends Sprite
	{
		private static var _instance:Scene;
		
		public var map:Sprite;
		
		private var _player:Player;
		public function Scene()
		{
			super();
			map = new Sprite();
			addChild(map);
		}
		
		public static function getInstance():Scene
		{
			_instance ||= new Scene();
			return _instance;
		}
		
		public function addPlayer(playerId:int,xx:Number,yy:Number):void
		{
			_player = new Player;
			_player.x = xx;
			_player.y = yy;
		}
	}
	
}