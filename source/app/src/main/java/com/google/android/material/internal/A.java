package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class A {

    public static class a implements Runnable {

        public final View f64567b;

        public a(View view) {
            this.f64567b = view;
        }

        @Override
        public void run() {
            ((InputMethodManager) this.f64567b.getContext().getSystemService(Context.INPUT_METHOD_SERVICE)).showSoftInput(this.f64567b, 1);
        }
    }

    public static class b implements e {

        public final boolean f64568a;

        public final boolean f64569b;

        public final boolean f64570c;

        public final e f64571d;

        public b(boolean z10, boolean z11, boolean z12, e eVar) {
            this.f64568a = z10;
            this.f64569b = z11;
            this.f64570c = z12;
            this.f64571d = eVar;
        }

        @Override
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull f fVar) {
            if (this.f64568a) {
                fVar.f64577d += windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean j10 = A.j(view);
            if (this.f64569b) {
                if (j10) {
                    fVar.f64576c += windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    fVar.f64574a += windowInsetsCompat.getSystemWindowInsetLeft();
                }
            }
            if (this.f64570c) {
                if (j10) {
                    fVar.f64574a += windowInsetsCompat.getSystemWindowInsetRight();
                } else {
                    fVar.f64576c += windowInsetsCompat.getSystemWindowInsetRight();
                }
            }
            fVar.a(view);
            e eVar = this.f64571d;
            return eVar != null ? eVar.a(view, windowInsetsCompat, fVar) : windowInsetsCompat;
        }
    }

    public static class c implements OnApplyWindowInsetsListener {

        public final e f64572a;

        public final f f64573b;

        public c(e eVar, f fVar) {
            this.f64572a = eVar;
            this.f64573b = fVar;
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.f64572a.a(view, windowInsetsCompat, new f(this.f64573b));
        }
    }

    public static class d implements View.OnAttachStateChangeListener {
        @Override
        public void onViewAttachedToWindow(@NonNull View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(view);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface e {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f fVar);
    }

    public static void a(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void b(@NonNull View view, @Nullable AttributeSet attributeSet, int i10, int i11) {
        c(view, attributeSet, i10, i11, null);
    }

    public static void c(@NonNull View view, @Nullable AttributeSet attributeSet, int i10, int i11, @Nullable e eVar) {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, C15879a.o.f124999Fg, i10, i11);
        boolean z10 = obtainStyledAttributes.getBoolean(C15879a.o.f125023Gg, false);
        boolean z11 = obtainStyledAttributes.getBoolean(C15879a.o.f125047Hg, false);
        boolean z12 = obtainStyledAttributes.getBoolean(C15879a.o.f125071Ig, false);
        obtainStyledAttributes.recycle();
        d(view, new b(z10, z11, z12, eVar));
    }

    public static void d(@NonNull View view, @NonNull e eVar) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new c(eVar, new f(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())));
        n(view);
    }

    public static float e(@NonNull Context context, @Dimension(unit = 0) int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    @Nullable
    public static ViewGroup f(@Nullable View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(16908290);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    @Nullable
    public static z g(@NonNull View view) {
        return h(f(view));
    }

    @Nullable
    public static z h(@Nullable View view) {
        if (view == null) {
            return null;
        }
        return new y(view);
    }

    public static float i(@NonNull View view) {
        float f10 = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f10 += ViewCompat.getElevation((View) parent);
        }
        return f10;
    }

    public static boolean j(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static PorterDuff.Mode k(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void l(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            m(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void m(@NonNull ViewTreeObserver viewTreeObserver, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void n(@NonNull View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new d());
        }
    }

    public static void o(@NonNull View view) {
        view.requestFocus();
        view.post(new a(view));
    }

    public static class f {

        public int f64574a;

        public int f64575b;

        public int f64576c;

        public int f64577d;

        public f(int i10, int i11, int i12, int i13) {
            this.f64574a = i10;
            this.f64575b = i11;
            this.f64576c = i12;
            this.f64577d = i13;
        }

        public void a(View view) {
            ViewCompat.setPaddingRelative(view, this.f64574a, this.f64575b, this.f64576c, this.f64577d);
        }

        public f(@NonNull f fVar) {
            this.f64574a = fVar.f64574a;
            this.f64575b = fVar.f64575b;
            this.f64576c = fVar.f64576c;
            this.f64577d = fVar.f64577d;
        }
    }
}
