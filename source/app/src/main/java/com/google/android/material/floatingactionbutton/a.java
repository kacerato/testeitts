package com.google.android.material.floatingactionbutton;

import a2.C3567j;
import a2.C3568k;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.BatteryManager;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.o;
import java.util.ArrayList;
import java.util.Iterator;
import w1.C15879a;
import x1.C16046a;
import x1.C16047b;
import x1.C16051f;

public class a {

    public static final long f64490E = 100;

    public static final long f64491F = 100;

    public static final int f64492G = 0;

    public static final int f64493H = 1;

    public static final int f64494I = 2;

    public static final float f64495J = 1.5f;

    public static final float f64496K = 0.0f;

    public static final float f64497L = 0.4f;

    public static final float f64498M = 0.4f;

    public static final float f64499N = 1.0f;

    public static final float f64500O = 1.0f;

    public static final float f64501P = 1.0f;

    public static final float f64502Q = 0.0f;

    public static final float f64503R = 0.0f;

    @Nullable
    public ViewTreeObserver.OnPreDrawListener f64512C;

    @Nullable
    public C3572o f64513a;

    @Nullable
    public C3567j f64514b;

    @Nullable
    public Drawable f64515c;

    @Nullable
    public P1.c f64516d;

    @Nullable
    public Drawable f64517e;

    public boolean f64518f;

    public float f64520h;

    public float f64521i;

    public float f64522j;

    public int f64523k;

    @NonNull
    public final o f64524l;

    @Nullable
    public Animator f64525m;

    @Nullable
    public x1.h f64526n;

    @Nullable
    public x1.h f64527o;

    public float f64528p;

    public int f64530r;

    public ArrayList<Animator.AnimatorListener> f64532t;

    public ArrayList<Animator.AnimatorListener> f64533u;

    public ArrayList<j> f64534v;

    public final FloatingActionButton f64535w;

    public final Z1.c f64536x;

    public static final TimeInterpolator f64489D = C16046a.f127890c;

    public static final int[] f64504S = {R.attr.state_pressed, R.attr.state_enabled};

