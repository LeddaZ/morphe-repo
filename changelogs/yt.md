# Morphe YT changelog

## 2026-02-18
**UI & Layout Improvements**
- Several new "Hide" options added for layout components: community posts, hype points, featured content, subscribe/join buttons, cell dividers, featured links/videos, and a new type of crowdfunding box
- Fixed "Hide Subscribe button" on channel pages not working

**Shorts**
- New hide options: auto-dubbed label and live preview

**Player & Audio**
- New **"Pause on audio interrupt"** patch added
- "Hide Listen with YouTube Music" option added to the player flyout menu
- Audio menu can now be hidden with the "Android No SDK" client type

**Video Streaming / Spoofing**
- New experimental **"Android No SDK"** client type added
- Removed the spoof stream audio selector (no longer functional)
- "Force original audio" now falls back to visionOS if Android VR is unavailable

**Bug Fixes**
- Fixed DNS check giving a false positive warning when the internet connection drops mid-check
- Fixed a settings search crash triggered by specific words

**Other**
- Header logo switched to SVG format
- Additional languages added to the ReVanced language preference
- New debugging setting to block experimental client flags
- Sharing links now handle non-hierarchical URLs

## 2025-10-19
- Update to 20.14.43
- **Spoof video streams**: Do not use Android Creator for livestreams
- **Spoof video streams**: Show Android Studio in spoof stream menu
- **Hide video action buttons**: Add "Hide Shop button" setting
- **Hide video action buttons**: Add "Hide comments" button
- **Hide Shorts components**: Fix "Hide preview comment"
- **Return YouTube Dislike**: Do not show error toast if API returns 401 status
- **Settings**: Use an overlay to show search results
- Add **Disable video codecs** patch
- **Hide layout components**: Add `Hide Emoji and Timestamp buttons` setting
- **Hide layout components**: Add `Hide view count` and `Hide upload time` settings
- **Loop video**: Add player button to change loop video state
- **Spoof app version**: Add spoof target `20.05.46` that fixes transcript functionality
- **Force original audio**: Change patch to default on
- **Force original audio**: Resolve some videos using Swedish audio track
- **Force original audio**: Do not use translated audio if stream spoofing is off and force audio is on
- **Hide end screen cards**: Hide new type of end screen card
- **Spoof video streams**: Add `Allow Android VR AV1` setting
- **Spoof video streams**: Resolve playback dropping frames
- Resolve UI components not hiding for some users
- **Custom branding**: Use ReVanced icon for status bar notification icon

## 2025-09-16
- **Hide layout components**: Add Hide in history option to filter bar
- **SponsorBlock**: Add "Undo automatic skip toast"
- **Hide layout components**: Do not hide playlist sort button if `Hide AI comments summary` is on
- **Playback speed**: Allow custom speeds with 0.01x precision
- **Slide to seek**: Show tap and hold 2x speed overlay when active
- **Change header**: Add in-app setting to change the app header
- **Hide layout components**: Add Hide channel links preview and Hide `Visit Community` button in channel page
- Add **Disable two-finger tap gesture for skipping chapters**
- **External downloads**: Improve the selection of the external downloader package
- Force original audio**: Disable a/b feature flag that forces localized audio
- **Video quality**: Use 1080p enhanced bitrate for Premium users
- **Playback speed**: Add "Restore old playback speed menu" option
- **Video quality**: Add player button to change video quality
- **Video quality**: Show FHD+ icon for 1080p 60fps enhanced bitrate
 - **Hide player flyout menu items**: Add option to hide quality flyout menu
- **Hide video action buttons**: Add "Hide Hype button" setting
- **Hide video action buttons**: Add "Hide Promote button" setting
- **Playback speed**: Show current playback speed on player speed dialog button
- Add **Disable sign in to TV popup** patch
- **SponsorBlock**: Add `Hook` segment category
- **Spoof video streams**: Add iPadOS client
- Many bugfixes

## 2025-06-28
### **New Features & Improvements**
- Added **new hiding options** for various UI elements (video action buttons, Shorts components, player overlays, ticket shelf, etc.)
- **Swipe controls** enhanced with customizable sensitivity, colors, and vertical progress bar option
- **Settings improvements**: Added search, color picker, icons, modern dialogs, scrollable content, and debug log sharing
- **Playback enhancements**: Fixed background playback restrictions, Shorts autoplay, and added disable haptic feedback
- **Spoofing & compatibility**: Better Android spoof handling, GmsCore troubleshooting, and support for **YouTube v20.12+**
- **Return YouTube Dislike (RYD)**: Fixed Shorts dislike updates and A/B layout support
- **Seekbar patches** merged and fixed for feed/Shorts
- **Theme options**: Added black/white splash screen animation

