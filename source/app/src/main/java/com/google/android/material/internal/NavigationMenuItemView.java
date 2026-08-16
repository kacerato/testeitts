package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuItemView extends f implements MenuView.ItemView {

    public static final int[] f64586r = {R.attr.state_checked};

    public int f64587h;

    public boolean f64588i;

    public boolean f64589j;

    public final CheckedTextView f64590k;

    public FrameLayout f64591l;

    public MenuItemImpl f64592m;

    public ColorStateList f64593n;

    public boolean f64594o;

    public Drawable f64595p;

    public final AccessibilityDelegateCompat f64596q;

    public class a extends AccessibilityDelegateCompat {
        public a() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f64589j);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f64591l == null) {
                this.f64591l = (FrameLayout) ((ViewStub) findViewById(C15879a.h.f123759j1)).inflate();
            }
            this.f64591l.removeAllViews();
            this.f64591l.addView(view);
        }
    }

    public final void a() {
        if (d()) {
            this.f64590k.setVisibility(8);
            FrameLayout frameLayout = this.f64591l;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                layoutParams.width = -1;
                this.f64591l.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f64590k.setVisibility(0);
        FrameLayout frameLayout2 = this.f64591l;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            layoutParams2.width = -2;
            this.f64591l.setLayoutParams(layoutParams2);
        }
    }

    @Nullable
    public final StateListDrawable b() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f64586r, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    public void c() {
        FrameLayout frameLayout = this.f64591l;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f64590k.setCompoundDrawables(null, null, null, null);
    }

    public final boolean d() {
        return this.f64592m.getTitle() == null && this.f64592m.getIcon() == null && this.f64592m.getActionView() != null;
    }

    @Override
    public MenuItemImpl getItemData() {
        return this.f64592m;
    }

    @Override
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i10) {
        this.f64592m = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, b());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        a();
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.f64592m;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f64592m.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f64586r);
        }
        return onCreateDrawableState;
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override
    public void setCheckable(boolean z10) {
        refreshDrawableState();
        if (this.f64589j != z10) {
            this.f64589j = z10;
            this.f64596q.sendAccessibilityEvent(this.f64590k, 2048);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        refreshDrawableState();
        this.f64590k.setChecked(z10);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, 0, i10, 0);
    }

    @Override
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f64594o) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.f64593n);
            }
            int i10 = this.f64587h;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.f64588i) {
            if (this.f64595p == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), C15879a.g.f123468l1, getContext().getTheme());
                this.f64595p = drawable2;
                if (drawable2 != null) {
                    int i11 = this.f64587h;
                    drawable2.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.f64595p;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f64590k, drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.f64590k.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(@Dimension int i10) {
        this.f64587h = i10;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f64593n = colorStateList;
        this.f64594o = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f64592m;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.f64590k.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z10) {
        this.f64588i = z10;
    }

    @Override
    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearance(int i10) {
        TextViewCompat.setTextAppearance(this.f64590k, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f64590k.setTextColor(colorStateList);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        this.f64590k.setText(charSequence);
    }

    @Override
    public boolean showsIcon() {
        return true;
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a aVar = new a();
        this.f64596q = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(C15879a.k.f123948P, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C15879a.f.f123278n1));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C15879a.h.f123766k1);
        this.f64590k = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, aVar);
    }
}
