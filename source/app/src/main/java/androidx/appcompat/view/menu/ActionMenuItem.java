package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;

public class ActionMenuItem implements SupportMenuItem {
    private static final int CHECKABLE = 1;
    private static final int CHECKED = 2;
    private static final int ENABLED = 16;
    private static final int EXCLUSIVE = 4;
    private static final int HIDDEN = 8;
    private MenuItem.OnMenuItemClickListener mClickListener;
    private CharSequence mContentDescription;
    private Context mContext;
    private final int mGroup;
    private Drawable mIconDrawable;
    private final int mId;
    private Intent mIntent;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private char mShortcutNumericChar;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;
    private CharSequence mTooltipText;
    private int mShortcutNumericModifiers = 4096;
    private int mShortcutAlphabeticModifiers = 4096;
    private ColorStateList mIconTintList = null;
    private PorterDuff.Mode mIconTintMode = null;
    private boolean mHasIconTint = false;
    private boolean mHasIconTintMode = false;
    private int mFlags = 16;

    public ActionMenuItem(Context context, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        this.mContext = context;
        this.mId = i11;
        this.mGroup = i10;
        this.mOrdering = i13;
        this.mTitle = charSequence;
    }

    private void applyIconTint() {
        Drawable drawable = this.mIconDrawable;
        if (drawable != null) {
            if (this.mHasIconTint || this.mHasIconTintMode) {
                Drawable wrap = DrawableCompat.wrap(drawable);
                this.mIconDrawable = wrap;
                Drawable mutate = wrap.mutate();
                this.mIconDrawable = mutate;
                if (this.mHasIconTint) {
                    DrawableCompat.setTintList(mutate, this.mIconTintList);
                }
                if (this.mHasIconTintMode) {
                    DrawableCompat.setTintMode(this.mIconDrawable, this.mIconTintMode);
                }
            }
        }
    }

    @Override
    public boolean collapseActionView() {
        return false;
    }

    @Override
    public boolean expandActionView() {
        return false;
    }

    @Override
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override
    public View getActionView() {
        return null;
    }

    @Override
    public int getAlphabeticModifiers() {
        return this.mShortcutAlphabeticModifiers;
    }

    @Override
    public char getAlphabeticShortcut() {
        return this.mShortcutAlphabeticChar;
    }

    @Override
    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    @Override
    public int getGroupId() {
        return this.mGroup;
    }

    @Override
    public Drawable getIcon() {
        return this.mIconDrawable;
    }

    @Override
    public ColorStateList getIconTintList() {
        return this.mIconTintList;
    }

    @Override
    public PorterDuff.Mode getIconTintMode() {
        return this.mIconTintMode;
    }

    @Override
    public Intent getIntent() {
        return this.mIntent;
    }

    @Override
    public int getItemId() {
        return this.mId;
    }

    @Override
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override
    public int getNumericModifiers() {
        return this.mShortcutNumericModifiers;
    }

    @Override
    public char getNumericShortcut() {
        return this.mShortcutNumericChar;
    }

    @Override
    public int getOrder() {
        return this.mOrdering;
    }

    @Override
    public SubMenu getSubMenu() {
        return null;
    }

    @Override
    public androidx.core.view.ActionProvider getSupportActionProvider() {
        return null;
    }

    @Override
    public CharSequence getTitle() {
        return this.mTitle;
    }

    @Override
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.mTitleCondensed;
        return charSequence != null ? charSequence : this.mTitle;
    }

    @Override
    public CharSequence getTooltipText() {
        return this.mTooltipText;
    }

    @Override
    public boolean hasSubMenu() {
        return false;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.mClickListener;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        Intent intent = this.mIntent;
        if (intent == null) {
            return false;
        }
        this.mContext.startActivity(intent);
        return true;
    }

    @Override
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override
    public boolean isCheckable() {
        return (this.mFlags & 1) != 0;
    }

    @Override
    public boolean isChecked() {
        return (this.mFlags & 2) != 0;
    }

    @Override
    public boolean isEnabled() {
        return (this.mFlags & 16) != 0;
    }

    @Override
    public boolean isVisible() {
        return (this.mFlags & 8) == 0;
    }

    @Override
    public boolean requiresActionButton() {
        return true;
    }

    @Override
    public boolean requiresOverflow() {
        return false;
    }

    @Override
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10) {
        this.mShortcutAlphabeticChar = Character.toLowerCase(c10);
        return this;
    }

    @Override
    public MenuItem setCheckable(boolean z10) {
        this.mFlags = (z10 ? 1 : 0) | (this.mFlags & (-2));
        return this;
    }

    @Override
    public MenuItem setChecked(boolean z10) {
        this.mFlags = (z10 ? 2 : 0) | (this.mFlags & (-3));
        return this;
    }

    @Override
    public MenuItem setEnabled(boolean z10) {
        this.mFlags = (z10 ? 16 : 0) | (this.mFlags & (-17));
        return this;
    }

    public ActionMenuItem setExclusiveCheckable(boolean z10) {
        this.mFlags = (z10 ? 4 : 0) | (this.mFlags & (-5));
        return this;
    }

    @Override
    public MenuItem setIcon(Drawable drawable) {
        this.mIconDrawable = drawable;
        applyIconTint();
        return this;
    }

    @Override
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
        this.mHasIconTint = true;
        applyIconTint();
        return this;
    }

    @Override
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.mIconTintMode = mode;
        this.mHasIconTintMode = true;
        applyIconTint();
        return this;
    }

    @Override
    public MenuItem setIntent(Intent intent) {
        this.mIntent = intent;
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10) {
        this.mShortcutNumericChar = c10;
        return this;
    }

    @Override
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.mClickListener = onMenuItemClickListener;
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11) {
        this.mShortcutNumericChar = c10;
        this.mShortcutAlphabeticChar = Character.toLowerCase(c11);
        return this;
    }

    @Override
    public void setShowAsAction(int i10) {
    }

    @Override
    public SupportMenuItem setSupportActionProvider(androidx.core.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        return this;
    }

    @Override
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mTitleCondensed = charSequence;
        return this;
    }

    @Override
    public MenuItem setVisible(boolean z10) {
        this.mFlags = (this.mFlags & 8) | (z10 ? 0 : 8);
        return this;
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.mShortcutAlphabeticChar = Character.toLowerCase(c10);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.mContentDescription = charSequence;
        return this;
    }

    @Override
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.mShortcutNumericChar = c10;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override
    public SupportMenuItem setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override
    public MenuItem setTitle(int i10) {
        this.mTitle = this.mContext.getResources().getString(i10);
        return this;
    }

    @Override
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.mTooltipText = charSequence;
        return this;
    }

    @Override
    public SupportMenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MenuItem setIcon(int i10) {
        this.mIconDrawable = ContextCompat.getDrawable(this.mContext, i10);
        applyIconTint();
        return this;
    }

    @Override
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.mShortcutNumericChar = c10;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i10);
        this.mShortcutAlphabeticChar = Character.toLowerCase(c11);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i11);
        return this;
    }

    @Override
    public SupportMenuItem setActionView(int i10) {
        throw new UnsupportedOperationException();
    }
}
