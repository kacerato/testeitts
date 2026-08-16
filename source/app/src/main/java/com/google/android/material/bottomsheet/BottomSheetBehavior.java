package com.google.android.material.bottomsheet;

import a2.C3567j;
import a2.C3572o;
import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.internal.A;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import w1.C15879a;

public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    public static final int f63953Z = 1;

    public static final int f63954a0 = 2;

    public static final int f63955b0 = 3;

    public static final int f63956c0 = 4;

    public static final int f63957d0 = 5;

    public static final int f63958e0 = 6;

    public static final int f63959f0 = -1;

    public static final int f63960g0 = 1;

    public static final int f63961h0 = 2;

    public static final int f63962i0 = 4;

    public static final int f63963j0 = 8;

    public static final int f63964k0 = -1;

    public static final int f63965l0 = 0;

    public static final String f63966m0 = "BottomSheetBehavior";

    public static final int f63967n0 = 500;

    public static final float f63968o0 = 0.5f;

    public static final float f63969p0 = 0.1f;

    public static final int f63970q0 = 500;

    public static final int f63971r0 = -1;

    public static final int f63972s0 = C15879a.n.f124803va;

    public float f63973A;

    public int f63974B;

    public float f63975C;

    public boolean f63976D;

    public boolean f63977E;

    public boolean f63978F;

    public int f63979G;

    public int f63980H;

    @Nullable
    public ViewDragHelper f63981I;

    public boolean f63982J;

    public int f63983K;

    public boolean f63984L;

    public int f63985M;

    public int f63986N;

    public int f63987O;

    @Nullable
    public WeakReference<V> f63988P;

    @Nullable
    public WeakReference<View> f63989Q;

    @NonNull
    public final ArrayList<g> f63990R;

    @Nullable
    public VelocityTracker f63991S;

    public int f63992T;

    public int f63993U;

    public boolean f63994V;

    @Nullable
    public Map<View, Integer> f63995W;

    public int f63996X;

    public final ViewDragHelper.Callback f63997Y;

    public int f63998a;

    public boolean f63999b;

    public boolean f64000c;

    public float f64001d;

    public int f64002e;

    public boolean f64003f;

    public int f64004g;

    public int f64005h;

    public boolean f64006i;

    public C3567j f64007j;

    public int f64008k;

    public int f64009l;

    public boolean f64010m;

    public boolean f64011n;

    public boolean f64012o;

    public boolean f64013p;

    public boolean f64014q;

    public int f64015r;

    public int f64016s;

    public C3572o f64017t;

    public boolean f64018u;

    public BottomSheetBehavior<V>.j f64019v;

    @Nullable
    public ValueAnimator f64020w;

    public int f64021x;

    public int f64022y;

    public int f64023z;

    public class a implements Runnable {

        public final View f64024b;

        public final ViewGroup.LayoutParams f64025c;

        public a(View view, ViewGroup.LayoutParams layoutParams) {
            this.f64024b = view;
            this.f64025c = layoutParams;
        }

        @Override
        public void run() {
            this.f64024b.setLayoutParams(this.f64025c);
        }
    }

    public class b implements Runnable {

        public final View f64027b;

        public final int f64028c;

        public b(View view, int i10) {
            this.f64027b = view;
            this.f64028c = i10;
        }

        @Override
        public void run() {
            BottomSheetBehavior.this.l0(this.f64027b, this.f64028c);
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f64007j != null) {
                BottomSheetBehavior.this.f64007j.o0(floatValue);
            }
        }
    }

    public class d implements A.e {

        public final boolean f64031a;

        public d(boolean z10) {
            this.f64031a = z10;
        }

        @Override
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, A.f fVar) {
            BottomSheetBehavior.this.f64016s = windowInsetsCompat.getSystemWindowInsetTop();
            boolean j10 = A.j(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.f64011n) {
                BottomSheetBehavior.this.f64015r = windowInsetsCompat.getSystemWindowInsetBottom();
                paddingBottom = fVar.f64577d + BottomSheetBehavior.this.f64015r;
            }
            if (BottomSheetBehavior.this.f64012o) {
                paddingLeft = (j10 ? fVar.f64576c : fVar.f64574a) + windowInsetsCompat.getSystemWindowInsetLeft();
            }
            if (BottomSheetBehavior.this.f64013p) {
                paddingRight = (j10 ? fVar.f64574a : fVar.f64576c) + windowInsetsCompat.getSystemWindowInsetRight();
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.f64031a) {
                BottomSheetBehavior.this.f64009l = windowInsetsCompat.getMandatorySystemGestureInsets().bottom;
            }
            if (BottomSheetBehavior.this.f64011n || this.f64031a) {
                BottomSheetBehavior.this.v0(false);
            }
            return windowInsetsCompat;
        }
    }

    public class e extends ViewDragHelper.Callback {

        public long f64033a;

        public e() {
        }

        public final boolean a(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.f63987O + bottomSheetBehavior.A()) / 2;
        }

        @Override
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            return view.getLeft();
        }

        @Override
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            int A10 = BottomSheetBehavior.this.A();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i10, A10, bottomSheetBehavior.f63976D ? bottomSheetBehavior.f63987O : bottomSheetBehavior.f63974B);
        }

        @Override
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f63976D ? bottomSheetBehavior.f63987O : bottomSheetBehavior.f63974B;
        }

        @Override
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && BottomSheetBehavior.this.f63978F) {
                BottomSheetBehavior.this.i0(1);
            }
        }

        @Override
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            BottomSheetBehavior.this.x(i11);
        }

        @Override
        public void onViewReleased(@NonNull View view, float f10, float f11) {
            int i10;
            int i11 = 6;
            if (f11 < 0.0f) {
                if (BottomSheetBehavior.this.f63999b) {
                    i10 = BottomSheetBehavior.this.f64022y;
                } else {
                    int top = view.getTop();
                    long currentTimeMillis = System.currentTimeMillis() - this.f64033a;
                    if (BottomSheetBehavior.this.p0()) {
                        if (BottomSheetBehavior.this.n0(currentTimeMillis, (top * 100.0f) / r10.f63987O)) {
                            i10 = BottomSheetBehavior.this.f64021x;
                        } else {
                            i10 = BottomSheetBehavior.this.f63974B;
                            i11 = 4;
                        }
                    } else {
                        BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                        int i12 = bottomSheetBehavior.f64023z;
                        if (top > i12) {
                            i10 = i12;
                        } else {
                            i10 = bottomSheetBehavior.A();
                        }
                    }
                }
                i11 = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                if (bottomSheetBehavior2.f63976D && bottomSheetBehavior2.o0(view, f11)) {
                    if ((Math.abs(f10) >= Math.abs(f11) || f11 <= 500.0f) && !a(view)) {
                        if (BottomSheetBehavior.this.f63999b) {
                            i10 = BottomSheetBehavior.this.f64022y;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.A()) < Math.abs(view.getTop() - BottomSheetBehavior.this.f64023z)) {
                            i10 = BottomSheetBehavior.this.A();
                        } else {
                            i10 = BottomSheetBehavior.this.f64023z;
                        }
                        i11 = 3;
                    } else {
                        i10 = BottomSheetBehavior.this.f63987O;
                        i11 = 5;
                    }
                } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                    int top2 = view.getTop();
                    if (!BottomSheetBehavior.this.f63999b) {
                        BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                        int i13 = bottomSheetBehavior3.f64023z;
                        if (top2 >= i13) {
                            if (Math.abs(top2 - i13) >= Math.abs(top2 - BottomSheetBehavior.this.f63974B)) {
                                i10 = BottomSheetBehavior.this.f63974B;
                            } else if (BottomSheetBehavior.this.p0()) {
                                i10 = BottomSheetBehavior.this.f63974B;
                            } else {
                                i10 = BottomSheetBehavior.this.f64023z;
                            }
                            i11 = 4;
                        } else if (top2 < Math.abs(top2 - bottomSheetBehavior3.f63974B)) {
                            i10 = BottomSheetBehavior.this.A();
                            i11 = 3;
                        } else if (BottomSheetBehavior.this.p0()) {
                            i10 = BottomSheetBehavior.this.f63974B;
                            i11 = 4;
                        } else {
                            i10 = BottomSheetBehavior.this.f64023z;
                        }
                    } else if (Math.abs(top2 - BottomSheetBehavior.this.f64022y) < Math.abs(top2 - BottomSheetBehavior.this.f63974B)) {
                        i10 = BottomSheetBehavior.this.f64022y;
                        i11 = 3;
                    } else {
                        i10 = BottomSheetBehavior.this.f63974B;
                        i11 = 4;
                    }
                } else {
                    if (BottomSheetBehavior.this.f63999b) {
                        i10 = BottomSheetBehavior.this.f63974B;
                    } else {
                        int top3 = view.getTop();
                        if (Math.abs(top3 - BottomSheetBehavior.this.f64023z) >= Math.abs(top3 - BottomSheetBehavior.this.f63974B)) {
                            i10 = BottomSheetBehavior.this.f63974B;
                        } else if (BottomSheetBehavior.this.p0()) {
                            i10 = BottomSheetBehavior.this.f63974B;
                        } else {
                            i10 = BottomSheetBehavior.this.f64023z;
                        }
                    }
                    i11 = 4;
                }
            }
            BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
            bottomSheetBehavior4.r0(view, i11, i10, bottomSheetBehavior4.q0());
        }

        @Override
        public boolean tryCaptureView(@NonNull View view, int i10) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i11 = bottomSheetBehavior.f63979G;
            if (i11 == 1 || bottomSheetBehavior.f63994V) {
                return false;
            }
            if (i11 == 3 && bottomSheetBehavior.f63992T == i10) {
                WeakReference<View> weakReference = bottomSheetBehavior.f63989Q;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f64033a = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.f63988P;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    public class f implements AccessibilityViewCommand {

        public final int f64035a;

        public f(int i10) {
            this.f64035a = i10;
        }

        @Override
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.h0(this.f64035a);
            return true;
        }
    }

    public static abstract class g {
        public abstract void a(@NonNull View view, float f10);

        public abstract void b(@NonNull View view, int i10);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface h {
    }

    public static class i extends AbsSavedState {
        public static final Parcelable.Creator<i> CREATOR = new a();

        public final int f64037b;

        public int f64038c;

        public boolean f64039d;

        public boolean f64040e;

        public boolean f64041f;

        public static class a implements Parcelable.ClassLoaderCreator<i> {
            @Override
            @Nullable
            public i createFromParcel(@NonNull Parcel parcel) {
                return new i(parcel, (ClassLoader) null);
            }

            @Override
            @NonNull
            public i createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new i(parcel, classLoader);
            }

            @Override
            @NonNull
            public i[] newArray(int i10) {
                return new i[i10];
            }
        }

        public i(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f64037b);
            parcel.writeInt(this.f64038c);
            parcel.writeInt(this.f64039d ? 1 : 0);
            parcel.writeInt(this.f64040e ? 1 : 0);
            parcel.writeInt(this.f64041f ? 1 : 0);
        }

        public i(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f64037b = parcel.readInt();
            this.f64038c = parcel.readInt();
            this.f64039d = parcel.readInt() == 1;
            this.f64040e = parcel.readInt() == 1;
            this.f64041f = parcel.readInt() == 1;
        }

        public i(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f64037b = bottomSheetBehavior.f63979G;
            this.f64038c = bottomSheetBehavior.f64002e;
            this.f64039d = bottomSheetBehavior.f63999b;
            this.f64040e = bottomSheetBehavior.f63976D;
            this.f64041f = bottomSheetBehavior.f63977E;
        }

        @Deprecated
        public i(Parcelable parcelable, int i10) {
            super(parcelable);
            this.f64037b = i10;
        }
    }

    public class j implements Runnable {

        public final View f64042b;

        public boolean f64043c;

        public int f64044d;

        public j(View view, int i10) {
            this.f64042b = view;
            this.f64044d = i10;
        }

        @Override
        public void run() {
            ViewDragHelper viewDragHelper = BottomSheetBehavior.this.f63981I;
            if (viewDragHelper == null || !viewDragHelper.continueSettling(true)) {
                BottomSheetBehavior.this.i0(this.f64044d);
            } else {
                ViewCompat.postOnAnimation(this.f64042b, this);
            }
            this.f64043c = false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface k {
    }

    public BottomSheetBehavior() {
        this.f63998a = 0;
        this.f63999b = true;
        this.f64000c = false;
        this.f64008k = -1;
        this.f64019v = null;
        this.f63973A = 0.5f;
        this.f63975C = -1.0f;
        this.f63978F = true;
        this.f63979G = 4;
        this.f63980H = 4;
        this.f63990R = new ArrayList<>();
        this.f63996X = -1;
        this.f63997Y = new e();
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> z(@NonNull V v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    public int A() {
        if (this.f63999b) {
            return this.f64022y;
        }
        return Math.max(this.f64021x, this.f64014q ? 0 : this.f64016s);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float B() {
        return this.f63973A;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int C() {
        return this.f63980H;
    }

    public C3567j D() {
        return this.f64007j;
    }

    @Px
    public int E() {
        return this.f64008k;
    }

    public int F() {
        if (this.f64003f) {
            return -1;
        }
        return this.f64002e;
    }

    @VisibleForTesting
    public int G() {
        return this.f64004g;
    }

    public int H() {
        return this.f63998a;
    }

    public boolean I() {
        return this.f63977E;
    }

    public int J() {
        return this.f63979G;
    }

    public final float K() {
        VelocityTracker velocityTracker = this.f63991S;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f64001d);
        return this.f63991S.getYVelocity(this.f63992T);
    }

    public boolean L() {
        return this.f63978F;
    }

    public boolean M() {
        return this.f63999b;
    }

    public boolean N() {
        return this.f64010m;
    }

    public boolean O() {
        return this.f63976D;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean P() {
        return true;
    }

    public void Q(@NonNull g gVar) {
        this.f63990R.remove(gVar);
    }

    public final void R(V v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i10) {
        ViewCompat.replaceAccessibilityAction(v10, accessibilityActionCompat, null, s(i10));
    }

    public final void S() {
        this.f63992T = -1;
        VelocityTracker velocityTracker = this.f63991S;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f63991S = null;
        }
    }

    public final void T(@NonNull i iVar) {
        int i10 = this.f63998a;
        if (i10 == 0) {
            return;
        }
        if (i10 == -1 || (i10 & 1) == 1) {
            this.f64002e = iVar.f64038c;
        }
        if (i10 == -1 || (i10 & 2) == 2) {
            this.f63999b = iVar.f64039d;
        }
        if (i10 == -1 || (i10 & 4) == 4) {
            this.f63976D = iVar.f64040e;
        }
        if (i10 == -1 || (i10 & 8) == 8) {
            this.f63977E = iVar.f64041f;
        }
    }

    @Deprecated
    public void U(g gVar) {
        Log.w(f63966m0, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        this.f63990R.clear();
        if (gVar != null) {
            this.f63990R.add(gVar);
        }
    }

    public void V(boolean z10) {
        this.f63978F = z10;
    }

    public void W(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f64021x = i10;
    }

    public void X(boolean z10) {
        if (this.f63999b == z10) {
            return;
        }
        this.f63999b = z10;
        if (this.f63988P != null) {
            p();
        }
        i0((this.f63999b && this.f63979G == 6) ? 3 : this.f63979G);
        s0();
    }

    public void Y(boolean z10) {
        this.f64010m = z10;
    }

    public void Z(@FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f63973A = f10;
        if (this.f63988P != null) {
            q();
        }
    }

    public void a0(boolean z10) {
        if (this.f63976D != z10) {
            this.f63976D = z10;
            if (!z10 && this.f63979G == 5) {
                h0(4);
            }
            s0();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void b0(boolean z10) {
        this.f63976D = z10;
    }

    public void c0(@Px int i10) {
        this.f64008k = i10;
    }

    public void d0(int i10) {
        e0(i10, false);
    }

    public final void e0(int i10, boolean z10) {
        if (i10 == -1) {
            if (this.f64003f) {
                return;
            } else {
                this.f64003f = true;
            }
        } else {
            if (!this.f64003f && this.f64002e == i10) {
                return;
            }
            this.f64003f = false;
            this.f64002e = Math.max(0, i10);
        }
        v0(z10);
    }

    public void f0(int i10) {
        this.f63998a = i10;
    }

    public void g0(boolean z10) {
        this.f63977E = z10;
    }

    public void h0(int i10) {
        if (i10 == this.f63979G) {
            return;
        }
        if (this.f63988P != null) {
            m0(i10);
            return;
        }
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.f63976D && i10 == 5)) {
            this.f63979G = i10;
            this.f63980H = i10;
        }
    }

    public void i0(int i10) {
        V v10;
        if (this.f63979G == i10) {
            return;
        }
        this.f63979G = i10;
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.f63976D && i10 == 5)) {
            this.f63980H = i10;
        }
        WeakReference<V> weakReference = this.f63988P;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            u0(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            u0(false);
        }
        t0(i10);
        for (int i11 = 0; i11 < this.f63990R.size(); i11++) {
            this.f63990R.get(i11).b(v10, i10);
        }
        s0();
    }

    public void j0(boolean z10) {
        this.f64000c = z10;
    }

    public final void k0(@NonNull View view) {
        boolean z10 = (Build.VERSION.SDK_INT < 29 || N() || this.f64003f) ? false : true;
        if (this.f64011n || this.f64012o || this.f64013p || z10) {
            A.d(view, new d(z10));
        }
    }

    public void l0(@NonNull View view, int i10) {
        int i11;
        int i12;
        if (i10 == 4) {
            i11 = this.f63974B;
        } else if (i10 == 6) {
            i11 = this.f64023z;
            if (this.f63999b && i11 <= (i12 = this.f64022y)) {
                i10 = 3;
                i11 = i12;
            }
        } else if (i10 == 3) {
            i11 = A();
        } else {
            if (!this.f63976D || i10 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i10);
            }
            i11 = this.f63987O;
        }
        r0(view, i10, i11, false);
    }

    public final void m0(int i10) {
        V v10 = this.f63988P.get();
        if (v10 == null) {
            return;
        }
        ViewParent parent = v10.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v10)) {
            v10.post(new b(v10, i10));
        } else {
            l0(v10, i10);
        }
    }

    public final int n(V v10, @StringRes int i10, int i11) {
        return ViewCompat.addAccessibilityAction(v10, v10.getResources().getString(i10), s(i11));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean n0(long j10, @FloatRange(from = 0.0d, to = 100.0d) float f10) {
        return false;
    }

    public void o(@NonNull g gVar) {
        if (this.f63990R.contains(gVar)) {
            return;
        }
        this.f63990R.add(gVar);
    }

    public boolean o0(@NonNull View view, float f10) {
        if (this.f63977E) {
            return true;
        }
        if (view.getTop() < this.f63974B) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f10 * 0.1f)) - ((float) this.f63974B)) / ((float) r()) > 0.5f;
    }

    @Override
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.f63988P = null;
        this.f63981I = null;
    }

    @Override
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f63988P = null;
        this.f63981I = null;
    }

    @Override
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v10.isShown() || !this.f63978F) {
            this.f63982J = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            S();
        }
        if (this.f63991S == null) {
            this.f63991S = VelocityTracker.obtain();
        }
        this.f63991S.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.f63993U = (int) motionEvent.getY();
            if (this.f63979G != 2) {
                WeakReference<View> weakReference = this.f63989Q;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x10, this.f63993U)) {
                    this.f63992T = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f63994V = true;
                }
            }
            this.f63982J = this.f63992T == -1 && !coordinatorLayout.isPointInChildBounds(v10, x10, this.f63993U);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f63994V = false;
            this.f63992T = -1;
            if (this.f63982J) {
                this.f63982J = false;
                return false;
            }
        }
        if (!this.f63982J && (viewDragHelper = this.f63981I) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f63989Q;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.f63982J || this.f63979G == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f63981I == null || Math.abs(((float) this.f63993U) - motionEvent.getY()) <= ((float) this.f63981I.getTouchSlop())) ? false : true;
    }

    @Override
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        C3567j c3567j;
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v10)) {
            v10.setFitsSystemWindows(true);
        }
        if (this.f63988P == null) {
            this.f64004g = coordinatorLayout.getResources().getDimensionPixelSize(C15879a.f.f123195d1);
            k0(v10);
            this.f63988P = new WeakReference<>(v10);
            if (this.f64006i && (c3567j = this.f64007j) != null) {
                ViewCompat.setBackground(v10, c3567j);
            }
            C3567j c3567j2 = this.f64007j;
            if (c3567j2 != null) {
                float f10 = this.f63975C;
                if (f10 == -1.0f) {
                    f10 = ViewCompat.getElevation(v10);
                }
                c3567j2.m0(f10);
                boolean z10 = this.f63979G == 3;
                this.f64018u = z10;
                this.f64007j.o0(z10 ? 0.0f : 1.0f);
            }
            s0();
            if (ViewCompat.getImportantForAccessibility(v10) == 0) {
                ViewCompat.setImportantForAccessibility(v10, 1);
            }
            int measuredWidth = v10.getMeasuredWidth();
            int i11 = this.f64008k;
            if (measuredWidth > i11 && i11 != -1) {
                ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
                layoutParams.width = this.f64008k;
                v10.post(new a(v10, layoutParams));
            }
        }
        if (this.f63981I == null) {
            this.f63981I = ViewDragHelper.create(coordinatorLayout, this.f63997Y);
        }
        int top = v10.getTop();
        coordinatorLayout.onLayoutChild(v10, i10);
        this.f63986N = coordinatorLayout.getWidth();
        this.f63987O = coordinatorLayout.getHeight();
        int height = v10.getHeight();
        this.f63985M = height;
        int i12 = this.f63987O;
        int i13 = i12 - height;
        int i14 = this.f64016s;
        if (i13 < i14) {
            if (this.f64014q) {
                this.f63985M = i12;
            } else {
                this.f63985M = i12 - i14;
            }
        }
        this.f64022y = Math.max(0, i12 - this.f63985M);
        q();
        p();
        int i15 = this.f63979G;
        if (i15 == 3) {
            ViewCompat.offsetTopAndBottom(v10, A());
        } else if (i15 == 6) {
            ViewCompat.offsetTopAndBottom(v10, this.f64023z);
        } else if (this.f63976D && i15 == 5) {
            ViewCompat.offsetTopAndBottom(v10, this.f63987O);
        } else if (i15 == 4) {
            ViewCompat.offsetTopAndBottom(v10, this.f63974B);
        } else if (i15 == 1 || i15 == 2) {
            ViewCompat.offsetTopAndBottom(v10, top - v10.getTop());
        }
        this.f63989Q = new WeakReference<>(y(v10));
        return true;
    }

    @Override
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, float f10, float f11) {
        WeakReference<View> weakReference;
        if (P() && (weakReference = this.f63989Q) != null && view == weakReference.get()) {
            return this.f63979G != 3 || super.onNestedPreFling(coordinatorLayout, v10, view, f10, f11);
        }
        return false;
    }

    @Override
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f63989Q;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!P() || view == view2) {
            int top = v10.getTop();
            int i13 = top - i11;
            if (i11 > 0) {
                if (i13 < A()) {
                    int A10 = top - A();
                    iArr[1] = A10;
                    ViewCompat.offsetTopAndBottom(v10, -A10);
                    i0(3);
                } else {
                    if (!this.f63978F) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(v10, -i11);
                    i0(1);
                }
            } else if (i11 < 0 && !view.canScrollVertically(-1)) {
                int i14 = this.f63974B;
                if (i13 > i14 && !this.f63976D) {
                    int i15 = top - i14;
                    iArr[1] = i15;
                    ViewCompat.offsetTopAndBottom(v10, -i15);
                    i0(4);
                } else {
                    if (!this.f63978F) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(v10, -i11);
                    i0(1);
                }
            }
            x(v10.getTop());
            this.f63983K = i11;
            this.f63984L = true;
        }
    }

    @Override
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
    }

    @Override
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull Parcelable parcelable) {
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v10, iVar.getSuperState());
        T(iVar);
        int i10 = iVar.f64037b;
        if (i10 == 1 || i10 == 2) {
            this.f63979G = 4;
            this.f63980H = 4;
        } else {
            this.f63979G = i10;
            this.f63980H = i10;
        }
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10) {
        return new i(super.onSaveInstanceState(coordinatorLayout, v10), (BottomSheetBehavior<?>) this);
    }

    @Override
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, @NonNull View view2, int i10, int i11) {
        this.f63983K = 0;
        this.f63984L = false;
        return (i10 & 2) != 0;
    }

    @Override
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10) {
        int i11;
        WeakReference<View> weakReference;
        int i12 = 3;
        if (v10.getTop() == A()) {
            i0(3);
            return;
        }
        if (!P() || ((weakReference = this.f63989Q) != null && view == weakReference.get() && this.f63984L)) {
            if (this.f63983K > 0) {
                if (this.f63999b) {
                    i11 = this.f64022y;
                } else {
                    int top = v10.getTop();
                    int i13 = this.f64023z;
                    if (top > i13) {
                        i12 = 6;
                        i11 = i13;
                    } else {
                        i11 = A();
                    }
                }
            } else if (this.f63976D && o0(v10, K())) {
                i11 = this.f63987O;
                i12 = 5;
            } else if (this.f63983K == 0) {
                int top2 = v10.getTop();
                if (!this.f63999b) {
                    int i14 = this.f64023z;
                    if (top2 < i14) {
                        if (top2 < Math.abs(top2 - this.f63974B)) {
                            i11 = A();
                        } else if (p0()) {
                            i11 = this.f63974B;
                            i12 = 4;
                        } else {
                            i11 = this.f64023z;
                            i12 = 6;
                        }
                    } else if (Math.abs(top2 - i14) < Math.abs(top2 - this.f63974B)) {
                        i11 = this.f64023z;
                        i12 = 6;
                    } else {
                        i11 = this.f63974B;
                        i12 = 4;
                    }
                } else if (Math.abs(top2 - this.f64022y) < Math.abs(top2 - this.f63974B)) {
                    i11 = this.f64022y;
                } else {
                    i11 = this.f63974B;
                    i12 = 4;
                }
            } else {
                if (this.f63999b) {
                    i11 = this.f63974B;
                } else {
                    int top3 = v10.getTop();
                    if (Math.abs(top3 - this.f64023z) < Math.abs(top3 - this.f63974B)) {
                        i11 = this.f64023z;
                        i12 = 6;
                    } else {
                        i11 = this.f63974B;
                    }
                }
                i12 = 4;
            }
            r0(v10, i12, i11, false);
            this.f63984L = false;
        }
    }

    @Override
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f63979G == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.f63981I;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            S();
        }
        if (this.f63991S == null) {
            this.f63991S = VelocityTracker.obtain();
        }
        this.f63991S.addMovement(motionEvent);
        if (this.f63981I != null && actionMasked == 2 && !this.f63982J && Math.abs(this.f63993U - motionEvent.getY()) > this.f63981I.getTouchSlop()) {
            this.f63981I.captureChildView(v10, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f63982J;
    }

    public final void p() {
        int r10 = r();
        if (this.f63999b) {
            this.f63974B = Math.max(this.f63987O - r10, this.f64022y);
        } else {
            this.f63974B = this.f63987O - r10;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean p0() {
        return false;
    }

    public final void q() {
        this.f64023z = (int) (this.f63987O * (1.0f - this.f63973A));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean q0() {
        return true;
    }

    public final int r() {
        int i10;
        return this.f64003f ? Math.min(Math.max(this.f64004g, this.f63987O - ((this.f63986N * 9) / 16)), this.f63985M) + this.f64015r : (this.f64010m || this.f64011n || (i10 = this.f64009l) <= 0) ? this.f64002e + this.f64015r : Math.max(this.f64002e, i10 + this.f64005h);
    }

    public void r0(View view, int i10, int i11, boolean z10) {
        ViewDragHelper viewDragHelper = this.f63981I;
        if (viewDragHelper == null || (!z10 ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), i11) : viewDragHelper.settleCapturedViewAt(view.getLeft(), i11))) {
            i0(i10);
            return;
        }
        i0(2);
        t0(i10);
        if (this.f64019v == null) {
            this.f64019v = new j(view, i10);
        }
        if (this.f64019v.f64043c) {
            this.f64019v.f64044d = i10;
            return;
        }
        BottomSheetBehavior<V>.j jVar = this.f64019v;
        jVar.f64044d = i10;
        ViewCompat.postOnAnimation(view, jVar);
        this.f64019v.f64043c = true;
    }

    public final AccessibilityViewCommand s(int i10) {
        return new f(i10);
    }

    public final void s0() {
        V v10;
        WeakReference<V> weakReference = this.f63988P;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v10, 524288);
        ViewCompat.removeAccessibilityAction(v10, 262144);
        ViewCompat.removeAccessibilityAction(v10, 1048576);
        int i10 = this.f63996X;
        if (i10 != -1) {
            ViewCompat.removeAccessibilityAction(v10, i10);
        }
        if (!this.f63999b && this.f63979G != 6) {
            this.f63996X = n(v10, C15879a.m.f124037D, 6);
        }
        if (this.f63976D && this.f63979G != 5) {
            R(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i11 = this.f63979G;
        if (i11 == 3) {
            R(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.f63999b ? 4 : 6);
            return;
        }
        if (i11 == 4) {
            R(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.f63999b ? 3 : 6);
        } else {
            if (i11 != 6) {
                return;
            }
            R(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            R(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    public final void t(@NonNull Context context, AttributeSet attributeSet, boolean z10) {
        u(context, attributeSet, z10, null);
    }

    public final void t0(int i10) {
        ValueAnimator valueAnimator;
        if (i10 == 2) {
            return;
        }
        boolean z10 = i10 == 3;
        if (this.f64018u != z10) {
            this.f64018u = z10;
            if (this.f64007j == null || (valueAnimator = this.f64020w) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f64020w.reverse();
                return;
            }
            float f10 = z10 ? 0.0f : 1.0f;
            this.f64020w.setFloatValues(1.0f - f10, f10);
            this.f64020w.start();
        }
    }

    public final void u(@NonNull Context context, AttributeSet attributeSet, boolean z10, @Nullable ColorStateList colorStateList) {
        if (this.f64006i) {
            this.f64017t = C3572o.e(context, attributeSet, C15879a.c.f122111Q0, f63972s0).m();
            C3567j c3567j = new C3567j(this.f64017t);
            this.f64007j = c3567j;
            c3567j.Y(context);
            if (z10 && colorStateList != null) {
                this.f64007j.n0(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.f64007j.setTint(typedValue.data);
        }
    }

    public final void u0(boolean z10) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.f63988P;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                if (this.f63995W != null) {
                    return;
                } else {
                    this.f63995W = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.f63988P.get()) {
                    if (z10) {
                        this.f63995W.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.f64000c) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f64000c && (map = this.f63995W) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.f63995W.get(childAt).intValue());
                    }
                }
            }
            if (!z10) {
                this.f63995W = null;
            } else if (this.f64000c) {
                this.f63988P.get().sendAccessibilityEvent(8);
            }
        }
    }

    public final void v() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f64020w = ofFloat;
        ofFloat.setDuration(500L);
        this.f64020w.addUpdateListener(new c());
    }

    public final void v0(boolean z10) {
        V v10;
        if (this.f63988P != null) {
            p();
            if (this.f63979G != 4 || (v10 = this.f63988P.get()) == null) {
                return;
            }
            if (z10) {
                m0(this.f63979G);
            } else {
                v10.requestLayout();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void w() {
        this.f64020w = null;
    }

    public void x(int i10) {
        float f10;
        float f11;
        V v10 = this.f63988P.get();
        if (v10 == null || this.f63990R.isEmpty()) {
            return;
        }
        int i11 = this.f63974B;
        if (i10 > i11 || i11 == A()) {
            int i12 = this.f63974B;
            f10 = i12 - i10;
            f11 = this.f63987O - i12;
        } else {
            int i13 = this.f63974B;
            f10 = i13 - i10;
            f11 = i13 - A();
        }
        float f12 = f10 / f11;
        for (int i14 = 0; i14 < this.f63990R.size(); i14++) {
            this.f63990R.get(i14).a(v10, f12);
        }
    }

    @Nullable
    @VisibleForTesting
    public View y(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View y10 = y(viewGroup.getChildAt(i10));
            if (y10 != null) {
                return y10;
            }
        }
        return null;
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        int i10;
        this.f63998a = 0;
        this.f63999b = true;
        this.f64000c = false;
        this.f64008k = -1;
        this.f64019v = null;
        this.f63973A = 0.5f;
        this.f63975C = -1.0f;
        this.f63978F = true;
        this.f63979G = 4;
        this.f63980H = 4;
        this.f63990R = new ArrayList<>();
        this.f63996X = -1;
        this.f63997Y = new e();
        this.f64005h = context.getResources().getDimensionPixelSize(C15879a.f.f123226g5);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f125083J4);
        this.f64006i = obtainStyledAttributes.hasValue(C15879a.o.f125492a5);
        int i11 = C15879a.o.f125155M4;
        boolean hasValue = obtainStyledAttributes.hasValue(i11);
        if (hasValue) {
            u(context, attributeSet, hasValue, X1.c.a(context, obtainStyledAttributes, i11));
        } else {
            t(context, attributeSet, hasValue);
        }
        v();
        this.f63975C = obtainStyledAttributes.getDimension(C15879a.o.f125131L4, -1.0f);
        int i12 = C15879a.o.f125107K4;
        if (obtainStyledAttributes.hasValue(i12)) {
            c0(obtainStyledAttributes.getDimensionPixelSize(i12, -1));
        }
        int i13 = C15879a.o.f125299S4;
        TypedValue peekValue = obtainStyledAttributes.peekValue(i13);
        if (peekValue != null && (i10 = peekValue.data) == -1) {
            d0(i10);
        } else {
            d0(obtainStyledAttributes.getDimensionPixelSize(i13, -1));
        }
        a0(obtainStyledAttributes.getBoolean(C15879a.o.f125275R4, false));
        Y(obtainStyledAttributes.getBoolean(C15879a.o.f125371V4, false));
        X(obtainStyledAttributes.getBoolean(C15879a.o.f125227P4, true));
        g0(obtainStyledAttributes.getBoolean(C15879a.o.f125347U4, false));
        V(obtainStyledAttributes.getBoolean(C15879a.o.f125179N4, true));
        f0(obtainStyledAttributes.getInt(C15879a.o.f125323T4, 0));
        Z(obtainStyledAttributes.getFloat(C15879a.o.f125251Q4, 0.5f));
        int i14 = C15879a.o.f125203O4;
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(i14);
        if (peekValue2 != null && peekValue2.type == 16) {
            W(peekValue2.data);
        } else {
            W(obtainStyledAttributes.getDimensionPixelOffset(i14, 0));
        }
        this.f64011n = obtainStyledAttributes.getBoolean(C15879a.o.f125395W4, false);
        this.f64012o = obtainStyledAttributes.getBoolean(C15879a.o.f125419X4, false);
        this.f64013p = obtainStyledAttributes.getBoolean(C15879a.o.f125443Y4, false);
        this.f64014q = obtainStyledAttributes.getBoolean(C15879a.o.f125467Z4, true);
        obtainStyledAttributes.recycle();
        this.f64001d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
