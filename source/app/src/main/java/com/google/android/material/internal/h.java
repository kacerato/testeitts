package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class h extends MenuBuilder {
    public h(Context context) {
        super(context);
    }

    @Override
    @NonNull
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) addInternal(i10, i11, i12, charSequence);
        j jVar = new j(getContext(), this, menuItemImpl);
        menuItemImpl.setSubMenu(jVar);
        return jVar;
    }
}
