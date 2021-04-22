(import gi)
(gi.require_version "Gtk" "3.0")
(gi.require_version "Granite" "1.0")
(gi.require_version "Handy" "0.0")

(import [gi.repository [Gtk Granite Handy]])

(Handy.init)

(setv titlebar (Handy.TitleBar))

(setv header (Gtk.HeaderBar))
(.set_title header "Handy demo")

(.add titlebar header)

(setv window (Gtk.Window))
(.set_titlebar window titlebar)

(.resize window 600 400)

(.show_all window)
(.connect window "destroy" Gtk.main_quit)

(Gtk.main)
