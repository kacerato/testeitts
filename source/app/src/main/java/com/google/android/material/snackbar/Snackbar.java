package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c2.InterfaceC4149a;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import w1.C15879a;

public class Snackbar extends BaseTransientBottomBar<Snackbar> {

    public static final int[] f64858M;

    public static final int[] f64859N;

    @Nullable
    public final AccessibilityManager f64860J;

    public boolean f64861K;

    @Nullable
    public BaseTransientBottomBar.t<Snackbar> f64862L;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class SnackbarLayout extends BaseTransientBottomBar.z {
        public SnackbarLayout(Context context) {
            super(context);
        }

        @Override
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override
        public void setBackground(@Nullable Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public class a implements View.OnClickListener {

        public final View.OnClickListener f64863b;

        public a(View.OnClickListener onClickListener) {
            this.f64863b = onClickListener;
        }

        @Override
        public void onClick(View view) {
            this.f64863b.onClick(view);
            Snackbar.this.w(1);
        }
    }

    public static class b extends BaseTransientBottomBar.t<Snackbar> {

        public static final int f64865f = 0;

        public static final int f64866g = 1;

        public static final int f64867h = 2;

        public static final int f64868i = 3;

        public static final int f64869j = 4;

        @Override
        public void a(Snackbar snackbar, int i10) {
        }

        @Override
        public void b(Snackbar snackbar) {
        }
    }

    static {
        int i10 = C15879a.c.f122366ed;
        f64858M = new int[]{i10};
        f64859N = new int[]{i10, C15879a.c.f122402gd};
    }

    public Snackbar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull InterfaceC4149a interfaceC4149a) {
        super(context, viewGroup, view, interfaceC4149a);
        this.f64860J = (AccessibilityManager) viewGroup.getContext().getSystemService(Context.ACCESSIBILITY_SERVICE);
    }

    @Nullable
    public static ViewGroup n0(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    @Deprecated
    public static boolean o0(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f64858M);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    public static boolean p0(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f64859N);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        return (resourceId == -1 || resourceId2 == -1) ? false : true;
    }

    @NonNull
    public static Snackbar q0(@NonNull Context context, @NonNull View view, @NonNull CharSequence charSequence, int i10) {
        return t0(context, view, charSequence, i10);
    }

    @NonNull
    public static Snackbar r0(@NonNull View view, @StringRes int i10, int i11) {
        return s0(view, view.getResources().getText(i10), i11);
    }

    @NonNull
    public static Snackbar s0(@NonNull View view, @NonNull CharSequence charSequence, int i10) {
        return t0(null, view, charSequence, i10);
    }

    @NonNull
    public static Snackbar t0(@Nullable Context context, @NonNull View view, @NonNull CharSequence charSequence, int i10) {
        ViewGroup n02 = n0(view);
        if (n02 == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        if (context == null) {
            context = n02.getContext();
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(context).inflate(p0(context) ? C15879a.k.f124025x0 : C15879a.k.f123930G, n02, false);
        Snackbar snackbar = new Snackbar(context, n02, snackbarContentLayout, snackbarContentLayout);
        snackbar.E0(charSequence);
        snackbar.a0(i10);
        return snackbar;
    }

    @NonNull
    public Snackbar A0(@Nullable PorterDuff.Mode mode) {
        this.f64802c.setBackgroundTintMode(mode);
        return this;
    }

    @NonNull
    @Deprecated
    public Snackbar B0(@Nullable b bVar) {
        BaseTransientBottomBar.t<Snackbar> tVar = this.f64862L;
        if (tVar != null) {
            U(tVar);
        }
        if (bVar != null) {
            r(bVar);
        }
        this.f64862L = bVar;
        return this;
    }

    @Override
    public int C() {
        int recommendedTimeoutMillis;
        int C10 = super.C();
        if (C10 == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            recommendedTimeoutMillis = this.f64860J.getRecommendedTimeoutMillis(C10, (this.f64861K ? 4 : 0) | 3);
            return recommendedTimeoutMillis;
        }
        if (this.f64861K && this.f64860J.isTouchExplorationEnabled()) {
            return -2;
        }
        return C10;
    }

    @NonNull
    public Snackbar C0(@Dimension int i10) {
        ((SnackbarContentLayout) this.f64802c.getChildAt(0)).setMaxInlineActionWidth(i10);
        return this;
    }

    @NonNull
    public Snackbar D0(@StringRes int i10) {
        return E0(B().getText(i10));
    }

    @NonNull
    public Snackbar E0(@NonNull CharSequence charSequence) {
        ((SnackbarContentLayout) this.f64802c.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    @NonNull
    public Snackbar F0(@ColorInt int i10) {
        ((SnackbarContentLayout) this.f64802c.getChildAt(0)).getMessageView().setTextColor(i10);
        return this;
    }

    @NonNull
    public Snackbar G0(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.f64802c.getChildAt(0)).getMessageView().setTextColor(colorStateList);
        return this;
    }

    @Override
    public boolean O() {
        return super.O();
    }

    @Override
    public void f0() {
        super.f0();
    }

    @NonNull
    public Snackbar u0(@StringRes int i10, View.OnClickListener onClickListener) {
        return v0(B().getText(i10), onClickListener);
    }

    @Override
    public void v() {
        super.v();
    }

    @NonNull
    public Snackbar v0(@Nullable CharSequence charSequence, @Nullable View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.f64802c.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.f64861K = false;
        } else {
            this.f64861K = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new a(onClickListener));
        }
        return this;
    }

    @NonNull
    public Snackbar w0(@ColorInt int i10) {
        ((SnackbarContentLayout) this.f64802c.getChildAt(0)).getActionView().setTextColor(i10);
        return this;
    }

    @NonNull
    public Snackbar x0(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.f64802c.getChildAt(0)).getActionView().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar y0(@ColorInt int i10) {
        return z0(ColorStateList.valueOf(i10));
    }

    @NonNull
    public Snackbar z0(@Nullable ColorStateList colorStateList) {
        this.f64802c.setBackgroundTintList(colorStateList);
        return this;
    }
}
