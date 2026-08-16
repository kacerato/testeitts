package com.google.android.material.floatingactionbutton;

import a2.C3572o;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C12455c;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.util.Iterator;
import java.util.List;
import w1.C15879a;

public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {

    public static final int f64416N = 0;

    public static final int f64417O = 1;

    public static final int f64418P = 2;

    @NonNull
    public final com.google.android.material.floatingactionbutton.b f64423A;

    @NonNull
    public final com.google.android.material.floatingactionbutton.b f64424B;

    public final com.google.android.material.floatingactionbutton.b f64425C;

    public final com.google.android.material.floatingactionbutton.b f64426D;

    public final int f64427E;

    public int f64428F;

    public int f64429G;

    @NonNull
    public final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> f64430H;

    public boolean f64431I;

    public boolean f64432J;

    public boolean f64433K;

    @NonNull
    public ColorStateList f64434L;

    public int f64435y;

    public final P1.a f64436z;

    public static final int f64415M = C15879a.n.f124147Ab;

    public static final Property<View, Float> f64419Q = new d(Float.class, "width");

    public static final Property<View, Float> f64420R = new e(Float.class, "height");

    public static final Property<View, Float> f64421S = new f(Float.class, "paddingStart");

    public static final Property<View, Float> f64422T = new g(Float.class, "paddingEnd");

    public class a implements l {
        public a() {
        }

        @Override
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f64429G;
        }

        @Override
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f64428F;
        }

        @Override
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.f64428F + ExtendedFloatingActionButton.this.f64429G;
        }
    }

    public class b implements l {
        public b() {
        }

        @Override
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    public class c extends AnimatorListenerAdapter {

        public boolean f64446a;

        public final com.google.android.material.floatingactionbutton.b f64447b;

        public final j f64448c;

        public c(com.google.android.material.floatingactionbutton.b bVar, j jVar) {
            this.f64447b = bVar;
            this.f64448c = jVar;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f64446a = true;
            this.f64447b.i();
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f64447b.k();
            if (this.f64446a) {
                return;
            }
            this.f64447b.g(this.f64448c);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f64447b.onAnimationStart(animator);
            this.f64446a = false;
        }
    }

    public static class d extends Property<View, Float> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        @Override
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override
        public void set(@NonNull View view, @NonNull Float f10) {
            view.getLayoutParams().width = f10.intValue();
            view.requestLayout();
        }
    }

    public static class e extends Property<View, Float> {
        public e(Class cls, String str) {
            super(cls, str);
        }

        @Override
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override
        public void set(@NonNull View view, @NonNull Float f10) {
            view.getLayoutParams().height = f10.intValue();
            view.requestLayout();
        }
    }

    public static class f extends Property<View, Float> {
        public f(Class cls, String str) {
            super(cls, str);
        }

        @Override
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override
        public void set(@NonNull View view, @NonNull Float f10) {
            ViewCompat.setPaddingRelative(view, f10.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    public static class g extends Property<View, Float> {
        public g(Class cls, String str) {
            super(cls, str);
        }

        @Override
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override
        public void set(@NonNull View view, @NonNull Float f10) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f10.intValue(), view.getPaddingBottom());
        }
    }

    public class h extends P1.b {

        public final l f64450g;

        public final boolean f64451h;

        public h(P1.a aVar, l lVar, boolean z10) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f64450g = lVar;
            this.f64451h = z10;
        }

        @Override
        public boolean c() {
            return this.f64451h == ExtendedFloatingActionButton.this.f64431I || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override
        public int e() {
            return this.f64451h ? C15879a.b.f121815m : C15879a.b.f121814l;
        }

        @Override
        @NonNull
        public AnimatorSet f() {
            x1.h a10 = a();
            if (a10.j("width")) {
                PropertyValuesHolder[] g10 = a10.g("width");
                g10[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f64450g.getWidth());
                a10.l("width", g10);
            }
            if (a10.j("height")) {
                PropertyValuesHolder[] g11 = a10.g("height");
                g11[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f64450g.getHeight());
                a10.l("height", g11);
            }
            if (a10.j("paddingStart")) {
                PropertyValuesHolder[] g12 = a10.g("paddingStart");
                g12[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f64450g.getPaddingStart());
                a10.l("paddingStart", g12);
            }
            if (a10.j("paddingEnd")) {
                PropertyValuesHolder[] g13 = a10.g("paddingEnd");
                g13[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f64450g.getPaddingEnd());
                a10.l("paddingEnd", g13);
            }
            if (a10.j("labelOpacity")) {
                PropertyValuesHolder[] g14 = a10.g("labelOpacity");
                boolean z10 = this.f64451h;
                g14[0].setFloatValues(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
                a10.l("labelOpacity", g14);
            }
            return super.n(a10);
        }

        @Override
        public void g(@Nullable j jVar) {
            if (jVar == null) {
                return;
            }
            if (this.f64451h) {
                jVar.a(ExtendedFloatingActionButton.this);
            } else {
                jVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override
        public void h() {
            ExtendedFloatingActionButton.this.f64431I = this.f64451h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f64450g.a().width;
            layoutParams.height = this.f64450g.a().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f64450g.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f64450g.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override
        public void k() {
            super.k();
            ExtendedFloatingActionButton.this.f64432J = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f64450g.a().width;
            layoutParams.height = this.f64450g.a().height;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.f64431I = this.f64451h;
            ExtendedFloatingActionButton.this.f64432J = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    public class i extends P1.b {

        public boolean f64453g;

        public i(P1.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override
        public boolean c() {
            return ExtendedFloatingActionButton.this.I();
        }

        @Override
        public int e() {
            return C15879a.b.f121816n;
        }

        @Override
        public void g(@Nullable j jVar) {
            if (jVar != null) {
                jVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override
        public void h() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override
        public void i() {
            super.i();
            this.f64453g = true;
        }

        @Override
        public void k() {
            super.k();
            ExtendedFloatingActionButton.this.f64435y = 0;
            if (this.f64453g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f64453g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f64435y = 1;
        }
    }

    public static abstract class j {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    public class k extends P1.b {
        public k(P1.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override
        public boolean c() {
            return ExtendedFloatingActionButton.this.J();
        }

        @Override
        public int e() {
            return C15879a.b.f121817o;
        }

        @Override
        public void g(@Nullable j jVar) {
            if (jVar != null) {
                jVar.c(ExtendedFloatingActionButton.this);
            }
        }

        @Override
        public void h() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override
        public void k() {
            super.k();
            ExtendedFloatingActionButton.this.f64435y = 0;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f64435y = 2;
        }
    }

    public interface l {
        ViewGroup.LayoutParams a();

        int getHeight();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public boolean I() {
        return getVisibility() == 0 ? this.f64435y == 1 : this.f64435y != 2;
    }

    public boolean J() {
        return getVisibility() != 0 ? this.f64435y == 2 : this.f64435y != 1;
    }

    public void A(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64426D.j(animatorListener);
    }

    public void B(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64425C.j(animatorListener);
    }

    public void C(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64423A.j(animatorListener);
    }

    public void D() {
        K(this.f64424B, null);
    }

    public void E(@NonNull j jVar) {
        K(this.f64424B, jVar);
    }

    public void F() {
        K(this.f64426D, null);
    }

    public void G(@NonNull j jVar) {
        K(this.f64426D, jVar);
    }

    public final boolean H() {
        return this.f64431I;
    }

    public final void K(@NonNull com.google.android.material.floatingactionbutton.b bVar, @Nullable j jVar) {
        if (bVar.c()) {
            return;
        }
        if (!Q()) {
            bVar.h();
            bVar.g(jVar);
            return;
        }
        measure(0, 0);
        AnimatorSet f10 = bVar.f();
        f10.addListener(new c(bVar, jVar));
        Iterator<Animator.AnimatorListener> it = bVar.getListeners().iterator();
        while (it.hasNext()) {
            f10.addListener(it.next());
        }
        f10.start();
    }

    public void L(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64424B.d(animatorListener);
    }

    public void M(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64426D.d(animatorListener);
    }

    public void N(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64425C.d(animatorListener);
    }

    public void O(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64423A.d(animatorListener);
    }

    public final void P() {
        this.f64434L = getTextColors();
    }

    public final boolean Q() {
        return (ViewCompat.isLaidOut(this) || (!J() && this.f64433K)) && !isInEditMode();
    }

    public void R() {
        K(this.f64425C, null);
    }

    public void S(@NonNull j jVar) {
        K(this.f64425C, jVar);
    }

    public void T() {
        K(this.f64423A, null);
    }

    public void U(@NonNull j jVar) {
        K(this.f64423A, jVar);
    }

    public void V(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.f64430H;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @VisibleForTesting
    public int getCollapsedSize() {
        int i10 = this.f64427E;
        return i10 < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i10;
    }

    @Nullable
    public x1.h getExtendMotionSpec() {
        return this.f64424B.b();
    }

    @Nullable
    public x1.h getHideMotionSpec() {
        return this.f64426D.b();
    }

    @Nullable
    public x1.h getShowMotionSpec() {
        return this.f64425C.b();
    }

    @Nullable
    public x1.h getShrinkMotionSpec() {
        return this.f64423A.b();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f64431I && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.f64431I = false;
            this.f64423A.h();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.f64433K = z10;
    }

    public void setExtendMotionSpec(@Nullable x1.h hVar) {
        this.f64424B.l(hVar);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i10) {
        setExtendMotionSpec(x1.h.d(getContext(), i10));
    }

    public void setExtended(boolean z10) {
        if (this.f64431I == z10) {
            return;
        }
        com.google.android.material.floatingactionbutton.b bVar = z10 ? this.f64424B : this.f64423A;
        if (bVar.c()) {
            return;
        }
        bVar.h();
    }

    public void setHideMotionSpec(@Nullable x1.h hVar) {
        this.f64426D.l(hVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        setHideMotionSpec(x1.h.d(getContext(), i10));
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
        if (!this.f64431I || this.f64432J) {
            return;
        }
        this.f64428F = ViewCompat.getPaddingStart(this);
        this.f64429G = ViewCompat.getPaddingEnd(this);
    }

    @Override
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
        if (!this.f64431I || this.f64432J) {
            return;
        }
        this.f64428F = i10;
        this.f64429G = i12;
    }

    public void setShowMotionSpec(@Nullable x1.h hVar) {
        this.f64425C.l(hVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        setShowMotionSpec(x1.h.d(getContext(), i10));
    }

    public void setShrinkMotionSpec(@Nullable x1.h hVar) {
        this.f64423A.l(hVar);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i10) {
        setShrinkMotionSpec(x1.h.d(getContext(), i10));
    }

    @Override
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        P();
    }

    public void z(@NonNull Animator.AnimatorListener animatorListener) {
        this.f64424B.j(animatorListener);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122645u5);
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        public static final boolean f64437f = false;

        public static final boolean f64438g = true;

        public Rect f64439a;

        @Nullable
        public j f64440b;

        @Nullable
        public j f64441c;

        public boolean f64442d;

        public boolean f64443e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f64442d = false;
            this.f64443e = true;
        }

        public static boolean e(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        public void a(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f64443e;
            extendedFloatingActionButton.K(z10 ? extendedFloatingActionButton.f64424B : extendedFloatingActionButton.f64425C, z10 ? this.f64441c : this.f64440b);
        }

        @Override
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        public boolean c() {
            return this.f64442d;
        }

        public boolean d() {
            return this.f64443e;
        }

        @Override
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                n(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!e(view)) {
                return false;
            }
            o(view, extendedFloatingActionButton);
            return false;
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (e(view) && o(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (n(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i10);
            return true;
        }

        public void h(boolean z10) {
            this.f64442d = z10;
        }

        public void i(boolean z10) {
            this.f64443e = z10;
        }

        @VisibleForTesting
        public void j(@Nullable j jVar) {
            this.f64440b = jVar;
        }

        @VisibleForTesting
        public void k(@Nullable j jVar) {
            this.f64441c = jVar;
        }

        public final boolean l(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f64442d || this.f64443e) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).getAnchorId() == view.getId();
        }

        public void m(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f64443e;
            extendedFloatingActionButton.K(z10 ? extendedFloatingActionButton.f64423A : extendedFloatingActionButton.f64426D, z10 ? this.f64441c : this.f64440b);
        }

        public final boolean n(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!l(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f64439a == null) {
                this.f64439a = new Rect();
            }
            Rect rect = this.f64439a;
            C12455c.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                m(extendedFloatingActionButton);
                return true;
            }
            a(extendedFloatingActionButton);
            return true;
        }

        public final boolean o(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!l(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).topMargin) {
                m(extendedFloatingActionButton);
                return true;
            }
            a(extendedFloatingActionButton);
            return true;
        }

        @Override
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f125577df);
            this.f64442d = obtainStyledAttributes.getBoolean(C15879a.o.f125602ef, false);
            this.f64443e = obtainStyledAttributes.getBoolean(C15879a.o.f125627ff, true);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r9), attributeSet, i10);
        int i11 = f64415M;
        this.f64435y = 0;
        P1.a aVar = new P1.a();
        this.f64436z = aVar;
        k kVar = new k(aVar);
        this.f64425C = kVar;
        i iVar = new i(aVar);
        this.f64426D = iVar;
        this.f64431I = true;
        this.f64432J = false;
        this.f64433K = false;
        Context context2 = getContext();
        this.f64430H = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125405We, i10, i11, new int[0]);
        x1.h c10 = x1.h.c(context2, j10, C15879a.o.f125527bf);
        x1.h c11 = x1.h.c(context2, j10, C15879a.o.f125502af);
        x1.h c12 = x1.h.c(context2, j10, C15879a.o.f125477Ze);
        x1.h c13 = x1.h.c(context2, j10, C15879a.o.f125552cf);
        this.f64427E = j10.getDimensionPixelSize(C15879a.o.f125429Xe, -1);
        this.f64428F = ViewCompat.getPaddingStart(this);
        this.f64429G = ViewCompat.getPaddingEnd(this);
        P1.a aVar2 = new P1.a();
        h hVar = new h(aVar2, new a(), true);
        this.f64424B = hVar;
        h hVar2 = new h(aVar2, new b(), false);
        this.f64423A = hVar2;
        kVar.l(c10);
        iVar.l(c11);
        hVar.l(c12);
        hVar2.l(c13);
        j10.recycle();
        setShapeAppearanceModel(C3572o.g(context2, attributeSet, i10, i11, C3572o.f31750m).m());
        P();
    }

    @Override
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        P();
    }
}
