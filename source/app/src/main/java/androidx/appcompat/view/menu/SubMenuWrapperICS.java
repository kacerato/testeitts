package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.internal.view.SupportSubMenu;

public class SubMenuWrapperICS extends MenuWrapperICS implements SubMenu {
    private final SupportSubMenu mSubMenu;

    public SubMenuWrapperICS(Context context, SupportSubMenu supportSubMenu) {
        super(context, supportSubMenu);
        this.mSubMenu = supportSubMenu;
    }

    @Override
    public void clearHeader() {
        this.mSubMenu.clearHeader();
    }

    @Override
    public MenuItem getItem() {
        return getMenuItemWrapper(this.mSubMenu.getItem());
    }

    @Override
    public SubMenu setHeaderIcon(int i10) {
        this.mSubMenu.setHeaderIcon(i10);
        return this;
    }

    @Override
    public SubMenu setHeaderTitle(int i10) {
        this.mSubMenu.setHeaderTitle(i10);
        return this;
    }

    @Override
    public SubMenu setHeaderView(View view) {
        this.mSubMenu.setHeaderView(view);
        return this;
    }

    @Override
    public SubMenu setIcon(int i10) {
        this.mSubMenu.setIcon(i10);
        return this;
    }

    @Override
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.mSubMenu.setHeaderIcon(drawable);
        return this;
    }

    @Override
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.mSubMenu.setHeaderTitle(charSequence);
        return this;
    }

    @Override
    public SubMenu setIcon(Drawable drawable) {
        this.mSubMenu.setIcon(drawable);
        return this;
    }
}
