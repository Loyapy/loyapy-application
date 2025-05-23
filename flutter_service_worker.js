'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "f0cd9ffd1efb9af27cc6647fc2b68086",
"version.json": "c9bdeedf4f6fd759563c5a84765c59d5",
"index.html": "71279c2d55c85251564d29331bf75b6a",
"/": "71279c2d55c85251564d29331bf75b6a",
"main.dart.js": "a54f88816a0272c088b87c6e3e2169e7",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "4bc423776a417bd8207c3f1d8f5ad9ed",
"assets/AssetManifest.json": "4a250d230ec8173d75d7502ae23cdc40",
"assets/NOTICES": "057b4b10f8f911e8004845927ee4bd12",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "09dd981efc903acc311637e3b7a7f43a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "d3dab39ea9bbd9761dc45cad6c25527a",
"assets/fonts/MaterialIcons-Regular.otf": "7db4a53f2c35f413287b40d8cbf1a428",
"assets/assets/category/stationary.png": "ab41611114457678cdfe79d31176a824",
"assets/assets/category/fashion.png": "b8403e1aaf84acefb181750ffcd65fc2",
"assets/assets/category/toys.png": "4160e1631de2510617dff0fd9a5d4c5e",
"assets/assets/category/sports.png": "41eac3a6b686790b60345b61f716e882",
"assets/assets/category/electronics.png": "3e88087112959703ec96322fb1e0be62",
"assets/assets/category/home_kitchen.png": "83e1fcebc034b6528be3a4b36d0aa40e",
"assets/assets/category/baby.png": "2f5d8bf8305ddec82786408f8b51fd82",
"assets/assets/product/product_1_4.jpg": "2fee0574e7b061518da5a8505ac7c57b",
"assets/assets/product/product_1_5.jpg": "d8406743604b8d5823d5433a960d64d8",
"assets/assets/product/product_1_1.jpg": "e9d6630323b06f6233aafbe0b96c5d39",
"assets/assets/product/product_1_2.jpg": "27d0084c61c14d31626c1e3709218e00",
"assets/assets/product/product_1_3.jpg": "234d042f7d6baa87ff66928c929271c6",
"assets/assets/product/product_2_5.jpg": "1263f7ac3068654c79685d5d71f9f4ee",
"assets/assets/product/product_2_4.jpg": "c6d2e3c7a1d1a53599452e5b699c6d73",
"assets/assets/product/product_2_1.jpg": "29f8b9e4d91108c6b68fd53572e83b93",
"assets/assets/product/product_2_3.jpg": "44f2530851f83bae2a2ad0084b22aa88",
"assets/assets/product/product_2_2.jpg": "584a4d24c8b24bff377ea40137b0944d",
"assets/assets/png/banner_4.png": "245418b58b14e223a5e672ceb32bfd59",
"assets/assets/png/banner_5.png": "8d0a1919fbd2eb2456bd7f275ae9907e",
"assets/assets/png/banner_1.png": "23151b1fee606664bd85504b6fa3f29a",
"assets/assets/png/banner_2.png": "be353d2761a30513124f6d8f2e77c517",
"assets/assets/png/banner_3.png": "564765c52d0415c401960a7ea360680a",
"assets/assets/png/logo_without_bg.png": "22decb9888aae02b7cef9a02a528ea08",
"assets/assets/png/google-play.png": "5ef66b3f2a4adea05eaf575273914093",
"assets/assets/png/logo_bg_white.png": "1d0d5262157f64419c3d58e53137c576",
"assets/assets/png/app-store.png": "3d93a96574a73af93e26197ea50b27cf",
"assets/assets/png/logo_bg_black.png": "04b37d3ff4806884fd93c0e7aae879af",
"assets/assets/lang/en.json": "8385c982e3d9511916850f77d6e2bbbb",
"assets/assets/lang/ar.json": "53f3fc542801d0f85554300e8c38f653",
"assets/assets/social/instagram.png": "0634a5babf36db50e415356b348e3f30",
"assets/assets/social/x.png": "474ab059c2722a579662f5dae7266593",
"assets/assets/social/tiktok.png": "a263cc4d6a9af0bbdaa9214053ec0de9",
"assets/assets/social/linkedin.png": "a073ecdfc08870a4b033b6869c7f48fa",
"assets/assets/social/whatsapp.png": "084699860a79bb3aaed4c37da7870d4c",
"assets/assets/social/facebook.png": "ad56565a45e2dc6b77cfff4e48176666",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
