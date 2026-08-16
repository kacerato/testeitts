package JAVARuntime;

import android.view.KeyEvent;
import android.widget.TextView;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnEditorActionListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnEditorActionListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnEditorActionListener implements TextView.OnEditorActionListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final int val$actionId;
        final KeyEvent val$event;
        final boolean[] val$r;
        final TextView val$v;

        public AnonymousClass1(final boolean[] val$r, final TextView val$v, final int val$actionId, final KeyEvent val$event) {
            this.val$r = val$r;
            this.val$v = val$v;
            this.val$actionId = val$actionId;
            this.val$event = val$event;
        }

        @Override
        public void run() {
            this.val$r[0] = AOnEditorActionListener.this.onEditorActionEvent(this.val$v, this.val$actionId, this.val$event);
        }
    }

    public abstract boolean onEditorActionEvent(TextView textView, int i10, KeyEvent keyEvent);

    @Override
    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        return new boolean[1][0];
    }
}
