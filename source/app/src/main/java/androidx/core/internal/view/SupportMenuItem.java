package androidx.core.internal.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.MenuItem;
import android.view.View;
import androidx.core.view.ActionProvider;

public interface SupportMenuItem extends MenuItem {
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    @Override
    boolean collapseActionView();

    @Override
    boolean expandActionView();

    @Override
    View getActionView();

    @Override
    int getAlphabeticModifiers();

    @Override
    CharSequence getContentDescription();

    @Override
    ColorStateList getIconTintList();

    @Override
    PorterDuff.Mode getIconTintMode();

    @Override
    int getNumericModifiers();

    ActionProvider getSupportActionProvider();

    @Override
    CharSequence getTooltipText();

    @Override
    boolean isActionViewExpanded();

    boolean requiresActionButton();

    boolean requiresOverflow();

    @Override
    MenuItem setActionView(int i10);

    @Override
    MenuItem setActionView(View view);

    @Override
    MenuItem setAlphabeticShortcut(char c10, int i10);

    @Override
    SupportMenuItem setContentDescription(CharSequence charSequence);

    @Override
    MenuItem setIconTintList(ColorStateList colorStateList);

    @Override
    MenuItem setIconTintMode(PorterDuff.Mode mode);

    @Override
    MenuItem setNumericShortcut(char c10, int i10);

    @Override
    MenuItem setShortcut(char c10, char c11, int i10, int i11);

    @Override
    void setShowAsAction(int i10);

    @Override
    MenuItem setShowAsActionFlags(int i10);

    SupportMenuItem setSupportActionProvider(ActionProvider actionProvider);

    @Override
    SupportMenuItem setTooltipText(CharSequence charSequence);
}
