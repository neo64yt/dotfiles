!function(e){var t={};function n(r){if(t[r])return t[r].exports;var i=t[r]={i:r,l:!1,exports:{}};return e[r].call(i.exports,i,i.exports,n),i.l=!0,i.exports}n.m=e,n.c=t,n.d=function(e,t,r){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var i in e)n.d(r,i,function(t){return e[t]}.bind(null,i));return r},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=31)}({0:function(e,t,n){"use strict";n.d(t,"b",(function(){return r})),n.d(t,"c",(function(){return i})),n.d(t,"e",(function(){return o})),n.d(t,"a",(function(){return u})),n.d(t,"d",(function(){return s})),n.d(t,"f",(function(){return c}));const r=(e,t)=>e&&t?`${e}_${t}`:"",i=(e,t)=>`${e}#channel:${t}`,o=(e,t,n)=>{if(e.length<t.length)return"";const r=e.indexOf(t);if(-1===r)return"";const i=r+t.length,o=e.indexOf(n,i);let u="";return o!==i?u=-1!==o&&o>i||-1!==o?e.substring(i,o):e.substring(i):""===n&&(u=e.substring(i)),u},u=(e,t)=>{const n=Object.getOwnPropertyNames(e),r=Object.getOwnPropertyNames(t);if(n.length!==r.length)return!1;for(let r=0;r<n.length;r++){const i=n[r];if(e[i]!==t[i])return!1}return!0},s=()=>"complete"===document.readyState&&"visible"===document.visibilityState,c=(e,t)=>`${e}: ${t.statusText} (${t.status})`},1:function(e,t,n){"use strict";n.d(t,"b",(function(){return i})),n.d(t,"a",(function(){return o})),n.d(t,"c",(function(){return u}));let r=null;const i=()=>r,o=e=>{r?e(!0):(chrome.runtime.sendMessage("mnojpmjdmbbfmejpflffifhffcmidifd",{type:"SupportsGreaselion"},(function(t){if(!chrome.runtime.lastError&&t&&t.supported)return r=chrome.runtime.connect("mnojpmjdmbbfmejpflffifhffcmidifd",{name:"Greaselion"}),void e(!0)})),setTimeout(()=>{if(!r)return r=chrome.runtime.connect("jidkidbbcafjabdphckchenhfomhnfma",{name:"Greaselion"}),void e(!0)},100))},u=(e,t)=>{e&&r&&r.postMessage({type:"GreaselionError",mediaType:e,data:{errorMessage:t}})}},12:function(e,t,n){"use strict";n.d(t,"a",(function(){return i})),n.d(t,"c",(function(){return o})),n.d(t,"e",(function(){return u})),n.d(t,"d",(function(){return s})),n.d(t,"b",(function(){return c}));var r=n(0);const i=e=>e?`https://github.com/${e}/`:"",o=e=>{if(!e.pathname)return"";const t=e.pathname.split("/").filter(e=>e);return t&&0!==t.length?t.length>1&&"orgs"===t[0]?t[1]:t[0]:""},u=e=>!!["/","/about","/enterprise","/events","/explore","/home","/issues","/login","/logout","/marketplace","/nonprofit","/notifications","/pricing","/pulls","/search","/settings","/team","/tos"].includes(e),s=e=>{if(!e)return!1;const t=e.match("[?|&]tab=([^&]+)&?");if(!t||t.length<2||!t[1])return!1;const n=t[1];return!!["repositories"].includes(n)},c=async e=>{if(!e)throw new Error("Invalid parameters");const t=(e=>e?"https://api.github.com/users/"+e:"")(e);if(!t)throw new Error("Invalid profile api url");const n=await fetch(t);if(!n.ok){const e=r.f("Profile API request failed",n);throw new Error(e)}const i=await n.json();return{user:{id:i.id,screenName:i.login,fullName:i.name||i.login,favIconUrl:i.avatar_url},post:{id:"",timestamp:"",text:""}}}},3:function(e,t,n){"use strict";n.d(t,"a",(function(){return o}));var r=n(1);let i=!1;const o=(e,t)=>{if(!e||i)return;i=!0;const n=Object(r.b)();n&&(n.postMessage({type:"RegisterOnUpdatedTab",mediaType:e}),n.onMessage.addListener((function(e){if(e.data)switch(e.type){case"OnUpdatedTab":t(e.data.changeInfo)}})))}},31:function(e,t,n){"use strict";n.r(t);var r=n(1),i=n(0),o=n(9),u=n(12);const s=()=>{const e=new URL(location.href);u.e(e.pathname)?(()=>{const e="https://"+o.a,t=o.a,n=o.a,i=Object(r.b)();i&&i.postMessage({type:"SavePublisherVisit",mediaType:"",data:{url:e,publisherKey:t,publisherName:n,mediaKey:"",favIconUrl:""}})})():(e=>{const t=u.c(e);if(t)return u.b(t).then(e=>{const n=e.user.id,s=i.c(o.b,n),c=e.user.fullName;if(!c)return void Object(r.c)(o.b,"Invalid publisher name");const a=i.b(o.b,t),f=e.user.favIconUrl,l=u.a(t),d=Object(r.b)();d&&d.postMessage({type:"SavePublisherVisit",mediaType:o.b,data:{url:l,publisherKey:s,publisherName:c,mediaKey:a,favIconUrl:f}})});Object(r.c)(o.b,"Invalid screen name")})(e)};var c=n(3);let a="";const f=e=>{e&&(e.url||"complete"===e.status)&&location.href!==a&&(a=location.href,s())};chrome.extension.inIncognitoContext||(Object(r.a)(e=>{e?(i.d()?s():document.addEventListener("readystatechange",(function(){i.d()&&s()})),document.addEventListener("visibilitychange",(function(){"visible"===document.visibilityState&&s()})),c.a(o.b,f)):console.error("Failed to initialize communications port")}),console.info("Greaselion script loaded: githubBase.ts"))},9:function(e,t,n){"use strict";n.d(t,"b",(function(){return r})),n.d(t,"a",(function(){return i}));const r="github",i="github.com"}});