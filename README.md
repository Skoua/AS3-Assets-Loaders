# AS3 Assets Loaders - v1.0 - October 2011

These classes let you load any image, swf or xml files without having to deal with events handling and creating loaders objects every time you need to.
Just import the classes and create a ImageLoader, SWFLoader or XMLLoader object, setup a complete and an optional progress event and you're done.


## Example for loading an image
```js
import net.ImageLoader.as;
import events.ImageLoaderEvent.as;
	
var loader:ImageLoader = new ImageLoader();
loader.addEventListener(ImageLoaderEvent.COMPLETE, onComplete);
loader.load('my-file.jpg');
	
function onComplete(e:ImageLoaderEvent):void
{
	e.target.removeEventListener(ImageLoaderEvent.COMPLETE, onComplete); // you don't have to but this is good for performance
	var image:Bitmap = e.target.content;
	
	// then do whatever you want with the image
}
```