### **Bug Fixes**
- Fixed **Shorts components hiding** (action buttons, comment panel, sound/template buttons)
- Fixed **video description hiding** (music/game links, attributes)
- Fixed **player overlay** and related video hiding in fullscreen
- Fixed **auto-captions** hiding in newer versions
- Patched **new ad types** (product ads, general ads)
- Resolved **PiP button** issues after screen unlock

### **Removals & Deprecations**  
- Removed broken options (e.g., comments emoji picker)

## 2025-04-03
- Updated to 20.07.39
- **Spoof video streams**: Change default client to `Android TV`
- **Spoof video streams**: Resolve playback issues with dynamic player config
- **Return YouTube Dislike**: add `Show estimated likes setting`
- **Return YouTube Dislike**: Use correct number formatting if using a different ReVanced language
- **SponsorBlock**: Redesign skip buttons
- **SponsorBlock**: Add opacity setting to category segment colors 
- **Hide filter bar**: Fix `Hide in feed` not working in subscriptions feed
- **Hide layout components**: Do not hide `Show anyway` button in search results
- **Hide layout components**: Do not hide Movie/Courses start page content if `Hide horizontal shelves` is enabled
- **Hide player components**: Show correct end video thumbnail if `Hide end screen suggested video` is enabled
- **Hide video action buttons**: Move `Disable Like and Subscribe glow` to action buttons settings menu
- **Spoof app version**: Force old settings menus if spoofing to older app targets
- **Spoof app version**: Remove obsolete 18.x targets and broken targets that YouTube no longer supports
- **Spoof app version**: Change oldest spoof target to 19.01.34
- Fix player button fade out animations
- **Navigation buttons**: Add `Hide notifications` setting
- **Navigation buttons**: Add user dialog message to `Disable translucent status bar` 
- **Swipe controls**: Swipe controls UI improvements
- **Change form factor**: Restore `Automotive` form factor watch history menu, channel pages, and community
- **Hide ads**: Hide new type of buttoned ad
- **Theme**: Resolve dark mode startup crash with Android 9.0
- Change language settings menu to use native language names
- **Remember video quality**: Add separate Shorts default quality settings
- Combine **Restore old video quality menu** and **Remember video quality** into **Video quality patch**
- **Settings**: System navigation bar is located above the settings ui on Android 15+
- **Comments**: Add `Hide AI Comments summary`
- **Video description**: Add `Hide AI-generated video summary`

## 2025-02-09
- **Force original audio**: If stream spoofing to Android then show a summary text why force audio is not available
- **Spoof video streams**: Ignore harmless error toast if hide ads is disabled
- **Swipe controls**: Add option to enable/disable fullscreen swipe to next video
- **Hide Shorts components**: Add option to hide Shorts in watch history
- **Spoof app version**: Add `Restore old navigation and toolbar icons`
- Add **Change form factor** patch
- Add **Exit fullscreen mode** patch
- Add in app option to select a preferred language for ReVanced specific text
- **Spoof video streams**: Add `Android Creator`
- **Spoof video streams**: Resolve playback issues after changing from cellular to wifi
- **Spoof video streams**: Update client user-agent
- **Hide feed components**: Handle new type of surveys
- **Playback speed**: Add option to change 2x tap and hold speed
- **Settings**: Add option to use new Cairo settings menus
- **Hide ads**: fix `Hide the Visit store button on channel pages` not working
- **Hide ads**: Hide new types of tablet ads
- **Hide layout components**: Hide new kind of community post
- **Spoof video streams**: Update settings side effects summary text
- **Hide ads**: Add `Hide end screen store banner`
- **Hide video description components**: Add `Hide How this content was made` section
- **Theme**: Add option to use custom seekbar accent color
- Add patch **Disable HDR video**
- **Enable slide to seek**: Change patch to default include
- **Theme**: Use custom seekbar color for cairo startup animation
- **Change start page**: Add additional start pages

