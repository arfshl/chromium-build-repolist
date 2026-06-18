Notes
Obviously, you know this site is not the Chromium official website. As a regular user (not an expert), I created it in 2013 because there was no easy way to download good and stable releases of Chromium, on Windows. I try to keep it as safe and fast as possible! ;) This is absolutely a non-profit site. Please, read the privacy policy.

In short:

    Since the beginning of the Chromium project until today, there is no binary of stable Chromium shared by the official team.
    The official website is development oriented. Users are invited to download Google Chrome.
    The official download page gives to users only ZIP archives of development builds (also known as "snapshot", "nightly", "vanilla" or "raw" builds) which can be very unstable. Users are invited to download Google's Chrome Canary.
    This site gives to users a choice of builds: development (also on its simplest download page), stable and portable builds.


All downloads are only from reliable sources:

    Google Storage → development builds from the official repository (Chromium buildbot)
    GitHub, AWS and SourceForge → other free and open-source builds

1. Project
Chromium exists since 2008. It is the free and open-source project (#features) behind the famous Google Chrome browser. There are many advantages for an enterprise to work on an open-source project. Intrinsically, Chromium is a Google project maintained by many authors (developers, engineers, graphic designers, security researchers...) from Google, Adobe, Amazon, ARM, Brave, Cloudflare, Facebook, Hewlett-Packard, IBM, Igalia, Intel, Logitech, Microsoft, Mozilla, Nvidia, Opera, Samsung, Vivaldi, Xiaomi, Yandex... and external contributors (Official graph).

Chromium is not only a web browser. It is a blend of different important open-source projects:

    ANGLE (Graphics engine abstraction layer)
    Blink (Rendering/layout engine)
    Native Client (Sandbox for running native code)
    PDFium (PDF generation and rendering library)
    Sandbox (Security mechanism for separating running programs)
    Skia (Graphics library)
    V8 (JavaScript engine)
    and others...


One or more projects are used in Chromium browser (obviously!) and other software/service like Google Chrome, Googlebot Evergreen, Bingbot Evergreen, Mozilla Firefox (ANGLE, Skia), Opera, Vivaldi, Microsoft Edge (Search "chromium" at Microsoft Third Party Disclosures. Official PDF presentation), Adobe Acrobat, Android WebView, Discord, Bitwarden, Microsoft Visual Studio Code, Minecraft, Signal, Skype, Slack, Spotify, Steam, TeamViewer, Trend Micro, Twitch, Unity3D, Unreal Engine, WhatsApp, Electron, CEF, QtWebEngine...

Chromium is not fully designed by Google! However, as a primary investor, Google gives a consistent guidance and provides all free tools and services related to this project.

2. Stable Chromium version
Officially, Chromium does not have a stable release. The official developers (aka The Chromium Authors) do not release it to end users. So it is continually in development. Google Chrome is the stable release... but is not open-source.

Chromium is the project then Google Chrome is the product.

In fact, Chromium has a stable version! ^^
Chromium being open-source (#source-code), anybody can compile it. It is reproductible. You should be a developer to do this. Just get the current stable version (149.0.7827.155) from the official Git repository and compile it!
For example, the current stable version on #linux is 149.0.7827.155. In this version, there are 155 patches which correct many issues (bugs, feature requests, enhancements...).

All stable versions of Chromium on #windows, #mac, #linux... are always made by third-party developers.

The stable version of Chromium is compiled by:

    Google developers (USA) → Google Chrome
    Microsoft developers (USA) → Microsoft Edge
    Opera developers (Norway/China) → Opera
    Samsung developers (South Korea) → Samsung Internet
    Vivaldi developers (Iceland) → Vivaldi
    Yandex developers (Russia) → Yandex browser
    Hibbiki and Marmaduke developers → Chromium, on #windows and #mac
    Some developers → Chromium, on each #linux and #bsd distribution
    Some developers → Chromium-based browsers
    Some developers → other projects like CEF, Electron, Qt WebEngine, Chromely, NW.js, Beaker, JxBrowser ... 

3. Development
The development builds (also known as "snapshot", "nightly", "vanilla" or "raw" builds) are built automatically several times a day by the Chromium Buildbot (buildbot console) and made available as binary code releases.

Snapshot
Once a snapshot has been built, it is placed in the chromium-browser-snapshots root directory of Google Cloud Storage and is automatically tested. This build is really just development tool for checking whether issues are fixed in the latest Chromium code. It can be buggy and unstable. They are downloadable on the official site, my alternative webpage and this site (Check The Chromium Authors tag).

LKGR
If that snapshot build successfully passes the automated tests, it is considered as a good build (known as LKGR meaning "Last Known Good Revision") and can become potentially a stable build. For info, LKGR builds were stored in the chromium-browser-continuous root directory until Friday, 18 Mar 2016. The Chromium team has removed few LKGR builders (407399, 576253 and chromium-dev) but other ones still work (latest commit). Finally, there is no LKGR binary shared by the Chromium team... but any developer can re-compile it! ^^

Stable
A stable build is a development build tested by the Buildbot then improved by the Chromium team and all contributors.

4. Conclusion
Note this website and the Chromium builds are made and shared by volunteers (devoted developers), freely, in their spare time. There is absolutely no business, no revenue (Privacy policy). We are neither Google nor a corporation. So please, respect our work. Officially, the #stable-chromium-version does not exist at all. We need time to re-compile Chromium. If you cannot wait for the latest version, prefer to use a development version (download page) or compile Chromium yourself (#source-code) or use other #browsers.

Jerry (admin)
Features
Chromium vs Google Chrome.

Chromium browser has:

    only an open #source-code
    different licences:
    - mainly open-source licenses (BSD license, MIT license, LGPL, MS-PL and MPL+GPL+LGPL  tri-licensed)
    - 1 proprietary licence (but for available source code: UnRAR),
    - few unlicensed files.
    It is a FOSS project. A full list of software developed by third-parties is viewable within the browser at chrome://credits (similar to this online page)
    a trademark according to Google (Search "Chromium™" at Trademarks list)
    a blue-colored logo (Search "Chromium" at Logos list)
    the similar system requirements as Google Chrome
    the similar user interface and settings as Google Chrome
    the similar sandbox as Google Chrome
    the similar support for extensions and themes as Google Chrome
    the similar user agent as Google Chrome
    the similar experiments Field Trials (Finch) (viewable as a list in "Variations" at chrome://version) as Google Chrome (and similar as Mozilla Firefox studies and as Microsoft Edge's ECS)
    the built-in Chrome PDF Viewer (known as PDFium), on Windows
    the built-in Chromoting Viewer (To use it, you need to first install the Chrome Remote Desktop extension)
    the built-in Google Native Client
    the built-in Print preview and print system
    no stable version offered by the official team (aka The Chromium Authors)
    no digital signature
    no auto-update system (Solution: Use #updaters • On #linux, use the integrated software/package manager, even a PPA)
    no Google API keys (Solution: Check #google-api-keys)
    no built-in Flash player (Solution: Check #flash)
    no unwanted software protection (known as Chrome Cleanup and "software_reporter_tool.exe"), on Windows
    no support of proprietary codecs (AAC, H.264/MP4) (Solution: Check #html5-audio-video)
    no user RLZ identifier
    no user metrics (usage statistics) (opt-in option)
    no crash report (opt-in option)
    More details on the official site, focused on Linux.


Why I used the "similar" word, here?
I cannot certify that it is "same/identical" as Google Chome because Chrome is a closed-source software.

Some developers maintain #chromium-forks that offer more features and enhancements. Thanks a lot for developers! ;)
Secure Preferences
Chromium has "Secure Preferences" feature which protect user data against #malware. On Windows, macOS and Linux, the user profile is encrypted based on the machine SID (For info, you can change the SID on Linux). So extensions, certificates and passwords are not portable. It works for Chromium and all #chromium-forks like Google Chrome, Microsoft Edge, Opera, Vivaldi, Brave, ungoogled-chromium... (except Cent Browser which is closed-source and therefore can be easily corrupted)

Info relative to this feature:

    PortableApps::Google Chrome portable (Read "App Notes")
    PortableApps::Opera portable (Read "App Notes")
    Portapps::Brave portable (Read "Infos"... or detailed info on Github)
    Copy Chrome extensions from one computer to another
    How to migrate Google Chrome profile (extensions, cookies, etc.) to another Windows installation?
    profile_pref_store_manager.cc (Chromium code source)
    machine_id.cc (Chromium code source)

How to migrate user data from one computer to another?





Google API keys
By default, few Google services (Chrome Sync...) are not available on Chromium. They are reserved for Google Chrome users. For example, the Chrome Sync capability in Chromium based browsers allows you to login to Google’s Sync cloud servers and save your passwords, browsing history and bookmarks/favorites to your personal encrypted cloud vault inside Google’s infrastructure. Extremely convenient for people who access the Internet using multiple devices.

To use these Google services, Chromium needs Google API keys.

Chromium can display a top message if the Google API keys are needed for Google services (screenshot):
Google API keys are missing. Some functionality of Chromium will be disabled. Learn More
How to just hide the top message "Google API keys are missing..."?

How to create your own Google API keys?













































How to disable Google API keys?








Widevine plugin
Widevine is a closed-source Google plugin to play DRM content (= protected audio/video files) for web browsers. Companies including Amazon Prime Video, BBC, Hulu, Netflix, Spotify and Disney+ use Widevine to manage the distribution of premium content.

Chromium does not support Widevine natively. Note that Chromium developers and most of Chromium users do not use this Google plugin at all. We do not bundle/share it. Other people tried to obtain a licence from Google for an open-source project and finally did not get it (Archive: 1).

On this website, the widevine support is enabled on the stable versions. (These versions are compiled with the GN argument: enable_widevine = true). So you need to install the Widevine CDM plugin yourself to play DRM content.

In Chromium and Google Chrome, you can check the Widevine support at chrome://components → "Widevine Content Decryption Module" → The number must be different than 0.0.0.0 (screenshot)

Websites to freely test Widevine:

    https://bitmovin.com/demos/drm
    https://demo.castlabs.com/ (Choose videos with labeled "DRM")
    https://shaka-player-demo.appspot.com/demo/

How to install the Widevine CDM plugin?




































Flash plugin
Flash is a deprecated multimedia software platform. Adobe retired Flash on January 1, 2021, on all plateforms. Roadmap for Chromium. Roadmap for Firefox.

    Since 2021, the Flash PPAPI plugin (aka PepperFlash) plugin is discontinued. For info, PepperFlash is secure because it works in a sandbox. In short, it executes in its own process, separate from the browser's rendering engine.
    Since 2015, the Flash #npapi plugin is discontinued.

How to quickly install the Flash plugin? (Obsolete content!)



How to manually install the Flash plugin? (Obsolete content!)















NPAPI plugin
NPAPI is a deprecated API that allows browser extensions to be developed. Chromium 45.0.2416.0 (331982) is the last version which still has NPAPI plugin support enabled via chrome://flags or group policy registry. (source • NPAPI deprecation)
How to still use a NPAPI plugin?


HTML5 audio/video
By default, Chromium does not support proprietary codecs (AAC, H.264/MP4) in the HTML <audio> and <video> elements.
How to use Chromium with all audio/video codecs?


Note about the H.265/HEVC video codec


Check HTML5 audio/video support at https://tools.woolyss.com/html5-audio-video-tester/

If there is a video issue, disable hardware acceleration (see #browser-crash).
Advanced
1. Internal pages
To access to all internal pages, use chrome://about. Copy and paste this special URL directly into the address bar (omnibox). Obviously, this special URL works only in Chromium and Google Chrome. Note: About configuration settings, there is nothing similar to Firefox's about:config in Chromium.

Few internal pages:

    chrome://components (Show and update info about available components like Widevine...)
    chrome://conflicts (List all modules loaded into the browser)
    chrome://credits (View all licensing info • Similar to this online page)
    chrome://flags (View all experimental features • You can set each feature)
    chrome://gpu (Show info about GPU)
    chrome://net-export (Get all networking related info)
    chrome://omnibox (Test and follow responses of the searches via the omnibox/address bar)
    chrome://policy (Manage Chromium, for administrators • Policy list)
    chrome://predictors (List autocomplete action predictors and resource prefetch predictors based on user recent search and browsing history)
    chrome://quota-internals (Show info about disk space and storage usage)
    chrome://settings/content/all (List the number of cookies each site has set)
    chrome://sync-internals (Show info about the Chromium sync feature)
    chrome://translate-internals (View all supported internal languages)
    chrome://version (Show details of Chromium version)

About browser plugins



2. Keyboard shortcuts
To use keyboard shortcuts (on Windows, Mac and Linux), check this full list of official shortcuts... and this one if you are developer. Most of the shortcuts are similar to IE, Firefox or any other browser.
3. Command-line flags
There are command-line flags (or "switches") that Chromium accept in order to enable particular features or modify otherwise default functionality. Note flags often contain experimental or obsolete code, so they tend not to stick around for long.

    Run Chromium with flags
    List of Chromium command-line switches (Auto-updated list provided by Peter Beverloo)

How to start Chromium directly in incognito (or private) mode, on Windows?


4. User data directory
About your profile (history, bookmarks...), it is important to know where is stored your user data.
How to change the user data directory?


5. External extension installation
How to install an external browser add-on?





6. Source code
Before all, check the official guide for developers.

Official links to easily get or see the full Chromium source code:

    Google Git chromium/src
    The official GitHub mirror of the Chromium source
    Chromium Code Search or chromium/src (Old pages: Code search or chromium/src/)
    - Source tarballs and its mirror ("-lite" is for building desktop Chromium).
    - Also, there is the official Github mirror.
    Chromium source code of the latest stable version: chromium-149.0.7827.155.tar.xz (mirror • File checksums)
    ViewVC (Obsolete since the version 39.0.2132.2, on August 2014)


Interesting info:

    [video] Building Chromium from source (by Aphrx • 2021 • mirror)
    Building ungoogled-chromium (by Eloston • 2020)
    How to build chromium on Windows (by Intel • 2019)
    How to build chromium on macOS (by Intel • 2019)
    How to build chromium for Android (by Intel • 2019)
    How to build chromium for Linux (by Intel • 2019)
    Building Chromium on Windows from source (by Jeremy Sinclair • 2019 • Archive: 1)
    How to compile Chromium with audio/video codecs for Windows (by Nik • 2018 • Archive: ZIP)
    How to build Chromium with proprietary codecs (OS X) (by No encoding • 2018 • Archive: 1)
    Bash script to build and install latest stable Chromium from source on OS X (by Bobo • 2017 • Archive: ZIP)
    [UA] Компіляція браузера Chromium для Ubuntu (x265, HEVC) (by D.Bilous • 2016 • Archive: 1)
    How to compile Chromium for Mac (by sbagmeijer • 2015 • Original site is down!)
    Contributing to Chromium: an illustrated guide (2015 • Archives: 1 or PDF)

7. Older version
Never update your browser with a very old version. It even does not start.

To downgrade Chromium installed with the Installer (.exe):

    Open Chromium and check its actual version at chrome://version
    Close Chromium.
    Uninstall Chromium WITHOUT to delete your #user-data-directory. It is an option of its uninstaller. (screenshot)
    Get the Installer (.exe) of an older version (from the → download/ page or Snapshots repository about "official" builds)
    Execute it to install Chromium.
    Open Chromium and check the new installed version at chrome://version

8. Browser crash
You have encountered a browser crash or issue :/

Few ways to help you:

    To disable hardware acceleration: chrome://flags/#disable-accelerated-video-decode or chrome://settings → [Advanced] → System
    To disable/enable a browser feature: chrome://flags
    To check for conflicting software: chrome://conflicts
    To disable extensions/add-ons: chrome://extensions


Also you can use #command-line-flags: --disable-gpu, --disable-accelerated-video-decode...
8. Browser benchmark
To test performances of the browser, do differents benchmarks.
Except as otherwise noted, for the result, a higher number is better.

Free websites without registration:

    ARES-6 (Various tests using the newest web standards and features)
    Basemark (Various tests using the newest web standards and features)
    JetStream (JavaScript benchmark developed by Apple)
    Kraken (JavaScript benchmark developed by Mozilla • Result: A lower number is better)
    MotionMark (Graphics benchmark developed by the WebKit team)
    Octane (JavaScript benchmark developed by Google)
    Speedometer (Performance benchmark that repeats the same actions using DOM APIs)
    WebXPRT (HTML5 and JavaScript test developed by benchmark maker Principled Technologies)

API
This is a free and simple API for developers to update Chromium to the latest good build via a bash (shell) script, a browser extension... Read my #notes. Please, do not use this API to build other websites. To prevent abuse, the site can audit each API request.
API details





Links
Except the Wikipedia's Chromium page, these links are official and point only to the Google sites.

Focused on Chromium:

    Chromium Blog
    Chromium Browser Snapshots
    Chromium Dash
    Chromium Discussion (on Google Groups)
    Chromium Gerrit (Code review)
    Chromium Main Console (Buildbot console)
    Download Chromium (ZIP archives)
    Chromium Issue Tracker
    Monorail (The issue tracking tool for chromium-related projects)
    The Chromium Projects (The main Chromium website)
    Wikipedia's Chromium page


Focused on Google Chrome:

    Chrome Platform Status
    Chrome Release Channels
    Chrome Web Store (Extensions and themes 100% compatible with Chromium)
    Google Chrome Help (100% compatible with Chromium)
    Release updates from the Google Chrome team (Google blog)

Browsers
1. Chromium forks
In simple words, a fork of Chromium means Chromium engine is used to create another web browser.

Proprietary browsers:
(developed by official contributors of the Chromium #project)

    Google Chrome (USA)
    Microsoft Edge (USA)
    Opera (Norway/China • Opera (company), Otello Corporation, Golden Brick Capital/Qihoo 360)
    Samsung Internet (South Korea)
    Vivaldi (Iceland • Chromium's modified code is still open source)
    Yandex Browser (Russia)


I do not recommend:

    360 Secure Browser (Proprietary)
    Comodo Dragon (Proprietary • Famous company but its Chromium is ever outdated compared to the #stable-chromium-version)
    Epic (Proprietary • Reviews)
    Slimjet (SlimBrowser) (Proprietary • Reviews - Archive: 1)
    SRWare Iron (Proprietary • Versioning system is not clear: no source code of the latest version available since 2011 - Archive: 1)
    or other proprietary browser with "better privacy" than Google Chrome.


Why not recommended?
Because all of these browsers are closed-source, outdated, based on Chromium like Google Chrome... and most of the features they remove don't even exist in Chromium, in the first place. Control your personal info and #privacy yourself ^^

Colin (InsanityBit) explains this very well at "SRWare Iron Browser – A private alternative to Chrome?" (2012 • Archives: 1, 2)

Note if a new browser with "better privacy" than Google Chrome is based on Chromium and is fully open-source, it should be ok for me. But... Google is famous. Its privacy policy and marketing strategy are well known. So you have to ask you some questions. Do you trust in an unknown team more than Google? Is an outdated Chromium fork?

    Google engineer finds holes in three 'secure' browsers (2016 • Archive: 1)
    Google calls out Comodo's Chromodo Chrome-knockoff as insecure crapware (2016 • Archive: 1)
    Google warns! (2015 • Archive: 1)


Few free and open-source Chromium-based browsers:

    Brave (Block website trackers and remove intrusive internet advertisements • code differences with Chromium )
    Bromite (Patches for Chromium with adblocking features and enhanced privacy)
    Dooble
    Falkon (Formerly QupZilla)
    Iridium (tarball, git, github, code differences with Chromium • Reviews)
    Kiwi Browser (Browser with extensions support, ads & cryptojacking protection...)
    Otter Browser
    qutebrowser (A minimalist browser)
    Supermium (Compatible with Windows XP, 2003, Vista, 7, 8.x, and newer)
    Thorium (Chromium fork with patches for speed, privacy and usability)
    ungoogled-chromium (A set of patches for removing Google integration • 2016 reviews, 2018 reviews, 2020 reviews)
    Aviator (Discontinued project since 2016 • Reviews)
    Inox (A set of patches applied on the Arch Linux chromium package • Arch Linux website)
    Superbird (Based on a development version • No source code since 2016 - Archive: 1)

2. Other open-source "non-Chromium-based" browsers

    Basilisk (Firefox-based using an old Firefox core version)
    Firefox
    LibreWolf (Firefox-based)
    GNU IceCat (Firefox-based)
    Midori (Webkit-based)
    NetSurf (Works on any OS)
    Pale Moon (Firefox-based using an old Firefox core version)
    Tor Browser (Firefox-based using Tor, an anonymity network)
    Waterfox (Firefox-based using an old Firefox core version • Acquired by System1, an advertising company)
    and other open-source browsers.

Privacy
For a better privacy protection, use open-source #browsers like Chromium, Firefox. Do not forget: It is open-source does not mean it is secure and respects user privacy. Moreover, security ≠ privacy ≠ anonymity. If your browser is fully "open-source", it means that somebody with the capability can review the #source-code. It is easier for developers to find malicious code with versioning tools like Git or SVN. (Ex: Chromium downloads a Chrome extension as a binary without source code → corrected 7 days after the report). Only an open-source code allows such defense. This is better for secure browsing and user privacy. The security of Chromium is very solid. While I recommend ungoogled-chromium, Bromite and Firefox (cf. about:config/user.js settings, containers system, better content-filtering, easier way to stop browser automatic connections, support of a self-hosted Firefox Sync server) as the most reliable browsers for privacy enthusiasts in a standard web browsing, Chromium is probably a reasonable alternative for everyday web browsing.

My way for a standard web-browsing (but do as you like ^^):

    Modify your #hosts-file to stop "natively" domains who serve ads, spyware and malware
    Use a VPN with strong encryption for your whole OS or router to bypass many restrictions on Internet. Note you are not anonymous behind a VPN service (cf. Browser fingerprint, Server-side tagging...) (It is better than browser VPN/proxy #extensions)
    Use an up-to-date web browser
    Change few #browser-settings
    Install few #extensions


How to really be anonymous on the Web?



Do you know...



















1. Browser update
The reason for updating to the latest version is security. As security threats are found, they are fixed. Using an old version expose user to a number of security holes and privacy issues. Browsers are far more subject to hacking than other software.
2. Browser settings
Adjust all settings and advanced settings in chrome://settings:

    Do not log in with a Google account in the browser (screenshot • Do not sync your data!)
    Do not save passwords in the browser (Prefer a free and open-source password manager like Bitwarden, KeePass, LessPass or Password Safe)
    Enable the incognito (or private) mode (Ctrl+Shift+N shortcut • Use a #flag to start Chromium in this mode)
    Disable all options in the "Privacy and security" section (chrome://settings/privacy) because most of them use an external Google service. (Ex: "Safe Browsing" option uses Google Safe Browsing • More info about privacy settings)
    Block third-party cookies (chrome://settings/content/cookies)
    Block the #flash plugin (chrome://settings/content/flash)
    Do not share your location (chrome://settings/content/location)
    Prevent canvas fingerprinting (Use the --disable-reading-from-canvas #flag)

3. Hosts file
Modify your hosts file to prevent your OS from connecting to domains who serve ads, spyware and malware. This will increase your OS security and save bandwidth.

    Dan Pollock's list
    MVPS HOSTS
    Peter Lowe's list
    Malware Domain List
    Unified hosts file with base extensions
    No more ads, tracking and other virtual garbage


Note:

    Few #extensions like uBlock Origin Lite can also use these lists in their settings.
    Few tools like Pi-hole and AdAway can also use these lists in their settings.
    Free and open-source auto-updating Hosts managers: hostsmgr, HostsFileEditor (on Windows), Gas Mask (on macOS)

4. DNS services
By default you are using the DNS servers of your ISP but you do not have to stick with them. Before to choose one, compare DNS performance. Free alternative Internet DNS services for personal use:

    Adguard DNS
    Cloudflare DNS resolver (by Cloudflare • 1.1.1.1 for Families)
    Comodo Secure DNS (by Comodo)
    DynDNS (by Dyn)
    Google Public DNS
    Nextdns
    OpenDNS (by Cisco)
    OpenNIC
    Quad9 DNS
    Yandex.DNS (by Yandex • Technical details - IPv4 and IPv6)


Note:

    The DNS over HTTPS (aka DoH) page on the official Chromium website.
    You can also use a DNS over HTTPS client (screenshot of Firefox 62+). Check Publicly available servers.
    You can also use a DNSCrypt client (Ex: Encrypt your DNS traffic with Simple DNSCrypt for Windows)
    You can also use your own DNS resolver with Unbound or other software.

5. Web search engines
Note: Few #dns-services and #extensions exist to protect user privacy on search engines.

Search engines
Search engines index the content of web pages by running an algorithm on a web crawler.

    Baidu
    Bing
    Gigablast
    Google Search
    Mojeek
    Yahoo! Search
    Yandex Search


Metasearch engine
Metasearch engines use another search engine's data to produce its own results from the Internet. Search engine map.

    Disconnect Search (by Disconnect.me • Uses Bing, Yahoo... results)
    DuckDuckGo (uses its own crawler + Bing, Yahoo, Yandex, Wikipedia... results, on Amazon servers (AWS) • Review at an 8ch page archive • To search without JS, choose the html or lite version)
    Ecosia (uses Bing results)
    Fireball (uses Bing results)
    Oscobo
    Private.sh (by Private Internet Access • Uses Gigablast results)
    Qwant (uses its own crawler but is partner with Microsoft for Bing results, Bing Ads and Microsoft Azure • Its lite version)
    Startpage (uses Google results • Owned by System1, an advertising company)
    Swisscows (uses its own crawler + Bing results with enabled parental filter)
    YaCy (A peer-to-peer search engine)


If you are a web developer, develop your own metasearch engine yourself ^^

    Searx (uses many search engines • Source code in Python • Author: Adam Tauber, @Searx_engine • Searx instances)
    MetaGer (uses Yahoo... results • Source code in PHP)
    Whoogle Search (uses Google results • Source code in Python • Author: Ben Busby)
    Googol (uses Google results • Source code in PHP • Author: Bronco)

6. Extensions
Note:

    With the use of extensions, you become more easily identifiable (cf. Browser fingerprint, Server-side tagging...)

    Extensions hosted on the Chrome Web Store are updated via the Chrome update mechanism (cf. Chromium source code) which developers and users do not control. For a manual installation, read the #external-extension-installation part.

    Here, priority to open-source (and non-obfuscated code) extensions for Chromium and Firefox:


Block ads, trackers, scripts and popups
uBlock Origin, uBlock Origin Lite

    Download: store (Lite version), store, amo
    Alternatives: Privacy Badger, Adblock Plus, AdBlock, Disconnect, Ghostery, Adguard AdBlocker, Fair AdBlocker, Forget Me Not, NoScript
    Info: Add filters to your ad-blocker via FilterLists (an open-source website)
    My advice: By default, block third-party scripts and frames (uBlock Origin medium mode • screenshot). Also, about Adblock Plus or AdBlock, disable "Acceptable Ads" option (screenshot). 


Stop link redirection in Google, DuckDuckGo and Yandex search pages
Don't track me Google

    Download: store, amo
    Alternatives: Redirect Blocker, Redirect Bypasser


Clean URLs to remove tracking elements from URLs
ClearURLs

    Download: store, amo
    Alternatives: Neat-URL


Control the HTTP Referer on a per-site basis
Referer Control

    Download: store, amo
    Alternatives: Smart Referer, Web Developer
    Info on wikipedia


Prevent canvas fingerprint
Canvas Blocker (Fingerprint protect)

    Download: store, amo
    Alternatives: Canvas Defender, Canvas Fingerprint Defender
    Info on wikipedia, browserleaks, ghacks


Emule locally CDN
Decentraleyes

    Download: store, amo
    Alternatives: LocalCDN
    Info on wikipedia, decentraleyes test page, localcdn test page


Prevent WebRTC IP leak
WebRTC Leak Shield

    Download: store, amo
    Alternatives: WebRTC Control, WebRTC Network Limiter, WebRTC Leak Prevent
    Info: An extension can only block the leak of your IP address. It does not block WebRTC in the "core" of Chromium. uBlock Origin can protect against the WebRTC IP leak. You can do some #tests. 


Prevent CSS Exfil attack
CSS Exfil Protection

    Download: store, amo
    Info on BleepingComputer, Github and mike-gualtieri.com


Unblock websites with a browser VPN/proxy
Browsec

    Download: store, amo
    Alternatives: anonymoX, HidemanVPN, TunnelloVPN, TouchVPN, Hotspot Shield
    My advice: Prefer to pay for a safe and secure VPN provider protecting your whole OS ; or use a free VPN service without registration. Do not use Hola!, ZenMate or Betternet in their free version. Hola! is a botnet. Betternet shares/sells user data to third-parties. In its free version, ZenMate needs a registration. 


Display sites quality
WOT (Web of Trust)

    Download: store, amo
    Alternatives: DuckDuckGo Privacy Essentials, Terms of Service; Didn’t Read
    My advice for the WOT addon: Do not share your data. (WOT settings → Real-time protection → Set to off)

7. Tools

    Firewall
    Freenet
    I2P (Invisible Internet Project)
    Proxy
    VPN (Virtual private network)
    Tor (Anonymity network)

8. Guides

    Technical analysis of client identification mechanisms (Chromium)
    Privacy tools (2021 • Source code)
    PRISM break (2021 • Source code)
    Privacy Respecting (2021)
    [FR] Google Tag Manager (Server-Side Tagging), la nouvelle arme anti adblock?
    (2020 • Google Tag Manager (Server-Side Tagging), the new anti-adblock weapon: [Translated EN] HTML, [Translated EN] PDF)
    Web browser privacy: What do browsers say when they phone home? (2020 • Archive: PDF)
    Who left open the cookie jar? (2018 • Archives: 1, PDF)
    Online tracking: A 1-million-site measurement and analysis (2017 • Archive: PDF)
    Are VPN providers more trustworthy than your ISP? (2017 • Archive: 1)
    Don't use VPN services (2015 • Archive: 1)
    Category: Internet privacy (Wikipedia)
    Chromium privacy

9. Tests
Reputable and reliable sites to show or prevent user data tracking:

    Am I Unique (Device fingerprinting)
    AudioContext fingerprint test page
    Browser Leaks (WebRTC IP leak, System fonts, HTML5 Canvas fingerprinting...)
    BrowserSpy (It shows how much information can be retrieved from web browser)
    Browsing experience security check (Secure DNS, DNSSEC, TLS 1.3, Encrypted SNI)
    Device Info (Web browser security/privacy testing)
    VPN & Torrent IP Leak Test (IP, DNS and WebRTC leaks)
    DNS leak test
    EFF Cover Your Track (Device fingerprinting)
    Evercookie (Persistent cookies)
    IP Leak (IP, DNS and WebRTC leaks)
    IP Leak privacy test (IP address, DNS, WebRTC...)
    Permission.site (To test the interaction of web APIs and browser permissions)
    TorZillaPrint (Advanced scripts for Firefox and Tor browsers • Test site, Mirror)
    Toolz (Ad Block Test • Test site)
    Webpage tracking only using CSS (and no JS) 

Malware
Your antivirus has detected a malicious software in Chromium files.
False positive?
You have downloaded Chromium from a reliable source (#notes) and maybe also used open-source #updaters. In this case, it is surely a false positive. The detection is generic (heuristic). There is absolutely no backdoor or other malware inside Chromium. Remember that the full #source-code is available. You will get a similar result if you compile Chromium yourself.

Note a specific thing about Chromium browser:

    Chromium has no digital signature (unlike Google Chrome). It is not signed because is open source and not "owned" per se by any one particular developer or organization. Moreover, a certificate is not free for developers (Apple Developer Program).
    Antivirus use generic detection and database of malware signatures.
    VirusTotal which aggregates many antivirus is a Google service using its Trusted Source project to limit false positives for software like Google Chrome (because it is digitally signed), not for Chromium.
    So, unsigned Chromium + any antivirus or VirusTotal service = More chance to get an antivirus alert. 


False positive reports known for few years ago:

    False positive - chromium 79 (2019 • Broadcom • Archive: 1)
    Chromium 32bit download has a virus? (2018 • Avast antivirus • Archive: 1)
    IDP.Generic reported for chromium executable (2018 • Avast antivirus • Archive: 1)
    False positive on Chromium executable (2016 • Avast antivirus • Archive: 1)
    False positive with Chromium (2015 • Panda Internet Security • Archive: 1)
    False Positive on latest Chromium Nightly? (2014 • Avast antivirus • Archive: 1)
    AntiVirus detected Malware while syncing using gclient (2014 • Chromium Issue Tracker • Archive: 1)
    pepflashplayer.dll tagged as malware and removed by F-Secure (2012 • Chromium Issue Tracker • Archive: 1)
    Kaspersky detects Chrome as Trojan (2010 • Chromium Issue Tracker • Archive: 1)
    Avast! Anti-Virus reports Google Chrome as Trojan (2008 • Chromium Issue Tracker • Archive: 1)

Authentic malware?
Yes. Obviously, it is also possible.

    The common entry methods for Chromium virus are freeware downloads as bundled software (bundleware) and spam e-mails. It means Chromium has been silently installed via another software. Do not forget Chromium is free and open-source. So malware writers use Chromium to push malicious code on to your system. Remove this "fake" or suspicious Chromium web browser (like BeagleBrowser, BoBrowser, BrowserAir, Chedot, eFast Browser, Fusion Browser, Mustang Browser, MyBrowser, Olcinium Browser, Palikan, Qword Browser, Torch, Tortuga Browser...).
    The other way is about a compromised Chromium repository on a reliable source (#notes).

Free tools to scan your system
Anti-malware:

    AdwCleaner and Malwarebytes (by Malwarebytes)
    Kaspersky Virus Removal Tool (by Kaspersky)
    Kaspersky Rescue Disk (by Kaspersky • Bootable ISO file)
    Emsisoft Emergency Kit (by Emsisoft)
    Norton Power Eraser (by Symantec)


Antivirus:
(Independent tests and distinctions: AV-Test, Virus Bulletin, AV-Comparatives, Gartner)

    Windows Defender (on Windows 10)
    Avast (Prefer the offline installer. Then choose the advanced installation)
    Kaspersky Security Cloud
    Bitdefender
    Avira
    ClamAV and Immunet (Open-source • Developed by Cisco)


Anti-ransomware:

    Avast ransomware decryption tools
    Kaspersky tools
    No More Ransom! (Decryption tools)

Free online services to scan your files
(no registration required)

    Jotti
    VirusTotal (by Google • Its lite version)
    MetaDefender (by OPSWAT)
    virSCAN
    Hybrid Analysis (by Payload Security)


If you find an issue:

    Contact your anti-virus or anti-malware support
    Report it on the official Chromium supports. For links, see my #comment-1 below.

Chromium updaters
To update Chromium automatically.

As always, never install a closed-source software especially if you have never heard it before! GitHub and its Gist service are good places to find good stuff. So, try these free and open-source Chromium updaters:
Updaters on Windows

    For info, in the #windows section, each "Portable" version uses chrlauncher which can install, update and launch Chromium automatically. You can change its settings in the chrlauncher.ini file.
    chrlauncher
    (by Henry++ • 2022 • C • Compatible with all Windows releases of this website)
    Chocolatey
    (by the Chocolatey team • 2023 • In command-line • Compatible with the Hibbiki's releases and The Chromium authors' releases of this website • Package core)
    Scoop
    (by the Scoop team • 2023 • In command-line • Compatible with the Hibbiki's releases and the Ungoogled releases of this website)
    ungoogled-updater
    (by NeverDecaf • 2023 • Python • Compatible with the Ungoogled releases of this website)
    ChromiumForWindows
    (by Ilyó Kovács Levente • 2022 • C# • Compatible with all Windows releases of this website)
    Simple Chromium Updater (chrupd.cmd)
    (by mkorthof • 2023 • Batchfile • Compatible with all Windows releases of this website)
    ChromiumUpdathe (by Hristo Bogdanov • 2021 • C#)
    chromium for windows installer (by Lusito • 2020 • Javascript)
    cr-updater (by pwlin • 2018 • Batchfile, PHP)
    Chromium_Updater (by Programming4life • 2018 • Rust)
    ChrUpdWin.cmd (by Michael Kharitonov • 2018 • Batchfile)
    A web installer for Chromium (by LonelyCannibal • 2017 • AutoIt • Archive: ZIP)
    Chromium Downloader (by stsy • 2016 • C#)

Updaters on macOS

    Homebrew Tap for the Marmaduke Chromium builds
    (by Charl P. Botha, then Matthew Salazar • 2023 • Ruby • Compatible with all Marmaduke releases of this website)
    chromiumUpdater.js
    (by TayIorRobinson • 2021 • NodeJS • Compatible with the stable Chromium version of Marmaduke)
    chromium-updater-mac (by wangxufire • 2018 • Python)
    chromium-downloader-script (by Matteo Loporchio • 2017 • Shell)
    chromium-downloader (by Matteo Loporchio • 2017 • C)
    update_chromium_osx (by Klemens Gordon • 2016 • Shell)
    chromium-on-mac (by NicoLargo • 2015 • Shell)

Discontinued updaters

    Chromium Update Notifications (by Christian Mund • 2022 • Compatible with all releases of this website • Archive: CRX)
    Chromium Auto Updater [Root] (by Federico Dossena • 2019 • Java)
    Chromium Updater (by the FreeSMUG team • 2018 • Chrome Web Store • Archive: ZIP
    getChromium (by Andrew Wright • 2018 • Java)
    Chromium Updater (crupdater) (by Muhammer Ayes aka Zychopat • 2016 • Batchfile, AutoIt)
    chromium-nightly-updater (by Vikrant Chaudhary • 2016 • Java)
    Chromium updater script for OS X (by Alan Grosskurth • 2016 • Shell)
    Chromium-Download-Manager (by xinhugo • 2015 • Batchfile)
    chromium-update (by William Alexander • 2015 • PowerShell)
    Chromium Upgrader for Mac OS X (by mozamimy • 2015 • Shell)
    Chromium Updater (by Daniel Huhn • 2014 • Javascript)
    Chromatic (by Mr Gecko • 2014 • App • Source code)
    extension.chromium-updater (by Jackson Tan aka Hallbin • 2014 • Javascript, CSS)
    Chromium-updater (by Das Schwert • 2010 • AutoIt)
    chromium updater.py (by Curt Micol aka asenchi • 2009 • Python)


Thanks a lot for all developers!
I do not support these tools. Please, contact the developers for thanks, issue, help... 