    public static final int[] f64505T = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};

    public static final int[] f64506U = {R.attr.state_focused, R.attr.state_enabled};

    public static final int[] f64507V = {R.attr.state_hovered, R.attr.state_enabled};

    public static final int[] f64508W = {R.attr.state_enabled};

    public static final int[] f64509X = new int[0];

    public boolean f64519g = true;

    public float f64529q = 1.0f;

    public int f64531s = 0;

    public final Rect f64537y = new Rect();

    public final RectF f64538z = new RectF();

    public final RectF f64510A = new RectF();

    public final Matrix f64511B = new Matrix();

    public class C0964a extends AnimatorListenerAdapter {

        public boolean f64539a;

        public final boolean f64540b;

        public final k f64541c;

        public C0964a(boolean z10, k kVar) {
            this.f64540b = z10;
            this.f64541c = kVar;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f64539a = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            a.this.f64531s = 0;
            a.this.f64525m = null;
            if (this.f64539a) {
                return;
            }
            FloatingActionButton floatingActionButton = a.this.f64535w;
            boolean z10 = this.f64540b;
            floatingActionButton.c(z10 ? 8 : 4, z10);
            k kVar = this.f64541c;
            if (kVar != null) {
                kVar.b();
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            a.this.f64535w.c(0, this.f64540b);
            a.this.f64531s = 1;
            a.this.f64525m = animator;
            this.f64539a = false;
        }
    }

    public class b extends AnimatorListenerAdapter {

        public final boolean f64543a;

        public final k f64544b;

        public b(boolean z10, k kVar) {
            this.f64543a = z10;
            this.f64544b = kVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            a.this.f64531s = 0;
            a.this.f64525m = null;
            k kVar = this.f64544b;
            if (kVar != null) {
                kVar.a();
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            a.this.f64535w.c(0, this.f64543a);
            a.this.f64531s = 2;
            a.this.f64525m = animator;
        }
    }

    public class c extends x1.g {
        public c() {
        }

        @Override
        public Matrix evaluate(float f10, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            a.this.f64529q = f10;
            return super.evaluate(f10, matrix, matrix2);
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {

        public final float f64547a;

        public final float f64548b;

        public final float f64549c;

        public final float f64550d;

        public final float f64551e;

        public final float f64552f;

        public final float f64553g;

        public final Matrix f64554h;

        public d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, Matrix matrix) {
            this.f64547a = f10;
            this.f64548b = f11;
            this.f64549c = f12;
            this.f64550d = f13;
            this.f64551e = f14;
            this.f64552f = f15;
            this.f64553g = f16;
            this.f64554h = matrix;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            a.this.f64535w.setAlpha(C16046a.b(this.f64547a, this.f64548b, 0.0f, 0.2f, floatValue));
            a.this.f64535w.setScaleX(C16046a.a(this.f64549c, this.f64550d, floatValue));
            a.this.f64535w.setScaleY(C16046a.a(this.f64551e, this.f64550d, floatValue));
            a.this.f64529q = C16046a.a(this.f64552f, this.f64553g, floatValue);
            a.this.h(C16046a.a(this.f64552f, this.f64553g, floatValue), this.f64554h);
            a.this.f64535w.setImageMatrix(this.f64554h);
        }
    }

    public class e implements TypeEvaluator<Float> {

        public FloatEvaluator f64556a = new FloatEvaluator();

        public e() {
        }

        @Override
        public Float evaluate(float f10, Float f11, Float f12) {
            float floatValue = this.f64556a.evaluate(f10, (Number) f11, (Number) f12).floatValue();
            if (floatValue < 0.1f) {
                floatValue = 0.0f;
            }
            return Float.valueOf(floatValue);
        }
    }

    public class f implements ViewTreeObserver.OnPreDrawListener {
        public f() {
        }

        @Override
        public boolean onPreDraw() {
            a.this.H();
            return true;
        }
    }

    public class g extends m {
        public g() {
            super(a.this, null);
        }

        @Override
        public float a() {
            return 0.0f;
        }
    }

    public class h extends m {
        public h() {
            super(a.this, null);
        }

        @Override
        public float a() {
            a aVar = a.this;
            return aVar.f64520h + aVar.f64521i;
        }
    }

    public class i extends m {
        public i() {
            super(a.this, null);
        }

        @Override
        public float a() {
            a aVar = a.this;
            return aVar.f64520h + aVar.f64522j;
        }
    }

    public interface j {
        void a();

        void b();
    }

    public interface k {
        void a();

        void b();
    }

    public class l extends m {
        public l() {
            super(a.this, null);
        }

        @Override
        public float a() {
            return a.this.f64520h;
        }
    }

    public abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        public boolean f64563a;

        public float f64564b;

        public float f64565c;

        public m() {
        }

        public abstract float a();

        @Override
        public void onAnimationEnd(Animator animator) {
            a.this.j0((int) this.f64565c);
            this.f64563a = false;
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.f64563a) {
                C3567j c3567j = a.this.f64514b;
                this.f64564b = c3567j == null ? 0.0f : c3567j.x();
                this.f64565c = a();
                this.f64563a = true;
            }
            a aVar = a.this;
            float f10 = this.f64564b;
            aVar.j0((int) (f10 + ((this.f64565c - f10) * valueAnimator.getAnimatedFraction())));
        }

        public m(a aVar, C0964a c0964a) {
            this();
        }
    }

    public a(FloatingActionButton floatingActionButton, Z1.c cVar) {
        this.f64535w = floatingActionButton;
        this.f64536x = cVar;
        o oVar = new o();
        this.f64524l = oVar;
        oVar.a(f64504S, k(new i()));
        oVar.a(f64505T, k(new h()));
        oVar.a(f64506U, k(new h()));
        oVar.a(f64507V, k(new h()));
        oVar.a(f64508W, k(new l()));
        oVar.a(f64509X, k(new g()));
        this.f64528p = floatingActionButton.getRotation();
    }

    public void A() {
        this.f64524l.c();
    }

    public void B() {
        C3567j c3567j = this.f64514b;
        if (c3567j != null) {
            C3568k.f(this.f64535w, c3567j);
        }
        if (N()) {
            this.f64535w.getViewTreeObserver().addOnPreDrawListener(r());
        }
    }

    public void C() {
    }

    public void D() {
        ViewTreeObserver viewTreeObserver = this.f64535w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.f64512C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.f64512C = null;
        }
    }

    public void E(int[] iArr) {
        this.f64524l.d(iArr);
    }

    public void F(float f10, float f11, float f12) {
        i0();
        j0(f10);
    }

    public void G(@NonNull Rect rect) {
        Preconditions.checkNotNull(this.f64517e, "Didn't initialize content background");
        if (!c0()) {
            this.f64536x.setBackgroundDrawable(this.f64517e);
        } else {
            this.f64536x.setBackgroundDrawable(new InsetDrawable(this.f64517e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    public void H() {
        float rotation = this.f64535w.getRotation();
        if (this.f64528p != rotation) {
            this.f64528p = rotation;
            g0();
        }
    }

    public void I() {
        ArrayList<j> arrayList = this.f64534v;
        if (arrayList != null) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public void J() {
        ArrayList<j> arrayList = this.f64534v;
        if (arrayList != null) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    public void K(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f64533u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    public void L(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f64532t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    public void M(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f64534v;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    public boolean N() {
        return true;
    }

    public void O(@Nullable ColorStateList colorStateList) {
        C3567j c3567j = this.f64514b;
        if (c3567j != null) {
            c3567j.setTintList(colorStateList);
        }
        P1.c cVar = this.f64516d;
        if (cVar != null) {
            cVar.d(colorStateList);
        }
    }

    public void P(@Nullable PorterDuff.Mode mode) {
        C3567j c3567j = this.f64514b;
        if (c3567j != null) {
            c3567j.setTintMode(mode);
        }
    }

    public final void Q(float f10) {
        if (this.f64520h != f10) {
            this.f64520h = f10;
            F(f10, this.f64521i, this.f64522j);
        }
    }

    public void R(boolean z10) {
        this.f64518f = z10;
    }

    public final void S(@Nullable x1.h hVar) {
        this.f64527o = hVar;
    }

    public final void T(float f10) {
        if (this.f64521i != f10) {
            this.f64521i = f10;
            F(this.f64520h, f10, this.f64522j);
        }
    }

    public final void U(float f10) {
        this.f64529q = f10;
        Matrix matrix = this.f64511B;
        h(f10, matrix);
        this.f64535w.setImageMatrix(matrix);
    }

    public final void V(int i10) {
        if (this.f64530r != i10) {
            this.f64530r = i10;
            h0();
        }
    }

    public void W(int i10) {
        this.f64523k = i10;
    }

    public final void X(float f10) {
        if (this.f64522j != f10) {
            this.f64522j = f10;
            F(this.f64520h, this.f64521i, f10);
        }
    }

    public void Y(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f64515c;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, Y1.b.d(colorStateList));
        }
    }

    public void Z(boolean z10) {
        this.f64519g = z10;
        i0();
    }

    public final void a0(@NonNull C3572o c3572o) {
        this.f64513a = c3572o;
        C3567j c3567j = this.f64514b;
        if (c3567j != null) {
            c3567j.setShapeAppearanceModel(c3572o);
        }
        Object obj = this.f64515c;
        if (obj instanceof InterfaceC3576s) {
            ((InterfaceC3576s) obj).setShapeAppearanceModel(c3572o);
        }
        P1.c cVar = this.f64516d;
        if (cVar != null) {
            cVar.g(c3572o);
        }
    }

    public final void b0(@Nullable x1.h hVar) {
        this.f64526n = hVar;
    }

    public boolean c0() {
        return true;
    }

    public final boolean d0() {
        return ViewCompat.isLaidOut(this.f64535w) && !this.f64535w.isInEditMode();
    }

    public void e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f64533u == null) {
            this.f64533u = new ArrayList<>();
        }
        this.f64533u.add(animatorListener);
    }

    public final boolean e0() {
        return !this.f64518f || this.f64535w.getSizeDimension() >= this.f64523k;
    }

    public void f(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f64532t == null) {
            this.f64532t = new ArrayList<>();
        }
        this.f64532t.add(animatorListener);
    }

    public void f0(@Nullable k kVar, boolean z10) {
        if (z()) {
            return;
        }
        Animator animator = this.f64525m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z11 = this.f64526n == null;
        if (!d0()) {
            this.f64535w.c(0, z10);
            this.f64535w.setAlpha(1.0f);
            this.f64535w.setScaleY(1.0f);
            this.f64535w.setScaleX(1.0f);
            U(1.0f);
            if (kVar != null) {
                kVar.a();
                return;
            }
            return;
        }
        if (this.f64535w.getVisibility() != 0) {
            this.f64535w.setAlpha(0.0f);
            this.f64535w.setScaleY(z11 ? 0.4f : 0.0f);
            this.f64535w.setScaleX(z11 ? 0.4f : 0.0f);
            U(z11 ? 0.4f : 0.0f);
        }
        x1.h hVar = this.f64526n;
        AnimatorSet i10 = hVar != null ? i(hVar, 1.0f, 1.0f, 1.0f) : j(1.0f, 1.0f, 1.0f);
        i10.addListener(new b(z10, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f64532t;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                i10.addListener(it.next());
            }
        }
        i10.start();
    }

    public void g(@NonNull j jVar) {
        if (this.f64534v == null) {
            this.f64534v = new ArrayList<>();
        }
        this.f64534v.add(jVar);
    }

    public void g0() {
        C3567j c3567j = this.f64514b;
        if (c3567j != null) {
            c3567j.v0((int) this.f64528p);
        }
    }

    public final void h(float f10, @NonNull Matrix matrix) {
        matrix.reset();
        if (this.f64535w.getDrawable() == null || this.f64530r == 0) {
            return;
        }
        RectF rectF = this.f64538z;
        RectF rectF2 = this.f64510A;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i10 = this.f64530r;
        rectF2.set(0.0f, 0.0f, i10, i10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i11 = this.f64530r;
        matrix.postScale(f10, f10, i11 / 2.0f, i11 / 2.0f);
    }

    public final void h0() {
        U(this.f64529q);
    }

    @NonNull
    public final AnimatorSet i(@NonNull x1.h hVar, float f10, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f64535w, (Property<FloatingActionButton, Float>) View.ALPHA, f10);
        hVar.h("opacity").a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f64535w, (Property<FloatingActionButton, Float>) View.SCALE_X, f11);
        hVar.h(BatteryManager.EXTRA_SCALE).a(ofFloat2);
        k0(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f64535w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f11);
        hVar.h(BatteryManager.EXTRA_SCALE).a(ofFloat3);
        k0(ofFloat3);
        arrayList.add(ofFloat3);
        h(f12, this.f64511B);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f64535w, new C16051f(), new c(), new Matrix(this.f64511B));
        hVar.h("iconScale").a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C16047b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final void i0() {
        Rect rect = this.f64537y;
        s(rect);
        G(rect);
        this.f64536x.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final AnimatorSet j(float f10, float f11, float f12) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new d(this.f64535w.getAlpha(), f10, this.f64535w.getScaleX(), f11, this.f64535w.getScaleY(), this.f64529q, f12, new Matrix(this.f64511B)));
        arrayList.add(ofFloat);
        C16047b.a(animatorSet, arrayList);
        animatorSet.setDuration(S1.a.d(this.f64535w.getContext(), C15879a.c.f121996Ja, this.f64535w.getContext().getResources().getInteger(C15879a.i.f123890j)));
        animatorSet.setInterpolator(S1.a.e(this.f64535w.getContext(), C15879a.c.f122172Ta, C16046a.f127889b));
        return animatorSet;
    }

    public void j0(float f10) {
        C3567j c3567j = this.f64514b;
        if (c3567j != null) {
            c3567j.m0(f10);
        }
    }

    @NonNull
    public final ValueAnimator k(@NonNull m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f64489D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public final void k0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    public C3567j l() {
        return new C3567j((C3572o) Preconditions.checkNotNull(this.f64513a));
    }

    @Nullable
    public final Drawable m() {
        return this.f64517e;
    }

    public float n() {
        return this.f64520h;
    }

    public boolean o() {
        return this.f64518f;
    }

    @Nullable
    public final x1.h p() {
        return this.f64527o;
    }

    public float q() {
        return this.f64521i;
    }

    @NonNull
    public final ViewTreeObserver.OnPreDrawListener r() {
        if (this.f64512C == null) {
            this.f64512C = new f();
        }
        return this.f64512C;
    }

    public void s(@NonNull Rect rect) {
        int sizeDimension = this.f64518f ? (this.f64523k - this.f64535w.getSizeDimension()) / 2 : 0;
        int max = Math.max(sizeDimension, (int) Math.ceil(this.f64519g ? n() + this.f64522j : 0.0f));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(max, max2, max, max2);
    }

    public float t() {
        return this.f64522j;
    }

    @Nullable
    public final C3572o u() {
        return this.f64513a;
    }

    @Nullable
    public final x1.h v() {
        return this.f64526n;
    }

    public void w(@Nullable k kVar, boolean z10) {
        if (y()) {
            return;
        }
        Animator animator = this.f64525m;
        if (animator != null) {
            animator.cancel();
        }
        if (!d0()) {
            this.f64535w.c(z10 ? 8 : 4, z10);
            if (kVar != null) {
                kVar.b();
                return;
            }
            return;
        }
        x1.h hVar = this.f64527o;
        AnimatorSet i10 = hVar != null ? i(hVar, 0.0f, 0.0f, 0.0f) : j(0.0f, 0.4f, 0.4f);
        i10.addListener(new C0964a(z10, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f64533u;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                i10.addListener(it.next());
            }
        }
        i10.start();
    }

    public void x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        C3567j l10 = l();
        this.f64514b = l10;
        l10.setTintList(colorStateList);
        if (mode != null) {
            this.f64514b.setTintMode(mode);
        }
        this.f64514b.u0(-12303292);
        this.f64514b.Y(this.f64535w.getContext());
        Y1.a aVar = new Y1.a(this.f64514b.getShapeAppearanceModel());
        aVar.setTintList(Y1.b.d(colorStateList2));
        this.f64515c = aVar;
        this.f64517e = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f64514b), aVar});
    }

    public boolean y() {
        return this.f64535w.getVisibility() == 0 ? this.f64531s == 1 : this.f64531s != 2;
    }

    public boolean z() {
        return this.f64535w.getVisibility() != 0 ? this.f64531s == 2 : this.f64531s != 1;
    }
}
