﻿package ar.events{	import flash.events.Event;		public class ImageLoaderEvent extends Event	{		public static const PROGRESS:String = "progress";		public static const COMPLETE:String = "complete";				public function ImageLoaderEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false):void		{			super(type, bubbles, cancelable);		}				public override function clone():Event		{			return new ImageLoaderEvent(type, bubbles, cancelable);		}				public override function toString():String		{			return "[ImageLoaderEvent type : " + type + ", bubbles : " + bubbles + ", cancelable : " + cancelable + "]";		}	}}