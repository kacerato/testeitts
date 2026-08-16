package U1;

import T1.e;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import w1.C15879a;

public class c extends e {

    public static final int f25664p = 49;

    public static final int f25665q = 7;

    public static final int f25666r = 49;

    public final int f25667n;

    @Nullable
    public View f25668o;

    public class a implements A.e {
        public a() {
        }

        @Override
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull A.f fVar) {
            fVar.f64575b += windowInsetsCompat.getSystemWindowInsetTop();
            fVar.f64577d += windowInsetsCompat.getSystemWindowInsetBottom();
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            int i10 = fVar.f64574a;
            if (z10) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            fVar.f64574a = i10 + systemWindowInsetLeft;
            fVar.a(view);
            return windowInsetsCompat;
        }
    }

    public c(@NonNull Context context) {
        this(context, null);
    }

    private b getNavigationRailMenuView() {
        return (b) getMenuView();
    }

    private void m() {
        A.d(this, new a());
    }

    @Nullable
    public View getHeaderView() {
        return this.f25668o;
    }

    @Override
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public void k(@LayoutRes int i10) {
        l(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false));
    }

    public void l(@NonNull View view) {
        q();
        this.f25668o = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f25667n;
        addView(view, 0, layoutParams);
    }

    @Override
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public b d(@NonNull Context context) {
        return new b(context);
    }

    public final boolean o() {
        View view = this.f25668o;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        b navigationRailMenuView = getNavigationRailMenuView();
        int i14 = 0;
        if (o()) {
            int bottom = this.f25668o.getBottom() + this.f25667n;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i14 = bottom - top;
            }
        } else if (navigationRailMenuView.r()) {
            i14 = this.f25667n;
        }
        if (i14 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i14, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i14);
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int p10 = p(i10);
        super.onMeasure(p10, i11);
        if (o()) {
            measureChild(getNavigationRailMenuView(), p10, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f25668o.getMeasuredHeight()) - this.f25667n, Integer.MIN_VALUE));
        }
    }

    public final int p(int i10) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    public void q() {
        View view = this.f25668o;
        if (view != null) {
            removeView(view);
            this.f25668o = null;
        }
    }

    public void setMenuGravity(int i10) {
        getNavigationRailMenuView().setMenuGravity(i10);
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122436ib);
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, C15879a.n.f124553dc);
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f25667n = getResources().getDimensionPixelSize(C15879a.f.f123346v5);
        TintTypedArray k10 = s.k(getContext(), attributeSet, C15879a.o.lo, i10, i11, new int[0]);
        int resourceId = k10.getResourceId(C15879a.o.mo, 0);
        if (resourceId != 0) {
            k(resourceId);
        }
        setMenuGravity(k10.getInt(C15879a.o.no, 49));
        k10.recycle();
        m();
    }
}
