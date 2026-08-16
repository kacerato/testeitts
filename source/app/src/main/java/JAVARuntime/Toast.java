package JAVARuntime;

import N7.c;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Toast.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Toast.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public final class Toast {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;

    public class AnonymousClass1 implements java.lang.Runnable {
        final int val$length;
        final String val$text;

        public AnonymousClass1(final String val$text, final int val$length) {
            this.val$text = val$text;
            this.val$length = val$length;
        }

        @Override
        public void run() {
            android.widget.Toast.makeText(c.t(), this.val$text, this.val$length).show();
        }
    }

    private Toast() {
    }

    public static void showText(String str, int i10) {
    }
}
