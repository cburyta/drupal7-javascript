
; ----------------------------------------------------------------------------------
; ----------------------------------------------------------------------------------
; This distro.make file is stored here for reference only. It can be stored anywhere
; ----------------------------------------------------------------------------------
; ----------------------------------------------------------------------------------



api = 2
core = "7.x"
projects[drupal][type] = "core"



; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[drupal][version] = 7.7



; Installation Profile
; --------------------
projects[d7jsdemo][type] = "profile"
projects[d7jsdemo][download][type] = "file"
projects[d7jsdemo][download][url] = "http://chris.local/drupal7-javascript/data/profiles/d7jsdemo.tgz"



; Modules
; --------
projects[calendar][version] = 3.0-alpha1
projects[calendar][type] = "module"
projects[calendar][subdir] = "contrib"

projects[date][version] = 2.0-alpha3
projects[date][type] = "module"
projects[date][subdir] = "contrib"

projects[devel][version] = 1.2
projects[devel][type] = "module"
projects[devel][subdir] = "contrib"

projects[fivestar][version] = 2.x-dev
projects[fivestar][type] = "module"
projects[fivestar][subdir] = "contrib"

projects[jquery_ui][version] = 1.x-dev
projects[jquery_ui][type] = "module"
projects[jquery_ui][subdir] = "contrib"



; Themes
; --------
projects[omega][version] = 3.0-rc4
projects[omega][type] = "theme"

projects[tao][version] = 3.0-beta3
projects[tao][type] = "theme"

projects[zen][version] = 3.1
projects[zen][type] = "theme"



; Libraries
; ---------

; download jquery UI files to the spot jquery_ui module will be looking for them
libraries[jquery_ui][download][type] = "file"
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
libraries[jquery_ui][sha1] = "3057df12b8b43ba62aa64ab4600ba3e17883fe77"
libraries[jquery_ui][destination] = "libraries/jquery.ui"
