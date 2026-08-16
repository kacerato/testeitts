package JAVARuntime;

import android.view.KeyEvent;
import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnKeyListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnKeyListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnKeyListener implements View.OnKeyListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final KeyEvent val$event;
        final int val$keyCode;
        final boolean[] val$r;
        final View val$v;

        public AnonymousClass1(final boolean[] val$r, final View val$v, final int val$keyCode, final KeyEvent val$event) {
            this.val$r = val$r;
            this.val$v = val$v;
            this.val$keyCode = val$keyCode;
            this.val$event = val$event;
        }

        @Override
        public void run() {
            this.val$r[0] = AOnKeyListener.this.onKeyEvent(this.val$v, this.val$keyCode, this.val$event);
        }
    }

    public abstract boolean onKeyEvent(View view, int i10, KeyEvent keyEvent);

    @Override
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        return new boolean[1][0];
    }
}
