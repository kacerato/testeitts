package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.a;
import com.google.android.flexbox.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o0.d;
import o0.f;
import o0.g;

public class FlexboxLayout extends ViewGroup implements d {

    public static final int f60460s = 0;

    public static final int f60461t = 1;

    public static final int f60462u = 2;

    public static final int f60463v = 4;

    public int f60464b;

    public int f60465c;

    public int f60466d;

    public int f60467e;

    public int f60468f;

    public int f60469g;

    @Nullable
    public Drawable f60470h;

    @Nullable
    public Drawable f60471i;

    public int f60472j;

    public int f60473k;

    public int f60474l;

    public int f60475m;

    public int[] f60476n;

    public SparseIntArray f60477o;

    public com.google.android.flexbox.a f60478p;

    public List<g> f60479q;

    public a.b f60480r;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    public final void A() {
        if (this.f60470h == null && this.f60471i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override
    public void a(g flexLine) {
        if (j()) {
            if ((this.f60473k & 4) > 0) {
                int i10 = flexLine.f98426e;
                int i11 = this.f60475m;
                flexLine.f98426e = i10 + i11;
                flexLine.f98427f += i11;
                return;
            }
            return;
        }
        if ((this.f60472j & 4) > 0) {
            int i12 = flexLine.f98426e;
            int i13 = this.f60474l;
            flexLine.f98426e = i12 + i13;
            flexLine.f98427f += i13;
        }
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (this.f60477o == null) {
            this.f60477o = new SparseIntArray(getChildCount());
        }
        this.f60476n = this.f60478p.n(child, index, params, this.f60477o);
        super.addView(child, index, params);
    }

    @Override
    public View b(int index) {
        return getChildAt(index);
    }

    @Override
    public int c(int heightSpec, int padding, int childDimension) {
        return ViewGroup.getChildMeasureSpec(heightSpec, padding, childDimension);
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        return p10 instanceof b;
    }

    @Override
    public int d(View view) {
        return 0;
    }

    @Override
    public void e(View view, int index, int indexInFlexLine, g flexLine) {
        if (s(index, indexInFlexLine)) {
            if (j()) {
                int i10 = flexLine.f98426e;
                int i11 = this.f60475m;
                flexLine.f98426e = i10 + i11;
                flexLine.f98427f += i11;
                return;
            }
            int i12 = flexLine.f98426e;
            int i13 = this.f60474l;
            flexLine.f98426e = i12 + i13;
            flexLine.f98427f += i13;
        }
    }

    @Override
    public View f(int index) {
        return r(index);
    }

    @Override
    public int g(View view, int index, int indexInFlexLine) {
        int i10;
        int i11;
        if (j()) {
            i10 = s(index, indexInFlexLine) ? this.f60475m : 0;
            if ((this.f60473k & 4) <= 0) {
                return i10;
            }
            i11 = this.f60475m;
        } else {
            i10 = s(index, indexInFlexLine) ? this.f60474l : 0;
            if ((this.f60472j & 4) <= 0) {
                return i10;
            }
            i11 = this.f60474l;
        }
        return i10 + i11;
    }

    @Override
    public int getAlignContent() {
        return this.f60468f;
    }

    @Override
    public int getAlignItems() {
        return this.f60467e;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f60470h;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f60471i;
    }

    @Override
    public int getFlexDirection() {
        return this.f60464b;
    }

    @Override
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override
    public List<g> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f60479q.size());
        for (g gVar : this.f60479q) {
            if (gVar.d() != 0) {
                arrayList.add(gVar);
            }
        }
        return arrayList;
    }

    @Override
    public List<g> getFlexLinesInternal() {
        return this.f60479q;
    }

    @Override
    public int getFlexWrap() {
        return this.f60465c;
    }

    @Override
    public int getJustifyContent() {
        return this.f60466d;
    }

    @Override
    public int getLargestMainSize() {
        Iterator<g> it = this.f60479q.iterator();
        int i10 = Integer.MIN_VALUE;
        while (it.hasNext()) {
            i10 = Math.max(i10, it.next().f98426e);
        }
        return i10;
    }

    @Override
    public int getMaxLine() {
        return this.f60469g;
    }

    public int getShowDividerHorizontal() {
        return this.f60472j;
    }

