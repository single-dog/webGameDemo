package manager
{
	import flash.display.Sprite;
	
	import modules.scene.Scene;

	public class LayerManager
	{
		public var map:Sprite;
		public var ui:Sprite;
		public var win:Sprite;
		
		private static var instance:LayerManager;
		public function LayerManager()
		{
			
		}
		
		public static function getInstance():LayerManager
		{
			instance ||= new LayerManager;
			return instance;
		}
		public function init(parent:Sprite):void
		{
			map = Scene.getInstance();
			ui = new Sprite;
			win = new Sprite;
			parent.addChild(map);
			parent.addChild(ui);
			parent.addChild(win);
		}
	}
}