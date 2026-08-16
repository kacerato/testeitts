package B1;

import T1.e;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import w1.C15879a;

public class c extends e {

    public static final int f1319n = 5;

    public class a implements A.e {
        public a() {
        }

        @Override
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull A.f fVar) {
            fVar.f64577d += windowInsetsCompat.getSystemWindowInsetBottom();
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            fVar.f64574a += z10 ? systemWindowInsetRight : systemWindowInsetLeft;
            int i10 = fVar.f64576c;
            if (!z10) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            fVar.f64576c = i10 + systemWindowInsetLeft;
            fVar.a(view);
            return windowInsetsCompat;
        }
    }

    @Deprecated
    public interface b extends e.c {
    }

    @Deprecated
    public interface InterfaceC0024c extends e.d {
    }

    public c(@NonNull Context context) {
        this(context, null);
    }

    @Override
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public T1.c d(@NonNull Context context) {
        return new B1.b(context);
    }

    @Override
    public int getMaxItemCount() {
        return 5;
    }

    public final void k(@NonNull Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, C15879a.e.f122830U));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C15879a.f.f123159Z0)));
        addView(view);
    }

    public final void l() {
        A.d(this, new a());
    }

    public boolean m() {
        return ((B1.b) getMenuView()).r();
    }

    public final int n(int i10) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumHeight <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumHeight + getPaddingTop() + getPaddingBottom()), 1073741824);
    }

    public final boolean o() {
        return false;
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, n(i11));
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        B1.b bVar = (B1.b) getMenuView();
        if (bVar.r() != z10) {
            bVar.setItemHorizontalTranslationEnabled(z10);
            getPresenter().updateMenuView(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(@Nullable b bVar) {
        setOnItemReselectedListener(bVar);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(@Nullable InterfaceC0024c interfaceC0024c) {
        setOnItemSelectedListener(interfaceC0024c);
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122076O0);
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, C15879a.n.f124789ua);
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Context context2 = getContext();
        TintTypedArray k10 = s.k(context2, attributeSet, C15879a.o.f125011G4, i10, i11, new int[0]);
        setItemHorizontalTranslationEnabled(k10.getBoolean(C15879a.o.f125059I4, true));
        int i12 = C15879a.o.f125035H4;
        if (k10.hasValue(i12)) {
            setMinimumHeight(k10.getDimensionPixelSize(i12, 0));
        }
        k10.recycle();
        if (o()) {
            k(context2);
        }
        l();
    }
}
