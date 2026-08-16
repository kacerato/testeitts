package JAVARuntime;

import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnClickListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnClickListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnClickListener implements View.OnClickListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final View val$v;

        public AnonymousClass1(final View val$v) {
            this.val$v = val$v;
        }

        @Override
        public void run() {
            AOnClickListener.this.onClickEvent(this.val$v);
        }
    }

    public abstract void onClickEvent(View view);

    @Override
    public final void onClick(View view) {
    }
}
