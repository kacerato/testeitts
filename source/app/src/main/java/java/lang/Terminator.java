package java.lang;

import jdk.internal.misc.Signal;

class Terminator {
    private static Signal.Handler handler = null;

    Terminator() {
    }

    public static void setup() {
        if (handler != null) {
            return;
        }
        Signal.Handler sh2 = new Signal.Handler() {
            public void handle(Signal sig) {
                Shutdown.exit(sig.getNumber() + 128);
            }
        };
        handler = sh2;
        try {
            Signal.handle(new Signal("HUP"), sh2);
        } catch (IllegalArgumentException e10) {
        }
        try {
            Signal.handle(new Signal("INT"), sh2);
        } catch (IllegalArgumentException e11) {
        }
        try {
            Signal.handle(new Signal("TERM"), sh2);
        } catch (IllegalArgumentException e12) {
        }
    }

    static void teardown() {
    }
}
