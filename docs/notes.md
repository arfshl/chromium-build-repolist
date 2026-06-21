## Notes

Obviously, you know this site is not the **Chromium** official website. As a regular user (not an expert), I created it in 2013 because there was no easy way to download good and stable releases of Chromium, on Windows. I try to keep it as [safe](https://transparencyreport.google.com/safe-browsing/search?url=chromium.woolyss.com) and [fast](https://developers.google.com/speed/pagespeed/insights/?url=chromium.woolyss.com) as possible! ;) This is absolutely a non-profit site. Please, read the [privacy policy](https://info.woolyss.com/#privacy).

In short:
* Since the beginning of the Chromium project until today, there is **no binary of stable Chromium** shared **by the official team**.
* The [official website](https://www.chromium.org/) is development oriented. Users are invited to download Google Chrome.
* The [official download page](https://www.chromium.org/getting-involved/download-chromium) gives to users only ZIP archives of development builds (also known as "snapshot", "nightly", "vanilla" or "raw" builds) which can be very unstable. Users are invited to download Google's Chrome Canary.
* This site gives to users a choice of builds: development (also on its [simplest download page](https://chromium.woolyss.com/download/)), stable and portable builds.

All downloads are only from **reliable sources**:
* [Google Storage](https://en.wikipedia.org/wiki/Google_Storage) → development builds from the official repository *(Chromium buildbot)*
* [GitHub](https://en.wikipedia.org/wiki/GitHub), [AWS](https://en.wikipedia.org/wiki/Amazon_Web_Services) and [SourceForge](https://en.wikipedia.org/wiki/SourceForge) → other free and open-source builds

### 1. Project

Chromium exists since [2008](https://blog.chromium.org/2008/09/welcome-to-chromium_02.html). It is the free and open-source project ([#features](#features)) behind the famous [Google Chrome](https://en.wikipedia.org/wiki/Google_Chrome) browser. There are [many advantages](https://opensource.com/article/17/8/enterprise-open-source-advantages) for an enterprise to work on an open-source project. Intrinsically, [Chromium is a Google project](https://blog.chromium.org/2008/10/google-chrome-chromium-and-google.html) maintained by many [authors](https://chromium.googlesource.com/chromium/src/+/master/AUTHORS) (developers, engineers, graphic designers, security researchers...) from Google, Adobe, Amazon, ARM, Brave, Cloudflare, Facebook, Hewlett-Packard, IBM, Igalia, Intel, Logitech, Microsoft, Mozilla, Nvidia, Opera, Samsung, Vivaldi, Xiaomi, Yandex... and external contributors ([Official graph](https://docs.google.com/spreadsheets/d/1XPpuM-8bokpInY0gWesN3VcAVlofKDh5nSGKy0MYU6s/edit#gid=64465891)).

Chromium is not only a web browser. It is a blend of different important open-source projects:
* [ANGLE](https://en.wikipedia.org/wiki/ANGLE_(software)) *(Graphics engine abstraction layer)*
* [Blink](https://en.wikipedia.org/wiki/Blink_(browser_engine)) *(Rendering/layout engine)*
* [Native Client](https://en.wikipedia.org/wiki/Google_Native_Client) *(Sandbox for running native code)*
* [PDFium](https://pdfium.googlesource.com/pdfium/) *(PDF generation and rendering library)*
* [Sandbox](https://chromium.googlesource.com/chromium/src/+/master/docs/design/sandbox.md) *(Security mechanism for separating running programs)*
* [Skia](https://en.wikipedia.org/wiki/Skia_Graphics_Engine) *(Graphics library)*
* [V8](https://en.wikipedia.org/wiki/Chrome_V8) *(JavaScript engine)*
* and others...

One or more projects are used in **Chromium** browser (obviously!) and other software/service like Google Chrome, Googlebot Evergreen, Bingbot Evergreen, Mozilla Firefox (ANGLE, Skia), Opera, Vivaldi, [Microsoft Edge](https://github.com/MicrosoftEdge/MSEdge) (Search "chromium" at [Microsoft Third Party Disclosures](https://thirdpartysource.microsoft.com/). Official [PDF presentation](f/PDF-blink-on-edge-presentation-2019.pdf)), Adobe Acrobat, Android WebView, Discord, Bitwarden, Microsoft Visual Studio Code, Minecraft, Signal, Skype, Slack, Spotify, Steam, TeamViewer, Trend Micro, Twitch, Unity3D, Unreal Engine, WhatsApp, [Electron](https://en.wikipedia.org/wiki/Electron_(software_framework)), [CEF](https://en.wikipedia.org/wiki/Chromium_Embedded_Framework), [QtWebEngine](https://en.wikipedia.org/wiki/Qt_(software))...

**Chromium is not fully designed by Google!** However, as a primary investor, Google gives a consistent guidance and provides all free tools and services related to this project.

### 2. Stable Chromium version

Officially, Chromium does not have a stable release. The official developers (aka The Chromium Authors) do not release it to end users. So it is continually in development. Google Chrome is the stable release... but is not open-source.

> Chromium is the project then Google Chrome is the product.

In fact, **Chromium has a stable version**! ^^  
Chromium being open-source ([#source-code](#source-code)), anybody can compile it. It is [reproducible](https://reproducible-builds.org/). You should be a developer to do this. Just get the [current stable version (149.0.7827.155)](https://chromium.googlesource.com/chromium/src/+/149.0.78iced.155) from the official Git repository and compile it!  
For example, the current stable [version](https://www.chromium.org/developers/version-numbers) on [#linux](#linux) is **149.0.7827.155**. In this version, there are 155 patches which correct many issues (bugs, feature requests, enhancements...).

> All **stable versions** of Chromium on [#windows](#windows), [#mac](#mac), [#linux](#linux)... are always **made by third-party developers**.

The **stable version** of Chromium is compiled by:
* Google developers *(USA)* → [Google Chrome](https://en.wikipedia.org/wiki/Google_Chrome)
* Microsoft developers *(USA)* → [Microsoft Edge](https://en.wikipedia.org/wiki/Microsoft_Edge)
* Opera developers *(Norway/China)* → [Opera](https://en.wikipedia.org/wiki/Opera_%28web_browser%29)
* Samsung developers *(South Korea)* → [Samsung Internet](https://en.wikipedia.org/wiki/Samsung_Internet)
* Vivaldi developers *(Iceland)* → [Vivaldi](https://en.wikipedia.org/wiki/Vivaldi_(web_browser))
* Yandex developers *(Russia)* → [Yandex browser](https://en.wikipedia.org/wiki/Yandex_Browser)
* **Hibbiki** and **Marmaduke** developers → Chromium, on [#windows](#windows) and [#mac](#mac)
* Some developers → Chromium, on each [#linux](#linux) and [#bsd](#bsd) distribution
* Some developers → [Chromium-based browsers](https://en.wikipedia.org/wiki/Chromium_%28web_browser%29#Browsers_based_on_Chromium)
* Some developers → other projects like [CEF](https://en.wikipedia.org/wiki/Chromium_Embedded_Framework), [Electron](https://en.wikipedia.org/wiki/Electron_(software_framework)), [Qt WebEngine](https://en.wikipedia.org/wiki/Qt_(software)), [Chromely](https://github.com/mattkol/Chromely), [NW.js](https://github.com/nwjs/nw.js), [Beaker](https://github.com/beakerbrowser/beaker), [JxBrowser](https://jxbrowser.support.teamdev.com/support/solutions) ...

### 3. Development

The development builds (also known as "snapshot", "nightly", "vanilla" or "raw" builds) are built automatically several times a day by the Chromium Buildbot ([buildbot console](https://ci.chromium.org/p/chromium/g/main/console)) and made available as binary code releases.

#### Snapshot
Once a snapshot has been built, it is placed in the [chromium-browser-snapshots](https://storage.googleapis.com/chromium-browser-snapshots/index.html) root directory of [Google Cloud Storage](https://en.wikipedia.org/wiki/Google_Storage) and is [automatically tested](https://www.chromium.org/developers/testing). This build is really just development tool for checking whether issues are fixed in the latest Chromium code. It can be buggy and unstable. They are downloadable on the [official site](https://www.chromium.org/getting-involved/download-chromium), my [alternative webpage](https://chromium.woolyss.com/download/) and this site (Check `The Chromium Authors` tag).

#### LKGR (Last Known Good Revision)
If that snapshot build successfully passes the automated tests, it is considered as a good build (known as LKGR meaning "Last Known Good Revision") and can become potentially a stable build. For info, LKGR builds were stored in the [chromium-browser-continuous](https://storage.googleapis.com/chromium-browser-continuous/index.html) root directory until Friday, 18 Mar 2016. The Chromium team has removed few LKGR builders ([407399](https://bugs.chromium.org/p/chromium/issues/detail?id=407399), [576253](https://bugs.chromium.org/p/chromium/issues/detail?id=576253) and [chromium-dev](https://groups.google.com/a/chromium.org/forum/#!topic/chromium-dev/lKLCCjKjvJc)) but other ones still work ([latest commit](https://chromium.googlesource.com/chromium/src/+/lkgr)). Finally, there is no LKGR binary shared by the Chromium team... but any developer can re-compile it! ^^

#### Stable
A stable build is a development build tested by the Buildbot then improved by the Chromium team and all contributors.

### 4. Conclusion

Note this website and the Chromium builds are made and shared by volunteers (devoted developers), freely, in their spare time. There is absolutely no business, no revenue ([Privacy policy](https://info.woolyss.com/#privacy)). We are neither Google nor a corporation. So please, respect our work. Officially, the [#stable-chromium-version](#stable-chromium-version) does not exist at all. We need time to re-compile Chromium. If you cannot wait for the latest version, prefer to use a development version ([download page](https://chromium.woolyss.com/download/)) or compile Chromium yourself ([#source-code](#source-code)) or use other [#browsers](#browsers).

Jerry (admin)

## Features

Chromium vs Google Chrome.

**Chromium** browser has:
* only an open [#source-code](#source-code)
* different licences:
  - mainly open-source licenses *([BSD license](https://chromium.googlesource.com/chromium/src/+/master/LICENSE), [MIT license](https://en.wikipedia.org/wiki/MIT_License), [LGPL](https://en.wikipedia.org/wiki/GNU_Lesser_General_Public_License), [MS-PL](https://en.wikipedia.org/wiki/Source-available_software#Microsoft_Public_License_(Ms-PL)) and [MPL](https://en.wikipedia.org/wiki/Mozilla_Public_License)+[GPL](https://en.wikipedia.org/wiki/GNU_General_Public_License)+[LGPL](https://en.wikipedia.org/wiki/GNU_Lesser_General_Public_License) [tri-licensed](https://en.wikipedia.org/wiki/Multi-licensing))*
  - 1 proprietary licence (but for available source code: [UnRAR](https://source.chromium.org/chromium/chromium/src/+/master:third_party/unrar/LICENSE)),
  - few unlicensed files.  
  It is a [FOSS](https://en.wikipedia.org/wiki/Free_and_open-source_software) project. A full list of software developed by third-parties is viewable within the browser at `chrome://credits` *(similar to this [online page](f/credits.html))*
* a trademark according to Google *(Search "Chromium™" at [Trademarks list](https://www.google.com/permissions/trademark/trademark-list/))*
* a blue-colored logo *(Search "Chromium" at [Logos list](https://about.google/brand-resource-center/logos-list/))*
* the similar [system requirements](https://support.google.com/chrome/a/answer/7100626?hl=en) as Google Chrome
* the similar user interface and settings as Google Chrome
* the similar [sandbox](https://en.wikipedia.org/wiki/Sandbox_%28computer_security%29) as Google Chrome
* the similar support for [extensions and themes](https://chrome.google.com/webstore) as Google Chrome
* the similar [user agent](https://en.wikipedia.org/wiki/User_agent) as Google Chrome
* the similar experiments [Field Trials (Finch)](https://blog.chromium.org/2012/05/changes-to-field-trials-infrastructure.html) *(viewable as a list in "Variations" at `chrome://version/`) *as Google Chrome *(and similar as [Mozilla Firefox studies](https://support.mozilla.org/kb/shield) and as [Microsoft Edge's ECS](https://docs.microsoft.com/en-us/deployedge/edge-configuration-and-experiments))*
* the built-in Chrome PDF Viewer *(known as [PDFium](https://pdfium.googlesource.com/pdfium/))*, on Windows
* the built-in Chromoting Viewer *(To use it, you need to first install the [Chrome Remote Desktop](https://en.wikipedia.org/wiki/Chrome_Remote_Desktop) extension)*
* the built-in [Google Native Client](https://en.wikipedia.org/wiki/Google_Native_Client)
* the built-in Print preview and print system
* no stable version offered by the official team *(aka The Chromium Authors)*
* no [digital signature](https://en.wikipedia.org/wiki/Digital_signature)
* no auto-update system *(Solution: Use [#updaters](#updaters) • On [#linux](#linux), use the integrated software/package manager, even a PPA)*
* no Google API keys *(Solution: Check [#google-api-keys](#google-api-keys))*
* no built-in Flash player *(Solution: Check [#flash](#flash))*
* no unwanted software protection *(known as [Chrome Cleanup](https://www.blog.google/products/chrome/cleaner-safer-web-chrome-cleanup/) and "software_reporter_tool.exe")*, on Windows
* no support of proprietary codecs (AAC, H.264/MP4) *(Solution: Check [#html5-audio-video](#html5-audio-video))*
* no user [RLZ identifier](https://en.wikipedia.org/wiki/Google_Chrome#User_tracking)
* no user metrics (usage statistics) *(opt-in option)*
* no crash report *(opt-in option)*
* [More details](https://chromium.googlesource.com/chromium/src/+/master/docs/chromium_browser_vs_google_chrome.md) on the official site, focused on Linux.

Why I used the "similar" word, here?  
I cannot certify that it is "same/identical" as Google Chome because Chrome is a closed-source software.

Some developers maintain [#chromium-forks](#chromium-forks) that offer more features and enhancements. Thanks a lot for developers! ;)

## Secure Preferences

Chromium has "Secure Preferences" feature which protect user data against [#malware](#malware). On Windows, macOS and Linux, the user profile is encrypted based on the machine [SID](https://en.wikipedia.org/wiki/Security_Identifier) *(For info, you can [change the SID on Linux](https://archive.is/0OLMGtrack))*. So **extensions, certificates and passwords are not portable**. It works for Chromium and all [#chromium-forks](#chromium-forks) like Google Chrome, Microsoft Edge, Opera, Vivaldi, Brave, ungoogled-chromium... *(except Cent Browser which is closed-source and therefore can be easily corrupted)*

Info relative to this feature:
* [PortableApps::Google Chrome portable](https://portableapps.com/apps/internet/google_chrome_portable) *(Read "App Notes")*
* [PortableApps::Opera portable](https://portableapps.com/apps/internet/opera_portable) *(Read "App Notes")*
* [Portapps::Brave portable](https://portapps.io/app/brave-portable/) *(Read "Infos"... or detailed [info](https://github.com/portapps/brave-portable/issues/4) on Github)*
* [Copy Chrome extensions from one computer to another](https://superuser.com/questions/634648/copy-chrome-extensions-from-one-computer-to-another)
* [How to migrate Google Chrome profile (extensions, cookies, etc.) to another Windows installation?](https://superuser.com/questions/1020479/how-to-migrate-google-chrome-profile-extensions-cookies-etc-to-another-wind)
* [profile_pref_store_manager.cc](https://source.chromium.org/chromium/chromium/src/+/master:chrome/browser/prefs/profile_pref_store_manager.cc) *(Chromium code source)*
* [machine_id.cc](https://source.chromium.org/chromium/chromium/src/+/master:rlz/lib/machine_id.cc) *(Chromium code source)*

<details>
<summary><b>How to migrate user data from one computer to another?</b></summary>
<br>

The simple way to migrate your data is to synchronize them.  
For info, you can also use free services like [floccus](https://github.com/marcelklehr/floccus) or [xBrowserSync](https://www.xbrowsersync.org/).

Also, to export/import data manually:
* **Bookmarks:** `chrome://bookmarks`
* **Passwords:** `chrome://flags/#PasswordImport` → Enabled ([screenshot](https://i.imgur.com/fc31kHg.jpg)). Then restart the browser. Then `chrome://settings/passwords` ([screenshot](https://i.imgur.com/0qkdl9m.jpg)). *For info, you can also use the `#flag`: `--enable-features=PasswordImport` ([screenshot](https://i.imgur.com/5rGak9t.jpg)).*
* **Extensions:** Import and export do not exist. But with an extension like [Export links of all extensions](https://github.com/gabrielbarros/export-all-extensions), it is possible to list all browser extensions used in an HTML file.

There are unstable ways too:
* ~~using these `#command-line-flags`: `--disable-machine-id --disable-encryption` ([info](https://github.com/Eloston/ungoogled-chromium/pull/591))~~
* using a [hacking method](https://www.adlice.com/google-chrome-secure-preferences/) to bypass "Secure Preferences".

</details>

## Google API keys
By default, few Google services (Chrome Sync...) are not available on Chromium. They are [reserved for Google Chrome](https://blog.chromium.org/2021/01/limiting-private-api-availability-in.html) users. For example, the Chrome Sync capability in Chromium based browsers allows you to login to Google’s Sync cloud servers and save your passwords, browsing history and bookmarks/favorites to your personal encrypted cloud vault inside Google’s infrastructure. Extremely convenient for people who access the Internet using multiple devices.

To use these Google services, **Chromium** needs [Google API keys](https://www.chromium.org/developers/how-tos/api-keys).

Chromium can display a top message if the Google API keys are needed for Google services *([screenshot](https://i.imgur.com/QyO4ig4.png))*:
```text
Google API keys are missing. Some functionality of Chromium will be disabled. Learn More
```

<details>
<summary><b>How to just hide the top message "Google API keys are missing..."?</b></summary>
<br>

Add the [--no-default-browser-check](https://peter.sh/experiments/chromium-command-line-switches/#no-default-browser-check) flag at the end of the Chromium shortcut and restart the browser ([screenshot](https://i.imgur.com/uSoxpGE.png)).

</details>

<details class="info" open>
<summary><b>How to create your own Google API keys?</b></summary>
<br>

With your own Google API keys, many Google services (Chrome Sync...) will work.
* Follow the [official API Keys page](https://www.chromium.org/developers/how-tos/api-keys) to get them.
* Other info at [Github Gist](https://gist.github.com/cvan/44a6d60457b20133191bd7b104f9dcc4).
* A tutorial video on [YouTube](https://www.youtube.com/watch?v=QVuXt5DI-9M) ([mirror](f/video-chromium-google-api-keys.mp4)).

Then set three environment variables.

### On Windows
Launch **Command Prompt** ([cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe)) and enter the following commands:

<pre><code>setx GOOGLE_API_KEY yourkey
setx GOOGLE_DEFAULT_CLIENT_ID yourclientid
setx GOOGLE_DEFAULT_CLIENT_SECRET yourclientsecret</code></pre>

*([setx](https://docs.microsoft.com/windows-server/administration/windows-commands/setx) = set environment variables permanently)*

### On macOS
This tutorial was written by **Aargl** on December 7, 2018 ([#comment-4078](https://chromium.woolyss.com/?all=1#comment-4078)). Thanks to him. There are 2 methods:

#### 1. Method with ChromiumSyncEnabler
[ChromiumSyncEnabler](https://github.com/ezeeyahoo/ChromiumSyncEnabler) *(Archive: [ZIP](f/ChromiumSyncEnabler-master.zip))*
* Put `Chromium_template` and `ChromiumSyncEnabler.py` at the root of the current user (`~/`)
* Put `Chromium.app` in `~/Applications`
* In Terminal, type: `python /Users/your_user_name/ChromiumSyncEnabler.py`
* Enter your API keys

*N.B.: If you want to activate for all users, do the same procedure putting the files respectively in `/` and `/Applications` (I haven't tried, but I can't see why it wouldn't work...)*

#### 2. Method with a plist file
Creation of a `~/Library/LaunchAgents/setenv.ChromiumSync.plist` containing:

<pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "[https://www.apple.com/DTDs/PropertyList-1.0.dtd](https://www.apple.com/DTDs/PropertyList-1.0.dtd)"&gt;
&lt;plist version="1.0"&gt;
   &lt;dict&gt;
      &lt;key&gt;Label&lt;/key&gt;
      &lt;string&gt;setenv.ChromiumSync&lt;/string&gt;
      &lt;key&gt;ProgramArguments&lt;/key&gt;
      &lt;array&gt;
         &lt;string&gt;/bin/launchctl&lt;/string&gt;
         &lt;string&gt;setenv&lt;/string&gt;
         &lt;string&gt;GOOGLE_API_KEY&lt;/string&gt;
         &lt;string&gt;your_key&lt;/string&gt;
         &lt;string&gt;/bin/launchctl&lt;/string&gt;
         &lt;string&gt;setenv&lt;/string&gt;
         &lt;string&gt;GOOGLE_DEFAULT_CLIENT_ID&lt;/string&gt;
         &lt;string&gt;your_key&lt;/string&gt;
         &lt;string&gt;/bin/launchctl&lt;/string&gt;
         &lt;string&gt;setenv&lt;/string&gt;
         &lt;string&gt;GOOGLE_DEFAULT_CLIENT_SECRET&lt;/string&gt;
         &lt;string&gt;your_key&lt;/string&gt;
      </array>
      &lt;key&gt;RunAtLoad&lt;/key&gt;
      &lt;true/&gt;
   &lt;/dict&gt;
&lt;/plist&gt;</code></pre>

*(with "your_key" being the corresponding Google API key)*

Of course, you can name the LaunchAgent `setenv.ChromiumSync` or anything you want.
* This is perfectly working in 10.11
* In 10.9, you must create 3 separate LaunchAgent files instead (one for each key)
* I couldn't test more recent OSes, but I think it should work as in 10.11

The choice between method 1 or 2 depends on whether you want to enter your API keys each time or not... ;-)

### On Linux
<pre><code>export GOOGLE_API_KEY yourkey
export GOOGLE_DEFAULT_CLIENT_ID yourclientid
export GOOGLE_DEFAULT_CLIENT_SECRET yourclientsecret</code></pre>

</details>

<details class="info" open>
<summary><b>How to disable Google API keys?</b></summary>
<br>

Without Google API keys, many Google services (Chrome Sync...) will not work.

### On Windows
Launch **Command Prompt** ([cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe)) and enter the following commands:

<pre><code>setx GOOGLE_API_KEY "false"
setx GOOGLE_DEFAULT_CLIENT_ID "false"
setx GOOGLE_DEFAULT_CLIENT_SECRET "false"</code></pre>

*([setx](https://docs.microsoft.com/windows-server/administration/windows-commands/setx) = set environment variables permanently)*

Now launch Chromium.

</details>
