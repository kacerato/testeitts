package android.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ActionMenuView.class
 */
public class ActionMenuView extends LinearLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ActionMenuView$OnMenuItemClickListener.class
 */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ActionMenuView$LayoutParams.class
 */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams other) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(LayoutParams other) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }
    }

    public ActionMenuView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ActionMenuView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setPopupTheme(int resId) {
        throw new RuntimeException("Stub!");
    }

    public int getPopupTheme() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setOverflowIcon(Drawable icon) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getOverflowIcon() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
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
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    public Menu getMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean showOverflowMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean hideOverflowMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOverflowMenuShowing() {
        throw new RuntimeException("Stub!");
    }

    public void dismissPopupMenus() {
        throw new RuntimeException("Stub!");
    }
}
