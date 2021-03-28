(import gi)
(gi.require_version "Gtk" "3.0")
(import [gi.repository [Gtk]])

(defclass PruebaWindow [Gtk.Window]
    (setv counter 0)
    (defn pluscounter [self button]
        (setv self.counter (+ self.counter 1))
        (.set_label button (+ "Se ha clickeado " (str self.counter) " veces")))
    )


(defn printealgo[window x] (print x))

(setv window (PruebaWindow))
(setv label (Gtk.Label))
(setv button (Gtk.Button))
(.add window button)
(.set_visible button True)
(.set_label label "aaaaaa")
(.set_label button "Clickea bro")
(.set_title window "Hy GTK Test")

(.resize window 600 400)


(.show window)
(.connect window "destroy" Gtk.main_quit)
(.connect button "clicked" window.pluscounter)
(Gtk.main)
