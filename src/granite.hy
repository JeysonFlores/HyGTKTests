(import gi)
(gi.require_version "Gtk" "3.0")
(gi.require_version "Granite" "1.0")
(import [gi.repository [Gtk Granite]])

(setv accel_label (Granite.AccelLabel))
(.set_label accel_label "Label accelerada :D")


(setv window (Gtk.Window))

(.add window accel_label)

(.resize window 600 400)

(.show window)
(.connect window "destroy" Gtk.main_quit)

(Gtk.main)
