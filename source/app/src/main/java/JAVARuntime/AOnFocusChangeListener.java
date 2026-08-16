package JAVARuntime;

import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnFocusChangeListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnFocusChangeListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnFocusChangeListener implements View.OnFocusChangeListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final boolean val$hasFocus;
        final View val$v;

        public AnonymousClass1(final View val$v, final boolean val$hasFocus) {
            this.val$v = val$v;
            this.val$hasFocus = val$hasFocus;
        }

        @Override
        public void run() {
            AOnFocusChangeListener.this.onFocusChangeEvent(this.val$v, this.val$hasFocus);
        }
    }

    public abstract void onFocusChangeEvent(View view, boolean z10);

    @Override
    public final void onFocusChange(View view, boolean z10) {
    }
}
