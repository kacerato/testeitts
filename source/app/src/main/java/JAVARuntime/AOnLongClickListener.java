package JAVARuntime;

import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnLongClickListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnLongClickListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnLongClickListener implements View.OnLongClickListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final boolean[] val$r;
        final View val$v;

        public AnonymousClass1(final boolean[] val$r, final View val$v) {
            this.val$r = val$r;
            this.val$v = val$v;
        }

        @Override
        public void run() {
            this.val$r[0] = AOnLongClickListener.this.onLongClickEvent(this.val$v);
        }
    }

    public abstract boolean onLongClickEvent(View view);

    @Override
    public final boolean onLongClick(View view) {
        return new boolean[1][0];
    }
}
