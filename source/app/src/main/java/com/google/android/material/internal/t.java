package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;

@RestrictTo({RestrictTo.Scope.LIBRARY})
public class t {
    @Nullable
    public static ActionMenuItemView a(@NonNull Toolbar toolbar, @IdRes int i10) {
        ActionMenuView b10 = b(toolbar);
        if (b10 == null) {
            return null;
        }
        for (int i11 = 0; i11 < b10.getChildCount(); i11++) {
            View childAt = b10.getChildAt(i11);
            if (childAt instanceof ActionMenuItemView) {
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt;
                if (actionMenuItemView.getItemData().getItemId() == i10) {
                    return actionMenuItemView;
                }
            }
        }
        return null;
    }

    @Nullable
    public static ActionMenuView b(@NonNull Toolbar toolbar) {
        for (int i10 = 0; i10 < toolbar.getChildCount(); i10++) {
            View childAt = toolbar.getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    @Nullable
    public static ImageButton c(@NonNull Toolbar toolbar) {
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon == null) {
            return null;
        }
        for (int i10 = 0; i10 < toolbar.getChildCount(); i10++) {
            View childAt = toolbar.getChildAt(i10);
            if (childAt instanceof ImageButton) {
                ImageButton imageButton = (ImageButton) childAt;
                if (imageButton.getDrawable() == navigationIcon) {
                    return imageButton;
                }
            }
        }
        return null;
    }

    @Nullable
    public static View d(@NonNull Toolbar toolbar) {
        ActionMenuView b10 = b(toolbar);
        if (b10 == null || b10.getChildCount() <= 1) {
            return null;
        }
        return b10.getChildAt(0);
    }

    @Nullable
    public static TextView e(@NonNull Toolbar toolbar) {
        return f(toolbar, toolbar.getSubtitle());
    }

    @Nullable
    public static TextView f(@NonNull Toolbar toolbar, CharSequence charSequence) {
        for (int i10 = 0; i10 < toolbar.getChildCount(); i10++) {
            View childAt = toolbar.getChildAt(i10);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    return textView;
                }
            }
        }
        return null;
    }

    @Nullable
    public static TextView g(@NonNull Toolbar toolbar) {
        return f(toolbar, toolbar.getTitle());
    }
}
