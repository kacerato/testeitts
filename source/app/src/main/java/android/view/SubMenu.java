package android.view;

import android.graphics.drawable.Drawable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/SubMenu.class
 */
public interface SubMenu extends Menu {
    SubMenu setHeaderTitle(int i10);

    SubMenu setHeaderTitle(CharSequence charSequence);

    SubMenu setHeaderIcon(int i10);

    SubMenu setHeaderIcon(Drawable drawable);

    SubMenu setHeaderView(View view);

    void clearHeader();

    SubMenu setIcon(int i10);

    SubMenu setIcon(Drawable drawable);

    MenuItem getItem();
}
