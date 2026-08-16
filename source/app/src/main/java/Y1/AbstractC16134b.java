package y1;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import z1.C16241a;

public abstract class AbstractC16134b extends c<View> {

    public final Rect f129907d;

    public final Rect f129908e;

    public int f129909f;

    public int f129910g;

    public AbstractC16134b() {
        this.f129907d = new Rect();
        this.f129908e = new Rect();
        this.f129909f = 0;
    }

    public static int p(int i10) {
        return i10 == 0 ? C16241a.f130539s : i10;
    }

    @Override
    public void e(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
        View j10 = j(coordinatorLayout.getDependencies(view));
        if (j10 == null) {
            super.e(coordinatorLayout, view, i10);
            this.f129909f = 0;
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.f129907d;
        rect.set(coordinatorLayout.getPaddingLeft() + layoutParams.leftMargin, j10.getBottom() + layoutParams.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - layoutParams.rightMargin, ((coordinatorLayout.getHeight() + j10.getBottom()) - coordinatorLayout.getPaddingBottom()) - layoutParams.bottomMargin);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f129908e;
        GravityCompat.apply(p(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
        int k10 = k(j10);
        view.layout(rect2.left, rect2.top - k10, rect2.right, rect2.bottom - k10);
        this.f129909f = rect2.top - j10.getBottom();
    }

    @Nullable
    public abstract View j(List<View> list);

    public final int k(View view) {
        if (this.f129910g == 0) {
            return 0;
        }
        float l10 = l(view);
        int i10 = this.f129910g;
        return MathUtils.clamp((int) (l10 * i10), 0, i10);
    }

    public float l(View view) {
        return 1.0f;
    }

    public final int m() {
        return this.f129910g;
    }

    public int n(@NonNull View view) {
        return view.getMeasuredHeight();
    }

    public final int o() {
        return this.f129909f;
    }

    @Override
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12, int i13) {
        View j10;
        WindowInsetsCompat lastWindowInsets;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (j10 = j(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (ViewCompat.getFitsSystemWindows(j10) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
        }
        int n10 = size + n(j10);
        int measuredHeight = j10.getMeasuredHeight();
        if (r()) {
            view.setTranslationY(-measuredHeight);
        } else {
            n10 -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i10, i11, View.MeasureSpec.makeMeasureSpec(n10, i14 == -1 ? 1073741824 : Integer.MIN_VALUE), i13);
        return true;
    }

    public final void q(int i10) {
        this.f129910g = i10;
    }

    public boolean r() {
        return false;
    }

    public AbstractC16134b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f129907d = new Rect();
        this.f129908e = new Rect();
        this.f129909f = 0;
    }
}
