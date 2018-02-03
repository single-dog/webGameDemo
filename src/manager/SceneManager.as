package manager
{
	public class SceneManager
	{
		private static var instance:SceneManager;
		public function SceneManager()
		{
			
		}
		
		public static function getInstance():SceneManager
		{
			instance ||= new SceneManager;
			return instance;
		}
		
		public function enterMap(mapId:int):void
		{
			
		}
	}
}