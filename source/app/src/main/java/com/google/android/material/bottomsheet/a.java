package com.google.android.material.bottomsheet;

import a2.C3567j;
import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import w1.C15879a;

public class a extends AppCompatDialog {

    public BottomSheetBehavior<FrameLayout> f64046b;

    public FrameLayout f64047c;

    public CoordinatorLayout f64048d;

    public FrameLayout f64049e;

    public boolean f64050f;

    public boolean f64051g;

    public boolean f64052h;

    public boolean f64053i;

    public BottomSheetBehavior.g f64054j;

    public boolean f64055k;

    @NonNull
    public BottomSheetBehavior.g f64056l;

    public class C0958a implements OnApplyWindowInsetsListener {
        public C0958a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (a.this.f64054j != null) {
                a.this.f64046b.Q(a.this.f64054j);
            }
            if (windowInsetsCompat != null) {
                a aVar = a.this;
                aVar.f64054j = new f(aVar.f64049e, windowInsetsCompat, null);
                a.this.f64046b.o(a.this.f64054j);
            }
            return windowInsetsCompat;
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.f64051g && aVar.isShowing() && a.this.m()) {
                a.this.cancel();
            }
        }
    }

    public class c extends AccessibilityDelegateCompat {
        public c() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!a.this.f64051g) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 == 1048576) {
                a aVar = a.this;
                if (aVar.f64051g) {
                    aVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i10, bundle);
        }
    }

    public class d implements View.OnTouchListener {
        public d() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class e extends BottomSheetBehavior.g {
        public e() {
        }

        @Override
        public void a(@NonNull View view, float f10) {
        }

        @Override
        public void b(@NonNull View view, int i10) {
            if (i10 == 5) {
                a.this.cancel();
            }
        }
    }

    public static class f extends BottomSheetBehavior.g {

        public final boolean f64062a;

        public final boolean f64063b;

        public final WindowInsetsCompat f64064c;

        public f(View view, WindowInsetsCompat windowInsetsCompat, C0958a c0958a) {
            this(view, windowInsetsCompat);
        }

        @Override
        public void a(@NonNull View view, float f10) {
            c(view);
        }

        @Override
        public void b(@NonNull View view, int i10) {
            c(view);
        }

        public final void c(View view) {
            if (view.getTop() < this.f64064c.getSystemWindowInsetTop()) {
                a.l(view, this.f64062a);
                view.setPadding(view.getPaddingLeft(), this.f64064c.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            } else if (view.getTop() != 0) {
                a.l(view, this.f64063b);
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        public f(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ColorStateList backgroundTintList;
            this.f64064c = windowInsetsCompat;
            boolean z10 = (view.getSystemUiVisibility() & 8192) != 0;
            this.f64063b = z10;
            C3567j D10 = BottomSheetBehavior.z(view).D();
            if (D10 != null) {
                backgroundTintList = D10.y();
            } else {
                backgroundTintList = ViewCompat.getBackgroundTintList(view);
            }
            if (backgroundTintList != null) {
                this.f64062a = J1.a.f(backgroundTintList.getDefaultColor());
            } else if (view.getBackground() instanceof ColorDrawable) {
                this.f64062a = J1.a.f(((ColorDrawable) view.getBackground()).getColor());
            } else {
                this.f64062a = z10;
            }
        }
    }

    public a(@NonNull Context context) {
        this(context, 0);
        this.f64055k = getContext().getTheme().obtainStyledAttributes(new int[]{C15879a.c.f122132R4}).getBoolean(0, false);
    }

    public static int getThemeResId(@NonNull Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(C15879a.c.f122094P0, typedValue, true) ? typedValue.resourceId : C15879a.n.f124451W7;
    }

    public static void l(@NonNull View view, boolean z10) {
        int systemUiVisibility = view.getSystemUiVisibility();
        view.setSystemUiVisibility(z10 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    @Override
    public void cancel() {
        BottomSheetBehavior<FrameLayout> g10 = g();
        if (!this.f64050f || g10.J() == 5) {
            super.cancel();
        } else {
            g10.h0(5);
        }
    }

    public final FrameLayout f() {
        if (this.f64047c == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), C15879a.k.f123926E, null);
            this.f64047c = frameLayout;
            this.f64048d = (CoordinatorLayout) frameLayout.findViewById(C15879a.h.f123659V0);
            FrameLayout frameLayout2 = (FrameLayout) this.f64047c.findViewById(C15879a.h.f123745h1);
            this.f64049e = frameLayout2;
            BottomSheetBehavior<FrameLayout> z10 = BottomSheetBehavior.z(frameLayout2);
            this.f64046b = z10;
            z10.o(this.f64056l);
            this.f64046b.a0(this.f64051g);
        }
        return this.f64047c;
    }

    @NonNull
    public BottomSheetBehavior<FrameLayout> g() {
        if (this.f64046b == null) {
            f();
        }
        return this.f64046b;
    }

    public boolean h() {
        return this.f64050f;
    }

    public boolean i() {
        return this.f64055k;
    }

    public void j() {
        this.f64046b.Q(this.f64056l);
    }

    public void k(boolean z10) {
        this.f64050f = z10;
    }

    public boolean m() {
        if (!this.f64053i) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f64052h = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f64053i = true;
        }
        return this.f64052h;
    }

    public final View n(int i10, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        f();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f64047c.findViewById(C15879a.h.f123659V0);
        if (i10 != 0 && view == null) {
            view = getLayoutInflater().inflate(i10, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f64055k) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f64049e, new C0958a());
        }
        this.f64049e.removeAllViews();
        if (layoutParams == null) {
            this.f64049e.addView(view);
        } else {
            this.f64049e.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(C15879a.h.f123587K5).setOnClickListener(new b());
        ViewCompat.setAccessibilityDelegate(this.f64049e, new c());
        this.f64049e.setOnTouchListener(new d());
        return this.f64047c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z10 = this.f64055k && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f64047c;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z10);
            }
            CoordinatorLayout coordinatorLayout = this.f64048d;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z10);
            }
            if (z10) {
                window.getDecorView().setSystemUiVisibility(768);
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f64046b;
        if (bottomSheetBehavior == null || bottomSheetBehavior.J() != 5) {
            return;
        }
        this.f64046b.h0(4);
    }

    @Override
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.f64051g != z10) {
            this.f64051g = z10;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f64046b;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.a0(z10);
            }
        }
    }

    @Override
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.f64051g) {
            this.f64051g = true;
        }
        this.f64052h = z10;
        this.f64053i = true;
    }

    @Override
    public void setContentView(@LayoutRes int i10) {
        super.setContentView(n(i10, null, null));
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(n(0, view, null));
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(n(0, view, layoutParams));
    }

    public a(@NonNull Context context, @StyleRes int i10) {
        super(context, getThemeResId(context, i10));
        this.f64051g = true;
        this.f64052h = true;
        this.f64056l = new e();
        supportRequestWindowFeature(1);
        this.f64055k = getContext().getTheme().obtainStyledAttributes(new int[]{C15879a.c.f122132R4}).getBoolean(0, false);
    }

    public a(@NonNull Context context, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z10, onCancelListener);
        this.f64051g = true;
        this.f64052h = true;
        this.f64056l = new e();
        supportRequestWindowFeature(1);
        this.f64051g = z10;
        this.f64055k = getContext().getTheme().obtainStyledAttributes(new int[]{C15879a.c.f122132R4}).getBoolean(0, false);
    }
}
