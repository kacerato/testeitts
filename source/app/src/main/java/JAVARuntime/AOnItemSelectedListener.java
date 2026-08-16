package JAVARuntime;

import android.view.View;
import android.widget.AdapterView;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnItemSelectedListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnItemSelectedListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnItemSelectedListener implements AdapterView.OnItemSelectedListener {

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
            AOnItemSelectedListener.this.onItemSelectedEvent(this.val$parent, this.val$view, this.val$position, this.val$id);
        }
    }

    public class AnonymousClass2 implements InterfaceC14490d {
        final AdapterView val$parent;

        public AnonymousClass2(final AdapterView val$parent) {
            this.val$parent = val$parent;
        }

        @Override
        public void run() {
            AOnItemSelectedListener.this.onNothingSelectedEvent(this.val$parent);
        }
    }

    public abstract boolean onItemSelectedEvent(AdapterView<?> adapterView, View view, int i10, long j10);

    public abstract boolean onNothingSelectedEvent(AdapterView<?> adapterView);

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