## 2024-12-26
- Updated to 19.47.53
- **Hide Shorts components**: Add missing options to patch
- **Playback speed**: Allow long press 2x speed when using custom playback speeds
- **Settings**: Do not clip settings menus when using an Android 15 device
- **Settings**: Show navigation back button in setting sub menus
- **Spoof video streams**: Update `Force AVC` client data
- **Spoof video streams**: Allow picking a default audio language track
- **Spoof video streams**: Fix error toast that is sometimes shown
- **Spoof video streams**: Resolve playback of age restricted videos
- **Spoof video streams**: Remove iOS, add clients Android TV and Android Creator
- **Spoof video streams**: Add iOS TV client
- **Spoof video streams**: Use 2 letter device language code
- **Spoof video streams**: Use Android VR authentication if using default audio language
- **Theme**: Apply custom seekbar color to splash screen animation
- **Theme**: Use dark theme color for status and navigation bar
- **Spoof app version**: Update spoof target to resolve library tab crashes
- Add **Open videos fullscreen** patch
- **Hide ads**: Hide new type of featured promotions
- **Comments**: Add `Hide 'Chat summary'`
- **Hide feed components**: Remove obsolete `Hide search result shelf header` option
- **Navigation buttons**: Add options to disable translucent status bar and navigation bar
- Add **Force original audio** patch
- Add **Open Shorts in regular player** patch
- **Hide layout components**: Hide new kind of community post
- **Hide layout components**: Don't hide Shorts channel bar when toggling for video player
- **Miniplayer**: Use estimated maximum on screen size for devices with low density screens
- **SponsorBlock**: Show create new segment error messages using a dialog
- **SponsorBlock**: Show a toast and not a dialog if segment submitted successfully
- Do not reset playback speed to 1.0x after closing comment thread (Fixes stock YouTube bug)

## 2024-11-24
- Updated to 19.45.38
- **Player controls**: Show player control buttons with A/B layout
- **Change header**: Apply header changes to A/B layout
- **Hide Shorts components**: Do not hide Shorts action buttons on app first launch
- **Playback speed**: Add `Auto` speed. Always override speed if default is set to 1.0x
- **SponsorBlock**: Fix create new segment crash on tablet custom roms
- **Spoof app version**: Adjust legacy spoof targets
- **Spoof app version**: Remove broken spoof targets when patching 19.25+
- **Miniplayer**: Add option to disable miniplayer 

## 2024-11-11
- Updated to 19.43.41
- **Copy video URL**: Support A/B player layout
- **Hide ads**: Hide new types of ads
- **Hide layout components**: Remove obsolete `Hide gray separator`
- **Hide layout components**: Hide player shopping shelf
- **Playback speed**: Restore old playback speed menu
- **Playback speed**: Remember playback speed with new speed menu
- **Remove background playback restrictions**: Enable for Shorts as well
- **Return YouTube Dislike**: Use latest separator height
- **Seekbar**: Use latest shade of YouTube red
- **Settings**: Use multiline preference title for localized languages
- **SponsorBlock**: Show correct segment behavior in settings UI after importing
- **Spoof app version**: Remove obsolete 17.33.42 spoof target
- Merge **Restore old seekbar thumbnails** into **Seekbar thumbnails**
- Merge multiple layout patches into **Hide Layout Components**
- Merge multiple player overlay patches into **Hide player overlay buttons**
- **Hide player flyout menu items**: Hide stable volume
- **Miniplayer**: Add horizontal drag gesture
- **Player flyout menu**: Hide sleep timer
- Add **Seekbar thumbnails** patch
- Add **Shorts autoplay** patch
- **Return YouTube Dislike**: Show Shorts dislikes with new A/B button icons
- **Remember video quality**: Correctly set default quality when changing from a low quality video
- **Playback speed**: Remember playback speed when using non 1.0x default speed

## 2024-10-23
- Updated to 19.34.42
- **GmsCore support**: Add more replacements
- **GmsCore support**: Remove unclear patch changes
- **Spoof video streams**: Fix playback for Android VR by removing invalid body as well
- **Hide layout components**: Add option to hide YouTube Doodles
- **Hide Shorts components**: Add option to hide Use template, Upcoming, Green screen buttons
- **Hide Shorts components**: Add option to hide like fountain
- **Hide Shorts components**: Hide Hashtag button
- **GmsCore support**: Improve performance by using hashsets

