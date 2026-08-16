package android.view;

import android.graphics.drawable.Drawable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ContextMenu.class
 */
public interface ContextMenu extends Menu {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ContextMenu$ContextMenuInfo.class
 */
    public interface ContextMenuInfo {
    }

    ContextMenu setHeaderTitle(int i10);

    ContextMenu setHeaderTitle(CharSequence charSequence);

    ContextMenu setHeaderIcon(int i10);

    ContextMenu setHeaderIcon(Drawable drawable);

    ContextMenu setHeaderView(View view);

    void clearHeader();
}
