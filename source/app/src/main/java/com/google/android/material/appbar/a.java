package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.C12453a;
import com.google.android.material.internal.C12455c;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;
import x1.C16046a;
import z1.C16241a;

public class a extends FrameLayout {

    public static final int f63821E = C15879a.n.f124817wa;

    public static final int f63822F = 600;

    public static final int f63823G = 0;

    public static final int f63824H = 1;

    public int f63825A;

    public boolean f63826B;

    public int f63827C;

    public boolean f63828D;

    public boolean f63829b;

    public int f63830c;

    @Nullable
    public ViewGroup f63831d;

    @Nullable
    public View f63832e;

    public View f63833f;

    public int f63834g;

    public int f63835h;

    public int f63836i;

    public int f63837j;

    public final Rect f63838k;

    @NonNull
    public final C12453a f63839l;

    @NonNull
    public final N1.a f63840m;

    public boolean f63841n;

    public boolean f63842o;

    @Nullable
    public Drawable f63843p;

    @Nullable
    public Drawable f63844q;

    public int f63845r;

    public boolean f63846s;

    public ValueAnimator f63847t;

    public long f63848u;

    public int f63849v;

    public AppBarLayout.g f63850w;

    public int f63851x;

    public int f63852y;

    @Nullable
    public WindowInsetsCompat f63853z;

