package com.google.android.material.appbar;

import a2.C3567j;
import a2.C3568k;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import w1.C15879a;
import x1.C16046a;
import y1.AbstractC16133a;
import y1.AbstractC16134b;

public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {

    public static final int f63748s = 0;

    public static final int f63749t = 1;

    public static final int f63750u = 2;

    public static final int f63751v = 4;

    public static final int f63752w = 8;

    public static final int f63753x = C15879a.n.f124775ta;

    public static final int f63754y = -1;

    public int f63755b;

    public int f63756c;

    public int f63757d;

    public int f63758e;

    public boolean f63759f;

    public int f63760g;

    @Nullable
    public WindowInsetsCompat f63761h;

    public List<c> f63762i;

    public boolean f63763j;

    public boolean f63764k;

    public boolean f63765l;

    public boolean f63766m;

    @IdRes
    public int f63767n;

    @Nullable
    public WeakReference<View> f63768o;

    @Nullable
    public ValueAnimator f63769p;

    public int[] f63770q;

    @Nullable
    public Drawable f63771r;

    public static class Behavior extends BaseBehavior<AppBarLayout> {

        public static abstract class a extends BaseBehavior.d<AppBarLayout> {
        }

        public Behavior() {
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i10) {
            return super.onLayoutChild(coordinatorLayout, appBarLayout, i10);
        }

        @Override
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i10, int i11, int i12, int i13) {
            return super.onMeasureChild(coordinatorLayout, appBarLayout, i10, i11, i12, i13);
        }

        @Override
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i10, i11, iArr, i12);
        }

        @Override
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, appBarLayout, view, i10, i11, i12, i13, i14, iArr);
        }

        @Override
        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, appBarLayout);
        }

        @Override
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i10, int i11) {
            return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i10, i11);
        }

        @Override
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10) {
            super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i10);
        }

        @Override
        public void R(@Nullable BaseBehavior.d dVar) {
            super.R(dVar);
        }

        @Override
        public int a() {
            return super.a();
        }

        @Override
        public int b() {
            return super.b();
        }

        @Override
        public boolean c() {
            return super.c();
        }

        @Override
        public boolean d() {
            return super.d();
        }

        @Override
        public void f(boolean z10) {
            super.f(z10);
        }

        @Override
        public boolean g(int i10) {
            return super.g(i10);
        }

        @Override
        public boolean h(int i10) {
            return super.h(i10);
        }

        @Override
        public void i(boolean z10) {
            super.i(z10);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends AbstractC16134b {
        public ScrollingViewBehavior() {
        }

        public static int t(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).o();
            }
            return 0;
        }

        @Override
        public int a() {
            return super.a();
        }

        @Override
        public int b() {
            return super.b();
        }

        @Override
        public boolean c() {
            return super.c();
        }

        @Override
        public boolean d() {
            return super.d();
        }

        @Override
        public void f(boolean z10) {
            super.f(z10);
        }

        @Override
        public boolean g(int i10) {
            return super.g(i10);
        }

        @Override
        public boolean h(int i10) {
            return super.h(i10);
        }

        @Override
        public void i(boolean z10) {
            super.i(z10);
        }

        @Override
        public float l(View view) {
            int i10;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int t10 = t(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + t10 > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (t10 / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override
        public int n(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.n(view);
        }

        @Override
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            u(view, view2);
            v(view, view2);
            return false;
        }

        @Override
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            }
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
            return super.onLayoutChild(coordinatorLayout, view, i10);
        }

        @Override
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12, int i13) {
            return super.onMeasureChild(coordinatorLayout, view, i10, i11, i12, i13);
        }

        @Override
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z10) {
            AppBarLayout j10 = j(coordinatorLayout.getDependencies(view));
            if (j10 != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f129907d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    j10.s(false, !z10);
                    return true;
                }
            }
            return false;
        }

        @Override
        @Nullable
        public AppBarLayout j(@NonNull List<View> list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        public final void u(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f63774l) + o()) - k(view2));
            }
        }

        public final void v(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.l()) {
                    appBarLayout.x(appBarLayout.z(view));
                }
            }
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.Up);
            q(obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Vp, 0));
            obtainStyledAttributes.recycle();
        }
    }

    public class a implements OnApplyWindowInsetsListener {
        public a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.o(windowInsetsCompat);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {

        public final C3567j f63797a;

        public b(C3567j c3567j) {
            this.f63797a = c3567j;
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            this.f63797a.m0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public interface c<T extends AppBarLayout> {
        void a(T t10, int i10);
    }

    public static abstract class d {
        public abstract void a(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f10);
    }

    public static class e extends d {

        public static final float f63799c = 0.3f;

        public final Rect f63800a = new Rect();

        public final Rect f63801b = new Rect();

        public static void b(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override
        public void a(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f10) {
            b(this.f63800a, appBarLayout, view);
            float abs = this.f63800a.top - Math.abs(f10);
            if (abs > 0.0f) {
                ViewCompat.setClipBounds(view, null);
                view.setTranslationY(0.0f);
                return;
            }
            float clamp = 1.0f - MathUtils.clamp(Math.abs(abs / this.f63800a.height()), 0.0f, 1.0f);
            float height = (-abs) - ((this.f63800a.height() * 0.3f) * (1.0f - (clamp * clamp)));
            view.setTranslationY(height);
            view.getDrawingRect(this.f63801b);
            this.f63801b.offset(0, (int) (-height));
            ViewCompat.setClipBounds(view, this.f63801b);
        }
    }

    public interface g extends c<AppBarLayout> {
        @Override
        void a(AppBarLayout appBarLayout, int i10);
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    public final boolean A() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
    }

    public final void B(@NonNull C3567j c3567j, boolean z10) {
        float dimension = getResources().getDimension(C15879a.f.f123071O0);
        float f10 = z10 ? 0.0f : dimension;
        if (!z10) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.f63769p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, dimension);
        this.f63769p = ofFloat;
        ofFloat.setDuration(getResources().getInteger(C15879a.i.f123883c));
        this.f63769p.setInterpolator(C16046a.f127888a);
        this.f63769p.addUpdateListener(new b(c3567j));
        this.f63769p.start();
    }

    public final void C() {
        setWillNotDraw(!y());
    }

    public void a(@Nullable c cVar) {
        if (this.f63762i == null) {
            this.f63762i = new ArrayList();
        }
        if (cVar == null || this.f63762i.contains(cVar)) {
            return;
        }
        this.f63762i.add(cVar);
    }

    public void b(g gVar) {
        a(gVar);
    }

    public final void c() {
        WeakReference<View> weakReference = this.f63768o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f63768o = null;
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f;
    }

    @Nullable
    public final View d(@Nullable View view) {
        int i10;
        if (this.f63768o == null && (i10 = this.f63767n) != -1) {
            View findViewById = view != null ? view.findViewById(i10) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.f63767n);
            }
            if (findViewById != null) {
                this.f63768o = new WeakReference<>(findViewById);
            }
        }
        WeakReference<View> weakReference = this.f63768o;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (y()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f63755b);
            this.f63771r.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f63771r;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override
    public f generateDefaultLayoutParams() {
        return new f(-1, -2);
    }

    @Override
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Override
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new f((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    @Override
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    public int getDownNestedPreScrollRange() {
        int i10;
        int minimumHeight;
        int i11 = this.f63757d;
        if (i11 != -1) {
            return i11;
        }
        int i12 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            f fVar = (f) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i13 = fVar.f63814a;
            if ((i13 & 5) != 5) {
                if (i12 > 0) {
                    break;
                }
            } else {
                int i14 = fVar.topMargin + fVar.bottomMargin;
                if ((i13 & 8) != 0) {
                    minimumHeight = ViewCompat.getMinimumHeight(childAt);
                } else if ((i13 & 2) != 0) {
                    minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                } else {
                    i10 = i14 + measuredHeight;
                    if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                        i10 = Math.min(i10, measuredHeight - getTopInset());
                    }
                    i12 += i10;
                }
                i10 = i14 + minimumHeight;
                if (childCount == 0) {
                    i10 = Math.min(i10, measuredHeight - getTopInset());
                }
                i12 += i10;
            }
        }
        int max = Math.max(0, i12);
        this.f63757d = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i10 = this.f63758e;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + fVar.topMargin + fVar.bottomMargin;
            int i13 = fVar.f63814a;
            if ((i13 & 1) == 0) {
                break;
            }
            i12 += measuredHeight;
            if ((i13 & 2) != 0) {
                i12 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i11++;
        }
        int max = Math.max(0, i12);
        this.f63758e = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.f63767n;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f63760g;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f63771r;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f63761h;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.f63756c;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i13 = fVar.f63814a;
            if ((i13 & 1) == 0) {
                break;
            }
            i12 += measuredHeight + fVar.topMargin + fVar.bottomMargin;
            if (i11 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                i12 -= getTopInset();
            }
            if ((i13 & 2) != 0) {
                i12 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i11++;
        }
        int max = Math.max(0, i12);
        this.f63756c = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    public boolean h() {
        return this.f63759f;
    }

    public final boolean i() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((f) getChildAt(i10).getLayoutParams()).e()) {
                return true;
            }
        }
        return false;
    }

    public boolean j() {
        return getTotalScrollRange() != 0;
    }

    public final void k() {
        this.f63756c = -1;
        this.f63757d = -1;
        this.f63758e = -1;
    }

    public boolean l() {
        return this.f63766m;
    }

    public boolean m() {
        return this.f63765l;
    }

    public void n(int i10) {
        this.f63755b = i10;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List<c> list = this.f63762i;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                c cVar = this.f63762i.get(i11);
                if (cVar != null) {
                    cVar.a(this, i10);
                }
            }
        }
    }

    public WindowInsetsCompat o(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f63761h, windowInsetsCompat2)) {
            this.f63761h = windowInsetsCompat2;
            C();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.e(this);
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        if (this.f63770q == null) {
            this.f63770q = new int[4];
        }
        int[] iArr = this.f63770q;
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z10 = this.f63764k;
        int i11 = C15879a.c.f122725yd;
        if (!z10) {
            i11 = -i11;
        }
        iArr[0] = i11;
        iArr[1] = (z10 && this.f63765l) ? C15879a.c.f122743zd : -C15879a.c.f122743zd;
        int i12 = C15879a.c.f122689wd;
        if (!z10) {
            i12 = -i12;
        }
        iArr[2] = i12;
        iArr[3] = (z10 && this.f63765l) ? C15879a.c.f122671vd : -C15879a.c.f122671vd;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        boolean z11 = true;
        if (ViewCompat.getFitsSystemWindows(this) && A()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        k();
        this.f63759f = false;
        int childCount2 = getChildCount();
        int i14 = 0;
        while (true) {
            if (i14 >= childCount2) {
                break;
            }
            if (((f) getChildAt(i14).getLayoutParams()).d() != null) {
                this.f63759f = true;
                break;
            }
            i14++;
        }
        Drawable drawable = this.f63771r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f63763j) {
            return;
        }
        if (!this.f63766m && !i()) {
            z11 = false;
        }
        v(z11);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && A()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = MathUtils.clamp(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i11));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        k();
    }

    public void p(@Nullable c cVar) {
        List<c> list = this.f63762i;
        if (list == null || cVar == null) {
            return;
        }
        list.remove(cVar);
    }

    public void q(g gVar) {
        p(gVar);
    }

    public void r() {
        this.f63760g = 0;
    }

    public void s(boolean z10, boolean z11) {
        t(z10, z11, true);
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        C3568k.d(this, f10);
    }

    public void setExpanded(boolean z10) {
        s(z10, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z10) {
        this.f63766m = z10;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i10) {
        this.f63767n = i10;
        c();
    }

    @Override
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f63771r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f63771r = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f63771r.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f63771r, ViewCompat.getLayoutDirection(this));
                this.f63771r.setVisible(getVisibility() == 0, false);
                this.f63771r.setCallback(this);
            }
            C();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i10) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f10) {
        y1.e.b(this, f10);
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f63771r;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    public final void t(boolean z10, boolean z11, boolean z12) {
        this.f63760g = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    public boolean u(boolean z10) {
        this.f63763j = true;
        return v(z10);
    }

    public final boolean v(boolean z10) {
        if (this.f63764k == z10) {
            return false;
        }
        this.f63764k = z10;
        refreshDrawableState();
        return true;
    }

    @Override
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f63771r;
    }

    public boolean w(boolean z10) {
        return x(z10);
    }

    public boolean x(boolean z10) {
        if (this.f63765l == z10) {
            return false;
        }
        this.f63765l = z10;
        refreshDrawableState();
        if (!this.f63766m || !(getBackground() instanceof C3567j)) {
            return true;
        }
        B((C3567j) getBackground(), z10);
        return true;
    }

    public final boolean y() {
        return this.f63771r != null && getTopInset() > 0;
    }

    public boolean z(@Nullable View view) {
        View d10 = d(view);
        if (d10 != null) {
            view = d10;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public static class BaseBehavior<T extends AppBarLayout> extends AbstractC16133a<T> {

        public static final int f63772t = 600;

        public static final int f63773u = -1;

        public int f63774l;

        public int f63775m;

        public ValueAnimator f63776n;

        public int f63777o;

        public boolean f63778p;

        public float f63779q;

        @Nullable
        public WeakReference<View> f63780r;

        public d f63781s;

        public class a implements ValueAnimator.AnimatorUpdateListener {

            public final CoordinatorLayout f63782a;

            public final AppBarLayout f63783b;

            public a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f63782a = coordinatorLayout;
                this.f63783b = appBarLayout;
            }

            @Override
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                BaseBehavior.this.r(this.f63782a, this.f63783b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        public class b implements AccessibilityViewCommand {

            public final CoordinatorLayout f63785a;

            public final AppBarLayout f63786b;

            public final View f63787c;

            public final int f63788d;

            public b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
                this.f63785a = coordinatorLayout;
                this.f63786b = appBarLayout;
                this.f63787c = view;
                this.f63788d = i10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                BaseBehavior.this.onNestedPreScroll(this.f63785a, this.f63786b, this.f63787c, 0, this.f63788d, new int[]{0, 0}, 1);
                return true;
            }
        }

        public class c implements AccessibilityViewCommand {

            public final AppBarLayout f63790a;

            public final boolean f63791b;

            public c(AppBarLayout appBarLayout, boolean z10) {
                this.f63790a = appBarLayout;
                this.f63791b = z10;
            }

            @Override
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                this.f63790a.setExpanded(this.f63791b);
                return true;
            }
        }

        public static abstract class d<T extends AppBarLayout> {
            public abstract boolean a(@NonNull T t10);
        }

        public BaseBehavior() {
            this.f63777o = -1;
        }

        public static boolean A(int i10, int i11) {
            return (i10 & i11) == i11;
        }

        @Nullable
        public static View C(@NonNull AppBarLayout appBarLayout, int i10) {
            int abs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        public final View B(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        public final int D(@NonNull T t10, int i10) {
            int childCount = t10.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = t10.getChildAt(i11);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                f fVar = (f) childAt.getLayoutParams();
                if (A(fVar.c(), 32)) {
                    top -= fVar.topMargin;
                    bottom += fVar.bottomMargin;
                }
                int i12 = -i10;
                if (top <= i12 && bottom >= i12) {
                    return i11;
                }
            }
            return -1;
        }

        @Override
        public int m(@NonNull T t10) {
            return -t10.getDownNestedScrollRange();
        }

        @Override
        public int n(@NonNull T t10) {
            return t10.getTotalScrollRange();
        }

        public final int G(@NonNull T t10, int i10) {
            int abs = Math.abs(i10);
            int childCount = t10.getChildCount();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i12 >= childCount) {
                    break;
                }
                View childAt = t10.getChildAt(i12);
                f fVar = (f) childAt.getLayoutParams();
                Interpolator d10 = fVar.d();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i12++;
                } else if (d10 != null) {
                    int c10 = fVar.c();
                    if ((c10 & 1) != 0) {
                        i11 = childAt.getHeight() + fVar.topMargin + fVar.bottomMargin;
                        if ((c10 & 2) != 0) {
                            i11 -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        i11 -= t10.getTopInset();
                    }
                    if (i11 > 0) {
                        float f10 = i11;
                        return Integer.signum(i10) * (childAt.getTop() + Math.round(f10 * d10.getInterpolation((abs - childAt.getTop()) / f10)));
                    }
                }
            }
            return i10;
        }

        @VisibleForTesting
        public boolean H() {
            ValueAnimator valueAnimator = this.f63776n;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        @Override
        public void p(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            U(coordinatorLayout, t10);
            if (t10.l()) {
                t10.x(t10.z(B(coordinatorLayout)));
            }
        }

        @Override
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10) {
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, t10, i10);
            int pendingAction = t10.getPendingAction();
            int i11 = this.f63777o;
            if (i11 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t10.getChildAt(i11);
                r(coordinatorLayout, t10, (-childAt.getBottom()) + (this.f63778p ? ViewCompat.getMinimumHeight(childAt) + t10.getTopInset() : Math.round(childAt.getHeight() * this.f63779q)));
            } else if (pendingAction != 0) {
                boolean z10 = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i12 = -t10.getUpNestedPreScrollRange();
                    if (z10) {
                        w(coordinatorLayout, t10, i12, 0.0f);
                    } else {
                        r(coordinatorLayout, t10, i12);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z10) {
                        w(coordinatorLayout, t10, 0, 0.0f);
                    } else {
                        r(coordinatorLayout, t10, 0);
                    }
                }
            }
            t10.r();
            this.f63777o = -1;
            h(MathUtils.clamp(b(), -t10.getTotalScrollRange(), 0));
            W(coordinatorLayout, t10, b(), 0, true);
            t10.n(b());
            V(coordinatorLayout, t10);
            return onLayoutChild;
        }

        @Override
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, int i11, int i12, int i13) {
            if (((CoordinatorLayout.LayoutParams) t10.getLayoutParams()).height != -2) {
                return super.onMeasureChild(coordinatorLayout, t10, i10, i11, i12, i13);
            }
            coordinatorLayout.onMeasureChild(t10, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
            return true;
        }

        @Override
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i10, int i11, int[] iArr, int i12) {
            int i13;
            int i14;
            if (i11 != 0) {
                if (i11 < 0) {
                    i13 = -t10.getTotalScrollRange();
                    i14 = t10.getDownNestedPreScrollRange() + i13;
                } else {
                    i13 = -t10.getUpNestedPreScrollRange();
                    i14 = 0;
                }
                int i15 = i13;
                int i16 = i14;
                if (i15 != i16) {
                    iArr[1] = q(coordinatorLayout, t10, i11, i15, i16);
                }
            }
            if (t10.l()) {
                t10.x(t10.z(view));
            }
        }

        @Override
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            if (i13 < 0) {
                iArr[1] = q(coordinatorLayout, t10, i13, -t10.getDownNestedScrollRange(), 0);
            }
            if (i13 == 0) {
                V(coordinatorLayout, t10);
            }
        }

        @Override
        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, Parcelable parcelable) {
            if (!(parcelable instanceof e)) {
                super.onRestoreInstanceState(coordinatorLayout, t10, parcelable);
                this.f63777o = -1;
                return;
            }
            e eVar = (e) parcelable;
            super.onRestoreInstanceState(coordinatorLayout, t10, eVar.getSuperState());
            this.f63777o = eVar.f63793b;
            this.f63779q = eVar.f63794c;
            this.f63778p = eVar.f63795d;
        }

        @Override
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, t10);
            int b10 = b();
            int childCount = t10.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = t10.getChildAt(i10);
                int bottom = childAt.getBottom() + b10;
                if (childAt.getTop() + b10 <= 0 && bottom >= 0) {
                    e eVar = new e(onSaveInstanceState);
                    eVar.f63793b = i10;
                    eVar.f63795d = bottom == ViewCompat.getMinimumHeight(childAt) + t10.getTopInset();
                    eVar.f63794c = bottom / childAt.getHeight();
                    return eVar;
                }
            }
            return onSaveInstanceState;
        }

        @Override
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            boolean z10 = (i10 & 2) != 0 && (t10.l() || z(coordinatorLayout, t10, view));
            if (z10 && (valueAnimator = this.f63776n) != null) {
                valueAnimator.cancel();
            }
            this.f63780r = null;
            this.f63775m = i11;
            return z10;
        }

        @Override
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t10, View view, int i10) {
            if (this.f63775m == 0 || i10 == 1) {
                U(coordinatorLayout, t10);
                if (t10.l()) {
                    t10.x(t10.z(view));
                }
            }
            this.f63780r = new WeakReference<>(view);
        }

        public void R(@Nullable d dVar) {
            this.f63781s = dVar;
        }

        @Override
        public int s(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, int i11, int i12) {
            int o10 = o();
            int i13 = 0;
            if (i11 == 0 || o10 < i11 || o10 > i12) {
                this.f63774l = 0;
            } else {
                int clamp = MathUtils.clamp(i10, i11, i12);
                if (o10 != clamp) {
                    int G10 = t10.h() ? G(t10, clamp) : clamp;
                    boolean h10 = h(G10);
                    int i14 = o10 - clamp;
                    this.f63774l = clamp - G10;
                    if (h10) {
                        while (i13 < t10.getChildCount()) {
                            f fVar = (f) t10.getChildAt(i13).getLayoutParams();
                            d b10 = fVar.b();
                            if (b10 != null && (fVar.c() & 1) != 0) {
                                b10.a(t10, t10.getChildAt(i13), b());
                            }
                            i13++;
                        }
                    }
                    if (!h10 && t10.h()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t10);
                    }
                    t10.n(b());
                    W(coordinatorLayout, t10, clamp, clamp < o10 ? -1 : 1, false);
                    i13 = i14;
                }
            }
            V(coordinatorLayout, t10);
            return i13;
        }

        public final boolean T(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            List<View> dependents = coordinatorLayout.getDependents(t10);
            int size = dependents.size();
            for (int i10 = 0; i10 < size; i10++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i10).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) behavior).m() != 0;
                }
            }
            return false;
        }

        public final void U(CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            int o10 = o();
            int D10 = D(t10, o10);
            if (D10 >= 0) {
                View childAt = t10.getChildAt(D10);
                f fVar = (f) childAt.getLayoutParams();
                int c10 = fVar.c();
                if ((c10 & 17) == 17) {
                    int i10 = -childAt.getTop();
                    int i11 = -childAt.getBottom();
                    if (D10 == t10.getChildCount() - 1) {
                        i11 += t10.getTopInset();
                    }
                    if (A(c10, 2)) {
                        i11 += ViewCompat.getMinimumHeight(childAt);
                    } else if (A(c10, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i11;
                        if (o10 < minimumHeight) {
                            i10 = minimumHeight;
                        } else {
                            i11 = minimumHeight;
                        }
                    }
                    if (A(c10, 32)) {
                        i10 += fVar.topMargin;
                        i11 -= fVar.bottomMargin;
                    }
                    if (o10 < (i11 + i10) / 2) {
                        i10 = i11;
                    }
                    w(coordinatorLayout, t10, MathUtils.clamp(i10, -t10.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        public final void V(CoordinatorLayout coordinatorLayout, @NonNull T t10) {
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            View B10 = B(coordinatorLayout);
            if (B10 == null || t10.getTotalScrollRange() == 0 || !(((CoordinatorLayout.LayoutParams) B10.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior)) {
                return;
            }
            u(coordinatorLayout, t10, B10);
        }

        public final void W(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, int i11, boolean z10) {
            View C10 = C(t10, i10);
            if (C10 != null) {
                int c10 = ((f) C10.getLayoutParams()).c();
                boolean z11 = false;
                if ((c10 & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(C10);
                    if (i11 <= 0 || (c10 & 12) == 0 ? !((c10 & 2) == 0 || (-i10) < (C10.getBottom() - minimumHeight) - t10.getTopInset()) : (-i10) >= (C10.getBottom() - minimumHeight) - t10.getTopInset()) {
                        z11 = true;
                    }
                }
                if (t10.l()) {
                    z11 = t10.z(B(coordinatorLayout));
                }
                boolean x10 = t10.x(z11);
                if (z10 || (x10 && T(coordinatorLayout, t10))) {
                    t10.jumpDrawablesToCurrentState();
                }
            }
        }

        @Override
        public int o() {
            return b() + this.f63774l;
        }

        public final void u(CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view) {
            if (o() != (-t10.getTotalScrollRange()) && view.canScrollVertically(1)) {
                v(coordinatorLayout, t10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD, false);
            }
            if (o() != 0) {
                if (!view.canScrollVertically(-1)) {
                    v(coordinatorLayout, t10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, true);
                    return;
                }
                int i10 = -t10.getDownNestedPreScrollRange();
                if (i10 != 0) {
                    ViewCompat.replaceAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, null, new b(coordinatorLayout, t10, view, i10));
                }
            }
        }

        public final void v(CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, boolean z10) {
            ViewCompat.replaceAccessibilityAction(coordinatorLayout, accessibilityActionCompat, null, new c(t10, z10));
        }

        public final void w(CoordinatorLayout coordinatorLayout, @NonNull T t10, int i10, float f10) {
            int abs = Math.abs(o() - i10);
            float abs2 = Math.abs(f10);
            x(coordinatorLayout, t10, i10, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t10.getHeight()) + 1.0f) * 150.0f));
        }

        public final void x(CoordinatorLayout coordinatorLayout, T t10, int i10, int i11) {
            int o10 = o();
            if (o10 == i10) {
                ValueAnimator valueAnimator = this.f63776n;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f63776n.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f63776n;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f63776n = valueAnimator3;
                valueAnimator3.setInterpolator(C16046a.f127892e);
                this.f63776n.addUpdateListener(new a(coordinatorLayout, t10));
            } else {
                valueAnimator2.cancel();
            }
            this.f63776n.setDuration(Math.min(i11, 600));
            this.f63776n.setIntValues(o10, i10);
            this.f63776n.start();
        }

        @Override
        public boolean j(T t10) {
            d dVar = this.f63781s;
            if (dVar != null) {
                return dVar.a(t10);
            }
            WeakReference<View> weakReference = this.f63780r;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        public final boolean z(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t10, @NonNull View view) {
            return t10.j() && coordinatorLayout.getHeight() - view.getHeight() <= t10.getHeight();
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f63777o = -1;
        }

        public static class e extends AbsSavedState {
            public static final Parcelable.Creator<e> CREATOR = new a();

            public int f63793b;

            public float f63794c;

            public boolean f63795d;

            public static class a implements Parcelable.ClassLoaderCreator<e> {
                @Override
                @Nullable
                public e createFromParcel(@NonNull Parcel parcel) {
                    return new e(parcel, null);
                }

                @Override
                @NonNull
                public e createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new e(parcel, classLoader);
                }

                @Override
                @NonNull
                public e[] newArray(int i10) {
                    return new e[i10];
                }
            }

            public e(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f63793b = parcel.readInt();
                this.f63794c = parcel.readFloat();
                this.f63795d = parcel.readByte() != 0;
            }

            @Override
            public void writeToParcel(@NonNull Parcel parcel, int i10) {
                super.writeToParcel(parcel, i10);
                parcel.writeInt(this.f63793b);
                parcel.writeFloat(this.f63794c);
                parcel.writeByte(this.f63795d ? (byte) 1 : (byte) 0);
            }

            public e(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122144S);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f63753x;
        this.f63756c = -1;
        this.f63757d = -1;
        this.f63758e = -1;
        this.f63760g = 0;
        Context context2 = getContext();
        setOrientation(1);
        y1.e.a(this);
        y1.e.c(this, attributeSet, i10, i11);
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125913r0, i10, i11, new int[0]);
        ViewCompat.setBackground(this, j10.getDrawable(C15879a.o.f125938s0));
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            C3567j c3567j = new C3567j();
            c3567j.n0(ColorStateList.valueOf(colorDrawable.getColor()));
            c3567j.Y(context2);
            ViewCompat.setBackground(this, c3567j);
        }
        int i12 = C15879a.o.f126038w0;
        if (j10.hasValue(i12)) {
            t(j10.getBoolean(i12, false), false, false);
        }
        if (j10.hasValue(C15879a.o.f126013v0)) {
            y1.e.b(this, j10.getDimensionPixelSize(r11, 0));
        }
        int i13 = C15879a.o.f125988u0;
        if (j10.hasValue(i13)) {
            setKeyboardNavigationCluster(j10.getBoolean(i13, false));
        }
        int i14 = C15879a.o.f125963t0;
        if (j10.hasValue(i14)) {
            setTouchscreenBlocksFocus(j10.getBoolean(i14, false));
        }
        this.f63766m = j10.getBoolean(C15879a.o.f126063x0, false);
        this.f63767n = j10.getResourceId(C15879a.o.f126088y0, -1);
        setStatusBarForeground(j10.getDrawable(C15879a.o.f126112z0));
        j10.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }

    public static class f extends LinearLayout.LayoutParams {

        public static final int f63802d = 0;

        public static final int f63803e = 1;

        public static final int f63804f = 2;

        public static final int f63805g = 4;

        public static final int f63806h = 8;

        public static final int f63807i = 16;

        public static final int f63808j = 32;

        public static final int f63809k = 5;

        public static final int f63810l = 17;

        public static final int f63811m = 10;

        public static final int f63812n = 0;

        public static final int f63813o = 1;

        public int f63814a;

        public d f63815b;

        public Interpolator f63816c;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface a {
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f63814a = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f124983F0);
            this.f63814a = obtainStyledAttributes.getInt(C15879a.o.f125031H0, 0);
            f(a(obtainStyledAttributes.getInt(C15879a.o.f125007G0, 0)));
            int i10 = C15879a.o.f125055I0;
            if (obtainStyledAttributes.hasValue(i10)) {
                this.f63816c = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i10, 0));
            }
            obtainStyledAttributes.recycle();
        }

        @Nullable
        public final d a(int i10) {
            if (i10 != 1) {
                return null;
            }
            return new e();
        }

        @Nullable
        public d b() {
            return this.f63815b;
        }

        public int c() {
            return this.f63814a;
        }

        public Interpolator d() {
            return this.f63816c;
        }

        public boolean e() {
            int i10 = this.f63814a;
            return (i10 & 1) == 1 && (i10 & 10) != 0;
        }

        public void f(@Nullable d dVar) {
            this.f63815b = dVar;
        }

        public void g(int i10) {
            this.f63814a = i10;
        }

        public void h(Interpolator interpolator) {
            this.f63816c = interpolator;
        }

        public f(int i10, int i11) {
            super(i10, i11);
            this.f63814a = 1;
        }

        public f(int i10, int i11, float f10) {
            super(i10, i11, f10);
            this.f63814a = 1;
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f63814a = 1;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f63814a = 1;
        }

        @RequiresApi(19)
        public f(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f63814a = 1;
        }

        @RequiresApi(19)
        public f(@NonNull f fVar) {
            super((LinearLayout.LayoutParams) fVar);
            this.f63814a = 1;
            this.f63814a = fVar.f63814a;
            this.f63816c = fVar.f63816c;
        }
    }
}
