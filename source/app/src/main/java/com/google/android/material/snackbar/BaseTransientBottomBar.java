package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import c2.InterfaceC4149a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.A;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.a;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import w1.C15879a;
import x1.C16046a;

public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    public static final int f64784A = 150;

    public static final int f64785B = 75;

    public static final float f64786C = 0.8f;

    public static final int f64788E = 0;

    public static final int f64789F = 1;

    public static final int f64793t = 0;

    public static final int f64794u = 1;

    public static final int f64795v = -2;

    public static final int f64796w = -1;

    public static final int f64797x = 0;

    public static final int f64798y = 250;

    public static final int f64799z = 180;

    @NonNull
    public final ViewGroup f64800a;

    public final Context f64801b;

    @NonNull
    public final z f64802c;

    @NonNull
    public final InterfaceC4149a f64803d;

    public int f64804e;

    public boolean f64805f;

    @Nullable
    public r f64806g;

    public boolean f64807h;

    @RequiresApi(29)
    public final Runnable f64808i;

    @Nullable
    public Rect f64809j;

    public int f64810k;

    public int f64811l;

    public int f64812m;

    public int f64813n;

    public int f64814o;

    public List<t<B>> f64815p;

    public Behavior f64816q;

    @Nullable
    public final AccessibilityManager f64817r;

    @NonNull
    public a.b f64818s;

    public static final boolean f64790G = false;

    public static final int[] f64791H = {C15879a.c.f122384fd};

    public static final String f64792I = BaseTransientBottomBar.class.getSimpleName();

    @NonNull
    public static final Handler f64787D = new Handler(Looper.getMainLooper(), new i());

    public static class Behavior extends SwipeDismissBehavior<View> {

        @NonNull
        public final u f64819t = new u(this);

        @Override
        public boolean a(View view) {
            return this.f64819t.a(view);
        }

        @Override
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.f64819t.b(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        public final void p(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f64819t.c(baseTransientBottomBar);
        }
    }

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.S();
        }
    }

    public class b extends AnimatorListenerAdapter {

        public final int f64821a;

        public b(int i10) {
            this.f64821a = i10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R(this.f64821a);
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f64802c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f64802c.setScaleX(floatValue);
            BaseTransientBottomBar.this.f64802c.setScaleY(floatValue);
        }
    }

    public class e extends AnimatorListenerAdapter {
        public e() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.S();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f64803d.a(70, 180);
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {

        public int f64826a;

        public final int f64827b;

        public f(int i10) {
            this.f64827b = i10;
            this.f64826a = i10;
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f64790G) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f64802c, intValue - this.f64826a);
            } else {
                BaseTransientBottomBar.this.f64802c.setTranslationY(intValue);
            }
            this.f64826a = intValue;
        }
    }

    public class g extends AnimatorListenerAdapter {

        public final int f64829a;

        public g(int i10) {
            this.f64829a = i10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R(this.f64829a);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f64803d.b(0, 180);
        }
    }

    public class h implements ValueAnimator.AnimatorUpdateListener {

        public int f64831a = 0;

        public h() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f64790G) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f64802c, intValue - this.f64831a);
            } else {
                BaseTransientBottomBar.this.f64802c.setTranslationY(intValue);
            }
            this.f64831a = intValue;
        }
    }

    public static class i implements Handler.Callback {
        @Override
        public boolean handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                ((BaseTransientBottomBar) message.obj).g0();
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).L(message.arg1);
            return true;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override
        public void run() {
            int F10;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f64802c == null || baseTransientBottomBar.f64801b == null || (F10 = (BaseTransientBottomBar.this.F() - BaseTransientBottomBar.this.J()) + ((int) BaseTransientBottomBar.this.f64802c.getTranslationY())) >= BaseTransientBottomBar.this.f64813n) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f64802c.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.f64792I, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f64813n - F10;
            BaseTransientBottomBar.this.f64802c.requestLayout();
        }
    }

    public class k implements OnApplyWindowInsetsListener {
        public k() {
        }

        @Override
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f64810k = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f64811l = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f64812m = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.m0();
            return windowInsetsCompat;
        }
    }

    public class l extends AccessibilityDelegateCompat {
        public l() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 1048576) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            BaseTransientBottomBar.this.v();
            return true;
        }
    }

    public class m implements a.b {
        public m() {
        }

        @Override
        public void a(int i10) {
            Handler handler = BaseTransientBottomBar.f64787D;
            handler.sendMessage(handler.obtainMessage(1, i10, 0, BaseTransientBottomBar.this));
        }

        @Override
        public void show() {
            Handler handler = BaseTransientBottomBar.f64787D;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    public class n implements x {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                BaseTransientBottomBar.this.R(3);
            }
        }

        public n() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            WindowInsets rootWindowInsets;
            Insets mandatorySystemGestureInsets;
            int i10;
            if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = BaseTransientBottomBar.this.f64802c.getRootWindowInsets()) == null) {
                return;
            }
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            mandatorySystemGestureInsets = rootWindowInsets.getMandatorySystemGestureInsets();
            i10 = mandatorySystemGestureInsets.bottom;
            baseTransientBottomBar.f64813n = i10;
            BaseTransientBottomBar.this.m0();
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            if (BaseTransientBottomBar.this.P()) {
                BaseTransientBottomBar.f64787D.post(new a());
            }
        }
    }

    public class o implements y {
        public o() {
        }

        @Override
        public void a(View view, int i10, int i11, int i12, int i13) {
            BaseTransientBottomBar.this.f64802c.setOnLayoutChangeListener(null);
            BaseTransientBottomBar.this.h0();
        }
    }

    public class p implements SwipeDismissBehavior.c {
        public p() {
        }

        @Override
        public void a(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.w(0);
        }

        @Override
        public void b(int i10) {
            if (i10 == 0) {
                com.google.android.material.snackbar.a.c().l(BaseTransientBottomBar.this.f64818s);
            } else if (i10 == 1 || i10 == 2) {
                com.google.android.material.snackbar.a.c().k(BaseTransientBottomBar.this.f64818s);
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override
        public void run() {
            z zVar = BaseTransientBottomBar.this.f64802c;
            if (zVar == null) {
                return;
            }
            if (zVar.getParent() != null) {
                BaseTransientBottomBar.this.f64802c.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.f64802c.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.i0();
            } else {
                BaseTransientBottomBar.this.k0();
            }
        }
    }

    public static class r implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        @NonNull
        public final WeakReference<BaseTransientBottomBar> f64842b;

        @NonNull
        public final WeakReference<View> f64843c;

        public r(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            this.f64842b = new WeakReference<>(baseTransientBottomBar);
            this.f64843c = new WeakReference<>(view);
        }

        public static r a(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            r rVar = new r(baseTransientBottomBar, view);
            if (ViewCompat.isAttachedToWindow(view)) {
                A.a(view, rVar);
            }
            view.addOnAttachStateChangeListener(rVar);
            return rVar;
        }

        @Nullable
        public View b() {
            return this.f64843c.get();
        }

        public void c() {
            if (this.f64843c.get() != null) {
                this.f64843c.get().removeOnAttachStateChangeListener(this);
                A.l(this.f64843c.get(), this);
            }
            this.f64843c.clear();
            this.f64842b.clear();
        }

        public final boolean d() {
            if (this.f64842b.get() != null) {
                return false;
            }
            c();
            return true;
        }

        @Override
        public void onGlobalLayout() {
            if (d() || !this.f64842b.get().f64807h) {
                return;
            }
            this.f64842b.get().T();
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            if (d()) {
                return;
            }
            A.a(view, this);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            if (d()) {
                return;
            }
            A.l(view, this);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface s {
    }

    public static abstract class t<B> {

        public static final int f64844a = 0;

        public static final int f64845b = 1;

        public static final int f64846c = 2;

        public static final int f64847d = 3;

        public static final int f64848e = 4;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface a {
        }

        public void a(B b10, int i10) {
        }

        public void b(B b10) {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class u {

        public a.b f64849a;

        public u(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.l(0.1f);
            swipeDismissBehavior.i(0.6f);
            swipeDismissBehavior.m(0);
        }

        public boolean a(View view) {
            return view instanceof z;
        }

        public void b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.a.c().k(this.f64849a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.a.c().l(this.f64849a);
            }
        }

        public void c(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f64849a = baseTransientBottomBar.f64818s;
        }
    }

    @Deprecated
    public interface v extends InterfaceC4149a {
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface w {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface x {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface y {
        void a(View view, int i10, int i11, int i12, int i13);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class z extends FrameLayout {

        public static final View.OnTouchListener f64850i = new a();

        public y f64851b;

        public x f64852c;

        public int f64853d;

        public final float f64854e;

        public final float f64855f;

        public ColorStateList f64856g;

        public PorterDuff.Mode f64857h;

        public static class a implements View.OnTouchListener {
            @Override
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public z(@NonNull Context context) {
            this(context, null);
        }

        @NonNull
        public final Drawable a() {
            float dimension = getResources().getDimension(C15879a.f.f123173a6);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(J1.a.j(this, C15879a.c.f122164T2, C15879a.c.f122042M2, getBackgroundOverlayColorAlpha()));
            if (this.f64856g == null) {
                return DrawableCompat.wrap(gradientDrawable);
            }
            Drawable wrap = DrawableCompat.wrap(gradientDrawable);
            DrawableCompat.setTintList(wrap, this.f64856g);
            return wrap;
        }

        public float getActionTextColorAlpha() {
            return this.f64855f;
        }

        public int getAnimationMode() {
            return this.f64853d;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.f64854e;
        }

        @Override
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            x xVar = this.f64852c;
            if (xVar != null) {
                xVar.onViewAttachedToWindow(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            x xVar = this.f64852c;
            if (xVar != null) {
                xVar.onViewDetachedFromWindow(this);
            }
        }

        @Override
        public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            y yVar = this.f64851b;
            if (yVar != null) {
                yVar.a(this, i10, i11, i12, i13);
            }
        }

        public void setAnimationMode(int i10) {
            this.f64853d = i10;
        }

        @Override
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f64856g != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.f64856g);
                DrawableCompat.setTintMode(drawable, this.f64857h);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f64856g = colorStateList;
            if (getBackground() != null) {
                Drawable wrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(wrap, colorStateList);
                DrawableCompat.setTintMode(wrap, this.f64857h);
                if (wrap != getBackground()) {
                    super.setBackgroundDrawable(wrap);
                }
            }
        }

        @Override
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f64857h = mode;
            if (getBackground() != null) {
                Drawable wrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(wrap, mode);
                if (wrap != getBackground()) {
                    super.setBackgroundDrawable(wrap);
                }
            }
        }

        public void setOnAttachStateChangeListener(x xVar) {
            this.f64852c = xVar;
        }

        @Override
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f64850i);
            super.setOnClickListener(onClickListener);
        }

        public void setOnLayoutChangeListener(y yVar) {
            this.f64851b = yVar;
        }

        public z(@NonNull Context context, AttributeSet attributeSet) {
            super(C13421a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C15879a.o.mr);
            if (obtainStyledAttributes.hasValue(C15879a.o.tr)) {
                ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(r1, 0));
            }
            this.f64853d = obtainStyledAttributes.getInt(C15879a.o.pr, 0);
            this.f64854e = obtainStyledAttributes.getFloat(C15879a.o.qr, 1.0f);
            setBackgroundTintList(X1.c.a(context2, obtainStyledAttributes, C15879a.o.rr));
            setBackgroundTintMode(A.k(obtainStyledAttributes.getInt(C15879a.o.sr, -1), PorterDuff.Mode.SRC_IN));
            this.f64855f = obtainStyledAttributes.getFloat(C15879a.o.or, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f64850i);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, a());
            }
        }
    }

    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull InterfaceC4149a interfaceC4149a) {
        this(viewGroup.getContext(), viewGroup, view, interfaceC4149a);
    }

    public Behavior A() {
        return this.f64816q;
    }

    @NonNull
    public Context B() {
        return this.f64801b;
    }

    public int C() {
        return this.f64804e;
    }

    @NonNull
    public SwipeDismissBehavior<? extends View> D() {
        return new Behavior();
    }

    public final ValueAnimator E(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C16046a.f127891d);
        ofFloat.addUpdateListener(new d());
        return ofFloat;
    }

    @RequiresApi(17)
    public final int F() {
        WindowManager windowManager = (WindowManager) this.f64801b.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    @LayoutRes
    public int G() {
        return K() ? C15879a.k.f124023w0 : C15879a.k.f123928F;
    }

    public final int H() {
        int height = this.f64802c.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f64802c.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    @NonNull
    public View I() {
        return this.f64802c;
    }

    public final int J() {
        int[] iArr = new int[2];
        this.f64802c.getLocationOnScreen(iArr);
        return iArr[1] + this.f64802c.getHeight();
    }

    public boolean K() {
        TypedArray obtainStyledAttributes = this.f64801b.obtainStyledAttributes(f64791H);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    public final void L(int i10) {
        if (d0() && this.f64802c.getVisibility() == 0) {
            t(i10);
        } else {
            R(i10);
        }
    }

    public boolean M() {
        return this.f64807h;
    }

    public boolean N() {
        return this.f64805f;
    }

    public boolean O() {
        return com.google.android.material.snackbar.a.c().e(this.f64818s);
    }

    public boolean P() {
        return com.google.android.material.snackbar.a.c().f(this.f64818s);
    }

    public final boolean Q() {
        ViewGroup.LayoutParams layoutParams = this.f64802c.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SwipeDismissBehavior);
    }

    public void R(int i10) {
        com.google.android.material.snackbar.a.c().i(this.f64818s);
        List<t<B>> list = this.f64815p;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f64815p.get(size).a(this, i10);
            }
        }
        ViewParent parent = this.f64802c.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f64802c);
        }
    }

    public void S() {
        com.google.android.material.snackbar.a.c().j(this.f64818s);
        List<t<B>> list = this.f64815p;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f64815p.get(size).b(this);
            }
        }
    }

    public final void T() {
        this.f64814o = u();
        m0();
    }

    @NonNull
    public B U(@Nullable t<B> tVar) {
        List<t<B>> list;
        if (tVar == null || (list = this.f64815p) == null) {
            return this;
        }
        list.remove(tVar);
        return this;
    }

    @NonNull
    public B V(@IdRes int i10) {
        View findViewById = this.f64800a.findViewById(i10);
        if (findViewById != null) {
            return W(findViewById);
        }
        throw new IllegalArgumentException("Unable to find anchor view with id: " + i10);
    }

    @NonNull
    public B W(@Nullable View view) {
        r rVar = this.f64806g;
        if (rVar != null) {
            rVar.c();
        }
        this.f64806g = view == null ? null : r.a(this, view);
        return this;
    }

    public void X(boolean z10) {
        this.f64807h = z10;
    }

    @NonNull
    public B Y(int i10) {
        this.f64802c.setAnimationMode(i10);
        return this;
    }

    @NonNull
    public B Z(Behavior behavior) {
        this.f64816q = behavior;
        return this;
    }

    @NonNull
    public B a0(int i10) {
        this.f64804e = i10;
        return this;
    }

    @NonNull
    public B b0(boolean z10) {
        this.f64805f = z10;
        return this;
    }

    public final void c0(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehavior = this.f64816q;
        if (swipeDismissBehavior == null) {
            swipeDismissBehavior = D();
        }
        if (swipeDismissBehavior instanceof Behavior) {
            ((Behavior) swipeDismissBehavior).p(this);
        }
        swipeDismissBehavior.j(new p());
        layoutParams.setBehavior(swipeDismissBehavior);
        if (y() == null) {
            layoutParams.insetEdge = 80;
        }
    }

    public boolean d0() {
        AccessibilityManager accessibilityManager = this.f64817r;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public final boolean e0() {
        return this.f64813n > 0 && !this.f64805f && Q();
    }

    public void f0() {
        com.google.android.material.snackbar.a.c().n(C(), this.f64818s);
    }

    public final void g0() {
        this.f64802c.setOnAttachStateChangeListener(new n());
        if (this.f64802c.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f64802c.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                c0((CoordinatorLayout.LayoutParams) layoutParams);
            }
            T();
            this.f64802c.setVisibility(4);
            this.f64800a.addView(this.f64802c);
        }
        if (ViewCompat.isLaidOut(this.f64802c)) {
            h0();
        } else {
            this.f64802c.setOnLayoutChangeListener(new o());
        }
    }

    public final void h0() {
        if (d0()) {
            s();
            return;
        }
        if (this.f64802c.getParent() != null) {
            this.f64802c.setVisibility(0);
        }
        S();
    }

    public final void i0() {
        ValueAnimator x10 = x(0.0f, 1.0f);
        ValueAnimator E10 = E(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(x10, E10);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new a());
        animatorSet.start();
    }

    public final void j0(int i10) {
        ValueAnimator x10 = x(1.0f, 0.0f);
        x10.setDuration(75L);
        x10.addListener(new b(i10));
        x10.start();
    }

    public final void k0() {
        int H10 = H();
        if (f64790G) {
            ViewCompat.offsetTopAndBottom(this.f64802c, H10);
        } else {
            this.f64802c.setTranslationY(H10);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(H10, 0);
        valueAnimator.setInterpolator(C16046a.f127889b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new e());
        valueAnimator.addUpdateListener(new f(H10));
        valueAnimator.start();
    }

    public final void l0(int i10) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, H());
        valueAnimator.setInterpolator(C16046a.f127889b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new g(i10));
        valueAnimator.addUpdateListener(new h());
        valueAnimator.start();
    }

    public final void m0() {
        ViewGroup.LayoutParams layoutParams = this.f64802c.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.f64809j == null) {
            Log.w(f64792I, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        int i10 = y() != null ? this.f64814o : this.f64810k;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = this.f64809j;
        marginLayoutParams.bottomMargin = rect.bottom + i10;
        marginLayoutParams.leftMargin = rect.left + this.f64811l;
        marginLayoutParams.rightMargin = rect.right + this.f64812m;
        this.f64802c.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !e0()) {
            return;
        }
        this.f64802c.removeCallbacks(this.f64808i);
        this.f64802c.post(this.f64808i);
    }

    @NonNull
    public B r(@Nullable t<B> tVar) {
        if (tVar == null) {
            return this;
        }
        if (this.f64815p == null) {
            this.f64815p = new ArrayList();
        }
        this.f64815p.add(tVar);
        return this;
    }

    public void s() {
        this.f64802c.post(new q());
    }

    public final void t(int i10) {
        if (this.f64802c.getAnimationMode() == 1) {
            j0(i10);
        } else {
            l0(i10);
        }
    }

    public final int u() {
        if (y() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        y().getLocationOnScreen(iArr);
        int i10 = iArr[1];
        int[] iArr2 = new int[2];
        this.f64800a.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f64800a.getHeight()) - i10;
    }

    public void v() {
        w(3);
    }

    public void w(int i10) {
        com.google.android.material.snackbar.a.c().b(this.f64818s, i10);
    }

    public final ValueAnimator x(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C16046a.f127888a);
        ofFloat.addUpdateListener(new c());
        return ofFloat;
    }

    @Nullable
    public View y() {
        r rVar = this.f64806g;
        if (rVar == null) {
            return null;
        }
        return rVar.b();
    }

    public int z() {
        return this.f64802c.getAnimationMode();
    }

    public BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull InterfaceC4149a interfaceC4149a) {
        this.f64807h = false;
        this.f64808i = new j();
        this.f64818s = new m();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (interfaceC4149a != null) {
            this.f64800a = viewGroup;
            this.f64803d = interfaceC4149a;
            this.f64801b = context;
            com.google.android.material.internal.s.a(context);
            z zVar = (z) LayoutInflater.from(context).inflate(G(), viewGroup, false);
            this.f64802c = zVar;
            if (view instanceof SnackbarContentLayout) {
                ((SnackbarContentLayout) view).c(zVar.getActionTextColorAlpha());
            }
            zVar.addView(view);
            ViewGroup.LayoutParams layoutParams = zVar.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.f64809j = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            }
            ViewCompat.setAccessibilityLiveRegion(zVar, 1);
            ViewCompat.setImportantForAccessibility(zVar, 1);
            ViewCompat.setFitsSystemWindows(zVar, true);
            ViewCompat.setOnApplyWindowInsetsListener(zVar, new k());
            ViewCompat.setAccessibilityDelegate(zVar, new l());
            this.f64817r = (AccessibilityManager) context.getSystemService(Context.ACCESSIBILITY_SERVICE);
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
    }
}
