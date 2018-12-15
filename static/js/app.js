if(typeof(navigator.serviceWorker) != "undefined" && navigator.serviceWorker !== null) {
	if (navigator.serviceWorker.controller) {
		//console.log('[PWA Builder] active service worker found, no need to register')
		} else {
		//Register the ServiceWorker
		navigator.serviceWorker.register(base_url+'sw.js', {
			scope: base_url
		}).then(function(reg) {
			//console.log('Service worker has been registered for scope:'+ reg.scope);
		});
	}
}