package JAVARuntime;

import android.view.MotionEvent;
import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnHoverListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnHoverListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnHoverListener implements View.OnHoverListener {

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
            this.val$r[0] = AOnHoverListener.this.onHoverEvent(this.val$v, this.val$event);
        }
    }

    public abstract boolean onHoverEvent(View view, MotionEvent motionEvent);

    @Override
    public final boolean onHover(View view, MotionEvent motionEvent) {
        return new boolean[1][0];
    }
}
