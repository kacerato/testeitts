package JAVARuntime;

import android.view.View;
import android.widget.AdapterView;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnItemClickListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnItemClickListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnItemClickListener implements AdapterView.OnItemClickListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final long val$id;
        final AdapterView val$parent;
        final int val$position;
        final View val$view;

        public AnonymousClass1(final AdapterView val$parent, final View val$view, final int val$position, final long val$id) {
            this.val$parent = val$parent;
            this.val$view = val$view;
            this.val$position = val$position;
            this.val$id = val$id;
        }

        @Override
        public void run() {
            AOnItemClickListener.this.onItemClickEvent(this.val$parent, this.val$view, this.val$position, this.val$id);
        }
    }

    public abstract void onItemClickEvent(AdapterView<?> adapterView, View view, int i10, long j10);

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
    }
}
