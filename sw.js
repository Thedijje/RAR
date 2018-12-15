//This is the "Offline page" service worker

//Install stage sets up the offline page in the cache and opens a new cache
self.addEventListener('install', function(event) {
    var offlinePage = new Request(base_url+'offline');
    event.waitUntil(
      fetch(offlinePage).then(function(response) {
        return caches.open('ror-offline').then(function(cache) {
          console.log('ror-isntalled and offline caching done'+ response.url);
          return cache.put(offlinePage, response);
        });
    }));
  });
  
  //If any fetch fails, it will show the offline page.
  //Maybe this should be limited to HTML documents?
  self.addEventListener('fetch', function(event) {
    event.respondWith(
      fetch(event.request).catch(function(error) {
        console.error( 'Failed to install sw ' + error );
        return caches.open('pwabuilder-offline').then(function(cache) {
          return cache.match('offline');
        });
      }
    ));
  });
  
  //This is a event that can be fired from your page to tell the SW to update the offline page
  self.addEventListener('refreshOffline', function(response) {
    return caches.open('ror-offline').then(function(cache) {
      console.log('offline page updated '+ response.url);
      return cache.put(offlinePage, response);
    });
  });
  