## 2024-10-08
- **Spoof video streams**: Change default client type to Android VR
- **SponsorBlock**: Fade out SB buttons without overlapping other buttons
- Show video chapter titles without clipping when overlay buttons are enabled
- **Disable precise seeking gesture**: Hide "pull up" label that shows up when swiping
- **Hide Shorts components**: Add Hide save music, Hide stickers
- **Hide Shorts components**: Add patch option to hide Shorts app shortcut (long press app icon)
- **Hide Shorts components**: Add patch option to hide Shorts from app launcher widget

## 2024-09-19
- **Return YouTube Dislike**: Show estimated like count for videos with hidden likes
- Fix issues related to playback by replacing streaming data
- **Hide Shorts components**: Hide `Use this sound` button
- **Keyword filter**: Add syntax to match whole keywords and not substrings
- **Spoof client**: Allow forcing AVC codec with iOS
- Add donation link to settings about screen

## 2024-08-23
- **Hide keyword content**: Do not hide flyout menu
- **SponsorBlock**: Correctly show minute timestamp when creating a new segment
- **SponsorBlock**: Improve create segment manual seek accuracy
- **Spoof client**: Restore missing high qualities by spoofing the iOS client user agent
- **Spoof client**: Restore livestream audio only playback with iOS spoofing
- **Description components**: Add Hide 'Key concepts' section option
- Add **Bypass image region restrictions** patch
- **GmsCore support**: Fix notifications not working by using the correct permissions
- Add **Check watch history domain name resolution** patch

## 2024-07-12
- **Client spoof**: Correctly play more livestreams using Android VR
- **Hide description components**: Replace **Hide game section** and **Hide music section** with **Hide attributes section**
- **Rename Minimized playback** to **Remove background playback restrictions**
- **Comments**: Add **Hide 'Create a Short' button**, **Hide Thanks button** and **Hide 'Comments by members' header** options
- **Miniplayer**: Rename **Tablet mini player** and allow selecting the style of the in-app miniplayer
- **Hide layout components**: Detect if a keyword filter hides all videos
- **Settings**: Move some settings to different menus, adjust default setting values
- **SponsorBlock**: Skip segments when casting

## 2024-06-02
- Updated to 19.16.39
- **Spoof client**: Spoof iOS client model to fix various side effects
- **Spoof client**: Allow swipe gestures to enter/exit fullscreen when spoofing with Android VR client
- **Spoof client**: Improve Android spoofing
- **Spoof client**: Restore playback speed menu when spoofing to an iOS client
- **Hide layout components**: Disable like / subscribe button glow animation
- **Playback speed**: Add option to show speed dialog button in video player

## 2024-05-21
- **Spoof client**: Spoof client to fix playback
- **Hide video action buttons**: Remove obsolete hide Shop button
- **Player flyout menu**: Remove obsolete Hide report menu
- **Restore old video quality menu**: Show advanced quality menu in Shorts quality flyout
- **SponsorBlock**: Show correct segment times if video is over 24 hours in length
- **Comments**: Add option to hide timestamp and emoji buttons
- **Hide ads**: Add option to hide the 'Visit store' button on channel pages
- **Hide Shorts components**: Hide 'Buy super thanks' button
- **Hide Shorts components**: Hide like / dislike button in video ads
- **Navigation buttons**: Add option to hide navigation button labels

## 2024-04-21
- Updated to 19.11.43
- Alternative thumbnails: Selectively enable for home / subscription / search
- GmsCore: Require ignoring battery optimizations
- GmsCore support: Prompt to disable battery optimizations, if not done already
- Hide ads: rename Hide paid content to Hide paid promotion label
- Hide load more button: Include patch with Hide layout components, and hide button only in search feed
- Hide Shorts components: Correctly hide Shorts if navigation tab is changed using device back button
- Player flyout menu: Add hide Lock screen menu
- Spoof device dimensions: Warn about potential performance issues
- Hide layout components: Add option to hide horizontal shelves
- Hide layout components: Hide playables
- Hide Shorts components: Hide Shop, Location and Save sound to playlist buttons
- Hide Shorts components: Hide tagged products, hide search suggestions
- Swipe controls: Save and restore brightness and add auto-brightness toggle
- Add 'About' preference to settings menu
- Match overlay icons style to YouTube

