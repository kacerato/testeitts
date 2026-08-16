package android.widget;

import android.app.ActionBar;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Toolbar.class
 */
public class Toolbar extends ViewGroup {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Toolbar$OnMenuItemClickListener.class
 */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Toolbar$LayoutParams.class
 */
    public static class LayoutParams extends ActionBar.LayoutParams {
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

        public LayoutParams(ActionBar.LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }
    }

    public Toolbar(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Toolbar(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Toolbar(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Toolbar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setPopupTheme(int resId) {
        throw new RuntimeException("Stub!");
    }

    public int getPopupTheme() {
        throw new RuntimeException("Stub!");
    }

    public void setTitleMargin(int start, int top, int end, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public int getTitleMarginStart() {
        throw new RuntimeException("Stub!");
    }

    public void setTitleMarginStart(int margin) {
        throw new RuntimeException("Stub!");
    }

    public int getTitleMarginTop() {
        throw new RuntimeException("Stub!");
    }

    public void setTitleMarginTop(int margin) {
        throw new RuntimeException("Stub!");
    }

    public int getTitleMarginEnd() {
        throw new RuntimeException("Stub!");
    }

    public void setTitleMarginEnd(int margin) {
        throw new RuntimeException("Stub!");
    }

    public int getTitleMarginBottom() {
        throw new RuntimeException("Stub!");
    }

    public void setTitleMarginBottom(int margin) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    public void setLogo(int resId) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOverflowMenuShowing() {
        throw new RuntimeException("Stub!");
    }

    public boolean showOverflowMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean hideOverflowMenu() {
        throw new RuntimeException("Stub!");
    }

    public void dismissPopupMenus() {
        throw new RuntimeException("Stub!");
    }

    public void setLogo(Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getLogo() {
        throw new RuntimeException("Stub!");
    }

    public void setLogoDescription(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setLogoDescription(CharSequence description) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLogoDescription() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasExpandedActionView() {
        throw new RuntimeException("Stub!");
    }

    public void collapseActionView() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTitle() {
        throw new RuntimeException("Stub!");
    }

    public void setTitle(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setTitle(CharSequence title) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getSubtitle() {
        throw new RuntimeException("Stub!");
    }

    public void setSubtitle(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setSubtitle(CharSequence subtitle) {
        throw new RuntimeException("Stub!");
    }

    public void setTitleTextAppearance(Context context, int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setSubtitleTextAppearance(Context context, int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setTitleTextColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public void setSubtitleTextColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getNavigationContentDescription() {
        throw new RuntimeException("Stub!");
    }

    public void setNavigationContentDescription(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setNavigationContentDescription(CharSequence description) {
        throw new RuntimeException("Stub!");
    }

    public void setNavigationIcon(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setNavigationIcon(Drawable icon) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getNavigationIcon() {
        throw new RuntimeException("Stub!");
    }

    public void setNavigationOnClickListener(View.OnClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public Menu getMenu() {
        throw new RuntimeException("Stub!");
    }

    public void setOverflowIcon(Drawable icon) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getOverflowIcon() {
        throw new RuntimeException("Stub!");
    }

    public void inflateMenu(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setContentInsetsRelative(int contentInsetStart, int contentInsetEnd) {
        throw new RuntimeException("Stub!");
    }

    public int getContentInsetStart() {
        throw new RuntimeException("Stub!");
    }

    public int getContentInsetEnd() {
        throw new RuntimeException("Stub!");
    }

    public void setContentInsetsAbsolute(int contentInsetLeft, int contentInsetRight) {
        throw new RuntimeException("Stub!");
    }

    public int getContentInsetLeft() {
        throw new RuntimeException("Stub!");
    }

    public int getContentInsetRight() {
        throw new RuntimeException("Stub!");
    }

    public int getContentInsetStartWithNavigation() {
        throw new RuntimeException("Stub!");
    }

    public void setContentInsetStartWithNavigation(int insetStartWithNavigation) {
        throw new RuntimeException("Stub!");
    }

    public int getContentInsetEndWithActions() {
        throw new RuntimeException("Stub!");
    }

    public void setContentInsetEndWithActions(int insetEndWithActions) {
        throw new RuntimeException("Stub!");
    }

    public int getCurrentContentInsetStart() {
        throw new RuntimeException("Stub!");
    }

    public int getCurrentContentInsetEnd() {
        throw new RuntimeException("Stub!");
    }

    public int getCurrentContentInsetLeft() {
        throw new RuntimeException("Stub!");
    }

    public int getCurrentContentInsetRight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }
}
