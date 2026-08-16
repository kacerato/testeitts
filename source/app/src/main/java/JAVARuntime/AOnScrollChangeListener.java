package JAVARuntime;

import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnScrollChangeListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnScrollChangeListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnScrollChangeListener implements View.OnScrollChangeListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final int val$oldScrollX;
        final int val$oldScrollY;
        final int val$scrollX;
        final int val$scrollY;
        final View val$v;

        public AnonymousClass1(final View val$v, final int val$scrollX, final int val$scrollY, final int val$oldScrollX, final int val$oldScrollY) {
            this.val$v = val$v;
            this.val$scrollX = val$scrollX;
            this.val$scrollY = val$scrollY;
            this.val$oldScrollX = val$oldScrollX;
            this.val$oldScrollY = val$oldScrollY;
        }

        @Override
        public void run() {
            AOnScrollChangeListener.this.onScrollChangeEvent(this.val$v, this.val$scrollX, this.val$scrollY, this.val$oldScrollX, this.val$oldScrollY);
        }
    }

    public abstract void onScrollChangeEvent(View view, int i10, int i11, int i12, int i13);

    @Override
    public final void onScrollChange(View view, int i10, int i11, int i12, int i13) {
    }
}