    public class C0957a implements OnApplyWindowInsetsListener {
        public C0957a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return a.this.r(windowInsetsCompat);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            a.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public class d implements AppBarLayout.g {
        public d() {
        }

        @Override
        public void a(AppBarLayout appBarLayout, int i10) {
            a aVar = a.this;
            aVar.f63851x = i10;
            WindowInsetsCompat windowInsetsCompat = aVar.f63853z;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = a.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = a.this.getChildAt(i11);
                c cVar = (c) childAt.getLayoutParams();
                y1.d j10 = a.j(childAt);
                int i12 = cVar.f63860a;
                if (i12 == 1) {
                    j10.k(MathUtils.clamp(-i10, 0, a.this.h(childAt)));
                } else if (i12 == 2) {
                    j10.k(Math.round((-i10) * cVar.f63861b));
                }
            }
            a.this.z();
            a aVar2 = a.this;
            if (aVar2.f63844q != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(aVar2);
            }
            int height = (a.this.getHeight() - ViewCompat.getMinimumHeight(a.this)) - systemWindowInsetTop;
            float f10 = height;
            a.this.f63839l.w0(Math.min(1.0f, (r0 - a.this.getScrimVisibleHeightTrigger()) / f10));
            a aVar3 = a.this;
            aVar3.f63839l.k0(aVar3.f63851x + height);
            a.this.f63839l.u0(Math.abs(i10) / f10);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface e {
    }

    public a(@NonNull Context context) {
        this(context, null);
    }

    public static int g(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public static CharSequence i(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    @NonNull
    public static y1.d j(@NonNull View view) {
        int i10 = C15879a.h.f123664V5;
        y1.d dVar = (y1.d) view.getTag(i10);
        if (dVar != null) {
            return dVar;
        }
        y1.d dVar2 = new y1.d(view);
        view.setTag(i10, dVar2);
        return dVar2;
    }

    public static boolean p(View view) {
        return (view instanceof Toolbar) || (view instanceof android.widget.Toolbar);
    }

    public final void A(int i10, int i11, int i12, int i13, boolean z10) {
        View view;
        if (!this.f63841n || (view = this.f63833f) == null) {
            return;
        }
        boolean z11 = ViewCompat.isAttachedToWindow(view) && this.f63833f.getVisibility() == 0;
        this.f63842o = z11;
        if (z11 || z10) {
            boolean z12 = ViewCompat.getLayoutDirection(this) == 1;
            u(z12);
            this.f63839l.l0(z12 ? this.f63836i : this.f63834g, this.f63838k.top + this.f63835h, (i12 - i10) - (z12 ? this.f63834g : this.f63836i), (i13 - i11) - this.f63837j);
            this.f63839l.Z(z10);
        }
    }

    public final void B() {
        if (this.f63831d != null && this.f63841n && TextUtils.isEmpty(this.f63839l.N())) {
            setTitle(i(this.f63831d));
        }
    }

    public final void a(int i10) {
        c();
        ValueAnimator valueAnimator = this.f63847t;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f63847t = valueAnimator2;
            valueAnimator2.setDuration(this.f63848u);
            this.f63847t.setInterpolator(i10 > this.f63845r ? C16046a.f127890c : C16046a.f127891d);
            this.f63847t.addUpdateListener(new b());
        } else if (valueAnimator.isRunning()) {
            this.f63847t.cancel();
        }
        this.f63847t.setIntValues(this.f63845r, i10);
        this.f63847t.start();
    }

    public final void b(AppBarLayout appBarLayout) {
        if (n()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    public final void c() {
        if (this.f63829b) {
            ViewGroup viewGroup = null;
            this.f63831d = null;
            this.f63832e = null;
            int i10 = this.f63830c;
            if (i10 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i10);
                this.f63831d = viewGroup2;
                if (viewGroup2 != null) {
                    this.f63832e = d(viewGroup2);
                }
            }
            if (this.f63831d == null) {
                int childCount = getChildCount();
                int i11 = 0;
                while (true) {
                    if (i11 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i11);
                    if (p(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i11++;
                }
                this.f63831d = viewGroup;
            }
            y();
            this.f63829b = false;
        }
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @NonNull
    public final View d(@NonNull View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        c();
        if (this.f63831d == null && (drawable = this.f63843p) != null && this.f63845r > 0) {
            drawable.mutate().setAlpha(this.f63845r);
            this.f63843p.draw(canvas);
        }
        if (this.f63841n && this.f63842o) {
            if (this.f63831d == null || this.f63843p == null || this.f63845r <= 0 || !n() || this.f63839l.G() >= this.f63839l.H()) {
                this.f63839l.m(canvas);
            } else {
                int save = canvas.save();
                canvas.clipRect(this.f63843p.getBounds(), Region.Op.DIFFERENCE);
                this.f63839l.m(canvas);
                canvas.restoreToCount(save);
            }
        }
        if (this.f63844q == null || this.f63845r <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f63853z;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f63844q.setBounds(0, -this.f63851x, getWidth(), systemWindowInsetTop - this.f63851x);
            this.f63844q.mutate().setAlpha(this.f63845r);
            this.f63844q.draw(canvas);
        }
    }

    @Override
    public boolean drawChild(Canvas canvas, View view, long j10) {
        boolean z10;
        if (this.f63843p == null || this.f63845r <= 0 || !q(view)) {
            z10 = false;
        } else {
            x(this.f63843p, view, getWidth(), getHeight());
            this.f63843p.mutate().setAlpha(this.f63845r);
            this.f63843p.draw(canvas);
            z10 = true;
        }
        return super.drawChild(canvas, view, j10) || z10;
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f63844q;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f63843p;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        C12453a c12453a = this.f63839l;
        if (c12453a != null) {
            state |= c12453a.E0(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override
    public c generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public int getCollapsedTitleGravity() {
        return this.f63839l.r();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f63839l.w();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f63843p;
    }

    public int getExpandedTitleGravity() {
        return this.f63839l.C();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f63837j;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f63836i;
    }

    public int getExpandedTitleMarginStart() {
        return this.f63834g;
    }

    public int getExpandedTitleMarginTop() {
        return this.f63835h;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f63839l.F();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getHyphenationFrequency() {
        return this.f63839l.I();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getLineCount() {
        return this.f63839l.J();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getLineSpacingAdd() {
        return this.f63839l.K();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getLineSpacingMultiplier() {
        return this.f63839l.L();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMaxLines() {
        return this.f63839l.M();
    }

    public int getScrimAlpha() {
        return this.f63845r;
    }

    public long getScrimAnimationDuration() {
        return this.f63848u;
    }

    public int getScrimVisibleHeightTrigger() {
        int i10 = this.f63849v;
        if (i10 >= 0) {
            return i10 + this.f63825A + this.f63827C;
        }
        WindowInsetsCompat windowInsetsCompat = this.f63853z;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f63844q;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.f63841n) {
            return this.f63839l.N();
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f63852y;
    }

    public final int h(@NonNull View view) {
        return ((getHeight() - j(view).c()) - view.getHeight()) - ((c) view.getLayoutParams()).bottomMargin;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean k() {
        return this.f63828D;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean l() {
        return this.f63826B;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean m() {
        return this.f63839l.T();
    }

    public final boolean n() {
        return this.f63852y == 1;
    }

    public boolean o() {
        return this.f63841n;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            b(appBarLayout);
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows(appBarLayout));
            if (this.f63850w == null) {
                this.f63850w = new d();
            }
            appBarLayout.b(this.f63850w);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.g gVar = this.f63850w;
        if (gVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).q(gVar);
        }
        super.onDetachedFromWindow();
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        WindowInsetsCompat windowInsetsCompat = this.f63853z;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = getChildAt(i14);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            j(getChildAt(i15)).h();
        }
        A(i10, i11, i12, i13, false);
        B();
        z();
        int childCount3 = getChildCount();
        for (int i16 = 0; i16 < childCount3; i16++) {
            j(getChildAt(i16)).a();
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        c();
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        WindowInsetsCompat windowInsetsCompat = this.f63853z;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.f63826B) && systemWindowInsetTop > 0) {
            this.f63825A = systemWindowInsetTop;
            super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
        if (this.f63828D && this.f63839l.M() > 1) {
            B();
            A(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            int J10 = this.f63839l.J();
            if (J10 > 1) {
                this.f63827C = Math.round(this.f63839l.B()) * (J10 - 1);
                super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.f63827C, 1073741824));
            }
        }
        ViewGroup viewGroup = this.f63831d;
        if (viewGroup != null) {
            View view = this.f63832e;
            if (view == null || view == this) {
                setMinimumHeight(g(viewGroup));
            } else {
                setMinimumHeight(g(view));
            }
        }
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Drawable drawable = this.f63843p;
        if (drawable != null) {
            w(drawable, i10, i11);
        }
    }

    public final boolean q(View view) {
        View view2 = this.f63832e;
        if (view2 == null || view2 == this) {
            if (view != this.f63831d) {
                return false;
            }
        } else if (view != view2) {
            return false;
        }
        return true;
    }

    public WindowInsetsCompat r(@NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f63853z, windowInsetsCompat2)) {
            this.f63853z = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    public void s(int i10, int i11, int i12, int i13) {
        this.f63834g = i10;
        this.f63835h = i11;
        this.f63836i = i12;
        this.f63837j = i13;
        requestLayout();
    }

    public void setCollapsedTitleGravity(int i10) {
        this.f63839l.g0(i10);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i10) {
        this.f63839l.d0(i10);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i10) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f63839l.i0(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f63843p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f63843p = mutate;
            if (mutate != null) {
                w(mutate, getWidth(), getHeight());
                this.f63843p.setCallback(this);
                this.f63843p.setAlpha(this.f63845r);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i10) {
        setContentScrim(new ColorDrawable(i10));
    }

    public void setContentScrimResource(@DrawableRes int i10) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i10));
    }

    public void setExpandedTitleColor(@ColorInt int i10) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setExpandedTitleGravity(int i10) {
        this.f63839l.q0(i10);
    }

    public void setExpandedTitleMarginBottom(int i10) {
        this.f63837j = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i10) {
        this.f63836i = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i10) {
        this.f63834g = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i10) {
        this.f63835h = i10;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i10) {
        this.f63839l.n0(i10);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f63839l.p0(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f63839l.s0(typeface);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setExtraMultilineHeightEnabled(boolean z10) {
        this.f63828D = z10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setForceApplySystemWindowInsetTop(boolean z10) {
        this.f63826B = z10;
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setHyphenationFrequency(int i10) {
        this.f63839l.x0(i10);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLineSpacingAdd(float f10) {
        this.f63839l.z0(f10);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLineSpacingMultiplier(@FloatRange(from = 0.0d) float f10) {
        this.f63839l.A0(f10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setMaxLines(int i10) {
        this.f63839l.B0(i10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setRtlTextDirectionHeuristicsEnabled(boolean z10) {
        this.f63839l.D0(z10);
    }

    public void setScrimAlpha(int i10) {
        ViewGroup viewGroup;
        if (i10 != this.f63845r) {
            if (this.f63843p != null && (viewGroup = this.f63831d) != null) {
                ViewCompat.postInvalidateOnAnimation(viewGroup);
            }
            this.f63845r = i10;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j10) {
        this.f63848u = j10;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i10) {
        if (this.f63849v != i10) {
            this.f63849v = i10;
            z();
        }
    }

    public void setScrimsShown(boolean z10) {
        t(z10, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f63844q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f63844q = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f63844q.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f63844q, ViewCompat.getLayoutDirection(this));
                this.f63844q.setVisible(getVisibility() == 0, false);
                this.f63844q.setCallback(this);
                this.f63844q.setAlpha(this.f63845r);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i10) {
        setStatusBarScrim(new ColorDrawable(i10));
    }

    public void setStatusBarScrimResource(@DrawableRes int i10) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i10));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f63839l.F0(charSequence);
        v();
    }

    public void setTitleCollapseMode(int i10) {
        this.f63852y = i10;
        boolean n10 = n();
        this.f63839l.v0(n10);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            b((AppBarLayout) parent);
        }
        if (n10 && this.f63843p == null) {
            setContentScrimColor(this.f63840m.g(getResources().getDimension(C15879a.f.f123071O0)));
        }
    }

    public void setTitleEnabled(boolean z10) {
        if (z10 != this.f63841n) {
            this.f63841n = z10;
            v();
            y();
            requestLayout();
        }
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f63844q;
        if (drawable != null && drawable.isVisible() != z10) {
            this.f63844q.setVisible(z10, false);
        }
        Drawable drawable2 = this.f63843p;
        if (drawable2 == null || drawable2.isVisible() == z10) {
            return;
        }
        this.f63843p.setVisible(z10, false);
    }

    public void t(boolean z10, boolean z11) {
        if (this.f63846s != z10) {
            if (z11) {
                a(z10 ? 255 : 0);
            } else {
                setScrimAlpha(z10 ? 255 : 0);
            }
            this.f63846s = z10;
        }
    }

    public final void u(boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        View view = this.f63832e;
        if (view == null) {
            view = this.f63831d;
        }
        int h10 = h(view);
        C12455c.a(this, this.f63833f, this.f63838k);
        ViewGroup viewGroup = this.f63831d;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            i10 = toolbar.getTitleMarginStart();
            i12 = toolbar.getTitleMarginEnd();
            i13 = toolbar.getTitleMarginTop();
            i11 = toolbar.getTitleMarginBottom();
        } else if (viewGroup instanceof android.widget.Toolbar) {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            i10 = toolbar2.getTitleMarginStart();
            i12 = toolbar2.getTitleMarginEnd();
            i13 = toolbar2.getTitleMarginTop();
            i11 = toolbar2.getTitleMarginBottom();
        } else {
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
        }
        C12453a c12453a = this.f63839l;
        Rect rect = this.f63838k;
        int i14 = rect.left + (z10 ? i12 : i10);
        int i15 = rect.top + h10 + i13;
        int i16 = rect.right;
        if (!z10) {
            i10 = i12;
        }
        c12453a.b0(i14, i15, i16 - i10, (rect.bottom + h10) - i11);
    }

    public final void v() {
        setContentDescription(getTitle());
    }

    @Override
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f63843p || drawable == this.f63844q;
    }

    public final void w(@NonNull Drawable drawable, int i10, int i11) {
        x(drawable, this.f63831d, i10, i11);
    }

    public final void x(@NonNull Drawable drawable, @Nullable View view, int i10, int i11) {
        if (n() && view != null && this.f63841n) {
            i11 = view.getBottom();
        }
        drawable.setBounds(0, 0, i10, i11);
    }

    public final void y() {
        View view;
        if (!this.f63841n && (view = this.f63833f) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f63833f);
            }
        }
        if (!this.f63841n || this.f63831d == null) {
            return;
        }
        if (this.f63833f == null) {
            this.f63833f = new View(getContext());
        }
        if (this.f63833f.getParent() == null) {
            this.f63831d.addView(this.f63833f, -1, -1);
        }
    }

    public final void z() {
        if (this.f63843p == null && this.f63844q == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f63851x < getScrimVisibleHeightTrigger());
    }

    public a(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122714y2);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f63839l.f0(colorStateList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f63821E;
        this.f63829b = true;
        this.f63838k = new Rect();
        this.f63849v = -1;
        this.f63825A = 0;
        this.f63827C = 0;
        Context context2 = getContext();
        C12453a c12453a = new C12453a(this);
        this.f63839l = c12453a;
        c12453a.G0(C16046a.f127892e);
        c12453a.D0(false);
        this.f63840m = new N1.a(context2);
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f124917C6, i10, i11, new int[0]);
        c12453a.q0(j10.getInt(C15879a.o.f125037H6, C16241a.f130541u));
        c12453a.g0(j10.getInt(C15879a.o.f124941D6, 8388627));
        int dimensionPixelSize = j10.getDimensionPixelSize(C15879a.o.f125061I6, 0);
        this.f63837j = dimensionPixelSize;
        this.f63836i = dimensionPixelSize;
        this.f63835h = dimensionPixelSize;
        this.f63834g = dimensionPixelSize;
        int i12 = C15879a.o.f125133L6;
        if (j10.hasValue(i12)) {
            this.f63834g = j10.getDimensionPixelSize(i12, 0);
        }
        int i13 = C15879a.o.f125109K6;
        if (j10.hasValue(i13)) {
            this.f63836i = j10.getDimensionPixelSize(i13, 0);
        }
        int i14 = C15879a.o.f125157M6;
        if (j10.hasValue(i14)) {
            this.f63835h = j10.getDimensionPixelSize(i14, 0);
        }
        int i15 = C15879a.o.f125085J6;
        if (j10.hasValue(i15)) {
            this.f63837j = j10.getDimensionPixelSize(i15, 0);
        }
        this.f63841n = j10.getBoolean(C15879a.o.f125421X6, true);
        setTitle(j10.getText(C15879a.o.f125373V6));
        c12453a.n0(C15879a.n.f124421U5);
        c12453a.d0(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        int i16 = C15879a.o.f125181N6;
        if (j10.hasValue(i16)) {
            c12453a.n0(j10.getResourceId(i16, 0));
        }
        int i17 = C15879a.o.f124965E6;
        if (j10.hasValue(i17)) {
            c12453a.d0(j10.getResourceId(i17, 0));
        }
        int i18 = C15879a.o.f125205O6;
        if (j10.hasValue(i18)) {
            c12453a.p0(X1.c.a(context2, j10, i18));
        }
        int i19 = C15879a.o.f124989F6;
        if (j10.hasValue(i19)) {
            c12453a.f0(X1.c.a(context2, j10, i19));
        }
        this.f63849v = j10.getDimensionPixelSize(C15879a.o.f125325T6, -1);
        int i20 = C15879a.o.f125277R6;
        if (j10.hasValue(i20)) {
            c12453a.B0(j10.getInt(i20, 1));
        }
        this.f63848u = j10.getInt(C15879a.o.f125301S6, 600);
        setContentScrim(j10.getDrawable(C15879a.o.f125013G6));
        setStatusBarScrim(j10.getDrawable(C15879a.o.f125349U6));
        setTitleCollapseMode(j10.getInt(C15879a.o.f125397W6, 0));
        this.f63830c = j10.getResourceId(C15879a.o.f125445Y6, -1);
        this.f63826B = j10.getBoolean(C15879a.o.f125253Q6, false);
        this.f63828D = j10.getBoolean(C15879a.o.f125229P6, false);
        j10.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new C0957a());
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public static class c extends FrameLayout.LayoutParams {

        public static final float f63856c = 0.5f;

        public static final int f63857d = 0;

        public static final int f63858e = 1;

        public static final int f63859f = 2;

        public int f63860a;

        public float f63861b;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f63860a = 0;
            this.f63861b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f125469Z6);
            this.f63860a = obtainStyledAttributes.getInt(C15879a.o.f125494a7, 0);
            d(obtainStyledAttributes.getFloat(C15879a.o.f125519b7, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public int a() {
            return this.f63860a;
        }

        public float b() {
            return this.f63861b;
        }

        public void c(int i10) {
            this.f63860a = i10;
        }

        public void d(float f10) {
            this.f63861b = f10;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f63860a = 0;
            this.f63861b = 0.5f;
        }

        public c(int i10, int i11, int i12) {
            super(i10, i11, i12);
            this.f63860a = 0;
            this.f63861b = 0.5f;
        }

        public c(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f63860a = 0;
            this.f63861b = 0.5f;
        }

        public c(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f63860a = 0;
            this.f63861b = 0.5f;
        }

        @RequiresApi(19)
        public c(@NonNull FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f63860a = 0;
            this.f63861b = 0.5f;
        }
    }
}
