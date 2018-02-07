package manager.load
{
	public class LoadItem
	{
		public function LoadItem(_url:String,_call:Function=null,_pro:Function=null)
		{
			url = _url;
			if(_call)callBack.push(_call);
			if(_pro)progress.push(_pro);
		}
		
		public var url:String;
		public var callBack:Vector.<Function> = new Vector.<Function>;
		public var progress:Vector.<Function> = new Vector.<Function>;
		
	}
}