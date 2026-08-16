package JAVARuntime;

import android.view.MotionEvent;
import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnTouchListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnTouchListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnTouchListener implements View.OnTouchListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final MotionEvent val$event;
        final boolean[] val$r;
        final View val$v;

        public AnonymousClass1(final boolean[] val$r, final View val$v, final MotionEvent val$event) {
            this.val$r = val$r;
            this.val$v = val$v;
            this.val$event = val$event;
        }

        @Override
        public void run() {
            this.val$r[0] = AOnTouchListener.this.onTouchEvent(this.val$v, this.val$event);
        }
    }

    public abstract boolean onTouchEvent(View view, MotionEvent motionEvent);

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return new boolean[1][0];
    }
}