## 2024-03-28
- Updated to 19.09.37
- Client spoof: Spoof all user agents
- Hide ads: Prevent app crash if hiding fullscreen ads is not possible
- Fix video playback by switching to ReVanced GmsCore vendor
- Downloads: Use external downloader when selecting `Download` in home feed flyout menu
- Downloads: Add ability to use in-app download button
- Hide layout components: Filter home/search results by keywords
- Hide Shorts components: Hide like and dislike buttons
- Hide Shorts components: Hide sound metadata label
- Hide Shorts components: Hide title and full video link label
- Hide Shorts components: Selectively hide Shorts for home / subscription / search
- Remove HDR auto brightness patch

## 2024-03-04
- Spoof app version: Remove broken versions
- Spoof signature: Fix tracking such as history or watch time
- Change start page: Add more start pages
- Spoof app version: Add target versions
- Reorganize settings menu

## 2024-02-10
- Updated to 19.04.37
- Correctly show channel page on tablet devices

## 2024-01-30
- Updated to 19.03.35
- Minimized playback: Fix PIP incorrectly shown for some Shorts playback
- Return YouTube Dislike: Prevent the first Short opened from freezing the UI
- Alternative Thumbnails: Add option to use DeArrow
- Add Change start page patch
- Hide ads: Hide fullscreen ads
- Hide layout components: Hide search result recommendations
- Add Remove viewer discretion dialog patch (a07f83f)
- Remove Hide email address patch
- Clarify patch descriptions
- Enable slide to seek: Change patch default to excluded and add description disclaimer
- Change header: Change to ReVanced borderless logo header by default
- Other improvements to existing patches

## 2023-12-04
- Updated to 18.45.43

## 2023-11-25
- Updated to 18.45.41
- Hide layout components: Hide video quality menu footer
- Add Disable fullscreen ambient mode patch
- Add Disable suggested video end screen patch
- Add Enable old seekbar thumbnails patch
- SponsorBlock: Rename "Preview/Recap" category to "Preview/Recap/Hook"
- Rename Restore old seekbar thumbnails and Restore old quality menu
- Add Enable slide to seek patch
- Add Remove tracking query parameter patch
- ReturnYouTubeDislike: Improve layout padding
- Add Disable rolling number animations patch
- Hide ads: Hide shopping links in video description
- Hide layout components: Hide "For You" shelf in channel page

## 2023-10-27
- ReturnYouTubeDislike: Fix dislikes not showing on Shorts
- Hide layout components: Hide new channel watermark component
- Theme: Disable gradient loading screen
- Add Announcements patch
- Add Spoof device dimensions patch

## 2023-10-10
- Updated to 18.38.44
- Hide info cards: Fix info cards not hiding for some users
- Hide layout components: Always hide redundant 'player audio track' button
- Hide layout components: Hide "Join", "Notify me", search result shelf header and timed reactions
- Hide shorts components: Fix hiding navigation bar
- Restore functionality of Old video quality menu and Custom speeds on tablets
- Add Bypass URL redirects patch
- Add Disable fine scrubbing gesture patch
- Other improvements to existing patches

## 2023-09-07
- Updated to 18.32.39
- Allow setting no background color
- Apply custom seekbar color to shorts
- Add a switch to enable/disable custom seekbar color
- Add switch to hide chips shelf
- Add Player Flyout Menu patch
- Add switch to hide individual action buttons 
- Add Alternative thumbnails patch 
- Add Custom player overlay opacity patch 
- Add Enable tablet layout patch
- Restored original app name and icon

## 2023-07-18
- Updated to 18.23.35
- Remove non-functional custom video buffer patch
- Update app icon

## 2023-07-07
- Option to hide mix playlists
- Don't re-enable signature spoof automatically
- Enable predictive back gesture

## 2023-06-07
- Updated to 18.19.35
- Fix default video quality/speed being applied when resuming app
- Fix temporarily frozen video after opening a short
- Add tap and hold functionality to copy video URL buttons
- Add option to import/export ReVanced settings
- Add hide-load-more-button, hide-filter-bar and hide-shorts-components patches
- Use dynamic background color for custom splash screen
- Other fixes and improvements

## 2023-05-10
- Update to 18.16.37
- Disable debugging by default
- Fix hide action buttons not working for some users
- Remove hide-my-mix patch (broken)
- Disable minimized playback for shorts
- Add hide-player-overlay and navigation-button patches
- Fix background play of kids videos
- Other fixes and improvements

