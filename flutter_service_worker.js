'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "2318e0fbd2155e263b6ece32ede3453b",
"assets/assets/fonts/ProximaNovaFont.otf": "bf9f5d50c1b928ff21436517a1a95ad9",
"assets/assets/fonts/SourceSansPro.ttf": "47dbe5824a2d82b794ef1f52809699a5",
"assets/assets/icons/cloud.png": "b2bcb2d12099ecaedaec74c51dcbbae0",
"assets/assets/icons/cloudwhite.svg": "8bf101080888ea9f3bf6e16a6023ac19",
"assets/assets/icons/comment.png": "704f896edaf0d5f25a0f475298782e57",
"assets/assets/icons/fb.png": "43f42d20e02f56a82d14bd4a55428abe",
"assets/assets/icons/gp.png": "90c94c3a37f7a02adfd63de344dbaab4",
"assets/assets/icons/info.png": "350181c77137da7cad96ecfc809c3831",
"assets/assets/icons/invot.png": "3e4eba51a3ddcfea3e0012222d01449b",
"assets/assets/icons/invot1.png": "94742ca9582cd80bc83461c499ff0358",
"assets/assets/icons/like.png": "5998b913a9e7d623416997538c8af7f7",
"assets/assets/icons/linkdin.png": "a5636cbb561561219891a593683c6d0a",
"assets/assets/icons/lock.png": "3b3b89fa7bd4ed8a69a96dd4dc2e37b7",
"assets/assets/icons/logo.png": "fed4945c3a75c1bbb93ac84b4b178d7c",
"assets/assets/icons/logo1.png": "7feb263bf2f3e13038104ce427ba2617",
"assets/assets/icons/menu.png": "da73da9e7e3ee89f8e92bd65b369c74a",
"assets/assets/icons/mobileLogo.png": "cad512f2b256efccf9c127be7672629c",
"assets/assets/icons/play_arrow.svg": "80b673c740128a386902749eca235524",
"assets/assets/icons/play_whole.png": "9f8516419c5114207f73301dcc5885fc",
"assets/assets/icons/right.png": "9c931367a0dec9e3cc950ecb3e98b00b",
"assets/assets/icons/rightShield.png": "04bc1682c4132ed426e1611a145038d5",
"assets/assets/icons/share.png": "443efcbe3070f32a2dc9f5032b6f24f6",
"assets/assets/icons/shield.png": "ebb51141b15678a80d5f47d5140fdea7",
"assets/assets/icons/svg/any.svg": "a331f0dfa94d1fa1827e4913238f6ec3",
"assets/assets/icons/svg/facebook.svg": "12ee1bfc06e686c3c068a0d2a9f1ba41",
"assets/assets/icons/svg/googleplus.svg": "c5ed3ef484e7f36a7fbfde2b2a6740d8",
"assets/assets/icons/svg/linkdin.png": "babbb01f49b10fd338636a6cd42183af",
"assets/assets/icons/svg/linkdin.svg": "58759f5810418bfe2eb5f24704b992ec",
"assets/assets/icons/svg/twitter.svg": "a11d503b3a5af980e842d27c89090cf9",
"assets/assets/icons/twitter.png": "228535ca2f0675cec8cd333cb81bd052",
"assets/assets/icons/x.png": "831395a9dd0fe15f14d2931ae0dce650",
"assets/assets/images/alone_girl.png": "3c78817882dfb51b9ed32202e2d4b591",
"assets/assets/images/avatar.png": "fb1b4cd8950c24faee16c35233b75521",
"assets/assets/images/BannerImage.png": "2ec4e487b30a7fb06d6549407ec2645c",
"assets/assets/images/circle.png": "8b85727a475496804cfdf1aeb403b350",
"assets/assets/images/couple_bg.png": "2e9fd04440df800ecf95720fb5f564d8",
"assets/assets/images/E1.png": "d8b36fffe44ebbdcdbd0027932e4dc75",
"assets/assets/images/E2.png": "43607a628a2825082dc8d36c67720b74",
"assets/assets/images/fairmont_logo.png": "0997a125f4403c0df428c14716df4285",
"assets/assets/images/hilton_logo.png": "fb1befba4fda0ceaacd57ec96d1fddf3",
"assets/assets/images/l1.png": "5b36994570b5fface25a15caace4c469",
"assets/assets/images/l2.png": "2591142b8d9b92937fadbc39cf2a86b0",
"assets/assets/images/l3.png": "be57d138dd4c35a27091286a4c418581",
"assets/assets/images/l4.png": "41a9bb422bba4668959ce5a3d2a8e959",
"assets/assets/images/l5.png": "46fa146db5d554085c65ac813e547c78",
"assets/assets/images/nasa.png": "b1a711af7c304238615cce4d82185cb4",
"assets/assets/images/news.png": "95209c7e3e410f06cd94bb4c759a6d4e",
"assets/assets/images/news1.png": "f29692893c25656e96544e0b059f7ce5",
"assets/assets/images/news2.png": "344369948d15dd8de9e4ef13e98bc260",
"assets/assets/images/p1.png": "48ab1bb9c8a03a8e0d79293857ab3352",
"assets/assets/images/p2.png": "39b8f4eb30aded0aa26492d3578dd30e",
"assets/assets/images/p3.png": "bf695010af7f4fd2eaa6f990240a5290",
"assets/assets/images/p4.png": "7e4437cebe351731f9f5fd7c5ce0d849",
"assets/assets/images/p5.png": "aca3b8b81a1968473ed477546084404e",
"assets/assets/images/people2.png": "fb54122495d56154ff5262d30ad72307",
"assets/assets/images/profile.png": "e726998baf1278d6fd601e84617bd18f",
"assets/assets/images/profile2.png": "21e88aec567ed00962d3468f2d063451",
"assets/assets/images/profile3.png": "0c8bc4b92ada46e15ebcb74fa13adf22",
"assets/assets/images/profile4.png": "87a380bb601cac46629472f3f5c14fcf",
"assets/assets/images/public.png": "1e44979f2cad8dff493ba2f558e8fe03",
"assets/assets/images/round.png": "f398026ae24ba9201767813cec52a362",
"assets/assets/images/round2.png": "3d72c80f25c26dcaf53cfa7c019d57de",
"assets/assets/images/share.png": "520205cd6fee5ea0c05b2039f495bd9c",
"assets/assets/images/slider1.png": "aa4d32623a4a9f039fe4f449a8990d07",
"assets/assets/images/slider2.png": "91f7dffe989f1d46cabd2d07eeec9b14",
"assets/assets/images/t1.png": "76c20347a513e188b546a756259be0ce",
"assets/assets/images/t10.png": "a1a3508636386ea890d4ed3a3d348e4a",
"assets/assets/images/t2.png": "07befbba8c14b5e5df93080034a42850",
"assets/assets/images/t3.png": "53c36d44245d086507d1b373a1f8fd5d",
"assets/assets/images/t4.png": "8bc65eb01ef94fc972b94749ecf37518",
"assets/assets/images/t5.png": "656259b59cd582774d6dda861073c07c",
"assets/assets/images/t6.png": "2247a2669f1c0200c56c4ddad3aae2d1",
"assets/assets/images/t7.png": "896d7fe8d1715308e2a9fe508fa792e1",
"assets/assets/images/t8.png": "6437a5ab12962cf437a3560a3c350c95",
"assets/assets/images/t9.png": "a1a3508636386ea890d4ed3a3d348e4a",
"assets/assets/images/twitter.png": "686bae9f5e21679681db4d3ac0c3d6f8",
"assets/assets/images/winter.png": "8e079c058599ebe69d8240057e290a71",
"assets/FontManifest.json": "5e2a6bbbb7d8b2e8982c0536801d4a4c",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/NOTICES": "5d28900f3ad68f9305c2da362cc5e803",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "e766963327e0a89f9ec2ba88646b6177",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "13685372945d816a2b474fc082fd9aaa",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "db78b9359171f24936b16d84f63af378",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "1ab236ed440ee51810c56bd16628aef0",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b3263095df30cb7db78c613e73f9499a",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "6a2ddad1092a0a1c326b6d0e738e682b",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "8ef52a15e44481b41e7db3c7eaf9bb83",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "8e7f807ef943bff1f6d3c2c6e0f3769e",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"assets/packages/popup_shape/assets/images/1.jpeg": "c7fb833c0320f2e8bf576c093b5b5c07",
"assets/packages/popup_shape/assets/images/2.jpeg": "a09876e52c3b8c9d7761d9b3c9202dc8",
"assets/packages/popup_shape/assets/images/3.jpeg": "b9267b03bd7fafb49719c644def22466",
"assets/packages/popup_shape/assets/images/4.jpeg": "34066b15a8404e92c2a4f855673dfc8d",
"assets/packages/popup_shape/assets/images/5.jpeg": "8141b02c031a5005f5ffc2c5a48dbf35",
"assets/packages/popup_shape/assets/images/6.jpeg": "11e3d6197c38fe707538b3605c7139d8",
"assets/packages/popup_shape/assets/images/7.jpeg": "fc347a027b0d1bd24006e49fbe15fcfd",
"assets/packages/popup_shape/assets/images/8.jpeg": "995c147f08e0d6e5c9f24d1dfd5dfe66",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "6c0595f4e387650d865c14febb7131d1",
"/": "6c0595f4e387650d865c14febb7131d1",
"main.dart.js": "adf1b0e9a7a38060ed2306bca4ed2ee6",
"manifest.json": "12d13befd1ff2167d6aa471b22da2ca4",
"version.json": "793be19e5cd8b6c2aa8528aad64fff27"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
