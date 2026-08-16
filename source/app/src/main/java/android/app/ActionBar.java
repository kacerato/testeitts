package android.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActionBar.class
 */
public abstract class ActionBar {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_USE_LOGO = 1;

    @Deprecated
    public static final int NAVIGATION_MODE_LIST = 1;

    @Deprecated
    public static final int NAVIGATION_MODE_STANDARD = 0;

    @Deprecated
    public static final int NAVIGATION_MODE_TABS = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActionBar$OnMenuVisibilityListener.class
 */
    public interface OnMenuVisibilityListener {
        void onMenuVisibilityChanged(boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActionBar$OnNavigationListener.class
 */
    @Deprecated
    public interface OnNavigationListener {
        boolean onNavigationItemSelected(int i10, long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActionBar$TabListener.class
 */
    @Deprecated
    public interface TabListener {
        void onTabSelected(Tab tab, FragmentTransaction fragmentTransaction);

        void onTabUnselected(Tab tab, FragmentTransaction fragmentTransaction);

        void onTabReselected(Tab tab, FragmentTransaction fragmentTransaction);
    }

    public abstract void setCustomView(View view);

    public abstract void setCustomView(View view, LayoutParams layoutParams);

    public abstract void setCustomView(int i10);

    public abstract void setIcon(int i10);

    public abstract void setIcon(Drawable drawable);

    public abstract void setLogo(int i10);

    public abstract void setLogo(Drawable drawable);

    @Deprecated
    public abstract void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, OnNavigationListener onNavigationListener);

    @Deprecated
    public abstract void setSelectedNavigationItem(int i10);

    @Deprecated
    public abstract int getSelectedNavigationIndex();

    @Deprecated
    public abstract int getNavigationItemCount();

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setTitle(int i10);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setSubtitle(int i10);

    public abstract void setDisplayOptions(int i10);

    public abstract void setDisplayOptions(int i10, int i11);

    public abstract void setDisplayUseLogoEnabled(boolean z10);

    public abstract void setDisplayShowHomeEnabled(boolean z10);

    public abstract void setDisplayHomeAsUpEnabled(boolean z10);

    public abstract void setDisplayShowTitleEnabled(boolean z10);

    public abstract void setDisplayShowCustomEnabled(boolean z10);

    public abstract void setBackgroundDrawable(Drawable drawable);

    public abstract View getCustomView();

    public abstract CharSequence getTitle();

    public abstract CharSequence getSubtitle();

    @Deprecated
    public abstract int getNavigationMode();

    @Deprecated
    public abstract void setNavigationMode(int i10);

    public abstract int getDisplayOptions();

    @Deprecated
    public abstract Tab newTab();

    @Deprecated
    public abstract void addTab(Tab tab);

    @Deprecated
    public abstract void addTab(Tab tab, boolean z10);

    @Deprecated
    public abstract void addTab(Tab tab, int i10);

    @Deprecated
    public abstract void addTab(Tab tab, int i10, boolean z10);

    @Deprecated
    public abstract void removeTab(Tab tab);

    @Deprecated
    public abstract void removeTabAt(int i10);

    @Deprecated
    public abstract void removeAllTabs();

    @Deprecated
    public abstract void selectTab(Tab tab);

    @Deprecated
    public abstract Tab getSelectedTab();

    @Deprecated
    public abstract Tab getTabAt(int i10);

    @Deprecated
    public abstract int getTabCount();

    public abstract int getHeight();

    public abstract void show();

    public abstract void hide();

    public abstract boolean isShowing();

    public abstract void addOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener);

    public abstract void removeOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActionBar$Tab.class
 */
    @Deprecated
    public static abstract class Tab {
        public static final int INVALID_POSITION = -1;

        public abstract int getPosition();

        public abstract Drawable getIcon();

        public abstract CharSequence getText();

        public abstract Tab setIcon(Drawable drawable);

        public abstract Tab setIcon(int i10);

        public abstract Tab setText(CharSequence charSequence);

        public abstract Tab setText(int i10);

        public abstract Tab setCustomView(View view);

        public abstract Tab setCustomView(int i10);

        public abstract View getCustomView();

        public abstract Tab setTag(Object obj);

        public abstract Object getTag();

        public abstract Tab setTabListener(TabListener tabListener);

        public abstract void select();

        public abstract Tab setContentDescription(int i10);

        public abstract Tab setContentDescription(CharSequence charSequence);

        public abstract CharSequence getContentDescription();

        public Tab() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActionBar$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = 8388611, to = "START"), @ViewDebug.IntToString(from = 8388613, to = "END"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        public int gravity;

        public LayoutParams(Context c10, AttributeSet attrs) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height, int gravity) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int gravity) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }
    }

    public ActionBar() {
        throw new RuntimeException("Stub!");
    }

    public void setStackedBackgroundDrawable(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public void setSplitBackgroundDrawable(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public void setHomeButtonEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public Context getThemedContext() {
        throw new RuntimeException("Stub!");
    }

    public void setHomeAsUpIndicator(Drawable indicator) {
        throw new RuntimeException("Stub!");
    }

    public void setHomeAsUpIndicator(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setHomeActionContentDescription(CharSequence description) {
        throw new RuntimeException("Stub!");
    }

    public void setHomeActionContentDescription(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setHideOnContentScrollEnabled(boolean hideOnContentScroll) {
        throw new RuntimeException("Stub!");
    }

    public boolean isHideOnContentScrollEnabled() {
        throw new RuntimeException("Stub!");
    }

    public int getHideOffset() {
        throw new RuntimeException("Stub!");
    }

    public void setHideOffset(int offset) {
        throw new RuntimeException("Stub!");
    }

    public void setElevation(float elevation) {
        throw new RuntimeException("Stub!");
    }

    public float getElevation() {
        throw new RuntimeException("Stub!");
    }
}
