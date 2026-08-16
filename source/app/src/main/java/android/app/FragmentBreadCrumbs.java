package android.app;

import android.app.FragmentManager;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentBreadCrumbs.class
 */
@Deprecated
public class FragmentBreadCrumbs extends ViewGroup implements FragmentManager.OnBackStackChangedListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentBreadCrumbs$OnBreadCrumbClickListener.class
 */
    public interface OnBreadCrumbClickListener {
        boolean onBreadCrumbClick(FragmentManager.BackStackEntry backStackEntry, int i10);
    }

    public FragmentBreadCrumbs(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setActivity(Activity a10) {
        throw new RuntimeException("Stub!");
    }

    public void setMaxVisible(int visibleCrumbs) {
        throw new RuntimeException("Stub!");
    }

    public void setParentTitle(CharSequence title, CharSequence shortTitle, View.OnClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnBreadCrumbClickListener(OnBreadCrumbClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setTitle(CharSequence title, CharSequence shortTitle) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBackStackChanged() {
        throw new RuntimeException("Stub!");
    }
}
