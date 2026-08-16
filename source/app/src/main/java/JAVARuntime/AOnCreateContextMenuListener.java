package JAVARuntime;

import android.view.ContextMenu;
import android.view.View;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AOnCreateContextMenuListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AOnCreateContextMenuListener.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public abstract class AOnCreateContextMenuListener implements View.OnCreateContextMenuListener {

    public class AnonymousClass1 implements InterfaceC14490d {
        final ContextMenu val$menu;
        final ContextMenu.ContextMenuInfo val$menuInfo;
        final View val$v;

        public AnonymousClass1(final ContextMenu val$menu, final View val$v, final ContextMenu.ContextMenuInfo val$menuInfo) {
            this.val$menu = val$menu;
            this.val$v = val$v;
            this.val$menuInfo = val$menuInfo;
        }

        @Override
        public void run() {
            AOnCreateContextMenuListener.this.onCreateContextMenuEvent(this.val$menu, this.val$v, this.val$menuInfo);
        }
    }

    public abstract void onCreateContextMenuEvent(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo);

    @Override
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
    }
}
