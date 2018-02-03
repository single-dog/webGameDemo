package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import manager.LayerManager;
	
	public class webGameDemo extends Sprite
	{
		public function webGameDemo()
		{
			if(this.stage){
				onStage();
			}else {
				this.addEventListener(Event.ADDED_TO_STAGE,onStage);
			}
		}
		
		protected function onStage(event:Event=null):void
		{
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			this.stage.align = StageAlign.TOP_LEFT;
			LayerManager.getInstance().init(this);
		}
	}
}