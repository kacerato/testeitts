package com.google.android.material.floatingactionbutton;

import a2.C3572o;
import a2.InterfaceC3576s;
import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.a;
import com.google.android.material.internal.A;
import com.google.android.material.internal.B;
import com.google.android.material.internal.C12455c;
import com.google.android.material.internal.s;
import d2.C12870a;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import w1.C15879a;
import x1.h;
import x1.k;

public class FloatingActionButton extends B implements TintableBackgroundView, TintableImageSourceView, O1.a, InterfaceC3576s, CoordinatorLayout.AttachedBehavior {

    public static final String f64456s = "FloatingActionButton";

    public static final String f64457t = "expandableWidgetHelper";

    public static final int f64458u = C15879a.n.f124831xa;

    public static final int f64459v = 1;

    public static final int f64460w = 0;

    public static final int f64461x = -1;

    public static final int f64462y = 0;

    public static final int f64463z = 470;

    @Nullable
    public ColorStateList f64464c;

    @Nullable
    public PorterDuff.Mode f64465d;

    @Nullable
    public ColorStateList f64466e;

    @Nullable
    public PorterDuff.Mode f64467f;

    @Nullable
    public ColorStateList f64468g;

    public int f64469h;

    public int f64470i;

    public int f64471j;

    public int f64472k;

    public int f64473l;

    public boolean f64474m;

    public final Rect f64475n;

    public final Rect f64476o;

    @NonNull
    public final AppCompatImageHelper f64477p;

    @NonNull
    public final O1.c f64478q;

    public com.google.android.material.floatingactionbutton.a f64479r;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        @Override
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override
        public boolean b() {
            return super.b();
        }

