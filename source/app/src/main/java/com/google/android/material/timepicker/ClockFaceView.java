package com.google.android.material.timepicker;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
import w1.C15879a;

class ClockFaceView extends d implements ClockHandView.d {

    public static final float f65194t = 0.001f;

    public static final int f65195u = 12;

    public static final String f65196v = "";

    public final ClockHandView f65197f;

    public final Rect f65198g;

    public final RectF f65199h;

    public final SparseArray<TextView> f65200i;

    public final AccessibilityDelegateCompat f65201j;

    public final int[] f65202k;

    public final float[] f65203l;

    public final int f65204m;

    public final int f65205n;

    public final int f65206o;

    public final int f65207p;

    public String[] f65208q;

    public float f65209r;

    public final ColorStateList f65210s;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.h(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f65197f.g()) - ClockFaceView.this.f65204m);
            return true;
        }
    }

    public class b extends AccessibilityDelegateCompat {
        public b() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int intValue = ((Integer) view.getTag(C15879a.h.f123563H2)).intValue();
            if (intValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f65200i.get(intValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, intValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(@NonNull Context context) {
        this(context, null);
    }

    public static float q(float f10, float f11, float f12) {
        return Math.max(Math.max(f10, f11), f12);
    }

    public void c(String[] strArr, @StringRes int i10) {
        this.f65208q = strArr;
        r(i10);
    }

    public void d(@FloatRange(from = 0.0d, to = 360.0d) float f10) {
        this.f65197f.l(f10);
        o();
    }

    @Override
    public void f(float f10, boolean z10) {
        if (Math.abs(this.f65209r - f10) > 0.001f) {
            this.f65209r = f10;
            o();
        }
    }

    @Override
    public void h(int i10) {
        if (i10 != g()) {
            super.h(i10);
            this.f65197f.k(g());
        }
    }

    public final void o() {
        RectF d10 = this.f65197f.d();
        for (int i10 = 0; i10 < this.f65200i.size(); i10++) {
            TextView textView = this.f65200i.get(i10);
            if (textView != null) {
                textView.getDrawingRect(this.f65198g);
                this.f65198g.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f65198g);
                this.f65199h.set(this.f65198g);
                textView.getPaint().setShader(p(d10, this.f65199h));
                textView.invalidate();
            }
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f65208q.length, false, 1));
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        o();
    }

    @Override
    public void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int q10 = (int) (this.f65207p / q(this.f65205n / displayMetrics.heightPixels, this.f65206o / displayMetrics.widthPixels, 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(q10, 1073741824);
        setMeasuredDimension(q10, q10);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    public final RadialGradient p(RectF rectF, RectF rectF2) {
        if (RectF.intersects(rectF, rectF2)) {
            return new RadialGradient(rectF.centerX() - this.f65199h.left, rectF.centerY() - this.f65199h.top, rectF.width() * 0.5f, this.f65202k, this.f65203l, Shader.TileMode.CLAMP);
        }
        return null;
    }

    public final void r(@StringRes int i10) {
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f65200i.size();
        for (int i11 = 0; i11 < Math.max(this.f65208q.length, size); i11++) {
            TextView textView = this.f65200i.get(i11);
            if (i11 >= this.f65208q.length) {
                removeView(textView);
                this.f65200i.remove(i11);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(C15879a.k.f123964X, (ViewGroup) this, false);
                    this.f65200i.put(i11, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.f65208q[i11]);
                textView.setTag(C15879a.h.f123563H2, Integer.valueOf(i11));
                ViewCompat.setAccessibilityDelegate(textView, this.f65201j);
                textView.setTextColor(this.f65210s);
                if (i10 != 0) {
                    textView.setContentDescription(getResources().getString(i10, this.f65208q[i11]));
                }
            }
        }
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122381fa);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f65198g = new Rect();
        this.f65199h = new RectF();
        this.f65200i = new SparseArray<>();
        this.f65203l = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f126019v6, i10, C15879a.n.f124302Lc);
        Resources resources = getResources();
        ColorStateList a10 = X1.c.a(context, obtainStyledAttributes, C15879a.o.f126069x6);
        this.f65210s = a10;
        LayoutInflater.from(context).inflate(C15879a.k.f123966Y, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(C15879a.h.f123816r2);
        this.f65197f = clockHandView;
        this.f65204m = resources.getDimensionPixelSize(C15879a.f.f123187c2);
        int colorForState = a10.getColorForState(new int[]{R.attr.state_selected}, a10.getDefaultColor());
        this.f65202k = new int[]{colorForState, colorForState, a10.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = AppCompatResources.getColorStateList(context, C15879a.e.f122948x1).getDefaultColor();
        ColorStateList a11 = X1.c.a(context, obtainStyledAttributes, C15879a.o.f126044w6);
        setBackgroundColor(a11 != null ? a11.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f65201j = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        c(strArr, 0);
        this.f65205n = resources.getDimensionPixelSize(C15879a.f.f123009G2);
        this.f65206o = resources.getDimensionPixelSize(C15879a.f.f123017H2);
        this.f65207p = resources.getDimensionPixelSize(C15879a.f.f123239i2);
    }
}
