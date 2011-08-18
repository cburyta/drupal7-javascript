
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

projects[username_check][type] = "module"
projects[username_check][subdir] = "contrib"
projects[username_check][version] = 1.x-dev

; Themes
; --------



; Libraries
; ---------