## 2023-04-22
- Update to 18.08.37
- Allow to not remember playback speed
- Automatic signature spoofing to prevent playback issues
- Change 'Hide create, clip and thanks buttons' to default off
- Fix 'Hide share button'
- Hide more types of ads
- Disable preferences and add dialog messages to preferences
- Change default video speed and quality inside the settings menu
- Various fixes and improvements to Sponsorblock and other patches

## 2023-03-18
### Patches v2.163.0
- `disable-fullscreen-panels-auto-popup`: use proper descriptions
- `general-ads`: fix switch description wording
- `hide-time`: use correct integrations class
- `hide-watch-in-vr`: fix descriptions
- `open-links-directly`: reference correct integrations method
- `general-ads`: hide channel bar
- `general-ads`: hide horizontal video shelf
- `open-links-directly`: skip every redirect url
### Patches v2.164.0
- `general-ads`: hide quick actions in fullscreen
- `general-ads`: hide related videos in quick action
- `return-youtube-dislike`: support for shorts
- Remove patch `open-links-directly`
### Patches v2.165.0
- `spoof-signature-verification` patch
### Patches v2.165.1
- `spoof-signature-verification`: use correct fingerprint
### Patches v2.166.0
- `general-ads`: remove duplicate preference
- `return-youtube-dislike`: add missing strings
- `custom-video-buffer`: replace patch with removal notice
- `disable-player-popup-panels`: use better patch description
- `general-ads`: do not hide components in library tab
- `general-ads`: hide image shelf from search results
- `hide-autoplay-button`: do not disable autoplay button when hidden
- `hide-floating-microphone-button`
- Bump compatibility to 18.05.40

## 2023-02-15
- `custom-branding`: correct scaling, margin and images
- `hide-player-buttons` patch
- `general-ads`: hide pill to view products
- `minimized-playback`: disable when playing shorts
- `general-ads`: use better description for switch
- `general-ads`: hide web search results

## 2023-01-30
- `return-youtube-dislike`: do not fetch voting stats when watching shorts
- `sponsorblock`: replace missing strings
- `general-ads`: remove hiding video shelf
- `open-links-externally` patch
- Show toasts along exceptions

## 2023-01-19
- Disabled predictive back gesture
- Added `hide-breaking-news-shelf`, `copy-video-url`, `remember-playback-rate` and `spoof-app-version` patches
- Improvements to existing patches

## 2022-12-24
- Updated base to 17.49.37
- Improvements to existing patches

## 2022-12-11
- Enabled predictive back gesture on Android 13
- Fixed swipe down to refresh
- Improvements to existing patches
- Re-enabled `theme` patch

## 2022-11-30
- Updated base to 17.45.36
- Added `open-links-directly` and `remove-player-button-background` patch
- Improvements to existing patches

## 2022-11-03
- Updated base to 17.43.36
- Added `hide-watch-in-vr` patch
- Updated Return YouTube Dislike to support new UI
- Hide Shorts comments button when hide comments is enabled

## 2022-10-28
- Updated base to 17.41.37
- Added the following patches: `hide-crowdfunding-box`, `hide-artist-card`, `hide-album-cards` and `comment`
- Re-added `hide-create-button`
- Changed default app name to ReVanced
- Use proper scaled icons
- Fixes and improvements to other patches

## 2022-10-21
- Added two new patches: `hide-my-mix` (removes mix playlists from the feed) and `hide-captions-button` (hides the captions button on video player)
- Temporarily excluded `hide-create-button` patch (conflicts with `hide-shorts-button` and makes the app crash)
- Various fixes and improvements to other patches

## 2022-10-06
- Added `disable-startup-shorts-player` and `hide-video-buttons` patches

## 2022-09-25
- Added `disable-auto-player-popup-panels` and `hide-time-and-seekbar` patches
- `custom-playback-speed`: max, min, granularity option
- Option to disable sponsorblock on shorts

## 2022-09-19
- Updated base to 17.36.37

## 2022-09-17
- Completely removed `amoled` from patches

## 2022-09-15
- Removed `amoled` patch since it's been deprecated by `theme`
- Added `disable-auto-captions` patch

## 2022-09-03
- Fixed download button color

## 2022-08-30
- Updated base to 17.33.42

## 2022-08-27
- Added `client-spoof` patch
