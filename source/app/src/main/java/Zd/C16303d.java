package zd;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import zd.C16301b;

public class C16303d extends HorizontalScrollView {

    public static final boolean f131222q = false;

    public static final int f131223r = 24;

    public static final int f131224s = -1;

    public static final int f131225t = 16;

    public static final boolean f131226u = true;

    public static final int f131227v = 12;

    public static final int f131228w = -67108864;

    public static final int f131229x = 0;

    public static final boolean f131230y = true;

    public final C16304e f131231b;

    public int f131232c;

    public int f131233d;

    public boolean f131234e;

    public ColorStateList f131235f;

    public float f131236g;

    public int f131237h;

    public int f131238i;

    public ViewPager f131239j;

    public ViewPager.OnPageChangeListener f131240k;

    public InterfaceC2264d f131241l;

    public h f131242m;

    public b f131243n;

    public e f131244o;

    public boolean f131245p;

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            for (int i10 = 0; i10 < C16303d.this.f131231b.getChildCount(); i10++) {
                if (view == C16303d.this.f131231b.getChildAt(i10)) {
                    if (C16303d.this.f131244o != null) {
                        C16303d.this.f131244o.a(i10);
                    }
                    C16303d.this.f131239j.setCurrentItem(i10);
                    return;
                }
            }
        }
    }

    public class c implements ViewPager.OnPageChangeListener {

        public int f131247a;

        public c() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            this.f131247a = i10;
            if (C16303d.this.f131240k != null) {
                C16303d.this.f131240k.onPageScrollStateChanged(i10);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            int childCount = C16303d.this.f131231b.getChildCount();
            if (childCount == 0 || i10 < 0 || i10 >= childCount) {
                return;
            }
            C16303d.this.f131231b.i(i10, f10);
            C16303d.this.h(i10, f10);
            if (C16303d.this.f131240k != null) {
                C16303d.this.f131240k.onPageScrolled(i10, f10, i11);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            if (this.f131247a == 0) {
                C16303d.this.f131231b.i(i10, 0.0f);
                C16303d.this.h(i10, 0.0f);
            }
            int childCount = C16303d.this.f131231b.getChildCount();
            int i11 = 0;
            while (i11 < childCount) {
                C16303d.this.f131231b.getChildAt(i11).setSelected(i10 == i11);
                i11++;
            }
            if (C16303d.this.f131240k != null) {
                C16303d.this.f131240k.onPageSelected(i10);
            }
        }
    }

    public interface InterfaceC2264d {
        void a(int i10, int i11);
    }

    public interface e {
        void a(int i10);
    }

    public static class f implements h {

        public final LayoutInflater f131249a;

        public final int f131250b;

        public final int f131251c;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v3, types: [android.view.View] */
        @Override
        public View a(ViewGroup viewGroup, int i10, PagerAdapter pagerAdapter) {
            int i11 = this.f131250b;
            TextView textView = null;
            TextView inflate = i11 != -1 ? this.f131249a.inflate(i11, viewGroup, false) : null;
            int i12 = this.f131251c;
            if (i12 != -1 && inflate != null) {
                textView = (TextView) inflate.findViewById(i12);
            }
            if (textView == null && TextView.class.isInstance(inflate)) {
                textView = inflate;
            }
            if (textView != null) {
                textView.setText(pagerAdapter.getPageTitle(i10));
            }
            return inflate;
        }

        public f(Context context, int i10, int i11) {
            this.f131249a = LayoutInflater.from(context);
            this.f131250b = i10;
            this.f131251c = i11;
        }
    }

    public interface g {
        int a(int i10);

        int b(int i10);
    }

    public interface h {
        View a(ViewGroup viewGroup, int i10, PagerAdapter pagerAdapter);
    }

    public C16303d(Context context) {
        this(context, null);
    }

    public TextView e(CharSequence charSequence) {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(charSequence);
        textView.setTextColor(this.f131235f);
        textView.setTextSize(0, this.f131236g);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        int i10 = this.f131233d;
        if (i10 != -1) {
            textView.setBackgroundResource(i10);
        } else {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
            textView.setBackgroundResource(typedValue.resourceId);
        }
        textView.setAllCaps(this.f131234e);
        int i11 = this.f131237h;
        textView.setPadding(i11, 0, i11, 0);
        int i12 = this.f131238i;
        if (i12 > 0) {
            textView.setMinWidth(i12);
        }
        return textView;
    }

    public View f(int i10) {
        return this.f131231b.getChildAt(i10);
    }

    public final void g() {
        PagerAdapter adapter = this.f131239j.getAdapter();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            h hVar = this.f131242m;
            View e10 = hVar == null ? e(adapter.getPageTitle(i10)) : hVar.a(this.f131231b, i10, adapter);
            if (e10 == null) {
                throw new IllegalStateException("tabView is null.");
            }
            if (this.f131245p) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) e10.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            b bVar = this.f131243n;
            if (bVar != null) {
                e10.setOnClickListener(bVar);
            }
            this.f131231b.addView(e10);
            if (i10 == this.f131239j.getCurrentItem()) {
                e10.setSelected(true);
            }
        }
    }

    public final void h(int i10, float f10) {
        int i11;
        int j10;
        int i12;
        int childCount = this.f131231b.getChildCount();
        if (childCount == 0 || i10 < 0 || i10 >= childCount) {
            return;
        }
        boolean n10 = C16305f.n(this);
        View childAt = this.f131231b.getChildAt(i10);
        int l10 = (int) ((C16305f.l(childAt) + C16305f.d(childAt)) * f10);
        if (this.f131231b.h()) {
            if (0.0f < f10 && f10 < 1.0f) {
                View childAt2 = this.f131231b.getChildAt(i10 + 1);
                l10 = Math.round(f10 * ((C16305f.l(childAt) / 2) + C16305f.c(childAt) + (C16305f.l(childAt2) / 2) + C16305f.e(childAt2)));
            }
            View childAt3 = this.f131231b.getChildAt(0);
            if (n10) {
                int l11 = C16305f.l(childAt3) + C16305f.c(childAt3);
                int l12 = C16305f.l(childAt) + C16305f.c(childAt);
                j10 = (C16305f.a(childAt) - C16305f.c(childAt)) - l10;
                i12 = (l11 - l12) / 2;
            } else {
                int l13 = C16305f.l(childAt3) + C16305f.e(childAt3);
                int l14 = C16305f.l(childAt) + C16305f.e(childAt);
                j10 = (C16305f.j(childAt) - C16305f.e(childAt)) + l10;
                i12 = (l13 - l14) / 2;
            }
            scrollTo(j10 - i12, 0);
            return;
        }
        int i13 = this.f131232c;
        if (i13 == -1) {
            if (0.0f < f10 && f10 < 1.0f) {
                View childAt4 = this.f131231b.getChildAt(i10 + 1);
                l10 = Math.round(f10 * ((C16305f.l(childAt) / 2) + C16305f.c(childAt) + (C16305f.l(childAt4) / 2) + C16305f.e(childAt4)));
            }
            i11 = n10 ? (((-C16305f.m(childAt)) / 2) + (getWidth() / 2)) - C16305f.i(this) : ((C16305f.m(childAt) / 2) - (getWidth() / 2)) + C16305f.i(this);
        } else if (n10) {
            if (i10 <= 0 && f10 <= 0.0f) {
                i13 = 0;
            }
            i11 = i13;
        } else {
            i11 = (i10 > 0 || f10 > 0.0f) ? -i13 : 0;
        }
        int j11 = C16305f.j(childAt);
        int e10 = C16305f.e(childAt);
        scrollTo(i11 + (n10 ? (((j11 + e10) - l10) - getWidth()) + C16305f.h(this) : (j11 - e10) + l10), 0);
    }

    public void i(int i10, int i11) {
        this.f131242m = new f(getContext(), i10, i11);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ViewPager viewPager;
        super.onLayout(z10, i10, i11, i12, i13);
        if (!z10 || (viewPager = this.f131239j) == null) {
            return;
        }
        h(viewPager.getCurrentItem(), 0.0f);
    }

    @Override
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        InterfaceC2264d interfaceC2264d = this.f131241l;
        if (interfaceC2264d != null) {
            interfaceC2264d.a(i10, i12);
        }
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (!this.f131231b.h() || this.f131231b.getChildCount() <= 0) {
            return;
        }
        View childAt = this.f131231b.getChildAt(0);
        View childAt2 = this.f131231b.getChildAt(r5.getChildCount() - 1);
        int f10 = ((i10 - C16305f.f(childAt)) / 2) - C16305f.e(childAt);
        int f11 = ((i10 - C16305f.f(childAt2)) / 2) - C16305f.c(childAt2);
        C16304e c16304e = this.f131231b;
        c16304e.setMinimumWidth(c16304e.getMeasuredWidth());
        ViewCompat.setPaddingRelative(this, f10, getPaddingTop(), f11, getPaddingBottom());
        setClipToPadding(false);
    }

    public void setCustomTabColorizer(g gVar) {
        this.f131231b.k(gVar);
    }

    public void setCustomTabView(h hVar) {
        this.f131242m = hVar;
    }

    public void setDefaultTabTextColor(int i10) {
        this.f131235f = ColorStateList.valueOf(i10);
    }

    public void setDistributeEvenly(boolean z10) {
        this.f131245p = z10;
    }

    public void setDividerColors(int... iArr) {
        this.f131231b.l(iArr);
    }

    public void setIndicationInterpolator(AbstractC16302c abstractC16302c) {
        this.f131231b.m(abstractC16302c);
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f131240k = onPageChangeListener;
    }

    public void setOnScrollChangeListener(InterfaceC2264d interfaceC2264d) {
        this.f131241l = interfaceC2264d;
    }

    public void setOnTabClickListener(e eVar) {
        this.f131244o = eVar;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f131231b.n(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f131231b.removeAllViews();
        this.f131239j = viewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        viewPager.addOnPageChangeListener(new c());
        g();
    }

    public C16303d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setDefaultTabTextColor(ColorStateList colorStateList) {
        this.f131235f = colorStateList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C16303d(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setHorizontalScrollBarEnabled(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        float applyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C16301b.j.f131164a0, i10, 0);
        int resourceId = obtainStyledAttributes.getResourceId(C16301b.j.f131172e0, -1);
        boolean z10 = obtainStyledAttributes.getBoolean(C16301b.j.f131174f0, true);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(C16301b.j.f131176g0);
        float dimension = obtainStyledAttributes.getDimension(C16301b.j.f131182j0, applyDimension);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C16301b.j.f131178h0, (int) (16.0f * f10));
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C16301b.j.f131180i0, (int) (0.0f * f10));
        int resourceId2 = obtainStyledAttributes.getResourceId(C16301b.j.f131168c0, -1);
        int resourceId3 = obtainStyledAttributes.getResourceId(C16301b.j.f131170d0, -1);
        boolean z11 = obtainStyledAttributes.getBoolean(C16301b.j.f131184k0, false);
        boolean z12 = obtainStyledAttributes.getBoolean(C16301b.j.f131166b0, true);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C16301b.j.f131136B0, (int) (f10 * 24.0f));
        obtainStyledAttributes.recycle();
        this.f131232c = layoutDimension;
        this.f131233d = resourceId;
        this.f131234e = z10;
        this.f131235f = colorStateList == null ? ColorStateList.valueOf(f131228w) : colorStateList;
        this.f131236g = dimension;
        this.f131237h = dimensionPixelSize;
        this.f131238i = dimensionPixelSize2;
        this.f131243n = z12 ? new b() : null;
        this.f131245p = z11;
        if (resourceId2 != -1) {
            i(resourceId2, resourceId3);
        }
        C16304e c16304e = new C16304e(context, attributeSet);
        this.f131231b = c16304e;
        if (z11 && c16304e.h()) {
            throw new UnsupportedOperationException("'distributeEvenly' and 'indicatorAlwaysInCenter' both use does not support");
        }
        setFillViewport(!c16304e.h());
        addView(c16304e, -1, -1);
    }
}
