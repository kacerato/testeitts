package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ViewSwitcher.class
 */
public class ViewSwitcher extends ViewAnimator {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ViewSwitcher$ViewFactory.class
 */
    public interface ViewFactory {
        View makeView();
    }

    public ViewSwitcher(Context context) {
        super((Context) null, (AttributeSet) null);
        throw new RuntimeException("Stub!");
    }

    public ViewSwitcher(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public View getNextView() {
        throw new RuntimeException("Stub!");
    }

    public void setFactory(ViewFactory factory) {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }
}
