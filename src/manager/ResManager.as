package manager
{
	import flash.display.Loader;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.URLStream;
	import flash.utils.Dictionary;
	
	import manager.load.LoadItem;
	
	public class ResManager extends EventDispatcher
	{
		public function ResManager(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private static var _instance:ResManager;
		public static function getInstance():ResManager
		{
			_instance ||= new ResManager;
			return _instance;
		}
		
		
		private var dataDic:Dictionary = new Dictionary;
		private var loadItems:Vector.<LoadItem> = new Vector.<LoadItem>;
		private var loaders:Vector.<URLStream> = new Vector.<URLStream>;
		public function load(url:String,callBack:Function=null,progress:Function=null):*
		{
			if(dataDic[url])
			{
				callBack.call(null,dataDic[url]);
			}else
			{
				if(loadItems[url])
				{
					(loadItems[url] as LoadItem).callBack.push(callBack);
				}else
				{
					var loadItem:LoadItem = new LoadItem(url,callBack,progress);
					loadItems[url] = loadItem;
					startLoad();
				}
			}
		}
		
		private function startLoad():void
		{
			// TODO Auto Generated method stub
			
		}
		private function getLoadItemsLength():Boolean
		{
			for(var i:String in loadItems)
			{
				return true;
			}
			return false;
		}
	}
}