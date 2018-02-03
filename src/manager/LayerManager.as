package manager
{
	import flash.display.Sprite;

	public class LayerManager
	{
		public var scene:Sprite;
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
			scene = new Sprite;
			ui = new Sprite;
			win = new Sprite;
			parent.addChild(scene);
			parent.addChild(ui);
			parent.addChild(win);
		}
	}
}