    public int getShowDividerVertical() {
        return this.f60473k;
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.f60479q.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            g gVar = this.f60479q.get(i11);
            if (t(i11)) {
                i10 += j() ? this.f60474l : this.f60475m;
            }
            if (u(i11)) {
                i10 += j() ? this.f60474l : this.f60475m;
            }
            i10 += gVar.f98428g;
        }
        return i10;
    }

    @Override
    public int h(int widthSpec, int padding, int childDimension) {
        return ViewGroup.getChildMeasureSpec(widthSpec, padding, childDimension);
    }

    @Override
    public void i(int position, View view) {
    }

    @Override
    public boolean j() {
        int i10 = this.f60464b;
        return i10 == 0 || i10 == 1;
    }

    public final boolean k(int flexLineIndex) {
        for (int i10 = 0; i10 < flexLineIndex; i10++) {
            if (this.f60479q.get(i10).d() > 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean l(int index, int indexInFlexLine) {
        for (int i10 = 1; i10 <= indexInFlexLine; i10++) {
            View r10 = r(index - i10);
            if (r10 != null && r10.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    public final void m(Canvas canvas, boolean isRtl, boolean fromBottomToTop) {
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f60479q.size();
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f60479q.get(i10);
            for (int i11 = 0; i11 < gVar.f98429h; i11++) {
                int i12 = gVar.f98436o + i11;
                View r10 = r(i12);
                if (r10 != null && r10.getVisibility() != 8) {
                    b bVar = (b) r10.getLayoutParams();
                    if (s(i12, i11)) {
                        p(canvas, isRtl ? r10.getRight() + bVar.rightMargin : (r10.getLeft() - bVar.leftMargin) - this.f60475m, gVar.f98423b, gVar.f98428g);
                    }
                    if (i11 == gVar.f98429h - 1 && (this.f60473k & 4) > 0) {
                        p(canvas, isRtl ? (r10.getLeft() - bVar.leftMargin) - this.f60475m : r10.getRight() + bVar.rightMargin, gVar.f98423b, gVar.f98428g);
                    }
                }
            }
            if (t(i10)) {
                o(canvas, paddingLeft, fromBottomToTop ? gVar.f98425d : gVar.f98423b - this.f60474l, max);
            }
            if (u(i10) && (this.f60472j & 4) > 0) {
                o(canvas, paddingLeft, fromBottomToTop ? gVar.f98423b - this.f60474l : gVar.f98425d, max);
            }
        }
    }

    public final void n(Canvas canvas, boolean isRtl, boolean fromBottomToTop) {
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f60479q.size();
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f60479q.get(i10);
            for (int i11 = 0; i11 < gVar.f98429h; i11++) {
                int i12 = gVar.f98436o + i11;
                View r10 = r(i12);
                if (r10 != null && r10.getVisibility() != 8) {
                    b bVar = (b) r10.getLayoutParams();
                    if (s(i12, i11)) {
                        o(canvas, gVar.f98422a, fromBottomToTop ? r10.getBottom() + bVar.bottomMargin : (r10.getTop() - bVar.topMargin) - this.f60474l, gVar.f98428g);
                    }
                    if (i11 == gVar.f98429h - 1 && (this.f60472j & 4) > 0) {
                        o(canvas, gVar.f98422a, fromBottomToTop ? (r10.getTop() - bVar.topMargin) - this.f60474l : r10.getBottom() + bVar.bottomMargin, gVar.f98428g);
                    }
                }
            }
            if (t(i10)) {
                p(canvas, isRtl ? gVar.f98424c : gVar.f98422a - this.f60475m, paddingTop, max);
            }
            if (u(i10) && (this.f60473k & 4) > 0) {
                p(canvas, isRtl ? gVar.f98422a - this.f60475m : gVar.f98424c, paddingTop, max);
            }
        }
    }

    public final void o(Canvas canvas, int left, int top, int length) {
        Drawable drawable = this.f60470h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(left, top, length + left, this.f60474l + top);
        this.f60470h.draw(canvas);
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.f60471i == null && this.f60470h == null) {
            return;
        }
        if (this.f60472j == 0 && this.f60473k == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i10 = this.f60464b;
        if (i10 == 0) {
            m(canvas, layoutDirection == 1, this.f60465c == 2);
            return;
        }
        if (i10 == 1) {
            m(canvas, layoutDirection != 1, this.f60465c == 2);
            return;
        }
        if (i10 == 2) {
            boolean z10 = layoutDirection == 1;
            if (this.f60465c == 2) {
                z10 = !z10;
            }
            n(canvas, z10, false);
            return;
        }
        if (i10 != 3) {
            return;
        }
        boolean z11 = layoutDirection == 1;
        if (this.f60465c == 2) {
            z11 = !z11;
        }
        n(canvas, z11, true);
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        boolean z10;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i10 = this.f60464b;
        if (i10 == 0) {
            v(layoutDirection == 1, left, top, right, bottom);
            return;
        }
        if (i10 == 1) {
            v(layoutDirection != 1, left, top, right, bottom);
            return;
        }
        if (i10 == 2) {
            z10 = layoutDirection == 1;
            w(this.f60465c == 2 ? !z10 : z10, false, left, top, right, bottom);
        } else if (i10 == 3) {
            z10 = layoutDirection == 1;
            w(this.f60465c == 2 ? !z10 : z10, true, left, top, right, bottom);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.f60464b);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f60477o == null) {
            this.f60477o = new SparseIntArray(getChildCount());
        }
        if (this.f60478p.O(this.f60477o)) {
            this.f60476n = this.f60478p.m(this.f60477o);
        }
        int i10 = this.f60464b;
        if (i10 == 0 || i10 == 1) {
            x(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        if (i10 == 2 || i10 == 3) {
            y(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f60464b);
    }

    public final void p(Canvas canvas, int left, int top, int length) {
        Drawable drawable = this.f60471i;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(left, top, this.f60475m + left, length + top);
        this.f60471i.draw(canvas);
    }

    @Override
    public b generateLayoutParams(AttributeSet attrs) {
        return new b(getContext(), attrs);
    }

    public View r(int index) {
        if (index < 0) {
            return null;
        }
        int[] iArr = this.f60476n;
        if (index >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[index]);
    }

    public final boolean s(int index, int indexInFlexLine) {
        return l(index, indexInFlexLine) ? j() ? (this.f60473k & 1) != 0 : (this.f60472j & 1) != 0 : j() ? (this.f60473k & 2) != 0 : (this.f60472j & 2) != 0;
    }

    @Override
    public void setAlignContent(int alignContent) {
        if (this.f60468f != alignContent) {
            this.f60468f = alignContent;
            requestLayout();
        }
    }

    @Override
    public void setAlignItems(int alignItems) {
        if (this.f60467e != alignItems) {
            this.f60467e = alignItems;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable divider) {
        setDividerDrawableHorizontal(divider);
        setDividerDrawableVertical(divider);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable divider) {
        if (divider == this.f60470h) {
            return;
        }
        this.f60470h = divider;
        if (divider != null) {
            this.f60474l = divider.getIntrinsicHeight();
        } else {
            this.f60474l = 0;
        }
        A();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable divider) {
        if (divider == this.f60471i) {
            return;
        }
        this.f60471i = divider;
        if (divider != null) {
            this.f60475m = divider.getIntrinsicWidth();
        } else {
            this.f60475m = 0;
        }
        A();
        requestLayout();
    }

    @Override
    public void setFlexDirection(int flexDirection) {
        if (this.f60464b != flexDirection) {
            this.f60464b = flexDirection;
            requestLayout();
        }
    }

    @Override
    public void setFlexLines(List<g> flexLines) {
        this.f60479q = flexLines;
    }

    @Override
    public void setFlexWrap(int flexWrap) {
        if (this.f60465c != flexWrap) {
            this.f60465c = flexWrap;
            requestLayout();
        }
    }

    @Override
    public void setJustifyContent(int justifyContent) {
        if (this.f60466d != justifyContent) {
            this.f60466d = justifyContent;
            requestLayout();
        }
    }

    @Override
    public void setMaxLine(int maxLine) {
        if (this.f60469g != maxLine) {
            this.f60469g = maxLine;
            requestLayout();
        }
    }

    public void setShowDivider(int dividerMode) {
        setShowDividerVertical(dividerMode);
        setShowDividerHorizontal(dividerMode);
    }

    public void setShowDividerHorizontal(int dividerMode) {
        if (dividerMode != this.f60472j) {
            this.f60472j = dividerMode;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int dividerMode) {
        if (dividerMode != this.f60473k) {
            this.f60473k = dividerMode;
            requestLayout();
        }
    }

    public final boolean t(int flexLineIndex) {
        if (flexLineIndex < 0 || flexLineIndex >= this.f60479q.size()) {
            return false;
        }
        return k(flexLineIndex) ? j() ? (this.f60472j & 1) != 0 : (this.f60473k & 1) != 0 : j() ? (this.f60472j & 2) != 0 : (this.f60473k & 2) != 0;
    }

    public final boolean u(int flexLineIndex) {
        if (flexLineIndex < 0 || flexLineIndex >= this.f60479q.size()) {
            return false;
        }
        for (int i10 = flexLineIndex + 1; i10 < this.f60479q.size(); i10++) {
            if (this.f60479q.get(i10).d() > 0) {
                return false;
            }
        }
        return j() ? (this.f60472j & 4) != 0 : (this.f60473k & 4) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(boolean isRtl, int left, int top, int right, int bottom) {
        float f10;
        float f11;
        float f12;
        int i10;
        int i11;
        int i12;
        int i13;
        char c10;
        float f13;
        int i14;
        char c11;
        int i15;
        b bVar;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i16 = right - left;
        int paddingBottom = (bottom - top) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f60479q.size();
        int i17 = 0;
        while (i17 < size) {
            g gVar = this.f60479q.get(i17);
            if (t(i17)) {
                int i18 = this.f60474l;
                paddingBottom -= i18;
                paddingTop += i18;
            }
            int i19 = this.f60466d;
            char c12 = 4;
            int i20 = 1;
            if (i19 == 0) {
                f10 = paddingLeft;
                f11 = i16 - paddingRight;
            } else if (i19 == 1) {
                int i21 = gVar.f98426e;
                f11 = i21 - paddingLeft;
                f10 = (i16 - i21) + paddingRight;
            } else if (i19 != 2) {
                if (i19 == 3) {
                    f10 = paddingLeft;
                    f12 = (i16 - gVar.f98426e) / (gVar.d() != 1 ? r10 - 1 : 1.0f);
                    f11 = i16 - paddingRight;
                } else if (i19 == 4) {
                    int d10 = gVar.d();
                    f12 = d10 != 0 ? (i16 - gVar.f98426e) / d10 : 0.0f;
                    float f14 = f12 / 2.0f;
                    f10 = paddingLeft + f14;
                    f11 = (i16 - paddingRight) - f14;
                } else {
                    if (i19 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f60466d);
                    }
                    f12 = gVar.d() != 0 ? (i16 - gVar.f98426e) / (r7 + 1) : 0.0f;
                    f10 = paddingLeft + f12;
                    f11 = (i16 - paddingRight) - f12;
                }
                float max = Math.max(f12, 0.0f);
                i10 = 0;
                while (i10 < gVar.f98429h) {
                    int i22 = gVar.f98436o + i10;
                    View r10 = r(i22);
                    if (r10 == null) {
                        i11 = paddingLeft;
                        i12 = i20;
                        i13 = i10;
                        c10 = c12;
                    } else if (r10.getVisibility() == 8) {
                        i11 = paddingLeft;
                        i12 = i20;
                        i13 = i10;
                        c10 = 4;
                    } else {
                        b bVar2 = (b) r10.getLayoutParams();
                        float f15 = f10 + bVar2.leftMargin;
                        float f16 = f11 - bVar2.rightMargin;
                        if (s(i22, i10)) {
                            int i23 = this.f60475m;
                            float f17 = i23;
                            f15 += f17;
                            i14 = i23;
                            f13 = f16 - f17;
                        } else {
                            f13 = f16;
                            i14 = 0;
                        }
                        if (i10 == gVar.f98429h - i20) {
                            c11 = 4;
                            if ((this.f60473k & 4) > 0) {
                                i15 = this.f60475m;
                                if (this.f60465c == 2) {
                                    i11 = paddingLeft;
                                    i12 = i20;
                                    i13 = i10;
                                    bVar = bVar2;
                                    c10 = c11;
                                    if (isRtl) {
                                        this.f60478p.Q(r10, gVar, Math.round(f13) - r10.getMeasuredWidth(), paddingTop, Math.round(f13), paddingTop + r10.getMeasuredHeight());
                                    } else {
                                        this.f60478p.Q(r10, gVar, Math.round(f15), paddingTop, Math.round(f15) + r10.getMeasuredWidth(), paddingTop + r10.getMeasuredHeight());
                                    }
                                } else if (isRtl) {
                                    i12 = i20;
                                    i13 = i10;
                                    i11 = paddingLeft;
                                    bVar = bVar2;
                                    c10 = c11;
                                    this.f60478p.Q(r10, gVar, Math.round(f13) - r10.getMeasuredWidth(), paddingBottom - r10.getMeasuredHeight(), Math.round(f13), paddingBottom);
                                } else {
                                    i11 = paddingLeft;
                                    i12 = i20;
                                    i13 = i10;
                                    bVar = bVar2;
                                    c10 = c11;
                                    this.f60478p.Q(r10, gVar, Math.round(f15), paddingBottom - r10.getMeasuredHeight(), Math.round(f15) + r10.getMeasuredWidth(), paddingBottom);
                                }
                                f10 = f15 + r10.getMeasuredWidth() + max + bVar.rightMargin;
                                float measuredWidth = f13 - ((r10.getMeasuredWidth() + max) + bVar.leftMargin);
                                if (isRtl) {
                                    gVar.h(r10, i14, 0, i15, 0);
                                } else {
                                    gVar.h(r10, i15, 0, i14, 0);
                                }
                                f11 = measuredWidth;
                            }
                        } else {
                            c11 = 4;
                        }
                        i15 = 0;
                        if (this.f60465c == 2) {
                        }
                        f10 = f15 + r10.getMeasuredWidth() + max + bVar.rightMargin;
                        float measuredWidth2 = f13 - ((r10.getMeasuredWidth() + max) + bVar.leftMargin);
                        if (isRtl) {
                        }
                        f11 = measuredWidth2;
                    }
                    i10 = i13 + 1;
                    c12 = c10;
                    i20 = i12;
                    paddingLeft = i11;
                }
                int i24 = paddingLeft;
                int i25 = gVar.f98428g;
                paddingTop += i25;
                paddingBottom -= i25;
                i17++;
                paddingLeft = i24;
            } else {
                int i26 = gVar.f98426e;
                f10 = paddingLeft + ((i16 - i26) / 2.0f);
                f11 = (i16 - paddingRight) - ((i16 - i26) / 2.0f);
            }
            f12 = 0.0f;
            float max2 = Math.max(f12, 0.0f);
            i10 = 0;
            while (i10 < gVar.f98429h) {
            }
            int i242 = paddingLeft;
            int i252 = gVar.f98428g;
            paddingTop += i252;
            paddingBottom -= i252;
            i17++;
            paddingLeft = i242;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w(boolean isRtl, boolean fromBottomToTop, int left, int top, int right, int bottom) {
        float f10;
        int i10;
        float f11;
        float f12;
        int i11;
        int i12;
        boolean z10;
        char c10;
        float f13;
        float f14;
        int i13;
        char c11;
        int i14;
        b bVar;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i15 = bottom - top;
        int i16 = (right - left) - paddingRight;
        int size = this.f60479q.size();
        for (int i17 = 0; i17 < size; i17++) {
            g gVar = this.f60479q.get(i17);
            if (t(i17)) {
                int i18 = this.f60475m;
                paddingLeft += i18;
                i16 -= i18;
            }
            int i19 = this.f60466d;
            char c12 = 4;
            boolean z11 = true;
            if (i19 == 0) {
                f10 = paddingTop;
                i10 = i15 - paddingBottom;
            } else if (i19 == 1) {
                int i20 = gVar.f98426e;
                f10 = (i15 - i20) + paddingBottom;
                i10 = i20 - paddingTop;
            } else if (i19 != 2) {
                if (i19 == 3) {
                    f10 = paddingTop;
                    f12 = (i15 - gVar.f98426e) / (gVar.d() != 1 ? r7 - 1 : 1.0f);
                    f11 = i15 - paddingBottom;
                } else if (i19 == 4) {
                    int d10 = gVar.d();
                    f12 = d10 != 0 ? (i15 - gVar.f98426e) / d10 : 0.0f;
                    float f15 = f12 / 2.0f;
                    f10 = paddingTop + f15;
                    f11 = (i15 - paddingBottom) - f15;
                } else {
                    if (i19 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f60466d);
                    }
                    f12 = gVar.d() != 0 ? (i15 - gVar.f98426e) / (r10 + 1) : 0.0f;
                    f10 = paddingTop + f12;
                    f11 = (i15 - paddingBottom) - f12;
                }
                float max = Math.max(f12, 0.0f);
                i11 = 0;
                while (i11 < gVar.f98429h) {
                    int i21 = gVar.f98436o + i11;
                    View r10 = r(i21);
                    if (r10 == null) {
                        i12 = i11;
                        z10 = z11;
                        c10 = c12;
                    } else if (r10.getVisibility() == 8) {
                        i12 = i11;
                        z10 = true;
                        c10 = 4;
                    } else {
                        b bVar2 = (b) r10.getLayoutParams();
                        float f16 = f10 + bVar2.topMargin;
                        float f17 = f11 - bVar2.bottomMargin;
                        if (s(i21, i11)) {
                            int i22 = this.f60474l;
                            float f18 = i22;
                            f13 = f16 + f18;
                            i13 = i22;
                            f14 = f17 - f18;
                        } else {
                            f13 = f16;
                            f14 = f17;
                            i13 = 0;
                        }
                        if (i11 == gVar.f98429h - 1) {
                            c11 = 4;
                            if ((this.f60472j & 4) > 0) {
                                i14 = this.f60474l;
                                if (isRtl) {
                                    i12 = i11;
                                    z10 = true;
                                    bVar = bVar2;
                                    c10 = c11;
                                    if (fromBottomToTop) {
                                        this.f60478p.R(r10, gVar, false, paddingLeft, Math.round(f14) - r10.getMeasuredHeight(), paddingLeft + r10.getMeasuredWidth(), Math.round(f14));
                                    } else {
                                        this.f60478p.R(r10, gVar, false, paddingLeft, Math.round(f13), paddingLeft + r10.getMeasuredWidth(), Math.round(f13) + r10.getMeasuredHeight());
                                    }
                                } else if (fromBottomToTop) {
                                    i12 = i11;
                                    z10 = true;
                                    bVar = bVar2;
                                    c10 = c11;
                                    this.f60478p.R(r10, gVar, true, i16 - r10.getMeasuredWidth(), Math.round(f14) - r10.getMeasuredHeight(), i16, Math.round(f14));
                                } else {
                                    i12 = i11;
                                    z10 = true;
                                    bVar = bVar2;
                                    c10 = c11;
                                    this.f60478p.R(r10, gVar, true, i16 - r10.getMeasuredWidth(), Math.round(f13), i16, Math.round(f13) + r10.getMeasuredHeight());
                                }
                                b bVar3 = bVar;
                                float measuredHeight = f13 + r10.getMeasuredHeight() + max + bVar3.bottomMargin;
                                float measuredHeight2 = f14 - ((r10.getMeasuredHeight() + max) + bVar3.topMargin);
                                if (fromBottomToTop) {
                                    gVar.h(r10, 0, i13, 0, i14);
                                } else {
                                    gVar.h(r10, 0, i14, 0, i13);
                                }
                                f10 = measuredHeight;
                                f11 = measuredHeight2;
                            }
                        } else {
                            c11 = 4;
                        }
                        i14 = 0;
                        if (isRtl) {
                        }
                        b bVar32 = bVar;
                        float measuredHeight3 = f13 + r10.getMeasuredHeight() + max + bVar32.bottomMargin;
                        float measuredHeight22 = f14 - ((r10.getMeasuredHeight() + max) + bVar32.topMargin);
                        if (fromBottomToTop) {
                        }
                        f10 = measuredHeight3;
                        f11 = measuredHeight22;
                    }
                    i11 = i12 + 1;
                    z11 = z10;
                    c12 = c10;
                }
                int i23 = gVar.f98428g;
                paddingLeft += i23;
                i16 -= i23;
            } else {
                int i24 = gVar.f98426e;
                f11 = (i15 - paddingBottom) - ((i15 - i24) / 2.0f);
                f10 = paddingTop + ((i15 - i24) / 2.0f);
                f12 = 0.0f;
                float max2 = Math.max(f12, 0.0f);
                i11 = 0;
                while (i11 < gVar.f98429h) {
                }
                int i232 = gVar.f98428g;
                paddingLeft += i232;
                i16 -= i232;
            }
            f11 = i10;
            f12 = 0.0f;
            float max22 = Math.max(f12, 0.0f);
            i11 = 0;
            while (i11 < gVar.f98429h) {
            }
            int i2322 = gVar.f98428g;
            paddingLeft += i2322;
            i16 -= i2322;
        }
    }

    public final void x(int widthMeasureSpec, int heightMeasureSpec) {
        this.f60479q.clear();
        this.f60480r.a();
        this.f60478p.c(this.f60480r, widthMeasureSpec, heightMeasureSpec);
        this.f60479q = this.f60480r.f60563a;
        this.f60478p.p(widthMeasureSpec, heightMeasureSpec);
        if (this.f60467e == 3) {
            for (g gVar : this.f60479q) {
                int i10 = Integer.MIN_VALUE;
                for (int i11 = 0; i11 < gVar.f98429h; i11++) {
                    View r10 = r(gVar.f98436o + i11);
                    if (r10 != null && r10.getVisibility() != 8) {
                        b bVar = (b) r10.getLayoutParams();
                        i10 = this.f60465c != 2 ? Math.max(i10, r10.getMeasuredHeight() + Math.max(gVar.f98433l - r10.getBaseline(), bVar.topMargin) + bVar.bottomMargin) : Math.max(i10, r10.getMeasuredHeight() + bVar.topMargin + Math.max((gVar.f98433l - r10.getMeasuredHeight()) + r10.getBaseline(), bVar.bottomMargin));
                    }
                }
                gVar.f98428g = i10;
            }
        }
        this.f60478p.o(widthMeasureSpec, heightMeasureSpec, getPaddingTop() + getPaddingBottom());
        this.f60478p.X();
        z(this.f60464b, widthMeasureSpec, heightMeasureSpec, this.f60480r.f60564b);
    }

    public final void y(int widthMeasureSpec, int heightMeasureSpec) {
        this.f60479q.clear();
        this.f60480r.a();
        this.f60478p.f(this.f60480r, widthMeasureSpec, heightMeasureSpec);
        this.f60479q = this.f60480r.f60563a;
        this.f60478p.p(widthMeasureSpec, heightMeasureSpec);
        this.f60478p.o(widthMeasureSpec, heightMeasureSpec, getPaddingLeft() + getPaddingRight());
        this.f60478p.X();
        z(this.f60464b, widthMeasureSpec, heightMeasureSpec, this.f60480r.f60564b);
    }

    public final void z(int flexDirection, int widthMeasureSpec, int heightMeasureSpec, int childState) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (flexDirection == 0 || flexDirection == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                childState = View.combineMeasuredStates(childState, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, widthMeasureSpec, childState);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, widthMeasureSpec, childState);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: " + mode);
            }
            if (size < largestMainSize) {
                childState = View.combineMeasuredStates(childState, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, widthMeasureSpec, childState);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                childState = View.combineMeasuredStates(childState, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, heightMeasureSpec, childState);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, heightMeasureSpec, childState);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: " + mode2);
            }
            if (size2 < sumOfCrossSize) {
                childState = View.combineMeasuredStates(childState, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, heightMeasureSpec, childState);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    public FlexboxLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof b) {
            return new b((b) lp);
        }
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) lp);
        }
        return new b(lp);
    }

    public FlexboxLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f60469g = -1;
        this.f60478p = new com.google.android.flexbox.a(this);
        this.f60479q = new ArrayList();
        this.f60480r = new a.b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, b.j.f60795g, defStyleAttr, 0);
        this.f60464b = obtainStyledAttributes.getInt(b.j.f60807m, 0);
        this.f60465c = obtainStyledAttributes.getInt(b.j.f60809n, 0);
        this.f60466d = obtainStyledAttributes.getInt(b.j.f60811o, 0);
        this.f60467e = obtainStyledAttributes.getInt(b.j.f60799i, 0);
        this.f60468f = obtainStyledAttributes.getInt(b.j.f60797h, 0);
        this.f60469g = obtainStyledAttributes.getInt(b.j.f60813p, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(b.j.f60801j);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(b.j.f60803k);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(b.j.f60805l);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i10 = obtainStyledAttributes.getInt(b.j.f60815q, 0);
        if (i10 != 0) {
            this.f60473k = i10;
            this.f60472j = i10;
        }
        int i11 = obtainStyledAttributes.getInt(b.j.f60819s, 0);
        if (i11 != 0) {
            this.f60473k = i11;
        }
        int i12 = obtainStyledAttributes.getInt(b.j.f60817r, 0);
        if (i12 != 0) {
            this.f60472j = i12;
        }
        obtainStyledAttributes.recycle();
    }

    public static class b extends ViewGroup.MarginLayoutParams implements f {
        public static final Parcelable.Creator<b> CREATOR = new a();

        public int f60481b;

        public float f60482c;

        public float f60483d;

        public int f60484e;

        public float f60485f;

        public int f60486g;

        public int f60487h;

        public int f60488i;

        public int f60489j;

        public boolean f60490k;

        public class a implements Parcelable.Creator<b> {
            @Override
            public b createFromParcel(Parcel source) {
                return new b(source);
            }

            @Override
            public b[] newArray(int size) {
                return new b[size];
            }
        }

        public b(Context context, AttributeSet attrs) {
            super(context, attrs);
            this.f60481b = 1;
            this.f60482c = 0.0f;
            this.f60483d = 1.0f;
            this.f60484e = -1;
            this.f60485f = -1.0f;
            this.f60486g = -1;
            this.f60487h = -1;
            this.f60488i = 16777215;
            this.f60489j = 16777215;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, b.j.f60821t);
            this.f60481b = obtainStyledAttributes.getInt(b.j.f60759C, 1);
            this.f60482c = obtainStyledAttributes.getFloat(b.j.f60827w, 0.0f);
            this.f60483d = obtainStyledAttributes.getFloat(b.j.f60829x, 1.0f);
            this.f60484e = obtainStyledAttributes.getInt(b.j.f60823u, -1);
            this.f60485f = obtainStyledAttributes.getFraction(b.j.f60825v, 1, 1, -1.0f);
            this.f60486g = obtainStyledAttributes.getDimensionPixelSize(b.j.f60758B, -1);
            this.f60487h = obtainStyledAttributes.getDimensionPixelSize(b.j.f60757A, -1);
            this.f60488i = obtainStyledAttributes.getDimensionPixelSize(b.j.f60833z, 16777215);
            this.f60489j = obtainStyledAttributes.getDimensionPixelSize(b.j.f60831y, 16777215);
            this.f60490k = obtainStyledAttributes.getBoolean(b.j.f60760D, false);
            obtainStyledAttributes.recycle();
        }

        @Override
        public void G(int width) {
            this.width = width;
        }

        @Override
        public void R(int order) {
            this.f60481b = order;
        }

        @Override
        public int S() {
            return this.f60484e;
        }

        @Override
        public float V() {
            return this.f60483d;
        }

        @Override
        public void Y(int minHeight) {
            this.f60487h = minHeight;
        }

        @Override
        public float Z() {
            return this.f60482c;
        }

        @Override
        public float c0() {
            return this.f60485f;
        }

        @Override
        public boolean d0() {
            return this.f60490k;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public int e0() {
            return this.f60488i;
        }

        @Override
        public int getHeight() {
            return this.height;
        }

        @Override
        public int getOrder() {
            return this.f60481b;
        }

        @Override
        public int getWidth() {
            return this.width;
        }

        @Override
        public void i0(float flexShrink) {
            this.f60483d = flexShrink;
        }

        @Override
        public void j(int maxWidth) {
            this.f60488i = maxWidth;
        }

        @Override
        public void j0(int minWidth) {
            this.f60486g = minWidth;
        }

        @Override
        public void k(boolean wrapBefore) {
            this.f60490k = wrapBefore;
        }

        @Override
        public int k0() {
            return this.leftMargin;
        }

        @Override
        public void m0(int height) {
            this.height = height;
        }

        @Override
        public int o() {
            return this.f60486g;
        }

        @Override
        public int o0() {
            return this.rightMargin;
        }

        @Override
        public int p0() {
            return this.f60487h;
        }

        @Override
        public int q0() {
            return this.f60489j;
        }

        @Override
        public void r(int maxHeight) {
            this.f60489j = maxHeight;
        }

        @Override
        public void r0(int alignSelf) {
            this.f60484e = alignSelf;
        }

        @Override
        public int u() {
            return this.topMargin;
        }

        @Override
        public void w(float flexGrow) {
            this.f60482c = flexGrow;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f60481b);
            parcel.writeFloat(this.f60482c);
            parcel.writeFloat(this.f60483d);
            parcel.writeInt(this.f60484e);
            parcel.writeFloat(this.f60485f);
            parcel.writeInt(this.f60486g);
            parcel.writeInt(this.f60487h);
            parcel.writeInt(this.f60488i);
            parcel.writeInt(this.f60489j);
            parcel.writeByte(this.f60490k ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.bottomMargin);
            parcel.writeInt(this.leftMargin);
            parcel.writeInt(this.rightMargin);
            parcel.writeInt(this.topMargin);
            parcel.writeInt(this.height);
            parcel.writeInt(this.width);
        }

        @Override
        public void x(float flexBasisPercent) {
            this.f60485f = flexBasisPercent;
        }

        @Override
        public int z() {
            return this.bottomMargin;
        }

        public b(b source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.f60481b = 1;
            this.f60482c = 0.0f;
            this.f60483d = 1.0f;
            this.f60484e = -1;
            this.f60485f = -1.0f;
            this.f60486g = -1;
            this.f60487h = -1;
            this.f60488i = 16777215;
            this.f60489j = 16777215;
            this.f60481b = source.f60481b;
            this.f60482c = source.f60482c;
            this.f60483d = source.f60483d;
            this.f60484e = source.f60484e;
            this.f60485f = source.f60485f;
            this.f60486g = source.f60486g;
            this.f60487h = source.f60487h;
            this.f60488i = source.f60488i;
            this.f60489j = source.f60489j;
            this.f60490k = source.f60490k;
        }

        public b(ViewGroup.LayoutParams source) {
            super(source);
            this.f60481b = 1;
            this.f60482c = 0.0f;
            this.f60483d = 1.0f;
            this.f60484e = -1;
            this.f60485f = -1.0f;
            this.f60486g = -1;
            this.f60487h = -1;
            this.f60488i = 16777215;
            this.f60489j = 16777215;
        }

        public b(int width, int height) {
            super(new ViewGroup.LayoutParams(width, height));
            this.f60481b = 1;
            this.f60482c = 0.0f;
            this.f60483d = 1.0f;
            this.f60484e = -1;
            this.f60485f = -1.0f;
            this.f60486g = -1;
            this.f60487h = -1;
            this.f60488i = 16777215;
            this.f60489j = 16777215;
        }

        public b(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.f60481b = 1;
            this.f60482c = 0.0f;
            this.f60483d = 1.0f;
            this.f60484e = -1;
            this.f60485f = -1.0f;
            this.f60486g = -1;
            this.f60487h = -1;
            this.f60488i = 16777215;
            this.f60489j = 16777215;
        }

        public b(Parcel in2) {
            super(0, 0);
            this.f60481b = 1;
            this.f60482c = 0.0f;
            this.f60483d = 1.0f;
            this.f60484e = -1;
            this.f60485f = -1.0f;
            this.f60486g = -1;
            this.f60487h = -1;
            this.f60488i = 16777215;
            this.f60489j = 16777215;
            this.f60481b = in2.readInt();
            this.f60482c = in2.readFloat();
            this.f60483d = in2.readFloat();
            this.f60484e = in2.readInt();
            this.f60485f = in2.readFloat();
            this.f60486g = in2.readInt();
            this.f60487h = in2.readInt();
            this.f60488i = in2.readInt();
            this.f60489j = in2.readInt();
            this.f60490k = in2.readByte() != 0;
            this.bottomMargin = in2.readInt();
            this.leftMargin = in2.readInt();
            this.rightMargin = in2.readInt();
            this.topMargin = in2.readInt();
            this.height = in2.readInt();
            this.width = in2.readInt();
        }
    }
}