        @Override
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i10) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i10);
        }

        @Override
        public void g(boolean z10) {
            super.g(z10);
        }

        @Override
        @VisibleForTesting
        public void h(b bVar) {
            super.h(bVar);
        }

        @Override
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public class a implements a.k {

        public final b f64484a;

        public a(b bVar) {
            this.f64484a = bVar;
        }

        @Override
        public void a() {
            this.f64484a.b(FloatingActionButton.this);
        }

        @Override
        public void b() {
            this.f64484a.a(FloatingActionButton.this);
        }
    }

    public static abstract class b {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    public class c implements Z1.c {
        public c() {
        }

        @Override
        public boolean a() {
            return FloatingActionButton.this.f64474m;
        }

        @Override
        public float getRadius() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override
        public void setShadowPadding(int i10, int i11, int i12, int i13) {
            FloatingActionButton.this.f64475n.set(i10, i11, i12, i13);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i10 + floatingActionButton.f64472k, i11 + FloatingActionButton.this.f64472k, i12 + FloatingActionButton.this.f64472k, i13 + FloatingActionButton.this.f64472k);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface d {
    }

    public class e<T extends FloatingActionButton> implements a.j {

        @NonNull
        public final k<T> f64487a;

        public e(@NonNull k<T> kVar) {
            this.f64487a = kVar;
        }

        @Override
        public void a() {
            this.f64487a.a(FloatingActionButton.this);
        }

        @Override
        public void b() {
            this.f64487a.b(FloatingActionButton.this);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof e) && ((e) obj).f64487a.equals(this.f64487a);
        }

        public int hashCode() {
            return this.f64487a.hashCode();
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    private com.google.android.material.floatingactionbutton.a getImpl() {
        if (this.f64479r == null) {
            this.f64479r = j();
        }
        return this.f64479r;
    }

    public static int x(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i10, size);
        }
        if (mode == 0) {
            return i10;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    public void A(@Nullable b bVar) {
        B(bVar, true);
    }

    public void B(@Nullable b bVar, boolean z10) {
        getImpl().f0(C(bVar), z10);
    }

    @Nullable
    public final a.k C(@Nullable b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    @Override
    public boolean a(boolean z10) {
        return this.f64478q.f(z10);
    }

    @Override
    public boolean b() {
        return this.f64478q.c();
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().E(getDrawableState());
    }

    public void f(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().e(animatorListener);
    }

    public void g(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().f(animatorListener);
    }

    @Override
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f64464c;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f64465d;
    }

    @Override
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().n();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().q();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().t();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().m();
    }

    @Px
    public int getCustomSize() {
        return this.f64471j;
    }

    @Override
    public int getExpandedComponentIdHint() {
        return this.f64478q.b();
    }

    @Nullable
    public h getHideMotionSpec() {
        return getImpl().p();
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f64468g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f64468g;
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        return (C3572o) Preconditions.checkNotNull(getImpl().u());
    }

    @Nullable
    public h getShowMotionSpec() {
        return getImpl().v();
    }

    public int getSize() {
        return this.f64470i;
    }

    public int getSizeDimension() {
        return m(this.f64470i);
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f64466e;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f64467f;
    }

    public boolean getUseCompatPadding() {
        return this.f64474m;
    }

    public void h(@NonNull k<? extends FloatingActionButton> kVar) {
        getImpl().g(new e(kVar));
    }

    public void i() {
        setCustomSize(0);
    }

    @NonNull
    public final com.google.android.material.floatingactionbutton.a j() {
        return new P1.d(this, new c());
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().A();
    }

    @Deprecated
    public boolean k(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        s(rect);
        return true;
    }

    public void l(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        s(rect);
    }

    public final int m(int i10) {
        int i11 = this.f64471j;
        if (i11 != 0) {
            return i11;
        }
        Resources resources = getResources();
        return i10 != -1 ? i10 != 1 ? resources.getDimensionPixelSize(C15879a.f.f123238i1) : resources.getDimensionPixelSize(C15879a.f.f123230h1) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m(1) : m(0);
    }

    public void n() {
        o(null);
    }

    public void o(@Nullable b bVar) {
        p(bVar, true);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().B();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().D();
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int sizeDimension = getSizeDimension();
        this.f64472k = (sizeDimension - this.f64473l) / 2;
        getImpl().i0();
        int min = Math.min(x(sizeDimension, i10), x(sizeDimension, i11));
        Rect rect = this.f64475n;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C12870a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C12870a c12870a = (C12870a) parcelable;
        super.onRestoreInstanceState(c12870a.getSuperState());
        this.f64478q.d((Bundle) Preconditions.checkNotNull(c12870a.f83860b.get(f64457t)));
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = new Bundle();
        }
        C12870a c12870a = new C12870a(onSaveInstanceState);
        c12870a.f83860b.put(f64457t, this.f64478q.e());
        return c12870a;
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && k(this.f64476o) && !this.f64476o.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p(@Nullable b bVar, boolean z10) {
        getImpl().w(C(bVar), z10);
    }

    public boolean q() {
        return getImpl().y();
    }

    public boolean r() {
        return getImpl().z();
    }

    public final void s(@NonNull Rect rect) {
        int i10 = rect.left;
        Rect rect2 = this.f64475n;
        rect.left = i10 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    @Override
    public void setBackgroundColor(int i10) {
        Log.i(f64456s, "Setting a custom background is not supported.");
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i(f64456s, "Setting a custom background is not supported.");
    }

    @Override
    public void setBackgroundResource(int i10) {
        Log.i(f64456s, "Setting a custom background is not supported.");
    }

    @Override
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f64464c != colorStateList) {
            this.f64464c = colorStateList;
            getImpl().O(colorStateList);
        }
    }

    @Override
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f64465d != mode) {
            this.f64465d = mode;
            getImpl().P(mode);
        }
    }

    public void setCompatElevation(float f10) {
        getImpl().Q(f10);
    }

    public void setCompatElevationResource(@DimenRes int i10) {
        setCompatElevation(getResources().getDimension(i10));
    }

    public void setCompatHoveredFocusedTranslationZ(float f10) {
        getImpl().T(f10);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i10) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i10));
    }

    public void setCompatPressedTranslationZ(float f10) {
        getImpl().X(f10);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i10) {
        setCompatPressedTranslationZ(getResources().getDimension(i10));
    }

    public void setCustomSize(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i10 != this.f64471j) {
            this.f64471j = i10;
            requestLayout();
        }
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        getImpl().j0(f10);
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        if (z10 != getImpl().o()) {
            getImpl().R(z10);
            requestLayout();
        }
    }

    @Override
    public void setExpandedComponentIdHint(@IdRes int i10) {
        this.f64478q.g(i10);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        getImpl().S(hVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        setHideMotionSpec(h.d(getContext(), i10));
    }

    @Override
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().h0();
            if (this.f64466e != null) {
                t();
            }
        }
    }

    @Override
    public void setImageResource(@DrawableRes int i10) {
        this.f64477p.setImageResource(i10);
        t();
    }

    public void setRippleColor(@ColorInt int i10) {
        setRippleColor(ColorStateList.valueOf(i10));
    }

    @Override
    public void setScaleX(float f10) {
        super.setScaleX(f10);
        getImpl().I();
    }

    @Override
    public void setScaleY(float f10) {
        super.setScaleY(f10);
        getImpl().I();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z10) {
        getImpl().Z(z10);
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        getImpl().a0(c3572o);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        getImpl().b0(hVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        setShowMotionSpec(h.d(getContext(), i10));
    }

    public void setSize(int i10) {
        this.f64471j = 0;
        if (i10 != this.f64470i) {
            this.f64470i = i10;
            requestLayout();
        }
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f64466e != colorStateList) {
            this.f64466e = colorStateList;
            t();
        }
    }

    @Override
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f64467f != mode) {
            this.f64467f = mode;
            t();
        }
    }

    @Override
    public void setTranslationX(float f10) {
        super.setTranslationX(f10);
        getImpl().J();
    }

    @Override
    public void setTranslationY(float f10) {
        super.setTranslationY(f10);
        getImpl().J();
    }

    @Override
    public void setTranslationZ(float f10) {
        super.setTranslationZ(f10);
        getImpl().J();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f64474m != z10) {
            this.f64474m = z10;
            getImpl().C();
        }
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    public final void t() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f64466e;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f64467f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    public void u(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().K(animatorListener);
    }

    public void v(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().L(animatorListener);
    }

    public void w(@NonNull k<? extends FloatingActionButton> kVar) {
        getImpl().M(new e(kVar));
    }

    public boolean y() {
        return getImpl().o();
    }

    public void z() {
        A(null);
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        public static final boolean f64480d = true;

        public Rect f64481a;

        public b f64482b;

        public boolean f64483c;

        public BaseBehavior() {
            this.f64483c = true;
        }

        private static boolean c(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        @Override
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f64475n;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public boolean b() {
            return this.f64483c;
        }

        public final void d(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f64475n;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            int i10 = 0;
            int i11 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - layoutParams.rightMargin ? rect.right : floatingActionButton.getLeft() <= layoutParams.leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - layoutParams.bottomMargin) {
                i10 = rect.bottom;
            } else if (floatingActionButton.getTop() <= layoutParams.topMargin) {
                i10 = -rect.top;
            }
            if (i10 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i10);
            }
            if (i11 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i11);
            }
        }

        @Override
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                j(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!c(view)) {
                return false;
            }
            k(view, floatingActionButton);
            return false;
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (c(view) && k(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (j(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i10);
            d(coordinatorLayout, floatingActionButton);
            return true;
        }

        public void g(boolean z10) {
            this.f64483c = z10;
        }

        @VisibleForTesting
        public void h(b bVar) {
            this.f64482b = bVar;
        }

        public final boolean i(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            return this.f64483c && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        public final boolean j(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton) {
            if (!i(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f64481a == null) {
                this.f64481a = new Rect();
            }
            Rect rect = this.f64481a;
            C12455c.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.p(this.f64482b, false);
                return true;
            }
            floatingActionButton.B(this.f64482b, false);
            return true;
        }

        public final boolean k(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            if (!i(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.p(this.f64482b, false);
                return true;
            }
            floatingActionButton.B(this.f64482b, false);
            return true;
        }

        @Override
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f126103yf);
            this.f64483c = obtainStyledAttributes.getBoolean(C15879a.o.f126127zf, true);
            obtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f121991J5);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f64468g != colorStateList) {
            this.f64468g = colorStateList;
            getImpl().Y(this.f64468g);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r6), attributeSet, i10);
        int i11 = f64458u;
        this.f64475n = new Rect();
        this.f64476o = new Rect();
        Context context2 = getContext();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125652gf, i10, i11, new int[0]);
        this.f64464c = X1.c.a(context2, j10, C15879a.o.f4if);
        this.f64465d = A.k(j10.getInt(C15879a.o.f125727jf, -1), null);
        this.f64468g = X1.c.a(context2, j10, C15879a.o.f125978tf);
        this.f64470i = j10.getInt(C15879a.o.f125853of, -1);
        this.f64471j = j10.getDimensionPixelSize(C15879a.o.f125828nf, 0);
        this.f64469h = j10.getDimensionPixelSize(C15879a.o.f125753kf, 0);
        float dimension = j10.getDimension(C15879a.o.f125778lf, 0.0f);
        float dimension2 = j10.getDimension(C15879a.o.f125903qf, 0.0f);
        float dimension3 = j10.getDimension(C15879a.o.f125953sf, 0.0f);
        this.f64474m = j10.getBoolean(C15879a.o.f126078xf, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C15879a.f.f123123U4);
        this.f64473l = j10.getDimensionPixelSize(C15879a.o.f125928rf, 0);
        h c10 = h.c(context2, j10, C15879a.o.f126053wf);
        h c11 = h.c(context2, j10, C15879a.o.f125878pf);
        C3572o m10 = C3572o.g(context2, attributeSet, i10, i11, C3572o.f31750m).m();
        boolean z10 = j10.getBoolean(C15879a.o.f125803mf, false);
        setEnabled(j10.getBoolean(C15879a.o.f125677hf, true));
        j10.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f64477p = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i10);
        this.f64478q = new O1.c(this);
        getImpl().a0(m10);
        getImpl().x(this.f64464c, this.f64465d, this.f64468g, this.f64469h);
        getImpl().W(dimensionPixelSize);
        getImpl().Q(dimension);
        getImpl().T(dimension2);
        getImpl().X(dimension3);
        getImpl().V(this.f64473l);
        getImpl().b0(c10);
        getImpl().S(c11);
        getImpl().R(z10);
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}
