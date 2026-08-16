package android.view;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/MenuItem.class
 */
public interface MenuItem {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/MenuItem$OnActionExpandListener.class
 */
    public interface OnActionExpandListener {
        boolean onMenuItemActionExpand(MenuItem menuItem);

        boolean onMenuItemActionCollapse(MenuItem menuItem);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/MenuItem$OnMenuItemClickListener.class
 */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    int getItemId();

    int getGroupId();

    int getOrder();

    MenuItem setTitle(CharSequence charSequence);

    MenuItem setTitle(int i10);

    CharSequence getTitle();

    MenuItem setTitleCondensed(CharSequence charSequence);

    CharSequence getTitleCondensed();

    MenuItem setIcon(Drawable drawable);

    MenuItem setIcon(int i10);

    Drawable getIcon();

    MenuItem setIntent(Intent intent);

    Intent getIntent();

    MenuItem setShortcut(char c10, char c11);

    MenuItem setNumericShortcut(char c10);

    char getNumericShortcut();

    MenuItem setAlphabeticShortcut(char c10);

    char getAlphabeticShortcut();

    MenuItem setCheckable(boolean z10);

    boolean isCheckable();

    MenuItem setChecked(boolean z10);

    boolean isChecked();

    MenuItem setVisible(boolean z10);

    boolean isVisible();

    MenuItem setEnabled(boolean z10);

    boolean isEnabled();

    boolean hasSubMenu();

    SubMenu getSubMenu();

    MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener);

    ContextMenu.ContextMenuInfo getMenuInfo();

    void setShowAsAction(int i10);

    MenuItem setShowAsActionFlags(int i10);

    MenuItem setActionView(View view);

    MenuItem setActionView(int i10);

    View getActionView();

    MenuItem setActionProvider(ActionProvider actionProvider);

    ActionProvider getActionProvider();

    boolean expandActionView();

    boolean collapseActionView();

    boolean isActionViewExpanded();

    MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener);

    default MenuItem setIconTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    default ColorStateList getIconTintList() {
        throw new RuntimeException("Stub!");
    }

    default MenuItem setIconTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    default PorterDuff.Mode getIconTintMode() {
        throw new RuntimeException("Stub!");
    }

    default MenuItem setShortcut(char numericChar, char alphaChar, int numericModifiers, int alphaModifiers) {
        throw new RuntimeException("Stub!");
    }

    default MenuItem setNumericShortcut(char numericChar, int numericModifiers) {
        throw new RuntimeException("Stub!");
    }

    default int getNumericModifiers() {
        throw new RuntimeException("Stub!");
    }

    default MenuItem setAlphabeticShortcut(char alphaChar, int alphaModifiers) {
        throw new RuntimeException("Stub!");
    }

    default int getAlphabeticModifiers() {
        throw new RuntimeException("Stub!");
    }

    default MenuItem setContentDescription(CharSequence contentDescription) {
        throw new RuntimeException("Stub!");
    }

    default CharSequence getContentDescription() {
        throw new RuntimeException("Stub!");
    }

    default MenuItem setTooltipText(CharSequence tooltipText) {
        throw new RuntimeException("Stub!");
    }

    default CharSequence getTooltipText() {
        throw new RuntimeException("Stub!");
    }
}
