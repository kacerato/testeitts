package JAVARuntime;

import android.view.DragEvent;
import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnDragListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnDragListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnDragListener implements View.OnDragListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final DragEvent val$event;
        final boolean[] val$r;
        final View val$v;

        public AnonymousClass1(final boolean[] val$r, final View val$v, final DragEvent val$event) {
            this.val$r = val$r;
            this.val$v = val$v;
            this.val$event = val$event;
        }

        @Override
        public void run() {
            this.val$r[0] = AOnDragListener.this.onDragEvent(this.val$v, this.val$event);
        }
    }

    public abstract boolean onDragEvent(View view, DragEvent dragEvent);

    @Override
    public final boolean onDrag(View view, DragEvent dragEvent) {
        return new boolean[1][0];
    }
}
