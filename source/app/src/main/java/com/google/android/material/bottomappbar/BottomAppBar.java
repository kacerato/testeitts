package com.google.android.material.bottomappbar;

import a2.C3567j;
import a2.C3568k;
import a2.C3572o;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import w1.C15879a;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {

    public static final int f63899A = 1;

    public static final int f63900B = 0;

    public static final int f63901C = 1;

    public static final int f63902D = 0;

    public static final int f63903x = C15879a.n.f124370Qa;

    public static final long f63904y = 300;

    public static final int f63905z = 0;

    @Nullable
    public Integer f63906b;

    public final int f63907c;

    public final C3567j f63908d;

    @Nullable
    public Animator f63909e;

    @Nullable
    public Animator f63910f;

    public int f63911g;

    public int f63912h;

    public boolean f63913i;

    public final boolean f63914j;

    public final boolean f63915k;

    public final boolean f63916l;

    public int f63917m;

    public ArrayList<j> f63918n;

    @MenuRes
    public int f63919o;

    public boolean f63920p;

    public boolean f63921q;

    public Behavior f63922r;

    public int f63923s;

    public int f63924t;

    public int f63925u;

    @NonNull
    public AnimatorListenerAdapter f63926v;

    @NonNull
    public x1.k<FloatingActionButton> f63927w;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f63920p) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.U(bottomAppBar.f63911g, BottomAppBar.this.f63921q);
        }
    }

    public class b implements x1.k<FloatingActionButton> {
        public b() {
        }

        @Override
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f63908d.o0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override
        public void b(@NonNull FloatingActionButton floatingActionButton) {
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().i() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().o(translationX);
                BottomAppBar.this.f63908d.invalidateSelf();
            }
            float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().d() != max) {
                BottomAppBar.this.getTopEdgeTreatment().j(max);
                BottomAppBar.this.f63908d.invalidateSelf();
            }
            BottomAppBar.this.f63908d.o0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    public class c implements A.e {
        public c() {
        }

        @Override
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull A.f fVar) {
            boolean z10;
            if (BottomAppBar.this.f63914j) {
                BottomAppBar.this.f63923s = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z11 = false;
            if (BottomAppBar.this.f63915k) {
                z10 = BottomAppBar.this.f63925u != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f63925u = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z10 = false;
            }
            if (BottomAppBar.this.f63916l) {
                boolean z12 = BottomAppBar.this.f63924t != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f63924t = windowInsetsCompat.getSystemWindowInsetRight();
                z11 = z12;
            }
            if (z10 || z11) {
                BottomAppBar.this.J();
                BottomAppBar.this.c0();
                BottomAppBar.this.b0();
            }
            return windowInsetsCompat;
        }
    }

    public class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.N();
            BottomAppBar.this.f63909e = null;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.O();
        }
    }

    public class e extends FloatingActionButton.b {

        public final int f63937a;

        public class a extends FloatingActionButton.b {
            public a() {
            }

            @Override
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.N();
            }
        }

        public e(int i10) {
            this.f63937a = i10;
        }

        @Override
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.S(this.f63937a));
            floatingActionButton.A(new a());
        }
    }

    public class f extends AnimatorListenerAdapter {
        public f() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.N();
            BottomAppBar.this.f63920p = false;
            BottomAppBar.this.f63910f = null;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.O();
        }
    }

    public class g extends AnimatorListenerAdapter {

        public boolean f63941a;

        public final ActionMenuView f63942b;

        public final int f63943c;

        public final boolean f63944d;

        public g(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f63942b = actionMenuView;
            this.f63943c = i10;
            this.f63944d = z10;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f63941a = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f63941a) {
                return;
            }
            boolean z10 = BottomAppBar.this.f63919o != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.a0(bottomAppBar.f63919o);
            BottomAppBar.this.g0(this.f63942b, this.f63943c, this.f63944d, z10);
        }
    }

    public class h implements Runnable {

        public final ActionMenuView f63946b;

        public final int f63947c;

        public final boolean f63948d;

        public h(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f63946b = actionMenuView;
            this.f63947c = i10;
            this.f63948d = z10;
        }

        @Override
        public void run() {
            this.f63946b.setTranslationX(BottomAppBar.this.R(r0, this.f63947c, this.f63948d));
        }
    }

    public class i extends AnimatorListenerAdapter {
        public i() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f63926v.onAnimationStart(animator);
            FloatingActionButton P10 = BottomAppBar.this.P();
            if (P10 != null) {
                P10.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    public interface j {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface k {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface l {
    }

    public static class m extends AbsSavedState {
        public static final Parcelable.Creator<m> CREATOR = new a();

        public int f63951b;

        public boolean f63952c;

        public static class a implements Parcelable.ClassLoaderCreator<m> {
            @Override
            @Nullable
            public m createFromParcel(@NonNull Parcel parcel) {
                return new m(parcel, null);
            }

            @Override
            @NonNull
            public m createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new m(parcel, classLoader);
            }

            @Override
            @NonNull
            public m[] newArray(int i10) {
                return new m[i10];
            }
        }

        public m(Parcelable parcelable) {
            super(parcelable);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f63951b);
            parcel.writeInt(this.f63952c ? 1 : 0);
        }

        public m(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f63951b = parcel.readInt();
            this.f63952c = parcel.readInt() != 0;
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null, 0);
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    public int getBottomInset() {
        return this.f63923s;
    }

    public float getFabTranslationX() {
        return S(this.f63911g);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().d();
    }

    public int getLeftInset() {
        return this.f63925u;
    }

    public int getRightInset() {
        return this.f63924t;
    }

    @NonNull
    public A1.a getTopEdgeTreatment() {
        return (A1.a) this.f63908d.getShapeAppearanceModel().p();
    }

    public void H(@NonNull j jVar) {
        if (this.f63918n == null) {
            this.f63918n = new ArrayList<>();
        }
        this.f63918n.add(jVar);
    }

    public final void I(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.f(this.f63926v);
        floatingActionButton.g(new i());
        floatingActionButton.h(this.f63927w);
    }

    public final void J() {
        Animator animator = this.f63910f;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f63909e;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    public void K(int i10, List<Animator> list) {
        FloatingActionButton P10 = P();
        if (P10 == null || P10.q()) {
            return;
        }
        O();
        P10.o(new e(i10));
    }

    public final void L(int i10, @NonNull List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(P(), "translationX", S(i10));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    public final void M(int i10, boolean z10, @NonNull List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - R(actionMenuView, i10, z10)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        } else {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            ofFloat2.addListener(new g(actionMenuView, i10, z10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(ofFloat2, ofFloat);
            list.add(animatorSet);
        }
    }

    public final void N() {
        ArrayList<j> arrayList;
        int i10 = this.f63917m - 1;
        this.f63917m = i10;
        if (i10 != 0 || (arrayList = this.f63918n) == null) {
            return;
        }
        Iterator<j> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    public final void O() {
        ArrayList<j> arrayList;
        int i10 = this.f63917m;
        this.f63917m = i10 + 1;
        if (i10 != 0 || (arrayList = this.f63918n) == null) {
            return;
        }
        Iterator<j> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    @Nullable
    public final FloatingActionButton P() {
        View Q10 = Q();
        if (Q10 instanceof FloatingActionButton) {
            return (FloatingActionButton) Q10;
        }
        return null;
    }

    @Nullable
    public final View Q() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public int R(@NonNull ActionMenuView actionMenuView, int i10, boolean z10) {
        if (i10 != 1 || !z10) {
            return 0;
        }
        boolean j10 = A.j(this);
        int measuredWidth = j10 ? getMeasuredWidth() : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & 8388615) == 8388611) {
                measuredWidth = j10 ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((j10 ? actionMenuView.getRight() : actionMenuView.getLeft()) + (j10 ? this.f63924t : -this.f63925u));
    }

    public final float S(int i10) {
        boolean j10 = A.j(this);
        if (i10 == 1) {
            return ((getMeasuredWidth() / 2) - (this.f63907c + (j10 ? this.f63925u : this.f63924t))) * (j10 ? -1 : 1);
        }
        return 0.0f;
    }

    public final boolean T() {
        FloatingActionButton P10 = P();
        return P10 != null && P10.r();
    }

    public final void U(int i10, boolean z10) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f63920p = false;
            a0(this.f63919o);
            return;
        }
        Animator animator = this.f63910f;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!T()) {
            i10 = 0;
            z10 = false;
        }
        M(i10, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f63910f = animatorSet;
        animatorSet.addListener(new f());
        this.f63910f.start();
    }

    public final void V(int i10) {
        if (this.f63911g == i10 || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.f63909e;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f63912h == 1) {
            L(i10, arrayList);
        } else {
            K(i10, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f63909e = animatorSet;
        animatorSet.addListener(new d());
        this.f63909e.start();
    }

    @Nullable
    public final Drawable W(@Nullable Drawable drawable) {
        if (drawable == null || this.f63906b == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.f63906b.intValue());
        return wrap;
    }

    public void X() {
        getBehavior().d(this);
    }

    public void Y() {
        getBehavior().e(this);
    }

    public void Z(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f63918n;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    public void a0(@MenuRes int i10) {
        if (i10 != 0) {
            this.f63919o = 0;
            getMenu().clear();
            inflateMenu(i10);
        }
    }

    public final void b0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f63910f != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (T()) {
            f0(actionMenuView, this.f63911g, this.f63921q);
        } else {
            f0(actionMenuView, 0, false);
        }
    }

    public final void c0() {
        getTopEdgeTreatment().o(getFabTranslationX());
        View Q10 = Q();
        this.f63908d.o0((this.f63921q && T()) ? 1.0f : 0.0f);
        if (Q10 != null) {
            Q10.setTranslationY(getFabTranslationY());
            Q10.setTranslationX(getFabTranslationX());
        }
    }

    public void d0(int i10, @MenuRes int i11) {
        this.f63919o = i11;
        this.f63920p = true;
        U(i10, this.f63921q);
        V(i10);
        this.f63911g = i10;
    }

    public boolean e0(@Px int i10) {
        float f10 = i10;
        if (f10 == getTopEdgeTreatment().h()) {
            return false;
        }
        getTopEdgeTreatment().n(f10);
        this.f63908d.invalidateSelf();
        return true;
    }

    public final void f0(@NonNull ActionMenuView actionMenuView, int i10, boolean z10) {
        g0(actionMenuView, i10, z10, false);
    }

    public final void g0(@NonNull ActionMenuView actionMenuView, int i10, boolean z10, boolean z11) {
        h hVar = new h(actionMenuView, i10, z10);
        if (z11) {
            actionMenuView.post(hVar);
        } else {
            hVar.run();
        }
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f63908d.Q();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().d();
    }

    public int getFabAlignmentMode() {
        return this.f63911g;
    }

    public int getFabAnimationMode() {
        return this.f63912h;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().g();
    }

    public boolean getHideOnScroll() {
        return this.f63913i;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.f(this, this.f63908d);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            J();
            c0();
        }
        b0();
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m mVar = (m) parcelable;
        super.onRestoreInstanceState(mVar.getSuperState());
        this.f63911g = mVar.f63951b;
        this.f63921q = mVar.f63952c;
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        m mVar = new m(super.onSaveInstanceState());
        mVar.f63951b = this.f63911g;
        mVar.f63952c = this.f63921q;
        return mVar;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f63908d, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f10) {
        if (f10 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().j(f10);
            this.f63908d.invalidateSelf();
            c0();
        }
    }

    @Override
    public void setElevation(float f10) {
        this.f63908d.m0(f10);
        getBehavior().c(this, this.f63908d.J() - this.f63908d.I());
    }

    public void setFabAlignmentMode(int i10) {
        d0(i10, 0);
    }

    public void setFabAnimationMode(int i10) {
        this.f63912h = i10;
    }

    public void setFabCornerSize(@Dimension float f10) {
        if (f10 != getTopEdgeTreatment().e()) {
            getTopEdgeTreatment().k(f10);
            this.f63908d.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f10) {
        if (f10 != getFabCradleMargin()) {
            getTopEdgeTreatment().l(f10);
            this.f63908d.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f10) {
        if (f10 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m(f10);
            this.f63908d.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z10) {
        this.f63913i = z10;
    }

    @Override
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(W(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i10) {
        this.f63906b = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122058N0);
    }

    @Override
    @NonNull
    public Behavior getBehavior() {
        if (this.f63922r == null) {
            this.f63922r = new Behavior();
        }
        return this.f63922r;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        @NonNull
        public final Rect f63928i;

        public WeakReference<BottomAppBar> f63929j;

        public int f63930k;

        public final View.OnLayoutChangeListener f63931l;

        public class a implements View.OnLayoutChangeListener {
            public a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f63929j.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.l(Behavior.this.f63928i);
                int height = Behavior.this.f63928i.height();
                bottomAppBar.e0(height);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.f63928i)));
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (Behavior.this.f63930k == 0) {
                    layoutParams.bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(C15879a.f.f123145X2) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                    layoutParams.leftMargin = bottomAppBar.getLeftInset();
                    layoutParams.rightMargin = bottomAppBar.getRightInset();
                    if (A.j(floatingActionButton)) {
                        layoutParams.leftMargin += bottomAppBar.f63907c;
                    } else {
                        layoutParams.rightMargin += bottomAppBar.f63907c;
                    }
                }
            }
        }

        public Behavior() {
            this.f63931l = new a();
            this.f63928i = new Rect();
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i10) {
            this.f63929j = new WeakReference<>(bottomAppBar);
            View Q10 = bottomAppBar.Q();
            if (Q10 != null && !ViewCompat.isLaidOut(Q10)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) Q10.getLayoutParams();
                layoutParams.anchorGravity = 49;
                this.f63930k = layoutParams.bottomMargin;
                if (Q10 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) Q10;
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(C15879a.b.f121820r);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(C15879a.b.f121819q);
                    }
                    floatingActionButton.addOnLayoutChangeListener(this.f63931l);
                    bottomAppBar.I(floatingActionButton);
                }
                bottomAppBar.c0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i10);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i10);
        }

        @Override
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i10, int i11) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i10, i11);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f63931l = new a();
            this.f63928i = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r6), attributeSet, i10);
        int i11 = f63903x;
        C3567j c3567j = new C3567j();
        this.f63908d = c3567j;
        this.f63917m = 0;
        this.f63919o = 0;
        this.f63920p = false;
        this.f63921q = true;
        this.f63926v = new a();
        this.f63927w = new b();
        Context context2 = getContext();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125967t4, i10, i11, new int[0]);
        ColorStateList a10 = X1.c.a(context2, j10, C15879a.o.f125992u4);
        int i12 = C15879a.o.f124915C4;
        if (j10.hasValue(i12)) {
            setNavigationIconTint(j10.getColor(i12, -1));
        }
        int dimensionPixelSize = j10.getDimensionPixelSize(C15879a.o.f126017v4, 0);
        float dimensionPixelOffset = j10.getDimensionPixelOffset(C15879a.o.f126092y4, 0);
        float dimensionPixelOffset2 = j10.getDimensionPixelOffset(C15879a.o.f126116z4, 0);
        float dimensionPixelOffset3 = j10.getDimensionPixelOffset(C15879a.o.f124867A4, 0);
        this.f63911g = j10.getInt(C15879a.o.f126042w4, 0);
        this.f63912h = j10.getInt(C15879a.o.f126067x4, 0);
        this.f63913i = j10.getBoolean(C15879a.o.f124891B4, false);
        this.f63914j = j10.getBoolean(C15879a.o.f124939D4, false);
        this.f63915k = j10.getBoolean(C15879a.o.f124963E4, false);
        this.f63916l = j10.getBoolean(C15879a.o.f124987F4, false);
        j10.recycle();
        this.f63907c = getResources().getDimensionPixelOffset(C15879a.f.f123137W2);
        c3567j.setShapeAppearanceModel(C3572o.a().G(new A1.a(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m());
        c3567j.w0(2);
        c3567j.q0(Paint.Style.FILL);
        c3567j.Y(context2);
        setElevation(dimensionPixelSize);
        DrawableCompat.setTintList(c3567j, a10);
        ViewCompat.setBackground(this, c3567j);
        A.c(this, attributeSet, i10, i11, new c());
    }
}
