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

<details>
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

## Widevine plugin

[Widevine](https://en.wikipedia.org/wiki/Widevine) is a closed-source Google plugin to play DRM (= protected audio/video files) for web browsers. Companies including Amazon Prime Video, BBC, Hulu, Netflix, Spotify and Disney+ use Widevine to manage the distribution of premium content.

**Chromium** does not support Widevine natively. Note that Chromium developers and most of Chromium users do not use this Google plugin at all. We do not bundle/share it. Other people tried to obtain a [licence from Google for an open-source project and finally did not get it](https://blog.samuelmaddock.com/posts/google-widevine-blocked-my-browser/) *(Archive: [1](https://archive.is/wleqi))*.

On this website, the `widevine` support is enabled on the **stable versions**. (These versions are compiled with the GN argument: *enable_widevine = true*). So you need to install the Widevine CDM *(Content Decryption Module)* plugin yourself to play DRM content.

In Chromium and Google Chrome, you can check the Widevine support at `chrome://components` → "Widevine Content Decryption Module" → The number must be different than 0.0.0.0 *([screenshot](https://i.imgur.com/q1MmVDC.jpg))*.

Websites to freely test Widevine:
* [https://bitmovin.com/demos/drm](https://bitmovin.com/demos/drm)
* [https://demo.castlabs.com/](https://demo.castlabs.com/) *(Choose videos with labeled "DRM")*
* [https://shaka-player-demo.appspot.com/demo/](https://shaka-player-demo.appspot.com/demo/)

<details>
<summary><b>How to install the Widevine CDM plugin?</b></summary>
<br>

1. First of all, make sure you have a Chromium version with the enabled support of:
   * **The protected content:** `chrome://settings/content/protectedContent`
   * **Widevine and H.264/MP4:** Check these tags on this website: `widevine` `all-codecs`

2. Now, get the Widevine CDM plugin.

   **2.1 From official links:** *(For info, it was an automated update via this ~~[official TXT file](https://dl.google.com/widevine-cdm/versions.txt)~~ available until 2024. Now it is obsolete!)*
   * ~~[4.10.2891.0-win-x64.zip](https://dl.google.com/widevine-cdm/4.10.2891.0-win-x64.zip)~~ *(64-bit Windows)*
   * ~~[4.10.2891.0-win-arm64.zip](https://dl.google.com/widevine-cdm/4.10.2891.0-win-arm64.zip)~~ *(64-bit Windows on ARM)*
   * ~~[4.10.2891.0-win-ia32.zip](https://dl.google.com/widevine-cdm/4.10.2891.0-win-ia32.zip)~~ *(32-bit Windows)*
   * ~~[4.10.2891.0-mac-x64.zip](https://dl.google.com/widevine-cdm/4.10.2891.0-mac-x64.zip)~~ *(64-bit macOS)*
   * ~~[4.10.2891.0-mac-arm64.zip](https://dl.google.com/widevine-cdm/4.10.2891.0-win-arm64.zip)~~ *(64-bit macOS on ARM)*
   * ~~[4.10.2891.0-linux-x64.zip](https://dl.google.com/widevine-cdm/4.10.2891.0-linux-x64.zip)~~ *(64-bit Linux)*
   * ~~4.10.2891.0-linux-ia32.zip~~ *(32-bit Linux)*

   **2.2 Or from the Google Chrome website:** *(You can extract these executable files using [7-Zip](https://en.wikipedia.org/wiki/7-Zip) for example. Official standalone versions:)*
   * [Google Chrome](https://dl.google.com/chrome/install/standalonesetup64.exe) *(64-bit / Windows)*
   * [Google Chrome](https://dl.google.com/chrome/install/standalonesetup.exe) *(32-bit / Windows)*
   * [Google Chrome](https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg) *(macOS)*
   * [Google Chrome](https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb) *(amd64.deb / Linux)*
   * [Google Chrome](https://www.google.com/chrome/?standalone=1)

   **2.3 Or from offline installers of Google Chrome:** *(Prefer these following websites because you can unzip the executable files (*.exe) and see the whole content. Note these download links of Google Chrome are official.)*
   * [Chrome offline installers](https://tools.woolyss.com/chrome-offline-installers/)
   * [[JP] chrome::noki.eu.org](https://chrome.noki.eu.org/)
   * [[JP] chrome::github.com/Bush2021/chrome_installer](https://github.com/Bush2021/chrome_installer/releases)
   * [[JP] chrome::iplaysoft.com](https://www.iplaysoft.com/tools/chrome/)

3. Unzip the content of this Widevine CDM plugin *(This is a [7-Zip](https://en.wikipedia.org/wiki/7-Zip) self-extracting archive)*.

4. Copy this Widevine CDM plugin's content to your Chromium "WidevineCdm" folder like this following structure, on Windows ([screenshot](https://i.imgur.com/Kb1aoca.jpg)):

<pre><code>WidevineCdm
  ├── LICENSE.txt
  ├── manifest.json (Note: this file contains the Widevine version or even the file paths ^^)
  │ 
  └── _platform_specific
         └── win_x64 (Note: if it is for 64-bit Windows, obviously!)
                ├── widevinecdm.dll
                └── widevinecdm.dll.sig</code></pre>

5. Launch Chromium browser.

6. Go to the top of this website and check if the "widevine" tag is displayed ([screenshot](https://i.imgur.com/F1jXvgR.png)) and check `chrome://components` → "Widevine Content Decryption Module".

7. End.

</details>

## Flash plugin

[Flash](https://en.wikipedia.org/wiki/Adobe_Flash) is a deprecated multimedia software platform. [Adobe retired Flash](https://theblog.adobe.com/adobe-flash-update/) on January 1, 2021, on all platforms. [Roadmap for Chromium](https://www.chromium.org/flash-roadmap). [Roadmap for Firefox](https://developer.mozilla.org/docs/Plugins/Roadmap).

* Since 2021, the Flash PPAPI *(Pepper Plugin Application Programming Interface)* plugin (aka PepperFlash) plugin is discontinued. For info, PepperFlash is secure because it works in a [sandbox](https://en.wikipedia.org/wiki/Sandbox_%28computer_security%29). In short, it executes in its own process, separate from the browser's rendering engine.
* Since 2015, the Flash [#npapi](#npapi) plugin is discontinued.

<details>
<summary><b>How to quickly install the Flash plugin?</b> <small>(Obsolete content!)</small></summary>
<br>

On Windows and macOS, Chromium finds PepperFlash itself *(without `#command-line-flags`)*.

1. Install PepperFlash (PPAPI) from the [Adobe website](https://get.adobe.com/flashplayer/otherversions/).
2. Disable the checkbox in the `chrome://settings/content/flash` page ([screenshot](https://i.imgur.com/zutpw6c.jpg)).
3. Test if animation works on the [Flash Player versions](https://get.adobe.com/flashplayer/about/) page.
4. Enjoy!

</details>

<details>
<summary><b>How to manually install the Flash plugin?</b> <small>(Obsolete content!)</small></summary>
<br>

This is a full manual installation tutorial.  
*(If Google Chrome is already installed, go directly to "3. Add command-line flags")*

### 1. Get PepperFlash (PPAPI)
This plugin is a non-free (proprietary) software developed by Adobe, and distributed bundled with Google Chrome. So get it from the official sources: Adobe or Google.

#### 1.1 From Adobe
Different official ways:
* **Stable version - Download page:** [Adobe Flash Player (Other versions)](https://get.adobe.com/flashplayer/otherversions/) *(Choose your OS and the PPAPI version)*
* **Stable version - Direct link (Windows):** [install_flash_player_ppapi.exe](https://fpdownload.adobe.com/pub/flashplayer/latest/help/install_flash_player_ppapi.exe)
* **Stable version - Direct link (macOS):** [install_flash_player_osx_ppapi.dmg](https://fpdownload.adobe.com/pub/flashplayer/latest/help/install_flash_player_osx_ppapi.dmg)
* **Beta version:** From [Adobe Labs](https://labs.adobe.com/downloads/flashplayer.html) *(Search "PPAPI" and "Chromium" for your platform)*

After install, the plugin path will be:
* **On a 64-bit Windows:**
  * `C:\Windows\system32\Macromed\Flash\pepflashplayer64_[version].dll` *(64-bit version)*
  * `C:\Windows\SysWOW64\Macromed\Flash\pepflashplayer32_[version].dll` *(32-bit version)*
* **On a 32-bit Windows:**
  * `C:\Windows\system32\Macromed\Flash\pepflashplayer32_[version].dll` *(32-bit version)*

#### 1.2 From Google Chrome
[Canary](https://www.chromium.org/getting-involved/dev-channel) channel:
* **On Windows:** Get `pepflashplayer.dll` from [Chrome Canary (64-bit)](https://www.google.com/intl/en/chrome/canary/?platform=win64) if you use 64-bit Chromium.
* **On Windows:** Get `pepflashplayer.dll` from [Chrome Canary (32-bit)](https://www.google.com/intl/en/chrome/canary/?platform=win) if you use 32-bit Chromium.
* **On Mac:** Get `PepperFlashPlayer.plugin` from [Chrome Canary (64-bit)](https://www.google.com/intl/en/chrome/canary/?platform=mac).

#### 1.3 From an unofficial source
*(Use an online service to prevent `#malware`)*
1. Search "PepperFlash" or "PPAPI" at [[RU] effect8.ru](http://effect8.ru/soft/media/adobe-flash-player-portable.html) or [patheticcockroach.com](https://notepad.patheticcockroach.com/4029/flash-player-12-for-portable-browsers-32-and-64-bits/).
2. Download and open the `.7z` archive.
3. Get `pepflashplayer.dll` (rename it, if needed) and `manifest.json` files.

Optionally, get the Flash version number *(if you want to see the correct version number on Chromium internal pages)*:
* On all platforms, open the **manifest.json** text file in the PepperFlash folder.
* On Windows, you can do a right-click → Properties → Details, on the `.dll` file.

### 2. Change the plugin directory
If you want, prefer a short path for the plugin. It will be easier for the next step. ^^  
*Example on Windows:* Put this `.dll` file in a path like `C:\PepperFlash\` *(Create the directory if needed)*.

### 3. Add command-line flags
Use these `#command-line-flags`:
* **--ppapi-flash-path**=`[plugin path]`
* **--ppapi-flash-version**=`[plugin version]`
* And optionally **--allow-outdated-plugins** to disable browser notifications about outdated plugins.

**On Windows**, create a Chromium shortcut. Then go to its properties and edit the target field:

<pre><code>--ppapi-flash-path="C:\PepperFlash\pepflashplayer.dll" --ppapi-flash-version="32.0.0.465" --allow-outdated-plugins</code></pre>

**On Mac**, you will need to launch it from the command-line (in the Terminal):

<pre><code>/Applications/Chromium.app/Contents/MacOS/Chromium --ppapi-flash-path=/Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin --ppapi-flash-version=32.0.0.465&</code></pre>

The `&` at the end is not a typo. It is there to make sure Chromium is launched in a separate thread. Without the `&`, Chromium would exit as soon as you quit the Terminal. 

Moreover, to simplify the Chromium launch, check [How to create simple Mac apps from shell scripts](https://mathiasbynens.be/notes/shell-script-mac-apps) ([Archive](https://archive.is/TeIHV)). Also see [#comment-566](https://chromium.woolyss.com/?all=1#comment-566) and [#comment-344](https://chromium.woolyss.com/?all=1#comment-344).

### 4. Restart the browser
Relaunch it to apply changes.

### 5. Check the installation
* Type `chrome://settings/content/flash` to manage it.
* For update, check the [Flash Player version](https://get.adobe.com/flashplayer/about/) on the official page.
* For security information, see the [security bulletins and advisories](https://helpx.adobe.com/security.html#flashplayer).

### 6. Enjoy!
Now, even after browser updates, **Chromium** uses PepperFlash. ^^

</details>

## NPAPI plugin

[NPAPI](https://en.wikipedia.org/wiki/NPAPI) is a deprecated API that allows browser extensions to be developed. Chromium 45.0.2416.0 (331982) is the last version which still has NPAPI plugin support enabled via `chrome://flags` or group policy registry. *([source](https://codereview.chromium.org/1158423003/#ps1) • [NPAPI deprecation](https://www.chromium.org/developers/npapi-deprecation))*

<details>
<summary><b>How to still use a NPAPI plugin?</b></summary>
<br>

Few ways:
* Switch to other [browsers still supporting NPAPI](https://en.wikipedia.org/wiki/NPAPI#Browser_support) plugins (like [Waterfox](https://en.wikipedia.org/wiki/Waterfox) browser).
* Or install an older Chromium version (Ex: [331982](https://storage.googleapis.com/chromium-browser-continuous/index.html?prefix=Win_x64/331982/), 331959, 331938, 331935...)
* Or install the [IE Tab](https://chrome.google.com/webstore/detail/ie-tab/hehijbfgiekmjfkfjpbkbammjbdenadd) addon which allows users to view pages using the IE *(Internet Explorer)* layout engine.

More info on site archives:
* [chromium::wayback.machine](https://web.archive.org/web/20150726200149/http://chromium.woolyss.com/#npapi) *(Sunday, 26 Jul 2015)*
* [chromium::archive.is](https://archive.is/rCWnE) *(Friday, 17 Jul 2015)*

</details>

## HTML5 audio/video

By default, [Chromium does not support proprietary codecs](https://www.chromium.org/audio-video) (AAC, H.264/MP4) in the [HTML &lt;audio&gt; and &lt;video&gt; elements](https://developer.mozilla.org/docs/Learn/HTML/Multimedia_and_embedding/Video_and_audio_content). Check HTML5 audio/video support at [https://tools.woolyss.com/html5-audio-video-tester/](https://tools.woolyss.com/html5-audio-video-tester/)

<details>
<summary><b>How to use Chromium with all audio/video codecs?</b></summary>
<br>

Few ways:
* On Windows and Mac, use builds with `all-codecs` or `all-codecs+`.
* Or compile Chromium from `#source-code` with proprietary codecs, yourself.
* Or install an older version having the **ffmpegsumo** file (Ex: [333350](https://storage.googleapis.com/chromium-browser-continuous/index.html?prefix=Win_x64/333350/), 333334, 333283, 333258...).
* Or choose other `#browsers`.
* On Linux, you can use Chromium with proprietary codecs (ex: FFmpeg under Ubuntu).

Before June 4, 2015, we used an alternative with the Google Chrome **ffmpegsumo** file and our **Patch HTML5 Media** extension. More info on site archives:
* [chromium::wayback.machine](https://web.archive.org/web/20150608153250/http://chromium.woolyss.com/#html5-audio-video) *(Monday, 8 Jun 2015)*
* [chromium::archive.is](https://archive.is/Eqvjz) *(Friday, 5 Jun 2015)*

</details>

<details>
<summary><b>Note about the H.265/HEVC video codec</b></summary>
<br>

Chromium does (and will) not natively support the [H.265/HEVC](https://en.wikipedia.org/wiki/High_Efficiency_Video_Coding) codec ([official source](https://bugs.chromium.org/p/chromium/issues/detail?id=684382#c1)).
* The license of H.265/HEVC is non-free. It is currently mainly supported by Apple ([Support of H.265/HEVC in web browsers](https://caniuse.com/#feat=hevc)).
* The Chromium team prefers to focus on the open-source [AV1](https://en.wikipedia.org/wiki/AV1) codec. This one is supported by major companies ([Alliance for Open Media](https://en.wikipedia.org/wiki/Alliance_for_Open_Media)) like Google, Microsoft, Intel, Samsung... ([Support of AV1 in web browsers](https://caniuse.com/#feat=av1)).

</details>

If there is a video issue, disable **hardware acceleration** (see [#browser-crash](#browser-crash)).

## Advanced

### 1. Internal pages

To access to all internal pages, use `chrome://about`. Copy and paste this special URL directly into the address bar (omnibox). Obviously, this special URL works only in **Chromium** and Google Chrome. Note: About configuration settings, there is nothing similar to Firefox's `about:config` in Chromium.

Few internal pages:
* `chrome://components` *(Show and update info about available components like Widevine...)*
* `chrome://conflicts` *(List all modules loaded into the browser)*
* `chrome://credits` *(View all licensing info • Similar to this [online page](f/credits.html))*
* `chrome://flags` *(View all experimental features • You can set each feature)*
* `chrome://gpu` *(Show info about GPU)*
* `chrome://net-export` *(Get all networking related info)*
* `chrome://omnibox` *(Test and follow responses of the searches via the omnibox/address bar)*
* `chrome://policy` *(Manage Chromium, for administrators • [Policy list](https://chromeenterprise.google/policies/))*
* `chrome://predictors` *(List autocomplete action predictors and resource prefetch predictors based on user recent search and browsing history)*
* `chrome://quota-internals` *(Show info about disk space and storage usage)*
* `chrome://settings/content/all` *(List the number of cookies each site has set)*
* `chrome://sync-internals` *(Show info about the Chromium sync feature)*
* `chrome://translate-internals` *(View all supported internal languages)*
* `chrome://version` *(Show details of Chromium version)*

<details>
<summary><b>About browser plugins</b></summary>
<br>

Since version 57, the `chrome://plugins` page no longer exists ([official source](https://bugs.chromium.org/p/chromium/issues/detail?id=615738)).

Info:
* **Manage PDF viewer and Flash plugins:** `chrome://settings/content`
* **Update components (like Widevine):** `chrome://components`

</details>

### 2. Keyboard shortcuts

To use keyboard shortcuts (on Windows, Mac and Linux), check this full [list of official shortcuts](https://support.google.com/chrome/answer/157179)... and [this one](https://developer.chrome.com/docs/devtools/shortcuts/) if you are developer. Most of the shortcuts are similar to IE, Firefox or any other browser.

### 3. Command-line flags

There are command-line flags (or "switches") that **Chromium** accept in order to enable particular features or modify otherwise default functionality. Note flags often contain experimental or obsolete code, so they tend not to stick around for long.
* [Run Chromium with flags](https://www.chromium.org/developers/how-tos/run-chromium-with-flags)
* [List of Chromium command-line switches](https://peter.sh/experiments/chromium-command-line-switches/) *(Auto-updated list provided by Peter Beverloo)*

<details>
<summary><b>How to start Chromium directly in <a href="https://www.chromium.org/user-experience/incognito">incognito</a> (or private) mode, on Windows?</b></summary>
<br>

Add the `--incognito` flag at the end of the Chromium shortcut and restart the browser ([screenshot](https://i.imgur.com/EAnDuji.jpg)).

<pre><code>"C:\{...}\Chromium\Application\chrome.exe" --incognito</code></pre>

</details>

### 4. User data directory

About your profile (history, bookmarks...), it is important to know [where is stored your user data](https://chromium.googlesource.com/chromium/src/+/master/docs/user_data_dir.md).

<details>
<summary><b>How to change the user data directory?</b></summary>
<br>

Add the `--user-data-dir` flag at the end of the Chromium shortcut and restart the browser ([screenshot](https://i.imgur.com/EAnDuji.jpg)).

<pre><code>"C:\{...}\Chromium\Application\chrome.exe" --user-data-dir=..\my-profile-path</code></pre>

</details>

### 5. External extension installation

<details>
<summary><b>How to install an external browser add-on?</b></summary>
<br>

*If you wish to install extensions directly instead of just downloading the **.crx** source file, you must:*
1. Change the flag `chrome://flags/#extension-mime-request-handling` to **"Always prompt for install"**.
2. Click on the link of the **.crx** file you want to install.

Download the **.crx** source file of any extension directly from the Chrome Web Store via [Get CRX](https://chrome.google.com/webstore/detail/get-crx/dijpllakibenlejkbajahncialkbdkjc) or via a site like [Chrome Extension Downloader](https://chrome-extension-downloader.com/), [CRX Extractor](https://crxextractor.com/), or [Crx4Chrome](https://www.crx4chrome.com/). *(For info, you can see the source code before downloading the extension using [CRX Viewer](https://github.com/Rob--W/crxviewer))*

1. Go to `chrome://extensions`
2. Drag and drop the **.crx** file on `chrome://extensions`

**If it does not work...**
1. Add the `--enable-easy-off-store-extension-install` flag at the end of the Chromium shortcut and restart the browser ([screenshot](https://i.imgur.com/XwEtvnH.png)).
2. Go to `chrome://extensions`
3. Drag and drop the **.crx** file on `chrome://extensions`

**If it still does not work...**
1. Unzip the **.crx** file.
2. Go to `chrome://extensions`
3. Drag and drop the unzipped folder on the page... or click on **Developer mode** (Toggle in top right) then **Load unpacked extension...** ([screenshot](https://i.imgur.com/nNkj7Kx.png)).

**About updates:**
* You have to update manually.
* You can update when you want! ^^
* If ever a new version sucks, just re-install the previous one.

</details>

### 6. Source code

Before all, check the official [guide for developers](https://www.chromium.org/developers).

Official links to easily get or see the full **Chromium** source code:
* [Google Git chromium/src](https://chromium.googlesource.com/chromium/src/)
* [The official GitHub mirror of the Chromium source](https://github.com/chromium/chromium)
* [Chromium Code Search](https://source.chromium.org/) or [chromium/src](https://source.chromium.org/chromium/chromium/src) *(Old pages: [Code search](https://cs.chromium.org/) or [chromium/src/](https://cs.chromium.org/chromium/src/))*
* - [Source tarballs](https://storage.googleapis.com/chromium-browser-official/?marker=chromium-149) and its [mirror](https://gsdview.appspot.com/chromium-browser-official/?marker=chromium-149) *("-lite" is for building desktop Chromium)*.
  - Also, there is the official [Github mirror](https://github.com/chromium/chromium/releases).
* Chromium source code of the latest stable version: [chromium-149.0.7827.155.tar.xz](https://storage.googleapis.com/chromium-browser-official/chromium-149.0.7827.155.tar.xz) *([mirror](https://gsdview.appspot.com/chromium-browser-official/chromium-149.0.7827.155.tar.xz) • [File checksums](https://storage.googleapis.com/chromium-browser-official/chromium-149.0.7827.155.tar.xz.hashes))*
* ~~[ViewVC](https://src.chromium.org/viewvc/chrome/)~~ *(Obsolete since the version 39.0.2132.2, on August 2014)*

Interesting info:
* \[video\] [Building Chromium from source](https://www.youtube.com/watch?v=jeRKirsUq4k) *(by Aphrx • 2021 • [mirror](f/video-building-chromium-from-source-2021.mp4))*
* [Building ungoogled-chromium](https://github.com/Eloston/ungoogled-chromium/blob/master/docs/building.md) *(by Eloston • 2020)*
* [How to build chromium on Windows](https://github.com/intel/webml-polyfill/wiki/How-to-build-chromium-on-Windows) *(by Intel • 2019)*
* [How to build chromium on macOS](https://github.com/intel/webml-polyfill/wiki/How-to-build-chromium-on-macOS) *(by Intel • 2019)*
* [How to build chromium for Android](https://github.com/intel/webml-polyfill/wiki/How-to-build-chromium-for-Android) *(by Intel • 2019)*
* [How to build chromium for Linux](https://github.com/intel/webml-polyfill/wiki/How-to-build-chromium-on-Linux) *(by Intel • 2019)*
* [Building Chromium on Windows from source](https://sinclairinat0r.com/2019/04/29/building-chromium-on-windows-from-source) *(by Jeremy Sinclair • 2019 • Archive: [1](https://archive.is/YWO5h))*
* [How to compile Chromium with audio/video codecs for Windows](https://github.com/henrypp/chromium) *(by Nik • 2018 • Archive: [ZIP](f/chromium-master-by-nik.zip))*
* [How to build Chromium with proprietary codecs (OS X)](https://gitlab.com/noencoding/OS-X-Chromium-with-proprietary-codecs/-/wikis/home) *(by No encoding • 2018 • Archive: [1](https://archive.is/Gu4gf))*
* [Bash script to build and install latest stable Chromium from source on OS X](https://github.com/the-bobo/easychromium) *(by Bobo • 2017 • Archive: [ZIP](f/easychromium-master.zip))*
* [[UA] Компіляція браузера Chromium для Ubuntu (x265, HEVC)](https://lexxai.blogspot.com/2016/09/chromium-ubuntu-x265-hevc.html) *(by D.Bilous • 2016 • Archive: [1](https://archive.is/8v0JJ))*
* ~~[How to compile Chromium for Mac](https://archive.is/fOEFU)~~ *(by sbagmeijer • 2015 • Original site is down!)*
* ~~[Contributing to Chromium: an illustrated guide](https://meowni.ca/posts/chromium-101/)~~ *(2015 • Archives: [1](https://archive.is/dSoL5) or [PDF](f/PDF-contributing-to-chromium.pdf))*

### 7. Older version

Never update your browser with a very old version. It even does not start.

To downgrade Chromium installed with the **Installer** (.exe):
1. Open Chromium and check its actual version at `chrome://version`
2. Close Chromium.
3. Uninstall Chromium WITHOUT to delete your [#user-data-directory](#user-data-directory). It is an option of its uninstaller. *([screenshot](https://i.imgur.com/0ZTntYw.png))*
4. Get the **Installer** (.exe) of an older version *(from the [→ download/](https://chromium.woolyss.com/download/) page or [Snapshots repository](https://storage.googleapis.com/chromium-browser-snapshots/index.html) about "official" builds)*
5. Execute it to install Chromium.
6. Open Chromium and check the new installed version at `chrome://version`

### 8. Browser crash

You have encountered a browser crash or issue :/

Few ways to help you:
* To disable hardware acceleration: `chrome://flags/#disable-accelerated-video-decode` or `chrome://settings` → [Advanced] → System
* To disable/enable a browser feature: `chrome://flags`
* To check for conflicting software: `chrome://conflicts`
* To disable extensions/add-ons: `chrome://extensions`

Also you can use [#command-line-flags](#command-line-flags): `--disable-gpu`, `--disable-accelerated-video-decode`...

### 9. Browser benchmark

To test performances of the browser, do different benchmarks.  
Except as otherwise noted, for the result, **a higher number is better**.

Free websites without registration:
* [ARES-6](https://browserbench.org/ARES-6/) *(Various tests using the newest web standards and features)*
* [Basemark](https://web.basemark.com/) *(Various tests using the newest web standards and features)*
* [JetStream](https://browserbench.org/JetStream/) *(JavaScript benchmark developed by Apple)*
* [Kraken](https://mozilla.github.io/krakenbenchmark.mozilla.org/) *(JavaScript benchmark developed by Mozilla • Result: **A lower number is better**)*
* [MotionMark](https://browserbench.org/MotionMark/) *(Graphics benchmark developed by the WebKit team)*
* [Octane](https://chromium.github.io/octane/) *(JavaScript benchmark developed by Google)*
* [Speedometer](https://browserbench.org/Speedometer/) *(Performance benchmark that repeats the same actions using DOM APIs)*
* [WebXPRT](https://www.principledtechnologies.com/benchmarkxprt/webxprt/) *(HTML5 and JavaScript test developed by benchmark maker Principled Technologies)*
