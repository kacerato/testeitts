package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.internal.view.SupportMenu;

public class MenuWrapperICS extends BaseMenuWrapper implements Menu {
    private final SupportMenu mWrappedObject;

    public MenuWrapperICS(Context context, SupportMenu supportMenu) {
        super(context);
        if (supportMenu == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.mWrappedObject = supportMenu;
    }

    @Override
    public MenuItem add(CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(charSequence));
    }

    @Override
    public int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.mWrappedObject.addIntentOptions(i10, i11, i12, componentName, intentArr, intent, i13, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i14 = 0; i14 < length; i14++) {
                menuItemArr[i14] = getMenuItemWrapper(menuItemArr2[i14]);
            }
        }
        return addIntentOptions;
    }

    @Override
    public SubMenu addSubMenu(CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(charSequence));
    }

    @Override
    public void clear() {
        internalClear();
        this.mWrappedObject.clear();
    }

    @Override
    public void close() {
        this.mWrappedObject.close();
    }

    @Override
    public MenuItem findItem(int i10) {
        return getMenuItemWrapper(this.mWrappedObject.findItem(i10));
    }

    @Override
    public MenuItem getItem(int i10) {
        return getMenuItemWrapper(this.mWrappedObject.getItem(i10));
    }

    @Override
    public boolean hasVisibleItems() {
        return this.mWrappedObject.hasVisibleItems();
    }

    @Override
    public boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        return this.mWrappedObject.isShortcutKey(i10, keyEvent);
    }

    @Override
    public boolean performIdentifierAction(int i10, int i11) {
        return this.mWrappedObject.performIdentifierAction(i10, i11);
    }

    @Override
    public boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        return this.mWrappedObject.performShortcut(i10, keyEvent, i11);
    }

    @Override
    public void removeGroup(int i10) {
        internalRemoveGroup(i10);
        this.mWrappedObject.removeGroup(i10);
    }

    @Override
    public void removeItem(int i10) {
        internalRemoveItem(i10);
        this.mWrappedObject.removeItem(i10);
    }

    @Override
    public void setGroupCheckable(int i10, boolean z10, boolean z11) {
        this.mWrappedObject.setGroupCheckable(i10, z10, z11);
    }

    @Override
    public void setGroupEnabled(int i10, boolean z10) {
        this.mWrappedObject.setGroupEnabled(i10, z10);
    }

    @Override
    public void setGroupVisible(int i10, boolean z10) {
        this.mWrappedObject.setGroupVisible(i10, z10);
    }

    @Override
    public void setQwertyMode(boolean z10) {
        this.mWrappedObject.setQwertyMode(z10);
    }

    @Override
    public int size() {
        return this.mWrappedObject.size();
    }

    @Override
    public MenuItem add(int i10) {
        return getMenuItemWrapper(this.mWrappedObject.add(i10));
    }

    @Override
    public SubMenu addSubMenu(int i10) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i10));
    }

    @Override
    public MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(i10, i11, i12, charSequence));
    }

    @Override
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i10, i11, i12, charSequence));
    }

    @Override
    public MenuItem add(int i10, int i11, int i12, int i13) {
        return getMenuItemWrapper(this.mWrappedObject.add(i10, i11, i12, i13));
    }

    @Override
    public SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i10, i11, i12, i13));
    }
}
