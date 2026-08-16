package com.google.android.material.tabs;

import a2.C3567j;
import a2.C3568k;
import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import f2.C13180a;
import f2.C13181b;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import w1.C15879a;
import x1.C16046a;
import z1.C16241a;
import z1.C16242b;

@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {

    public static final int f64887F1 = 0;

    public static final int f64888H1 = 1;

    public static final int f64889L1 = 2;

    public static final int f64890M1 = 0;

    public static final int f64892R1 = 1;

    @Dimension(unit = 0)
    public static final int f64893S = 72;

    @Dimension(unit = 0)
    public static final int f64894T = 8;

    @Dimension(unit = 0)
    public static final int f64895U = 48;

    @Dimension(unit = 0)
    public static final int f64896V = 56;

    public static final int f64897V1 = 2;

    @Dimension(unit = 0)
    public static final int f64898W = 16;

    public static final String f64899b1 = "TabLayout";

    public static final int f64900b2 = 3;

    public static final int f64901i1 = 0;

    public static final int f64902i2 = 0;

    public static final int f64903m1 = 1;

    public static final int f64904m2 = 1;

    public static final int f64905q0 = -1;

    public static final int f64906q1 = 2;

    public static final int f64907v0 = 300;

    public static final int f64908v1 = 0;

    public static final int f64909y1 = 1;

    public int f64910A;

    public boolean f64911B;

    public boolean f64912C;

    public int f64913D;

    public boolean f64914E;

    public com.google.android.material.tabs.a f64915F;

    @Nullable
    public c f64916G;

    public final ArrayList<c> f64917H;

    @Nullable
    public c f64918I;

    public ValueAnimator f64919J;

    @Nullable
    public ViewPager f64920K;

    @Nullable
    public PagerAdapter f64921L;

    public DataSetObserver f64922M;

    public m f64923N;

    public b f64924O;

    public boolean f64925P;

    public final Pools.Pool<n> f64926Q;

    public final ArrayList<i> f64927b;

    @Nullable
    public i f64928c;

    @NonNull
    public final h f64929d;

    public int f64930e;

    public int f64931f;

    public int f64932g;

    public int f64933h;

    public int f64934i;

    public ColorStateList f64935j;

    public ColorStateList f64936k;

    public ColorStateList f64937l;

    @NonNull
    public Drawable f64938m;

    public int f64939n;

    public PorterDuff.Mode f64940o;

    public float f64941p;

    public float f64942q;

    public final int f64943r;

    public int f64944s;

    public final int f64945t;

    public final int f64946u;

    public final int f64947v;

    public int f64948w;

    public int f64949x;

    public int f64950y;

    public int f64951z;

    public static final int f64891R = C15879a.n.f124160Ba;

    public static final Pools.Pool<i> f64886D0 = new Pools.SynchronizedPool(16);

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    public class b implements ViewPager.OnAdapterChangeListener {

        public boolean f64953a;

        public b() {
        }

        public void a(boolean z10) {
            this.f64953a = z10;
        }

        @Override
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f64920K == viewPager) {
                tabLayout.O(pagerAdapter2, this.f64953a);
            }
        }
    }

    @Deprecated
    public interface c<T extends i> {
        void a(T t10);

        void b(T t10);

        void c(T t10);
    }

    public @interface d {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface e {
    }

    public interface f extends c<i> {
    }

    public class g extends DataSetObserver {
        public g() {
        }

        @Override
        public void onChanged() {
            TabLayout.this.E();
        }

        @Override
        public void onInvalidated() {
            TabLayout.this.E();
        }
    }

    public class h extends LinearLayout {

        public ValueAnimator f64956b;

        public int f64957c;

        public float f64958d;

        public int f64959e;

        public class a implements ValueAnimator.AnimatorUpdateListener {

            public final View f64961a;

            public final View f64962b;

            public a(View view, View view2) {
                this.f64961a = view;
                this.f64962b = view2;
            }

            @Override
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                h.this.h(this.f64961a, this.f64962b, valueAnimator.getAnimatedFraction());
            }
        }

        public class b extends AnimatorListenerAdapter {

            public final int f64964a;

            public b(int i10) {
                this.f64964a = i10;
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                h.this.f64957c = this.f64964a;
            }

            @Override
            public void onAnimationStart(Animator animator) {
                h.this.f64957c = this.f64964a;
            }
        }

        public h(Context context) {
            super(context);
            this.f64957c = -1;
            this.f64959e = -1;
            setWillNotDraw(false);
        }

        public void b(int i10, int i11) {
            ValueAnimator valueAnimator = this.f64956b;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f64956b.cancel();
            }
            i(true, i10, i11);
        }

        public boolean c() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (getChildAt(i10).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        public float d() {
            return this.f64957c + this.f64958d;
        }

        @Override
        public void draw(@NonNull Canvas canvas) {
            int height;
            int height2 = TabLayout.this.f64938m.getBounds().height();
            if (height2 < 0) {
                height2 = TabLayout.this.f64938m.getIntrinsicHeight();
            }
            int i10 = TabLayout.this.f64951z;
            if (i10 == 0) {
                height = getHeight() - height2;
                height2 = getHeight();
            } else if (i10 != 1) {
                height = 0;
                if (i10 != 2) {
                    height2 = i10 != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - height2) / 2;
                height2 = (getHeight() + height2) / 2;
            }
            if (TabLayout.this.f64938m.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f64938m.getBounds();
                TabLayout.this.f64938m.setBounds(bounds.left, height, bounds.right, height2);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawable = tabLayout.f64938m;
                if (tabLayout.f64939n != 0) {
                    drawable = DrawableCompat.wrap(drawable);
                    DrawableCompat.setTint(drawable, TabLayout.this.f64939n);
                } else {
                    DrawableCompat.setTintList(drawable, null);
                }
                drawable.draw(canvas);
            }
            super.draw(canvas);
        }

        public final void e() {
            View childAt = getChildAt(this.f64957c);
            com.google.android.material.tabs.a aVar = TabLayout.this.f64915F;
            TabLayout tabLayout = TabLayout.this;
            aVar.d(tabLayout, childAt, tabLayout.f64938m);
        }

        public void f(int i10, float f10) {
            ValueAnimator valueAnimator = this.f64956b;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f64956b.cancel();
            }
            this.f64957c = i10;
            this.f64958d = f10;
            h(getChildAt(i10), getChildAt(this.f64957c + 1), this.f64958d);
        }

        public void g(int i10) {
            Rect bounds = TabLayout.this.f64938m.getBounds();
            TabLayout.this.f64938m.setBounds(bounds.left, 0, bounds.right, i10);
            requestLayout();
        }

        public final void h(View view, View view2, float f10) {
            if (view == null || view.getWidth() <= 0) {
                Drawable drawable = TabLayout.this.f64938m;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f64938m.getBounds().bottom);
            } else {
                com.google.android.material.tabs.a aVar = TabLayout.this.f64915F;
                TabLayout tabLayout = TabLayout.this;
                aVar.c(tabLayout, view, view2, f10, tabLayout.f64938m);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public final void i(boolean z10, int i10, int i11) {
            View childAt = getChildAt(this.f64957c);
            View childAt2 = getChildAt(i10);
            if (childAt2 == null) {
                e();
                return;
            }
            a aVar = new a(childAt, childAt2);
            if (!z10) {
                this.f64956b.removeAllUpdateListeners();
                this.f64956b.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f64956b = valueAnimator;
            valueAnimator.setInterpolator(C16046a.f127889b);
            valueAnimator.setDuration(i11);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.addListener(new b(i10));
            valueAnimator.start();
        }

        @Override
        public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            ValueAnimator valueAnimator = this.f64956b;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                e();
            } else {
                i(false, this.f64957c, -1);
            }
        }

        @Override
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (View.MeasureSpec.getMode(i10) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z10 = true;
            if (tabLayout.f64949x == 1 || tabLayout.f64910A == 2) {
                int childCount = getChildCount();
                int i12 = 0;
                for (int i13 = 0; i13 < childCount; i13++) {
                    View childAt = getChildAt(i13);
                    if (childAt.getVisibility() == 0) {
                        i12 = Math.max(i12, childAt.getMeasuredWidth());
                    }
                }
                if (i12 <= 0) {
                    return;
                }
                if (i12 * childCount <= getMeasuredWidth() - (((int) A.e(getContext(), 16)) * 2)) {
                    boolean z11 = false;
                    for (int i14 = 0; i14 < childCount; i14++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i14).getLayoutParams();
                        if (layoutParams.width != i12 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i12;
                            layoutParams.weight = 0.0f;
                            z11 = true;
                        }
                    }
                    z10 = z11;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.f64949x = 0;
                    tabLayout2.W(false);
                }
                if (z10) {
                    super.onMeasure(i10, i11);
                }
            }
        }

        @Override
        public void onRtlPropertiesChanged(int i10) {
            super.onRtlPropertiesChanged(i10);
        }
    }

    public static class i {

        public static final int f64966k = -1;

        @Nullable
        public Object f64967a;

        @Nullable
        public Drawable f64968b;

        @Nullable
        public CharSequence f64969c;

        @Nullable
        public CharSequence f64970d;

        @Nullable
        public View f64972f;

        @Nullable
        public TabLayout f64974h;

        @NonNull
        public n f64975i;

        public int f64971e = -1;

        @d
        public int f64973g = 1;

        public int f64976j = -1;

        @NonNull
        public i A(@d int i10) {
            this.f64973g = i10;
            TabLayout tabLayout = this.f64974h;
            if (tabLayout.f64949x == 1 || tabLayout.f64910A == 2) {
                tabLayout.W(true);
            }
            E();
            if (C16242b.f130582a && this.f64975i.o() && this.f64975i.f64984f.isVisible()) {
                this.f64975i.invalidate();
            }
            return this;
        }

        @NonNull
        public i B(@Nullable Object obj) {
            this.f64967a = obj;
            return this;
        }

        @NonNull
        public i C(@StringRes int i10) {
            TabLayout tabLayout = this.f64974h;
            if (tabLayout != null) {
                return D(tabLayout.getResources().getText(i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public i D(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f64970d) && !TextUtils.isEmpty(charSequence)) {
                this.f64975i.setContentDescription(charSequence);
            }
            this.f64969c = charSequence;
            E();
            return this;
        }

        public void E() {
            n nVar = this.f64975i;
            if (nVar != null) {
                nVar.x();
            }
        }

        @Nullable
        public C16241a e() {
            return this.f64975i.getBadge();
        }

        @Nullable
        public CharSequence f() {
            n nVar = this.f64975i;
            if (nVar == null) {
                return null;
            }
            return nVar.getContentDescription();
        }

        @Nullable
        public View g() {
            return this.f64972f;
        }

        @Nullable
        public Drawable h() {
            return this.f64968b;
        }

        public int i() {
            return this.f64976j;
        }

        @NonNull
        public C16241a j() {
            return this.f64975i.getOrCreateBadge();
        }

        public int k() {
            return this.f64971e;
        }

        @d
        public int l() {
            return this.f64973g;
        }

        @Nullable
        public Object m() {
            return this.f64967a;
        }

        @Nullable
        public CharSequence n() {
            return this.f64969c;
        }

        public boolean o() {
            TabLayout tabLayout = this.f64974h;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.f64971e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void p() {
            this.f64975i.r();
        }

        public void q() {
            this.f64974h = null;
            this.f64975i = null;
            this.f64967a = null;
            this.f64968b = null;
            this.f64976j = -1;
            this.f64969c = null;
            this.f64970d = null;
            this.f64971e = -1;
            this.f64972f = null;
        }

        public void r() {
            TabLayout tabLayout = this.f64974h;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.M(this);
        }

        @NonNull
        public i s(@StringRes int i10) {
            TabLayout tabLayout = this.f64974h;
            if (tabLayout != null) {
                return t(tabLayout.getResources().getText(i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public i t(@Nullable CharSequence charSequence) {
            this.f64970d = charSequence;
            E();
            return this;
        }

        @NonNull
        public i u(@LayoutRes int i10) {
            return v(LayoutInflater.from(this.f64975i.getContext()).inflate(i10, (ViewGroup) this.f64975i, false));
        }

        @NonNull
        public i v(@Nullable View view) {
            this.f64972f = view;
            E();
            return this;
        }

        @NonNull
        public i w(@DrawableRes int i10) {
            TabLayout tabLayout = this.f64974h;
            if (tabLayout != null) {
                return x(AppCompatResources.getDrawable(tabLayout.getContext(), i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public i x(@Nullable Drawable drawable) {
            this.f64968b = drawable;
            TabLayout tabLayout = this.f64974h;
            if (tabLayout.f64949x == 1 || tabLayout.f64910A == 2) {
                tabLayout.W(true);
            }
            E();
            if (C16242b.f130582a && this.f64975i.o() && this.f64975i.f64984f.isVisible()) {
                this.f64975i.invalidate();
            }
            return this;
        }

        @NonNull
        public i y(int i10) {
            this.f64976j = i10;
            n nVar = this.f64975i;
            if (nVar != null) {
                nVar.setId(i10);
            }
            return this;
        }

        public void z(int i10) {
            this.f64971e = i10;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface j {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface k {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface l {
    }

    public static class m implements ViewPager.OnPageChangeListener {

        @NonNull
        public final WeakReference<TabLayout> f64977a;

        public int f64978b;

        public int f64979c;

        public m(TabLayout tabLayout) {
            this.f64977a = new WeakReference<>(tabLayout);
        }

        public void a() {
            this.f64979c = 0;
            this.f64978b = 0;
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            this.f64978b = this.f64979c;
            this.f64979c = i10;
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = this.f64977a.get();
            if (tabLayout != null) {
                int i12 = this.f64979c;
                tabLayout.Q(i10, f10, i12 != 2 || this.f64978b == 1, (i12 == 2 && this.f64978b == 0) ? false : true);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            TabLayout tabLayout = this.f64977a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f64979c;
            tabLayout.N(tabLayout.z(i10), i11 == 0 || (i11 == 2 && this.f64978b == 0));
        }
    }

    public final class n extends LinearLayout {

        public i f64980b;

        public TextView f64981c;

        public ImageView f64982d;

        @Nullable
        public View f64983e;

        @Nullable
        public C16241a f64984f;

        @Nullable
        public View f64985g;

        @Nullable
        public TextView f64986h;

        @Nullable
        public ImageView f64987i;

        @Nullable
        public Drawable f64988j;

        public int f64989k;

        public class a implements View.OnLayoutChangeListener {

            public final View f64991a;

            public a(View view) {
                this.f64991a = view;
            }

            @Override
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                if (this.f64991a.getVisibility() == 0) {
                    n.this.w(this.f64991a);
                }
            }
        }

        public n(@NonNull Context context) {
            super(context);
            this.f64989k = 2;
            y(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f64930e, TabLayout.this.f64931f, TabLayout.this.f64932g, TabLayout.this.f64933h);
            setGravity(17);
            setOrientation(!TabLayout.this.f64911B ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        @Nullable
        public C16241a getBadge() {
            return this.f64984f;
        }

        @NonNull
        public C16241a getOrCreateBadge() {
            if (this.f64984f == null) {
                this.f64984f = C16241a.d(getContext());
            }
            v();
            C16241a c16241a = this.f64984f;
            if (c16241a != null) {
                return c16241a;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        public final void A(@Nullable TextView textView, @Nullable ImageView imageView) {
            i iVar = this.f64980b;
            Drawable mutate = (iVar == null || iVar.h() == null) ? null : DrawableCompat.wrap(this.f64980b.h()).mutate();
            i iVar2 = this.f64980b;
            CharSequence n10 = iVar2 != null ? iVar2.n() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean isEmpty = TextUtils.isEmpty(n10);
            if (textView != null) {
                if (isEmpty) {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                } else {
                    textView.setText(n10);
                    if (this.f64980b.f64973g == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int e10 = (isEmpty || imageView.getVisibility() != 0) ? 0 : (int) A.e(getContext(), 8);
                if (TabLayout.this.f64911B) {
                    if (e10 != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, e10);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (e10 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = e10;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            i iVar3 = this.f64980b;
            CharSequence charSequence = iVar3 != null ? iVar3.f64970d : null;
            if (isEmpty) {
                n10 = charSequence;
            }
            TooltipCompat.setTooltipText(this, n10);
        }

        @Override
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f64988j;
            if ((drawable == null || !drawable.isStateful()) ? false : this.f64988j.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public int getContentHeight() {
            View[] viewArr = {this.f64981c, this.f64982d, this.f64985g};
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            for (int i12 = 0; i12 < 3; i12++) {
                View view = viewArr[i12];
                if (view != null && view.getVisibility() == 0) {
                    i11 = z10 ? Math.min(i11, view.getTop()) : view.getTop();
                    i10 = z10 ? Math.max(i10, view.getBottom()) : view.getBottom();
                    z10 = true;
                }
            }
            return i10 - i11;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f64981c, this.f64982d, this.f64985g};
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            for (int i12 = 0; i12 < 3; i12++) {
                View view = viewArr[i12];
                if (view != null && view.getVisibility() == 0) {
                    i11 = z10 ? Math.min(i11, view.getLeft()) : view.getLeft();
                    i10 = z10 ? Math.max(i10, view.getRight()) : view.getRight();
                    z10 = true;
                }
            }
            return i10 - i11;
        }

        @Nullable
        public i getTab() {
            return this.f64980b;
        }

        public final void i(@Nullable View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new a(view));
        }

        public final float j(@NonNull Layout layout, int i10, float f10) {
            return layout.getLineWidth(i10) * (f10 / layout.getPaint().getTextSize());
        }

        public final void k(boolean z10) {
            setClipChildren(z10);
            setClipToPadding(z10);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z10);
                viewGroup.setClipToPadding(z10);
            }
        }

        @NonNull
        public final FrameLayout l() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        public final void m(@NonNull Canvas canvas) {
            Drawable drawable = this.f64988j;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f64988j.draw(canvas);
            }
        }

        @Nullable
        public final FrameLayout n(@NonNull View view) {
            if ((view == this.f64982d || view == this.f64981c) && C16242b.f130582a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        public final boolean o() {
            return this.f64984f != null;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            C16241a c16241a = this.f64984f;
            if (c16241a != null && c16241a.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.f64984f.o()));
            }
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f64980b.k(), 1, false, isSelected()));
            if (isSelected()) {
                wrap.setClickable(false);
                wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            wrap.setRoleDescription(getResources().getString(C15879a.m.f124061P));
        }

        @Override
        public void onMeasure(int i10, int i11) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i10 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f64944s, Integer.MIN_VALUE);
            }
            super.onMeasure(i10, i11);
            if (this.f64981c != null) {
                float f10 = TabLayout.this.f64941p;
                int i12 = this.f64989k;
                ImageView imageView = this.f64982d;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f64981c;
                    if (textView != null && textView.getLineCount() > 1) {
                        f10 = TabLayout.this.f64942q;
                    }
                } else {
                    i12 = 1;
                }
                float textSize = this.f64981c.getTextSize();
                int lineCount = this.f64981c.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f64981c);
                if (f10 != textSize || (maxLines >= 0 && i12 != maxLines)) {
                    if (TabLayout.this.f64910A != 1 || f10 <= textSize || lineCount != 1 || ((layout = this.f64981c.getLayout()) != null && j(layout, 0, f10) <= (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        this.f64981c.setTextSize(0, f10);
                        this.f64981c.setMaxLines(i12);
                        super.onMeasure(i10, i11);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void p() {
            FrameLayout frameLayout;
            if (C16242b.f130582a) {
                frameLayout = l();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(C15879a.k.f123932H, (ViewGroup) frameLayout, false);
            this.f64982d = imageView;
            frameLayout.addView(imageView, 0);
        }

        @Override
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f64980b == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.f64980b.r();
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void q() {
            FrameLayout frameLayout;
            if (C16242b.f130582a) {
                frameLayout = l();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(C15879a.k.f123934I, (ViewGroup) frameLayout, false);
            this.f64981c = textView;
            frameLayout.addView(textView);
        }

        public final void r() {
            if (this.f64983e != null) {
                u();
            }
            this.f64984f = null;
        }

        public void s() {
            setTab(null);
            setSelected(false);
        }

        @Override
        public void setSelected(boolean z10) {
            isSelected();
            super.setSelected(z10);
            TextView textView = this.f64981c;
            if (textView != null) {
                textView.setSelected(z10);
            }
            ImageView imageView = this.f64982d;
            if (imageView != null) {
                imageView.setSelected(z10);
            }
            View view = this.f64985g;
            if (view != null) {
                view.setSelected(z10);
            }
        }

        public void setTab(@Nullable i iVar) {
            if (iVar != this.f64980b) {
                this.f64980b = iVar;
                x();
            }
        }

        public final void t(@Nullable View view) {
            if (o() && view != null) {
                k(false);
                C16242b.b(this.f64984f, view, n(view));
                this.f64983e = view;
            }
        }

        public final void u() {
            if (o()) {
                k(true);
                View view = this.f64983e;
                if (view != null) {
                    C16242b.g(this.f64984f, view);
                    this.f64983e = null;
                }
            }
        }

        public final void v() {
            i iVar;
            i iVar2;
            if (o()) {
                if (this.f64985g != null) {
                    u();
                    return;
                }
                if (this.f64982d != null && (iVar2 = this.f64980b) != null && iVar2.h() != null) {
                    View view = this.f64983e;
                    ImageView imageView = this.f64982d;
                    if (view == imageView) {
                        w(imageView);
                        return;
                    } else {
                        u();
                        t(this.f64982d);
                        return;
                    }
                }
                if (this.f64981c == null || (iVar = this.f64980b) == null || iVar.l() != 1) {
                    u();
                    return;
                }
                View view2 = this.f64983e;
                TextView textView = this.f64981c;
                if (view2 == textView) {
                    w(textView);
                } else {
                    u();
                    t(this.f64981c);
                }
            }
        }

        public final void w(@NonNull View view) {
            if (o() && view == this.f64983e) {
                C16242b.j(this.f64984f, view, n(view));
            }
        }

        public final void x() {
            i iVar = this.f64980b;
            Drawable drawable = null;
            View g10 = iVar != null ? iVar.g() : null;
            if (g10 != null) {
                ViewParent parent = g10.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(g10);
                    }
                    addView(g10);
                }
                this.f64985g = g10;
                TextView textView = this.f64981c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f64982d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f64982d.setImageDrawable(null);
                }
                TextView textView2 = (TextView) g10.findViewById(R.id.text1);
                this.f64986h = textView2;
                if (textView2 != null) {
                    this.f64989k = TextViewCompat.getMaxLines(textView2);
                }
                this.f64987i = (ImageView) g10.findViewById(R.id.icon);
            } else {
                View view = this.f64985g;
                if (view != null) {
                    removeView(view);
                    this.f64985g = null;
                }
                this.f64986h = null;
                this.f64987i = null;
            }
            if (this.f64985g == null) {
                if (this.f64982d == null) {
                    p();
                }
                if (iVar != null && iVar.h() != null) {
                    drawable = DrawableCompat.wrap(iVar.h()).mutate();
                }
                if (drawable != null) {
                    DrawableCompat.setTintList(drawable, TabLayout.this.f64936k);
                    PorterDuff.Mode mode = TabLayout.this.f64940o;
                    if (mode != null) {
                        DrawableCompat.setTintMode(drawable, mode);
                    }
                }
                if (this.f64981c == null) {
                    q();
                    this.f64989k = TextViewCompat.getMaxLines(this.f64981c);
                }
                TextViewCompat.setTextAppearance(this.f64981c, TabLayout.this.f64934i);
                ColorStateList colorStateList = TabLayout.this.f64935j;
                if (colorStateList != null) {
                    this.f64981c.setTextColor(colorStateList);
                }
                A(this.f64981c, this.f64982d);
                v();
                i(this.f64982d);
                i(this.f64981c);
            } else {
                TextView textView3 = this.f64986h;
                if (textView3 != null || this.f64987i != null) {
                    A(textView3, this.f64987i);
                }
            }
            if (iVar != null && !TextUtils.isEmpty(iVar.f64970d)) {
                setContentDescription(iVar.f64970d);
            }
            setSelected(iVar != null && iVar.o());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [android.graphics.drawable.RippleDrawable] */
        public final void y(Context context) {
            int i10 = TabLayout.this.f64943r;
            if (i10 != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i10);
                this.f64988j = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.f64988j.setState(getDrawableState());
                }
            } else {
                this.f64988j = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.f64937l != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList a10 = Y1.b.a(TabLayout.this.f64937l);
                boolean z10 = TabLayout.this.f64914E;
                if (z10) {
                    gradientDrawable = null;
                }
                gradientDrawable = new RippleDrawable(a10, gradientDrawable, z10 ? null : gradientDrawable2);
            }
            ViewCompat.setBackground(this, gradientDrawable);
            TabLayout.this.invalidate();
        }

        public final void z() {
            setOrientation(!TabLayout.this.f64911B ? 1 : 0);
            TextView textView = this.f64986h;
            if (textView == null && this.f64987i == null) {
                A(this.f64981c, this.f64982d);
            } else {
                A(textView, this.f64987i);
            }
        }
    }

    public static class o implements f {

        public final ViewPager f64993a;

        public o(ViewPager viewPager) {
            this.f64993a = viewPager;
        }

        @Override
        public void a(@NonNull i iVar) {
            this.f64993a.setCurrentItem(iVar.k());
        }

        @Override
        public void b(i iVar) {
        }

        @Override
        public void c(i iVar) {
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f64927b.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            i iVar = this.f64927b.get(i10);
            if (iVar == null || iVar.h() == null || TextUtils.isEmpty(iVar.n())) {
                i10++;
            } else if (!this.f64911B) {
                return 72;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i10 = this.f64945t;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.f64910A;
        if (i11 == 0 || i11 == 2) {
            return this.f64947v;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f64929d.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    @NonNull
    public static ColorStateList r(int i10, int i11) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i11, i10});
    }

    private void setSelectedTabView(int i10) {
        int childCount = this.f64929d.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = this.f64929d.getChildAt(i11);
                boolean z10 = true;
                childAt.setSelected(i11 == i10);
                if (i11 != i10) {
                    z10 = false;
                }
                childAt.setActivated(z10);
                i11++;
            }
        }
    }

    public boolean A() {
        return this.f64914E;
    }

    public boolean B() {
        return this.f64911B;
    }

    public boolean C() {
        return this.f64912C;
    }

    @NonNull
    public i D() {
        i t10 = t();
        t10.f64974h = this;
        t10.f64975i = u(t10);
        if (t10.f64976j != -1) {
            t10.f64975i.setId(t10.f64976j);
        }
        return t10;
    }

    public void E() {
        int currentItem;
        G();
        PagerAdapter pagerAdapter = this.f64921L;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                h(D().D(this.f64921L.getPageTitle(i10)), false);
            }
            ViewPager viewPager = this.f64920K;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            M(z(currentItem));
        }
    }

    public boolean F(i iVar) {
        return f64886D0.release(iVar);
    }

    public void G() {
        for (int childCount = this.f64929d.getChildCount() - 1; childCount >= 0; childCount--) {
            L(childCount);
        }
        Iterator<i> it = this.f64927b.iterator();
        while (it.hasNext()) {
            i next = it.next();
            it.remove();
            next.q();
            F(next);
        }
        this.f64928c = null;
    }

    @Deprecated
    public void H(@Nullable c cVar) {
        this.f64917H.remove(cVar);
    }

    public void I(@NonNull f fVar) {
        H(fVar);
    }

    public void J(@NonNull i iVar) {
        if (iVar.f64974h != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        K(iVar.k());
    }

    public void K(int i10) {
        i iVar = this.f64928c;
        int k10 = iVar != null ? iVar.k() : 0;
        L(i10);
        i remove = this.f64927b.remove(i10);
        if (remove != null) {
            remove.q();
            F(remove);
        }
        int size = this.f64927b.size();
        for (int i11 = i10; i11 < size; i11++) {
            this.f64927b.get(i11).z(i11);
        }
        if (k10 == i10) {
            M(this.f64927b.isEmpty() ? null : this.f64927b.get(Math.max(0, i10 - 1)));
        }
    }

    public final void L(int i10) {
        n nVar = (n) this.f64929d.getChildAt(i10);
        this.f64929d.removeViewAt(i10);
        if (nVar != null) {
            nVar.s();
            this.f64926Q.release(nVar);
        }
        requestLayout();
    }

    public void M(@Nullable i iVar) {
        N(iVar, true);
    }

    public void N(@Nullable i iVar, boolean z10) {
        i iVar2 = this.f64928c;
        if (iVar2 == iVar) {
            if (iVar2 != null) {
                v(iVar);
                l(iVar.k());
                return;
            }
            return;
        }
        int k10 = iVar != null ? iVar.k() : -1;
        if (z10) {
            if ((iVar2 == null || iVar2.k() == -1) && k10 != -1) {
                P(k10, 0.0f, true);
            } else {
                l(k10);
            }
            if (k10 != -1) {
                setSelectedTabView(k10);
            }
        }
        this.f64928c = iVar;
        if (iVar2 != null) {
            x(iVar2);
        }
        if (iVar != null) {
            w(iVar);
        }
    }

    public void O(@Nullable PagerAdapter pagerAdapter, boolean z10) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f64921L;
        if (pagerAdapter2 != null && (dataSetObserver = this.f64922M) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f64921L = pagerAdapter;
        if (z10 && pagerAdapter != null) {
            if (this.f64922M == null) {
                this.f64922M = new g();
            }
            pagerAdapter.registerDataSetObserver(this.f64922M);
        }
        E();
    }

    public void P(int i10, float f10, boolean z10) {
        Q(i10, f10, z10, true);
    }

    public void Q(int i10, float f10, boolean z10, boolean z11) {
        int round = Math.round(i10 + f10);
        if (round < 0 || round >= this.f64929d.getChildCount()) {
            return;
        }
        if (z11) {
            this.f64929d.f(i10, f10);
        }
        ValueAnimator valueAnimator = this.f64919J;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f64919J.cancel();
        }
        scrollTo(o(i10, f10), 0);
        if (z10) {
            setSelectedTabView(round);
        }
    }

    public void R(int i10, int i11) {
        setTabTextColors(r(i10, i11));
    }

    public void S(@Nullable ViewPager viewPager, boolean z10) {
        T(viewPager, z10, false);
    }

    public final void T(@Nullable ViewPager viewPager, boolean z10, boolean z11) {
        ViewPager viewPager2 = this.f64920K;
        if (viewPager2 != null) {
            m mVar = this.f64923N;
            if (mVar != null) {
                viewPager2.removeOnPageChangeListener(mVar);
            }
            b bVar = this.f64924O;
            if (bVar != null) {
                this.f64920K.removeOnAdapterChangeListener(bVar);
            }
        }
        c cVar = this.f64918I;
        if (cVar != null) {
            H(cVar);
            this.f64918I = null;
        }
        if (viewPager != null) {
            this.f64920K = viewPager;
            if (this.f64923N == null) {
                this.f64923N = new m(this);
            }
            this.f64923N.a();
            viewPager.addOnPageChangeListener(this.f64923N);
            o oVar = new o(viewPager);
            this.f64918I = oVar;
            c(oVar);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                O(adapter, z10);
            }
            if (this.f64924O == null) {
                this.f64924O = new b();
            }
            this.f64924O.a(z10);
            viewPager.addOnAdapterChangeListener(this.f64924O);
            P(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f64920K = null;
            O(null, false);
        }
        this.f64925P = z11;
    }

    public final void U() {
        int size = this.f64927b.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f64927b.get(i10).E();
        }
    }

    public final void V(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.f64910A == 1 && this.f64949x == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    public void W(boolean z10) {
        for (int i10 = 0; i10 < this.f64929d.getChildCount(); i10++) {
            View childAt = this.f64929d.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            V((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z10) {
                childAt.requestLayout();
            }
        }
    }

    @Override
    public void addView(View view) {
        k(view);
    }

    @Deprecated
    public void c(@Nullable c cVar) {
        if (this.f64917H.contains(cVar)) {
            return;
        }
        this.f64917H.add(cVar);
    }

    public void d(@NonNull f fVar) {
        c(fVar);
    }

    public void e(@NonNull i iVar) {
        h(iVar, this.f64927b.isEmpty());
    }

    public void f(@NonNull i iVar, int i10) {
        g(iVar, i10, this.f64927b.isEmpty());
    }

    public void g(@NonNull i iVar, int i10, boolean z10) {
        if (iVar.f64974h != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        q(iVar, i10);
        j(iVar);
        if (z10) {
            iVar.r();
        }
    }

    public int getSelectedTabPosition() {
        i iVar = this.f64928c;
        if (iVar != null) {
            return iVar.k();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f64927b.size();
    }

    public int getTabGravity() {
        return this.f64949x;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f64936k;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f64913D;
    }

    public int getTabIndicatorGravity() {
        return this.f64951z;
    }

    public int getTabMaxWidth() {
        return this.f64944s;
    }

    public int getTabMode() {
        return this.f64910A;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f64937l;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f64938m;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f64935j;
    }

    public void h(@NonNull i iVar, boolean z10) {
        g(iVar, this.f64927b.size(), z10);
    }

    public final void i(@NonNull C13181b c13181b) {
        i D10 = D();
        CharSequence charSequence = c13181b.f85974b;
        if (charSequence != null) {
            D10.D(charSequence);
        }
        Drawable drawable = c13181b.f85975c;
        if (drawable != null) {
            D10.x(drawable);
        }
        int i10 = c13181b.f85976d;
        if (i10 != 0) {
            D10.u(i10);
        }
        if (!TextUtils.isEmpty(c13181b.getContentDescription())) {
            D10.t(c13181b.getContentDescription());
        }
        e(D10);
    }

    public final void j(@NonNull i iVar) {
        n nVar = iVar.f64975i;
        nVar.setSelected(false);
        nVar.setActivated(false);
        this.f64929d.addView(nVar, iVar.k(), s());
    }

    public final void k(View view) {
        if (!(view instanceof C13181b)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        i((C13181b) view);
    }

    public final void l(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.f64929d.c()) {
            P(i10, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int o10 = o(i10, 0.0f);
        if (scrollX != o10) {
            y();
            this.f64919J.setIntValues(scrollX, o10);
            this.f64919J.start();
        }
        this.f64929d.b(i10, this.f64950y);
    }

    public final void m(int i10) {
        if (i10 == 0) {
            Log.w(f64899b1, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i10 == 1) {
            this.f64929d.setGravity(1);
            return;
        } else if (i10 != 2) {
            return;
        }
        this.f64929d.setGravity(8388611);
    }

    public final void n() {
        int i10 = this.f64910A;
        ViewCompat.setPaddingRelative(this.f64929d, (i10 == 0 || i10 == 2) ? Math.max(0, this.f64948w - this.f64930e) : 0, 0, 0, 0);
        int i11 = this.f64910A;
        if (i11 == 0) {
            m(this.f64949x);
        } else if (i11 == 1 || i11 == 2) {
            if (this.f64949x == 2) {
                Log.w(f64899b1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f64929d.setGravity(1);
        }
        W(true);
    }

    public final int o(int i10, float f10) {
        int i11 = this.f64910A;
        if (i11 != 0 && i11 != 2) {
            return 0;
        }
        View childAt = this.f64929d.getChildAt(i10);
        int i12 = i10 + 1;
        View childAt2 = i12 < this.f64929d.getChildCount() ? this.f64929d.getChildAt(i12) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f10);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i13 : left - i13;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.e(this);
        if (this.f64920K == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                T((ViewPager) parent, true, true);
            }
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f64925P) {
            setupWithViewPager(null);
            this.f64925P = false;
        }
    }

    @Override
    public void onDraw(@NonNull Canvas canvas) {
        for (int i10 = 0; i10 < this.f64929d.getChildCount(); i10++) {
            View childAt = this.f64929d.getChildAt(i10);
            if (childAt instanceof n) {
                ((n) childAt).m(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int round = Math.round(A.e(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i11 = View.MeasureSpec.makeMeasureSpec(round + getPaddingTop() + getPaddingBottom(), 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i11) >= round) {
            getChildAt(0).setMinimumHeight(round);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (View.MeasureSpec.getMode(i10) != 0) {
            int i12 = this.f64946u;
            if (i12 <= 0) {
                i12 = (int) (size - A.e(getContext(), 56));
            }
            this.f64944s = i12;
        }
        super.onMeasure(i10, i11);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i13 = this.f64910A;
            if (i13 != 0) {
                if (i13 == 1) {
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        return;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
                }
                if (i13 != 2) {
                    return;
                }
            }
            if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
        }
    }

    public void p() {
        this.f64917H.clear();
    }

    public final void q(@NonNull i iVar, int i10) {
        iVar.z(i10);
        this.f64927b.add(i10, iVar);
        int size = this.f64927b.size();
        while (true) {
            i10++;
            if (i10 >= size) {
                return;
            } else {
                this.f64927b.get(i10).z(i10);
            }
        }
    }

    @NonNull
    public final LinearLayout.LayoutParams s() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        V(layoutParams);
        return layoutParams;
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        C3568k.d(this, f10);
    }

    public void setInlineLabel(boolean z10) {
        if (this.f64911B != z10) {
            this.f64911B = z10;
            for (int i10 = 0; i10 < this.f64929d.getChildCount(); i10++) {
                View childAt = this.f64929d.getChildAt(i10);
                if (childAt instanceof n) {
                    ((n) childAt).z();
                }
            }
            n();
        }
    }

    public void setInlineLabelResource(@BoolRes int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable f fVar) {
        setOnTabSelectedListener((c) fVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        y();
        this.f64919J.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.f64938m != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f64938m = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i10) {
        this.f64939n = i10;
        W(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.f64951z != i10) {
            this.f64951z = i10;
            ViewCompat.postInvalidateOnAnimation(this.f64929d);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.f64929d.g(i10);
    }

    public void setTabGravity(int i10) {
        if (this.f64949x != i10) {
            this.f64949x = i10;
            n();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f64936k != colorStateList) {
            this.f64936k = colorStateList;
            U();
        }
    }

    public void setTabIconTintResource(@ColorRes int i10) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.f64913D = i10;
        if (i10 == 0) {
            this.f64915F = new com.google.android.material.tabs.a();
        } else {
            if (i10 == 1) {
                this.f64915F = new C13180a();
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z10) {
        this.f64912C = z10;
        ViewCompat.postInvalidateOnAnimation(this.f64929d);
    }

    public void setTabMode(int i10) {
        if (i10 != this.f64910A) {
            this.f64910A = i10;
            n();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f64937l != colorStateList) {
            this.f64937l = colorStateList;
            for (int i10 = 0; i10 < this.f64929d.getChildCount(); i10++) {
                View childAt = this.f64929d.getChildAt(i10);
                if (childAt instanceof n) {
                    ((n) childAt).y(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i10) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f64935j != colorStateList) {
            this.f64935j = colorStateList;
            U();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        O(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z10) {
        if (this.f64914E != z10) {
            this.f64914E = z10;
            for (int i10 = 0; i10 < this.f64929d.getChildCount(); i10++) {
                View childAt = this.f64929d.getChildAt(i10);
                if (childAt instanceof n) {
                    ((n) childAt).y(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        S(viewPager, true);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public i t() {
        i acquire = f64886D0.acquire();
        return acquire == null ? new i() : acquire;
    }

    @NonNull
    public final n u(@NonNull i iVar) {
        Pools.Pool<n> pool = this.f64926Q;
        n acquire = pool != null ? pool.acquire() : null;
        if (acquire == null) {
            acquire = new n(getContext());
        }
        acquire.setTab(iVar);
        acquire.setFocusable(true);
        acquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(iVar.f64970d)) {
            acquire.setContentDescription(iVar.f64969c);
        } else {
            acquire.setContentDescription(iVar.f64970d);
        }
        return acquire;
    }

    public final void v(@NonNull i iVar) {
        for (int size = this.f64917H.size() - 1; size >= 0; size--) {
            this.f64917H.get(size).c(iVar);
        }
    }

    public final void w(@NonNull i iVar) {
        for (int size = this.f64917H.size() - 1; size >= 0; size--) {
            this.f64917H.get(size).a(iVar);
        }
    }

    public final void x(@NonNull i iVar) {
        for (int size = this.f64917H.size() - 1; size >= 0; size--) {
            this.f64917H.get(size).b(iVar);
        }
    }

    public final void y() {
        if (this.f64919J == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f64919J = valueAnimator;
            valueAnimator.setInterpolator(C16046a.f127889b);
            this.f64919J.setDuration(this.f64950y);
            this.f64919J.addUpdateListener(new a());
        }
    }

    @Nullable
    public i z(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return this.f64927b.get(i10);
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122636te);
    }

    @Override
    public void addView(View view, int i10) {
        k(view);
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable c cVar) {
        c cVar2 = this.f64916G;
        if (cVar2 != null) {
            H(cVar2);
        }
        this.f64916G = cVar;
        if (cVar != null) {
            c(cVar);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f64891R;
        this.f64927b = new ArrayList<>();
        this.f64938m = new GradientDrawable();
        this.f64939n = 0;
        this.f64944s = Integer.MAX_VALUE;
        this.f64917H = new ArrayList<>();
        this.f64926Q = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        h hVar = new h(context2);
        this.f64929d = hVar;
        super.addView(hVar, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = C15879a.o.ks;
        int i12 = C15879a.o.Is;
        TypedArray j10 = s.j(context2, attributeSet, iArr, i10, i11, i12);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            C3567j c3567j = new C3567j();
            c3567j.n0(ColorStateList.valueOf(colorDrawable.getColor()));
            c3567j.Y(context2);
            c3567j.m0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, c3567j);
        }
        setSelectedTabIndicator(X1.c.d(context2, j10, C15879a.o.qs));
        setSelectedTabIndicatorColor(j10.getColor(C15879a.o.ts, 0));
        hVar.g(j10.getDimensionPixelSize(C15879a.o.ws, -1));
        setSelectedTabIndicatorGravity(j10.getInt(C15879a.o.vs, 0));
        setTabIndicatorFullWidth(j10.getBoolean(C15879a.o.us, true));
        setTabIndicatorAnimationMode(j10.getInt(C15879a.o.ss, 0));
        int dimensionPixelSize = j10.getDimensionPixelSize(C15879a.o.Bs, 0);
        this.f64933h = dimensionPixelSize;
        this.f64932g = dimensionPixelSize;
        this.f64931f = dimensionPixelSize;
        this.f64930e = dimensionPixelSize;
        this.f64930e = j10.getDimensionPixelSize(C15879a.o.Es, dimensionPixelSize);
        this.f64931f = j10.getDimensionPixelSize(C15879a.o.Fs, this.f64931f);
        this.f64932g = j10.getDimensionPixelSize(C15879a.o.Ds, this.f64932g);
        this.f64933h = j10.getDimensionPixelSize(C15879a.o.Cs, this.f64933h);
        int resourceId = j10.getResourceId(i12, C15879a.n.f124561e6);
        this.f64934i = resourceId;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R.styleable.TextAppearance);
        try {
            this.f64941p = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.f64935j = X1.c.a(context2, obtainStyledAttributes, androidx.appcompat.R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            int i13 = C15879a.o.Js;
            if (j10.hasValue(i13)) {
                this.f64935j = X1.c.a(context2, j10, i13);
            }
            int i14 = C15879a.o.Hs;
            if (j10.hasValue(i14)) {
                this.f64935j = r(this.f64935j.getDefaultColor(), j10.getColor(i14, 0));
            }
            this.f64936k = X1.c.a(context2, j10, C15879a.o.os);
            this.f64940o = A.k(j10.getInt(C15879a.o.ps, -1), null);
            this.f64937l = X1.c.a(context2, j10, C15879a.o.Gs);
            this.f64950y = j10.getInt(C15879a.o.rs, 300);
            this.f64945t = j10.getDimensionPixelSize(C15879a.o.zs, -1);
            this.f64946u = j10.getDimensionPixelSize(C15879a.o.ys, -1);
            this.f64943r = j10.getResourceId(C15879a.o.ls, 0);
            this.f64948w = j10.getDimensionPixelSize(C15879a.o.ms, 0);
            this.f64910A = j10.getInt(C15879a.o.As, 1);
            this.f64949x = j10.getInt(C15879a.o.ns, 0);
            this.f64911B = j10.getBoolean(C15879a.o.xs, false);
            this.f64914E = j10.getBoolean(C15879a.o.Ks, false);
            j10.recycle();
            Resources resources = getResources();
            this.f64942q = resources.getDimensionPixelSize(C15879a.f.f123016H1);
            this.f64947v = resources.getDimensionPixelSize(C15879a.f.f123000F1);
            n();
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        k(view);
    }

    public void setSelectedTabIndicator(@DrawableRes int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        k(view);
    }
}
