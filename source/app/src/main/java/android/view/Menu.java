package android.view;

import android.content.ComponentName;
import android.content.Intent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Menu.class
 */
public interface Menu {
    public static final int CATEGORY_ALTERNATIVE = 262144;
    public static final int CATEGORY_CONTAINER = 65536;
    public static final int CATEGORY_SECONDARY = 196608;
    public static final int CATEGORY_SYSTEM = 131072;
    public static final int FIRST = 1;
    public static final int FLAG_ALWAYS_PERFORM_CLOSE = 2;
    public static final int FLAG_APPEND_TO_GROUP = 1;
    public static final int FLAG_PERFORM_NO_CLOSE = 1;
    public static final int NONE = 0;
    public static final int SUPPORTED_MODIFIERS_MASK = 69647;

    MenuItem add(CharSequence charSequence);

    MenuItem add(int i10);

    MenuItem add(int i10, int i11, int i12, CharSequence charSequence);

    MenuItem add(int i10, int i11, int i12, int i13);

    SubMenu addSubMenu(CharSequence charSequence);

    SubMenu addSubMenu(int i10);

    SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence);

    SubMenu addSubMenu(int i10, int i11, int i12, int i13);

    int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr);

    void removeItem(int i10);

    void removeGroup(int i10);

    void clear();

    void setGroupCheckable(int i10, boolean z10, boolean z11);

    void setGroupVisible(int i10, boolean z10);

    void setGroupEnabled(int i10, boolean z10);

    boolean hasVisibleItems();

    MenuItem findItem(int i10);

    int size();

    MenuItem getItem(int i10);

    void close();

    boolean performShortcut(int i10, KeyEvent keyEvent, int i11);

    boolean isShortcutKey(int i10, KeyEvent keyEvent);

    boolean performIdentifierAction(int i10, int i11);

    void setQwertyMode(boolean z10);
}
