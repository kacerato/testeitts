package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.a;
import java.util.ArrayList;
import java.util.List;
import o0.f;
import o0.g;
import org.eclipse.jdt.internal.core.JavaElement;

public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements o0.d, RecyclerView.SmoothScroller.ScrollVectorProvider {

    public static final String f60491B = "FlexboxLayoutManager";

    public static final Rect f60492C = new Rect();

    public static final boolean f60493D = false;

    public static final boolean f60494E = false;

    public a.b f60495A;

    public int f60496b;

    public int f60497c;

    public int f60498d;

    public int f60499e;

    public int f60500f;

    public boolean f60501g;

    public boolean f60502h;

    public List<g> f60503i;

    public final com.google.android.flexbox.a f60504j;

    public RecyclerView.Recycler f60505k;

    public RecyclerView.State f60506l;

    public d f60507m;

    public b f60508n;

    public OrientationHelper f60509o;

    public OrientationHelper f60510p;

    public e f60511q;

    public int f60512r;

    public int f60513s;

    public int f60514t;

    public int f60515u;

    public boolean f60516v;

    public SparseArray<View> f60517w;

    public final Context f60518x;

    public View f60519y;

    public int f60520z;

    public class b {

        public static final boolean f60521i = false;

        public int f60522a;

        public int f60523b;

        public int f60524c;

        public int f60525d;

        public boolean f60526e;

        public boolean f60527f;

        public boolean f60528g;

        public b() {
            this.f60525d = 0;
        }

        public static int l(b bVar, int i10) {
            int i11 = bVar.f60525d + i10;
            bVar.f60525d = i11;
            return i11;
        }

        public final void r() {
            if (FlexboxLayoutManager.this.j() || !FlexboxLayoutManager.this.f60501g) {
                this.f60524c = this.f60526e ? FlexboxLayoutManager.this.f60509o.getEndAfterPadding() : FlexboxLayoutManager.this.f60509o.getStartAfterPadding();
            } else {
                this.f60524c = this.f60526e ? FlexboxLayoutManager.this.f60509o.getEndAfterPadding() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f60509o.getStartAfterPadding();
            }
        }

        public final void s(View anchor) {
            OrientationHelper orientationHelper = FlexboxLayoutManager.this.f60497c == 0 ? FlexboxLayoutManager.this.f60510p : FlexboxLayoutManager.this.f60509o;
            if (FlexboxLayoutManager.this.j() || !FlexboxLayoutManager.this.f60501g) {
                if (this.f60526e) {
                    this.f60524c = orientationHelper.getDecoratedEnd(anchor) + orientationHelper.getTotalSpaceChange();
                } else {
                    this.f60524c = orientationHelper.getDecoratedStart(anchor);
                }
            } else if (this.f60526e) {
                this.f60524c = orientationHelper.getDecoratedStart(anchor) + orientationHelper.getTotalSpaceChange();
            } else {
                this.f60524c = orientationHelper.getDecoratedEnd(anchor);
            }
            this.f60522a = FlexboxLayoutManager.this.getPosition(anchor);
            this.f60528g = false;
            int[] iArr = FlexboxLayoutManager.this.f60504j.f60560c;
            int i10 = this.f60522a;
            if (i10 == -1) {
                i10 = 0;
            }
            int i11 = iArr[i10];
            this.f60523b = i11 != -1 ? i11 : 0;
            if (FlexboxLayoutManager.this.f60503i.size() > this.f60523b) {
                this.f60522a = ((g) FlexboxLayoutManager.this.f60503i.get(this.f60523b)).f98436o;
            }
        }

        public final void t() {
            this.f60522a = -1;
            this.f60523b = -1;
            this.f60524c = Integer.MIN_VALUE;
            this.f60527f = false;
            this.f60528g = false;
            if (FlexboxLayoutManager.this.j()) {
                if (FlexboxLayoutManager.this.f60497c == 0) {
                    this.f60526e = FlexboxLayoutManager.this.f60496b == 1;
                    return;
                } else {
                    this.f60526e = FlexboxLayoutManager.this.f60497c == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f60497c == 0) {
                this.f60526e = FlexboxLayoutManager.this.f60496b == 3;
            } else {
                this.f60526e = FlexboxLayoutManager.this.f60497c == 2;
            }
        }

        @NonNull
        public String toString() {
            return "AnchorInfo{mPosition=" + this.f60522a + ", mFlexLinePosition=" + this.f60523b + ", mCoordinate=" + this.f60524c + ", mPerpendicularCoordinate=" + this.f60525d + ", mLayoutFromEnd=" + this.f60526e + ", mValid=" + this.f60527f + ", mAssignedFromSavedState=" + this.f60528g + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class d {

        public static final int f60539k = Integer.MIN_VALUE;

        public static final int f60540l = -1;

        public static final int f60541m = 1;

        public static final int f60542n = 1;

        public int f60543a;

        public boolean f60544b;

        public int f60545c;

        public int f60546d;

        public int f60547e;

        public int f60548f;

        public int f60549g;

        public int f60550h;

        public int f60551i;

        public boolean f60552j;

        public d() {
            this.f60550h = 1;
            this.f60551i = 1;
        }

        public static int c(d dVar, int i10) {
            int i11 = dVar.f60547e + i10;
            dVar.f60547e = i11;
            return i11;
        }

        public static int d(d dVar, int i10) {
            int i11 = dVar.f60547e - i10;
            dVar.f60547e = i11;
            return i11;
        }

        public static int i(d dVar, int i10) {
            int i11 = dVar.f60543a - i10;
            dVar.f60543a = i11;
            return i11;
        }

        public static int l(d dVar) {
            int i10 = dVar.f60545c;
            dVar.f60545c = i10 + 1;
            return i10;
        }

        public static int m(d dVar) {
            int i10 = dVar.f60545c;
            dVar.f60545c = i10 - 1;
            return i10;
        }

        public static int n(d dVar, int i10) {
            int i11 = dVar.f60545c + i10;
            dVar.f60545c = i11;
            return i11;
        }

        public static int q(d dVar, int i10) {
            int i11 = dVar.f60548f + i10;
            dVar.f60548f = i11;
            return i11;
        }

        public static int u(d dVar, int i10) {
            int i11 = dVar.f60546d + i10;
            dVar.f60546d = i11;
            return i11;
        }

        public static int v(d dVar, int i10) {
            int i11 = dVar.f60546d - i10;
            dVar.f60546d = i11;
            return i11;
        }

        public final boolean D(RecyclerView.State state, List<g> flexLines) {
            int i10;
            int i11 = this.f60546d;
            return i11 >= 0 && i11 < state.getItemCount() && (i10 = this.f60545c) >= 0 && i10 < flexLines.size();
        }

        @NonNull
        public String toString() {
            return "LayoutState{mAvailable=" + this.f60543a + ", mFlexLinePosition=" + this.f60545c + ", mPosition=" + this.f60546d + ", mOffset=" + this.f60547e + ", mScrollingOffset=" + this.f60548f + ", mLastScrollDelta=" + this.f60549g + ", mItemDirection=" + this.f60550h + ", mLayoutDirection=" + this.f60551i + JavaElement.JEM_ANNOTATION;
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    private void ensureLayoutState() {
        if (this.f60507m == null) {
            this.f60507m = new d();
        }
    }

    public static boolean isMeasurementUpToDate(int childSize, int spec, int dimension) {
        int mode = View.MeasureSpec.getMode(spec);
        int size = View.MeasureSpec.getSize(spec);
        if (dimension > 0 && childSize != dimension) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= childSize;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == childSize;
        }
        return true;
    }

    private boolean shouldMeasureChild(View child, int widthSpec, int heightSpec, RecyclerView.LayoutParams lp) {
        return (!child.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(child.getWidth(), widthSpec, lp.width) && isMeasurementUpToDate(child.getHeight(), heightSpec, lp.height)) ? false : true;
    }

    public final View A(int fromIndex, int toIndex, boolean completelyVisible) {
        int i10 = toIndex > fromIndex ? 1 : -1;
        while (fromIndex != toIndex) {
            View childAt = getChildAt(fromIndex);
            if (K(childAt, completelyVisible)) {
                return childAt;
            }
            fromIndex += i10;
        }
        return null;
    }

    public final View B(int start, int end, int itemCount) {
        int position;
        u();
        ensureLayoutState();
        int startAfterPadding = this.f60509o.getStartAfterPadding();
        int endAfterPadding = this.f60509o.getEndAfterPadding();
        int i10 = end > start ? 1 : -1;
        View view = null;
        View view2 = null;
        while (start != end) {
            View childAt = getChildAt(start);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < itemCount) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f60509o.getDecoratedStart(childAt) >= startAfterPadding && this.f60509o.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            start += i10;
        }
        return view != null ? view : view2;
    }

    public final int C(View view) {
        return getDecoratedBottom(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    public final int D(View view) {
        return getDecoratedLeft(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
    }

    public final int E(View view) {
        return getDecoratedRight(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
    }

    public final int F(View view) {
        return getDecoratedTop(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
    }

    public int G(int position) {
        return this.f60504j.f60560c[position];
    }

    public final int H(int delta, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        u();
        int i10 = 1;
        this.f60507m.f60552j = true;
        boolean z10 = !j() && this.f60501g;
        if (!z10 ? delta <= 0 : delta >= 0) {
            i10 = -1;
        }
        int abs = Math.abs(delta);
        Y(i10, abs);
        int v10 = this.f60507m.f60548f + v(recycler, state, this.f60507m);
        if (v10 < 0) {
            return 0;
        }
        if (z10) {
            if (abs > v10) {
                delta = (-i10) * v10;
            }
        } else if (abs > v10) {
            delta = i10 * v10;
        }
        this.f60509o.offsetChildren(-delta);
        this.f60507m.f60549g = delta;
        return delta;
    }

    public final int I(int delta) {
        int i10;
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        u();
        boolean j10 = j();
        View view = this.f60519y;
        int width = j10 ? view.getWidth() : view.getHeight();
        int width2 = j10 ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int abs = Math.abs(delta);
            if (delta < 0) {
                i10 = Math.min((width2 + this.f60508n.f60525d) - width, abs);
            } else {
                if (this.f60508n.f60525d + delta <= 0) {
                    return delta;
                }
                i10 = this.f60508n.f60525d;
            }
        } else {
            if (delta > 0) {
                return Math.min((width2 - this.f60508n.f60525d) - width, delta);
            }
            if (this.f60508n.f60525d + delta >= 0) {
                return delta;
            }
            i10 = this.f60508n.f60525d;
        }
        return -i10;
    }

    public boolean J() {
        return this.f60501g;
    }

    public final boolean K(View view, boolean completelyVisible) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int D10 = D(view);
        int F10 = F(view);
        int E10 = E(view);
        int C10 = C(view);
        return completelyVisible ? (paddingLeft <= D10 && width >= E10) && (paddingTop <= F10 && height >= C10) : (D10 >= width || E10 >= paddingLeft) && (F10 >= height || C10 >= paddingTop);
    }

    public final int L(g flexLine, d layoutState) {
        return j() ? M(flexLine, layoutState) : N(flexLine, layoutState);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int M(g flexLine, d layoutState) {
        float f10;
        float f11;
        float f12;
        int c10;
        int i10;
        c cVar;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int width = getWidth();
        int i11 = layoutState.f60547e;
        if (layoutState.f60551i == -1) {
            i11 -= flexLine.f98428g;
        }
        int i12 = i11;
        int i13 = layoutState.f60546d;
        int i14 = this.f60498d;
        int i15 = 1;
        if (i14 != 0) {
            if (i14 == 1) {
                int i16 = flexLine.f98426e;
                float f13 = (width - i16) + paddingRight;
                f12 = 0.0f;
                f11 = i16 - paddingLeft;
                f10 = f13;
            } else if (i14 == 2) {
                int i17 = flexLine.f98426e;
                f10 = paddingLeft + ((width - i17) / 2.0f);
                f11 = (width - paddingRight) - ((width - i17) / 2.0f);
            } else if (i14 == 3) {
                f10 = paddingLeft;
                f12 = (width - flexLine.f98426e) / (flexLine.f98429h != 1 ? r4 - 1 : 1.0f);
                f11 = width - paddingRight;
            } else if (i14 == 4) {
                int i18 = flexLine.f98429h;
                f12 = i18 != 0 ? (width - flexLine.f98426e) / i18 : 0.0f;
                float f14 = f12 / 2.0f;
                f10 = paddingLeft + f14;
                f11 = (width - paddingRight) - f14;
            } else {
                if (i14 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f60498d);
                }
                f12 = flexLine.f98429h != 0 ? (width - flexLine.f98426e) / (r4 + 1) : 0.0f;
                f10 = paddingLeft + f12;
                f11 = (width - paddingRight) - f12;
            }
            float f15 = f10 - this.f60508n.f60525d;
            float f16 = f11 - this.f60508n.f60525d;
            float max = Math.max(f12, 0.0f);
            c10 = flexLine.c();
            int i19 = 0;
            i10 = i13;
            while (i10 < i13 + c10) {
                View b10 = b(i10);
                if (b10 != null) {
                    if (layoutState.f60551i == i15) {
                        calculateItemDecorationsForChild(b10, f60492C);
                        addView(b10);
                    } else {
                        calculateItemDecorationsForChild(b10, f60492C);
                        addView(b10, i19);
                        i19++;
                    }
                    int i20 = i19;
                    com.google.android.flexbox.a aVar = this.f60504j;
                    long j10 = aVar.f60561d[i10];
                    int y10 = aVar.y(j10);
                    int x10 = this.f60504j.x(j10);
                    c cVar2 = (c) b10.getLayoutParams();
                    if (shouldMeasureChild(b10, y10, x10, cVar2)) {
                        b10.measure(y10, x10);
                    }
                    float leftDecorationWidth = f15 + cVar2.leftMargin + getLeftDecorationWidth(b10);
                    float rightDecorationWidth = f16 - (cVar2.rightMargin + getRightDecorationWidth(b10));
                    int topDecorationHeight = i12 + getTopDecorationHeight(b10);
                    if (this.f60501g) {
                        cVar = cVar2;
                        this.f60504j.Q(b10, flexLine, Math.round(rightDecorationWidth) - b10.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + b10.getMeasuredHeight());
                    } else {
                        cVar = cVar2;
                        this.f60504j.Q(b10, flexLine, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + b10.getMeasuredWidth(), topDecorationHeight + b10.getMeasuredHeight());
                    }
                    i19 = i20;
                    f15 = leftDecorationWidth + b10.getMeasuredWidth() + cVar.rightMargin + getRightDecorationWidth(b10) + max;
                    f16 = rightDecorationWidth - (((b10.getMeasuredWidth() + cVar.leftMargin) + getLeftDecorationWidth(b10)) + max);
                }
                i10++;
                i15 = 1;
            }
            d.n(layoutState, this.f60507m.f60551i);
            return flexLine.a();
        }
        f10 = paddingLeft;
        f11 = width - paddingRight;
        f12 = 0.0f;
        float f152 = f10 - this.f60508n.f60525d;
        float f162 = f11 - this.f60508n.f60525d;
        float max2 = Math.max(f12, 0.0f);
        c10 = flexLine.c();
        int i192 = 0;
        i10 = i13;
        while (i10 < i13 + c10) {
        }
        d.n(layoutState, this.f60507m.f60551i);
        return flexLine.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int N(g flexLine, d layoutState) {
        float f10;
        float f11;
        float f12;
        int c10;
        int i10;
        float f13;
        boolean z10;
        View view;
        int i11;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i12 = layoutState.f60547e;
        int i13 = layoutState.f60547e;
        if (layoutState.f60551i == -1) {
            int i14 = flexLine.f98428g;
            i12 -= i14;
            i13 += i14;
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = layoutState.f60546d;
        int i18 = this.f60498d;
        boolean z11 = true;
        if (i18 != 0) {
            if (i18 == 1) {
                int i19 = flexLine.f98426e;
                float f14 = (height - i19) + paddingBottom;
                f12 = 0.0f;
                f11 = i19 - paddingTop;
                f10 = f14;
            } else if (i18 == 2) {
                int i20 = flexLine.f98426e;
                f10 = paddingTop + ((height - i20) / 2.0f);
                f11 = (height - paddingBottom) - ((height - i20) / 2.0f);
            } else if (i18 == 3) {
                f10 = paddingTop;
                f12 = (height - flexLine.f98426e) / (flexLine.f98429h != 1 ? r4 - 1 : 1.0f);
                f11 = height - paddingBottom;
            } else if (i18 == 4) {
                int i21 = flexLine.f98429h;
                f12 = i21 != 0 ? (height - flexLine.f98426e) / i21 : 0.0f;
                float f15 = f12 / 2.0f;
                f10 = paddingTop + f15;
                f11 = (height - paddingBottom) - f15;
            } else {
                if (i18 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f60498d);
                }
                f12 = flexLine.f98429h != 0 ? (height - flexLine.f98426e) / (r4 + 1) : 0.0f;
                f10 = paddingTop + f12;
                f11 = (height - paddingBottom) - f12;
            }
            float f16 = f10 - this.f60508n.f60525d;
            float f17 = f11 - this.f60508n.f60525d;
            float max = Math.max(f12, 0.0f);
            c10 = flexLine.c();
            int i22 = 0;
            i10 = i17;
            while (i10 < i17 + c10) {
                View b10 = b(i10);
                if (b10 == null) {
                    i11 = i10;
                    z10 = z11;
                    f13 = max;
                } else {
                    com.google.android.flexbox.a aVar = this.f60504j;
                    f13 = max;
                    long j10 = aVar.f60561d[i10];
                    int y10 = aVar.y(j10);
                    int x10 = this.f60504j.x(j10);
                    if (shouldMeasureChild(b10, y10, x10, (c) b10.getLayoutParams())) {
                        b10.measure(y10, x10);
                    }
                    float topDecorationHeight = f16 + r13.topMargin + getTopDecorationHeight(b10);
                    float bottomDecorationHeight = f17 - (r13.rightMargin + getBottomDecorationHeight(b10));
                    if (layoutState.f60551i == 1) {
                        calculateItemDecorationsForChild(b10, f60492C);
                        addView(b10);
                    } else {
                        calculateItemDecorationsForChild(b10, f60492C);
                        addView(b10, i22);
                        i22++;
                    }
                    int i23 = i22;
                    int leftDecorationWidth = i15 + getLeftDecorationWidth(b10);
                    int rightDecorationWidth = i16 - getRightDecorationWidth(b10);
                    boolean z12 = this.f60501g;
                    if (!z12) {
                        z10 = true;
                        view = b10;
                        i11 = i10;
                        if (this.f60502h) {
                            this.f60504j.R(view, flexLine, z12, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                        } else {
                            this.f60504j.R(view, flexLine, z12, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    } else if (this.f60502h) {
                        z10 = true;
                        view = b10;
                        i11 = i10;
                        this.f60504j.R(b10, flexLine, z12, rightDecorationWidth - b10.getMeasuredWidth(), Math.round(bottomDecorationHeight) - b10.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                    } else {
                        z10 = true;
                        view = b10;
                        i11 = i10;
                        this.f60504j.R(view, flexLine, z12, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                    View view2 = view;
                    f16 = topDecorationHeight + view.getMeasuredHeight() + r13.topMargin + getBottomDecorationHeight(view2) + f13;
                    i22 = i23;
                    f17 = bottomDecorationHeight - (((view2.getMeasuredHeight() + r13.bottomMargin) + getTopDecorationHeight(view2)) + f13);
                }
                i10 = i11 + 1;
                max = f13;
                z11 = z10;
            }
            d.n(layoutState, this.f60507m.f60551i);
            return flexLine.a();
        }
        f10 = paddingTop;
        f11 = height - paddingBottom;
        f12 = 0.0f;
        float f162 = f10 - this.f60508n.f60525d;
        float f172 = f11 - this.f60508n.f60525d;
        float max2 = Math.max(f12, 0.0f);
        c10 = flexLine.c();
        int i222 = 0;
        i10 = i17;
        while (i10 < i17 + c10) {
        }
        d.n(layoutState, this.f60507m.f60551i);
        return flexLine.a();
    }

    public final void O(RecyclerView.Recycler recycler, d layoutState) {
        if (layoutState.f60552j) {
            if (layoutState.f60551i == -1) {
                P(recycler, layoutState);
            } else {
                Q(recycler, layoutState);
            }
        }
    }

    public final void P(RecyclerView.Recycler recycler, d layoutState) {
        int childCount;
        int i10;
        View childAt;
        int i11;
        if (layoutState.f60548f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(childCount - 1)) == null || (i11 = this.f60504j.f60560c[getPosition(childAt)]) == -1) {
            return;
        }
        g gVar = this.f60503i.get(i11);
        int i12 = i10;
        while (true) {
            if (i12 < 0) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!r(childAt2, layoutState.f60548f)) {
                    break;
                }
                if (gVar.f98436o != getPosition(childAt2)) {
                    continue;
                } else if (i11 <= 0) {
                    childCount = i12;
                    break;
                } else {
                    i11 += layoutState.f60551i;
                    gVar = this.f60503i.get(i11);
                    childCount = i12;
                }
            }
            i12--;
        }
        recycleChildren(recycler, childCount, i10);
    }

    public final void Q(RecyclerView.Recycler recycler, d layoutState) {
        int childCount;
        View childAt;
        if (layoutState.f60548f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i10 = this.f60504j.f60560c[getPosition(childAt)];
        int i11 = -1;
        if (i10 == -1) {
            return;
        }
        g gVar = this.f60503i.get(i10);
        int i12 = 0;
        while (true) {
            if (i12 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!s(childAt2, layoutState.f60548f)) {
                    break;
                }
                if (gVar.f98437p != getPosition(childAt2)) {
                    continue;
                } else if (i10 >= this.f60503i.size() - 1) {
                    i11 = i12;
                    break;
                } else {
                    i10 += layoutState.f60551i;
                    gVar = this.f60503i.get(i10);
                    i11 = i12;
                }
            }
            i12++;
        }
        recycleChildren(recycler, 0, i11);
    }

    public final void R() {
        int heightMode = j() ? getHeightMode() : getWidthMode();
        this.f60507m.f60544b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    public final void S() {
        int layoutDirection = getLayoutDirection();
        int i10 = this.f60496b;
        if (i10 == 0) {
            this.f60501g = layoutDirection == 1;
            this.f60502h = this.f60497c == 2;
            return;
        }
        if (i10 == 1) {
            this.f60501g = layoutDirection != 1;
            this.f60502h = this.f60497c == 2;
            return;
        }
        if (i10 == 2) {
            boolean z10 = layoutDirection == 1;
            this.f60501g = z10;
            if (this.f60497c == 2) {
                this.f60501g = !z10;
            }
            this.f60502h = false;
            return;
        }
        if (i10 != 3) {
            this.f60501g = false;
            this.f60502h = false;
            return;
        }
        boolean z11 = layoutDirection == 1;
        this.f60501g = z11;
        if (this.f60497c == 2) {
            this.f60501g = !z11;
        }
        this.f60502h = true;
    }

    public final boolean T(RecyclerView.State state, b anchorInfo) {
        if (getChildCount() == 0) {
            return false;
        }
        View y10 = anchorInfo.f60526e ? y(state.getItemCount()) : w(state.getItemCount());
        if (y10 == null) {
            return false;
        }
        anchorInfo.s(y10);
        if (state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return true;
        }
        if (this.f60509o.getDecoratedStart(y10) < this.f60509o.getEndAfterPadding() && this.f60509o.getDecoratedEnd(y10) >= this.f60509o.getStartAfterPadding()) {
            return true;
        }
        anchorInfo.f60524c = anchorInfo.f60526e ? this.f60509o.getEndAfterPadding() : this.f60509o.getStartAfterPadding();
        return true;
    }

    public final boolean U(RecyclerView.State state, b anchorInfo, e savedState) {
        int i10;
        View childAt;
        if (!state.isPreLayout() && (i10 = this.f60512r) != -1) {
            if (i10 >= 0 && i10 < state.getItemCount()) {
                anchorInfo.f60522a = this.f60512r;
                anchorInfo.f60523b = this.f60504j.f60560c[anchorInfo.f60522a];
                e eVar = this.f60511q;
                if (eVar != null && eVar.h(state.getItemCount())) {
                    anchorInfo.f60524c = this.f60509o.getStartAfterPadding() + savedState.f60554c;
                    anchorInfo.f60528g = true;
                    anchorInfo.f60523b = -1;
                    return true;
                }
                if (this.f60513s != Integer.MIN_VALUE) {
                    if (j() || !this.f60501g) {
                        anchorInfo.f60524c = this.f60509o.getStartAfterPadding() + this.f60513s;
                    } else {
                        anchorInfo.f60524c = this.f60513s - this.f60509o.getEndPadding();
                    }
                    return true;
                }
                View findViewByPosition = findViewByPosition(this.f60512r);
                if (findViewByPosition == null) {
                    if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                        anchorInfo.f60526e = this.f60512r < getPosition(childAt);
                    }
                    anchorInfo.r();
                } else {
                    if (this.f60509o.getDecoratedMeasurement(findViewByPosition) > this.f60509o.getTotalSpace()) {
                        anchorInfo.r();
                        return true;
                    }
                    if (this.f60509o.getDecoratedStart(findViewByPosition) - this.f60509o.getStartAfterPadding() < 0) {
                        anchorInfo.f60524c = this.f60509o.getStartAfterPadding();
                        anchorInfo.f60526e = false;
                        return true;
                    }
                    if (this.f60509o.getEndAfterPadding() - this.f60509o.getDecoratedEnd(findViewByPosition) < 0) {
                        anchorInfo.f60524c = this.f60509o.getEndAfterPadding();
                        anchorInfo.f60526e = true;
                        return true;
                    }
                    anchorInfo.f60524c = anchorInfo.f60526e ? this.f60509o.getDecoratedEnd(findViewByPosition) + this.f60509o.getTotalSpaceChange() : this.f60509o.getDecoratedStart(findViewByPosition);
                }
                return true;
            }
            this.f60512r = -1;
            this.f60513s = Integer.MIN_VALUE;
        }
        return false;
    }

    public final void V(RecyclerView.State state, b anchorInfo) {
        if (U(state, anchorInfo, this.f60511q) || T(state, anchorInfo)) {
            return;
        }
        anchorInfo.r();
        anchorInfo.f60522a = 0;
        anchorInfo.f60523b = 0;
    }

    public final void W(int positionStart) {
        if (positionStart >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f60504j.t(childCount);
        this.f60504j.u(childCount);
        this.f60504j.s(childCount);
        if (positionStart >= this.f60504j.f60560c.length) {
            return;
        }
        this.f60520z = positionStart;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.f60512r = getPosition(childClosestToStart);
        if (j() || !this.f60501g) {
            this.f60513s = this.f60509o.getDecoratedStart(childClosestToStart) - this.f60509o.getStartAfterPadding();
        } else {
            this.f60513s = this.f60509o.getDecoratedEnd(childClosestToStart) + this.f60509o.getEndPadding();
        }
    }

    public final void X(int childCount) {
        int i10;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z10 = false;
        if (j()) {
            int i11 = this.f60514t;
            if (i11 != Integer.MIN_VALUE && i11 != width) {
                z10 = true;
            }
            i10 = this.f60507m.f60544b ? this.f60518x.getResources().getDisplayMetrics().heightPixels : this.f60507m.f60543a;
        } else {
            int i12 = this.f60515u;
            if (i12 != Integer.MIN_VALUE && i12 != height) {
                z10 = true;
            }
            i10 = this.f60507m.f60544b ? this.f60518x.getResources().getDisplayMetrics().widthPixels : this.f60507m.f60543a;
        }
        int i13 = i10;
        this.f60514t = width;
        this.f60515u = height;
        int i14 = this.f60520z;
        if (i14 == -1 && (this.f60512r != -1 || z10)) {
            if (this.f60508n.f60526e) {
                return;
            }
            this.f60503i.clear();
            this.f60495A.a();
            if (j()) {
                this.f60504j.e(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i13, this.f60508n.f60522a, this.f60503i);
            } else {
                this.f60504j.h(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i13, this.f60508n.f60522a, this.f60503i);
            }
            this.f60503i = this.f60495A.f60563a;
            this.f60504j.p(makeMeasureSpec, makeMeasureSpec2);
            this.f60504j.X();
            b bVar = this.f60508n;
            bVar.f60523b = this.f60504j.f60560c[bVar.f60522a];
            this.f60507m.f60545c = this.f60508n.f60523b;
            return;
        }
        int min = i14 != -1 ? Math.min(i14, this.f60508n.f60522a) : this.f60508n.f60522a;
        this.f60495A.a();
        if (j()) {
            if (this.f60503i.size() > 0) {
                this.f60504j.j(this.f60503i, min);
                this.f60504j.b(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i13, min, this.f60508n.f60522a, this.f60503i);
            } else {
                this.f60504j.s(childCount);
                this.f60504j.d(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i13, 0, this.f60503i);
            }
        } else if (this.f60503i.size() > 0) {
            this.f60504j.j(this.f60503i, min);
            this.f60504j.b(this.f60495A, makeMeasureSpec2, makeMeasureSpec, i13, min, this.f60508n.f60522a, this.f60503i);
        } else {
            this.f60504j.s(childCount);
            this.f60504j.g(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i13, 0, this.f60503i);
        }
        this.f60503i = this.f60495A.f60563a;
        this.f60504j.q(makeMeasureSpec, makeMeasureSpec2, min);
        this.f60504j.Y(min);
    }

    public final void Y(int layoutDirection, int absDelta) {
        this.f60507m.f60551i = layoutDirection;
        boolean j10 = j();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z10 = !j10 && this.f60501g;
        if (layoutDirection == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f60507m.f60547e = this.f60509o.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View z11 = z(childAt, this.f60503i.get(this.f60504j.f60560c[position]));
            this.f60507m.f60550h = 1;
            d dVar = this.f60507m;
            dVar.f60546d = position + dVar.f60550h;
            if (this.f60504j.f60560c.length <= this.f60507m.f60546d) {
                this.f60507m.f60545c = -1;
            } else {
                d dVar2 = this.f60507m;
                dVar2.f60545c = this.f60504j.f60560c[dVar2.f60546d];
            }
            if (z10) {
                this.f60507m.f60547e = this.f60509o.getDecoratedStart(z11);
                this.f60507m.f60548f = (-this.f60509o.getDecoratedStart(z11)) + this.f60509o.getStartAfterPadding();
                d dVar3 = this.f60507m;
                dVar3.f60548f = Math.max(dVar3.f60548f, 0);
            } else {
                this.f60507m.f60547e = this.f60509o.getDecoratedEnd(z11);
                this.f60507m.f60548f = this.f60509o.getDecoratedEnd(z11) - this.f60509o.getEndAfterPadding();
            }
            if ((this.f60507m.f60545c == -1 || this.f60507m.f60545c > this.f60503i.size() - 1) && this.f60507m.f60546d <= getFlexItemCount()) {
                int i10 = absDelta - this.f60507m.f60548f;
                this.f60495A.a();
                if (i10 > 0) {
                    if (j10) {
                        this.f60504j.d(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i10, this.f60507m.f60546d, this.f60503i);
                    } else {
                        this.f60504j.g(this.f60495A, makeMeasureSpec, makeMeasureSpec2, i10, this.f60507m.f60546d, this.f60503i);
                    }
                    this.f60504j.q(makeMeasureSpec, makeMeasureSpec2, this.f60507m.f60546d);
                    this.f60504j.Y(this.f60507m.f60546d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f60507m.f60547e = this.f60509o.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View x10 = x(childAt2, this.f60503i.get(this.f60504j.f60560c[position2]));
            this.f60507m.f60550h = 1;
            int i11 = this.f60504j.f60560c[position2];
            if (i11 == -1) {
                i11 = 0;
            }
            if (i11 > 0) {
                this.f60507m.f60546d = position2 - this.f60503i.get(i11 - 1).c();
            } else {
                this.f60507m.f60546d = -1;
            }
            this.f60507m.f60545c = i11 > 0 ? i11 - 1 : 0;
            if (z10) {
                this.f60507m.f60547e = this.f60509o.getDecoratedEnd(x10);
                this.f60507m.f60548f = this.f60509o.getDecoratedEnd(x10) - this.f60509o.getEndAfterPadding();
                d dVar4 = this.f60507m;
                dVar4.f60548f = Math.max(dVar4.f60548f, 0);
            } else {
                this.f60507m.f60547e = this.f60509o.getDecoratedStart(x10);
                this.f60507m.f60548f = (-this.f60509o.getDecoratedStart(x10)) + this.f60509o.getStartAfterPadding();
            }
        }
        d dVar5 = this.f60507m;
        dVar5.f60543a = absDelta - dVar5.f60548f;
    }

    public final void Z(b anchorInfo, boolean fromNextLine, boolean considerInfinite) {
        if (considerInfinite) {
            R();
        } else {
            this.f60507m.f60544b = false;
        }
        if (j() || !this.f60501g) {
            this.f60507m.f60543a = this.f60509o.getEndAfterPadding() - anchorInfo.f60524c;
        } else {
            this.f60507m.f60543a = anchorInfo.f60524c - getPaddingRight();
        }
        this.f60507m.f60546d = anchorInfo.f60522a;
        this.f60507m.f60550h = 1;
        this.f60507m.f60551i = 1;
        this.f60507m.f60547e = anchorInfo.f60524c;
        this.f60507m.f60548f = Integer.MIN_VALUE;
        this.f60507m.f60545c = anchorInfo.f60523b;
        if (!fromNextLine || this.f60503i.size() <= 1 || anchorInfo.f60523b < 0 || anchorInfo.f60523b >= this.f60503i.size() - 1) {
            return;
        }
        g gVar = this.f60503i.get(anchorInfo.f60523b);
        d.l(this.f60507m);
        d.u(this.f60507m, gVar.c());
    }

    @Override
    public void a(g flexLine) {
    }

    public final void a0(b anchorInfo, boolean fromPreviousLine, boolean considerInfinite) {
        if (considerInfinite) {
            R();
        } else {
            this.f60507m.f60544b = false;
        }
        if (j() || !this.f60501g) {
            this.f60507m.f60543a = anchorInfo.f60524c - this.f60509o.getStartAfterPadding();
        } else {
            this.f60507m.f60543a = (this.f60519y.getWidth() - anchorInfo.f60524c) - this.f60509o.getStartAfterPadding();
        }
        this.f60507m.f60546d = anchorInfo.f60522a;
        this.f60507m.f60550h = 1;
        this.f60507m.f60551i = -1;
        this.f60507m.f60547e = anchorInfo.f60524c;
        this.f60507m.f60548f = Integer.MIN_VALUE;
        this.f60507m.f60545c = anchorInfo.f60523b;
        if (!fromPreviousLine || anchorInfo.f60523b <= 0 || this.f60503i.size() <= anchorInfo.f60523b) {
            return;
        }
        g gVar = this.f60503i.get(anchorInfo.f60523b);
        d.m(this.f60507m);
        d.v(this.f60507m, gVar.c());
    }

    @Override
    public View b(int index) {
        View view = this.f60517w.get(index);
        return view != null ? view : this.f60505k.getViewForPosition(index);
    }

    @Override
    public int c(int heightSpec, int padding, int childDimension) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), padding, childDimension, canScrollVertically());
    }

    @Override
    public boolean canScrollHorizontally() {
        if (this.f60497c == 0) {
            return j();
        }
        if (j()) {
            int width = getWidth();
            View view = this.f60519y;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean canScrollVertically() {
        if (this.f60497c == 0) {
            return !j();
        }
        if (j()) {
            return true;
        }
        int height = getHeight();
        View view = this.f60519y;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof c;
    }

    @Override
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        u();
        View w10 = w(itemCount);
        View y10 = y(itemCount);
        if (state.getItemCount() == 0 || w10 == null || y10 == null) {
            return 0;
        }
        return Math.min(this.f60509o.getTotalSpace(), this.f60509o.getDecoratedEnd(y10) - this.f60509o.getDecoratedStart(w10));
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View w10 = w(itemCount);
        View y10 = y(itemCount);
        if (state.getItemCount() != 0 && w10 != null && y10 != null) {
            int position = getPosition(w10);
            int position2 = getPosition(y10);
            int abs = Math.abs(this.f60509o.getDecoratedEnd(y10) - this.f60509o.getDecoratedStart(w10));
            int i10 = this.f60504j.f60560c[position];
            if (i10 != 0 && i10 != -1) {
                return Math.round((i10 * (abs / ((r4[position2] - i10) + 1))) + (this.f60509o.getStartAfterPadding() - this.f60509o.getDecoratedStart(w10)));
            }
        }
        return 0;
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View w10 = w(itemCount);
        View y10 = y(itemCount);
        if (state.getItemCount() == 0 || w10 == null || y10 == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f60509o.getDecoratedEnd(y10) - this.f60509o.getDecoratedStart(w10)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    @Override
    public PointF computeScrollVectorForPosition(int targetPosition) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i10 = targetPosition < getPosition(childAt) ? -1 : 1;
        return j() ? new PointF(0.0f, i10) : new PointF(i10, 0.0f);
    }

    @Override
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override
    public int d(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (j()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override
    public void e(View view, int index, int indexInFlexLine, g flexLine) {
        calculateItemDecorationsForChild(view, f60492C);
        if (j()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            flexLine.f98426e += leftDecorationWidth;
            flexLine.f98427f += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            flexLine.f98426e += topDecorationHeight;
            flexLine.f98427f += topDecorationHeight;
        }
    }

    @Override
    public View f(int index) {
        return b(index);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View A10 = A(0, getChildCount(), true);
        if (A10 == null) {
            return -1;
        }
        return getPosition(A10);
    }

    public int findFirstVisibleItemPosition() {
        View A10 = A(0, getChildCount(), false);
        if (A10 == null) {
            return -1;
        }
        return getPosition(A10);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View A10 = A(getChildCount() - 1, -1, true);
        if (A10 == null) {
            return -1;
        }
        return getPosition(A10);
    }

    public int findLastVisibleItemPosition() {
        View A10 = A(getChildCount() - 1, -1, false);
        if (A10 == null) {
            return -1;
        }
        return getPosition(A10);
    }

    public final int fixLayoutEndGap(int endOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int i10;
        int endAfterPadding;
        if (j() || !this.f60501g) {
            int endAfterPadding2 = this.f60509o.getEndAfterPadding() - endOffset;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i10 = -H(-endAfterPadding2, recycler, state);
        } else {
            int startAfterPadding = endOffset - this.f60509o.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i10 = H(startAfterPadding, recycler, state);
        }
        int i11 = endOffset + i10;
        if (!canOffsetChildren || (endAfterPadding = this.f60509o.getEndAfterPadding() - i11) <= 0) {
            return i10;
        }
        this.f60509o.offsetChildren(endAfterPadding);
        return endAfterPadding + i10;
    }

    public final int fixLayoutStartGap(int startOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int i10;
        int startAfterPadding;
        if (j() || !this.f60501g) {
            int startAfterPadding2 = startOffset - this.f60509o.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i10 = -H(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.f60509o.getEndAfterPadding() - startOffset;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i10 = H(-endAfterPadding, recycler, state);
        }
        int i11 = startOffset + i10;
        if (!canOffsetChildren || (startAfterPadding = i11 - this.f60509o.getStartAfterPadding()) <= 0) {
            return i10;
        }
        this.f60509o.offsetChildren(-startAfterPadding);
        return i10 - startAfterPadding;
    }

    @Override
    public int g(View view, int index, int indexInFlexLine) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (j()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(Context c10, AttributeSet attrs) {
        return new c(c10, attrs);
    }

    @Override
    public int getAlignContent() {
        return 5;
    }

    @Override
    public int getAlignItems() {
        return this.f60499e;
    }

    public final View getChildClosestToStart() {
        return getChildAt(0);
    }

    @Override
    public int getFlexDirection() {
        return this.f60496b;
    }

    @Override
    public int getFlexItemCount() {
        return this.f60506l.getItemCount();
    }

    @Override
    @NonNull
    public List<g> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f60503i.size());
        int size = this.f60503i.size();
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f60503i.get(i10);
            if (gVar.c() != 0) {
                arrayList.add(gVar);
            }
        }
        return arrayList;
    }

    @Override
    public List<g> getFlexLinesInternal() {
        return this.f60503i;
    }

    @Override
    public int getFlexWrap() {
        return this.f60497c;
    }

    @Override
    public int getJustifyContent() {
        return this.f60498d;
    }

    @Override
    public int getLargestMainSize() {
        if (this.f60503i.size() == 0) {
            return 0;
        }
        int size = this.f60503i.size();
        int i10 = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = Math.max(i10, this.f60503i.get(i11).f98426e);
        }
        return i10;
    }

    @Override
    public int getMaxLine() {
        return this.f60500f;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.f60516v;
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.f60503i.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += this.f60503i.get(i11).f98428g;
        }
        return i10;
    }

    @Override
    public int h(int widthSpec, int padding, int childDimension) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), padding, childDimension, canScrollHorizontally());
    }

    @Override
    public void i(int position, View view) {
        this.f60517w.put(position, view);
    }

    @Override
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override
    public boolean j() {
        int i10 = this.f60496b;
        return i10 == 0 || i10 == 1;
    }

    @Override
    public void onAdapterChanged(RecyclerView.Adapter oldAdapter, RecyclerView.Adapter newAdapter) {
        removeAllViews();
    }

    @Override
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f60519y = (View) recyclerView.getParent();
    }

    @Override
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        if (this.f60516v) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsAdded(recyclerView, positionStart, itemCount);
        W(positionStart);
    }

    @Override
    public void onItemsMoved(@NonNull RecyclerView recyclerView, int from, int to, int itemCount) {
        super.onItemsMoved(recyclerView, from, to, itemCount);
        W(Math.min(from, to));
    }

    @Override
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsRemoved(recyclerView, positionStart, itemCount);
        W(positionStart);
    }

    @Override
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int positionStart, int itemCount, Object payload) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount, payload);
        W(positionStart);
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i10;
        int i11;
        this.f60505k = recycler;
        this.f60506l = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        S();
        u();
        ensureLayoutState();
        this.f60504j.t(itemCount);
        this.f60504j.u(itemCount);
        this.f60504j.s(itemCount);
        this.f60507m.f60552j = false;
        e eVar = this.f60511q;
        if (eVar != null && eVar.h(itemCount)) {
            this.f60512r = this.f60511q.f60553b;
        }
        if (!this.f60508n.f60527f || this.f60512r != -1 || this.f60511q != null) {
            this.f60508n.t();
            V(state, this.f60508n);
            this.f60508n.f60527f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.f60508n.f60526e) {
            a0(this.f60508n, false, true);
        } else {
            Z(this.f60508n, false, true);
        }
        X(itemCount);
        v(recycler, state, this.f60507m);
        if (this.f60508n.f60526e) {
            i11 = this.f60507m.f60547e;
            Z(this.f60508n, true, false);
            v(recycler, state, this.f60507m);
            i10 = this.f60507m.f60547e;
        } else {
            i10 = this.f60507m.f60547e;
            a0(this.f60508n, true, false);
            v(recycler, state, this.f60507m);
            i11 = this.f60507m.f60547e;
        }
        if (getChildCount() > 0) {
            if (this.f60508n.f60526e) {
                fixLayoutStartGap(i11 + fixLayoutEndGap(i10, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i10 + fixLayoutStartGap(i11, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f60511q = null;
        this.f60512r = -1;
        this.f60513s = Integer.MIN_VALUE;
        this.f60520z = -1;
        this.f60508n.t();
        this.f60517w.clear();
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof e) {
            this.f60511q = (e) state;
            requestLayout();
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        if (this.f60511q != null) {
            return new e(this.f60511q);
        }
        e eVar = new e();
        if (getChildCount() > 0) {
            View childClosestToStart = getChildClosestToStart();
            eVar.f60553b = getPosition(childClosestToStart);
            eVar.f60554c = this.f60509o.getDecoratedStart(childClosestToStart) - this.f60509o.getStartAfterPadding();
        } else {
            eVar.i();
        }
        return eVar;
    }

    public final boolean r(View view, int scrollingOffset) {
        return (j() || !this.f60501g) ? this.f60509o.getDecoratedStart(view) >= this.f60509o.getEnd() - scrollingOffset : this.f60509o.getDecoratedEnd(view) <= scrollingOffset;
    }

    public final void recycleChildren(RecyclerView.Recycler recycler, int startIndex, int endIndex) {
        while (endIndex >= startIndex) {
            removeAndRecycleViewAt(endIndex, recycler);
            endIndex--;
        }
    }

    public final boolean s(View view, int scrollingOffset) {
        return (j() || !this.f60501g) ? this.f60509o.getDecoratedEnd(view) <= scrollingOffset : this.f60509o.getEnd() - this.f60509o.getDecoratedStart(view) <= scrollingOffset;
    }

    @Override
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!j() || this.f60497c == 0) {
            int H10 = H(dx, recycler, state);
            this.f60517w.clear();
            return H10;
        }
        int I10 = I(dx);
        b.l(this.f60508n, I10);
        this.f60510p.offsetChildren(-I10);
        return I10;
    }

    @Override
    public void scrollToPosition(int position) {
        this.f60512r = position;
        this.f60513s = Integer.MIN_VALUE;
        e eVar = this.f60511q;
        if (eVar != null) {
            eVar.i();
        }
        requestLayout();
    }

    @Override
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (j() || (this.f60497c == 0 && !j())) {
            int H10 = H(dy, recycler, state);
            this.f60517w.clear();
            return H10;
        }
        int I10 = I(dy);
        b.l(this.f60508n, I10);
        this.f60510p.offsetChildren(-I10);
        return I10;
    }

    @Override
    public void setAlignContent(int alignContent) {
        throw new UnsupportedOperationException("Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute.");
    }

    @Override
    public void setAlignItems(int alignItems) {
        int i10 = this.f60499e;
        if (i10 != alignItems) {
            if (i10 == 4 || alignItems == 4) {
                removeAllViews();
                t();
            }
            this.f60499e = alignItems;
            requestLayout();
        }
    }

    @Override
    public void setFlexDirection(int flexDirection) {
        if (this.f60496b != flexDirection) {
            removeAllViews();
            this.f60496b = flexDirection;
            this.f60509o = null;
            this.f60510p = null;
            t();
            requestLayout();
        }
    }

    @Override
    public void setFlexLines(List<g> flexLines) {
        this.f60503i = flexLines;
    }

    @Override
    public void setFlexWrap(int flexWrap) {
        if (flexWrap == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        }
        int i10 = this.f60497c;
        if (i10 != flexWrap) {
            if (i10 == 0 || flexWrap == 0) {
                removeAllViews();
                t();
            }
            this.f60497c = flexWrap;
            this.f60509o = null;
            this.f60510p = null;
            requestLayout();
        }
    }

    @Override
    public void setJustifyContent(int justifyContent) {
        if (this.f60498d != justifyContent) {
            this.f60498d = justifyContent;
            requestLayout();
        }
    }

    @Override
    public void setMaxLine(int maxLine) {
        if (this.f60500f != maxLine) {
            this.f60500f = maxLine;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean recycleChildrenOnDetach) {
        this.f60516v = recycleChildrenOnDetach;
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }

    public final void t() {
        this.f60503i.clear();
        this.f60508n.t();
        this.f60508n.f60525d = 0;
    }

    public final void u() {
        if (this.f60509o != null) {
            return;
        }
        if (j()) {
            if (this.f60497c == 0) {
                this.f60509o = OrientationHelper.createHorizontalHelper(this);
                this.f60510p = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.f60509o = OrientationHelper.createVerticalHelper(this);
                this.f60510p = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (this.f60497c == 0) {
            this.f60509o = OrientationHelper.createVerticalHelper(this);
            this.f60510p = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f60509o = OrientationHelper.createHorizontalHelper(this);
            this.f60510p = OrientationHelper.createVerticalHelper(this);
        }
    }

    public final int v(RecyclerView.Recycler recycler, RecyclerView.State state, d layoutState) {
        if (layoutState.f60548f != Integer.MIN_VALUE) {
            if (layoutState.f60543a < 0) {
                d.q(layoutState, layoutState.f60543a);
            }
            O(recycler, layoutState);
        }
        int i10 = layoutState.f60543a;
        int i11 = layoutState.f60543a;
        boolean j10 = j();
        int i12 = 0;
        while (true) {
            if ((i11 > 0 || this.f60507m.f60544b) && layoutState.D(state, this.f60503i)) {
                g gVar = this.f60503i.get(layoutState.f60545c);
                layoutState.f60546d = gVar.f98436o;
                i12 += L(gVar, layoutState);
                if (j10 || !this.f60501g) {
                    d.c(layoutState, gVar.a() * layoutState.f60551i);
                } else {
                    d.d(layoutState, gVar.a() * layoutState.f60551i);
                }
                i11 -= gVar.a();
            }
        }
        d.i(layoutState, i12);
        if (layoutState.f60548f != Integer.MIN_VALUE) {
            d.q(layoutState, i12);
            if (layoutState.f60543a < 0) {
                d.q(layoutState, layoutState.f60543a);
            }
            O(recycler, layoutState);
        }
        return i10 - layoutState.f60543a;
    }

    public final View w(int itemCount) {
        View B10 = B(0, getChildCount(), itemCount);
        if (B10 == null) {
            return null;
        }
        int i10 = this.f60504j.f60560c[getPosition(B10)];
        if (i10 == -1) {
            return null;
        }
        return x(B10, this.f60503i.get(i10));
    }

    public final View x(View firstView, g firstVisibleLine) {
        boolean j10 = j();
        int i10 = firstVisibleLine.f98429h;
        for (int i11 = 1; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f60501g || j10) {
                    if (this.f60509o.getDecoratedStart(firstView) <= this.f60509o.getDecoratedStart(childAt)) {
                    }
                    firstView = childAt;
                } else {
                    if (this.f60509o.getDecoratedEnd(firstView) >= this.f60509o.getDecoratedEnd(childAt)) {
                    }
                    firstView = childAt;
                }
            }
        }
        return firstView;
    }

    public final View y(int itemCount) {
        View B10 = B(getChildCount() - 1, -1, itemCount);
        if (B10 == null) {
            return null;
        }
        return z(B10, this.f60503i.get(this.f60504j.f60560c[getPosition(B10)]));
    }

    public final View z(View lastView, g lastVisibleLine) {
        boolean j10 = j();
        int childCount = (getChildCount() - lastVisibleLine.f98429h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f60501g || j10) {
                    if (this.f60509o.getDecoratedEnd(lastView) >= this.f60509o.getDecoratedEnd(childAt)) {
                    }
                    lastView = childAt;
                } else {
                    if (this.f60509o.getDecoratedStart(lastView) <= this.f60509o.getDecoratedStart(childAt)) {
                    }
                    lastView = childAt;
                }
            }
        }
        return lastView;
    }

    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        public int f60553b;

        public int f60554c;

        public class a implements Parcelable.Creator<e> {
            @Override
            public e createFromParcel(Parcel source) {
                return new e(source);
            }

            @Override
            public e[] newArray(int size) {
                return new e[size];
            }
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public final boolean h(int itemCount) {
            int i10 = this.f60553b;
            return i10 >= 0 && i10 < itemCount;
        }

        public final void i() {
            this.f60553b = -1;
        }

        @NonNull
        public String toString() {
            return "SavedState{mAnchorPosition=" + this.f60553b + ", mAnchorOffset=" + this.f60554c + JavaElement.JEM_ANNOTATION;
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.f60553b);
            dest.writeInt(this.f60554c);
        }

        public e() {
        }

        public e(Parcel in2) {
            this.f60553b = in2.readInt();
            this.f60554c = in2.readInt();
        }

        public e(e savedState) {
            this.f60553b = savedState.f60553b;
            this.f60554c = savedState.f60554c;
        }
    }

    public FlexboxLayoutManager(Context context, int flexDirection) {
        this(context, flexDirection, 1);
    }

    public FlexboxLayoutManager(Context context, int flexDirection, int flexWrap) {
        this.f60500f = -1;
        this.f60503i = new ArrayList();
        this.f60504j = new com.google.android.flexbox.a(this);
        this.f60508n = new b();
        this.f60512r = -1;
        this.f60513s = Integer.MIN_VALUE;
        this.f60514t = Integer.MIN_VALUE;
        this.f60515u = Integer.MIN_VALUE;
        this.f60517w = new SparseArray<>();
        this.f60520z = -1;
        this.f60495A = new a.b();
        setFlexDirection(flexDirection);
        setFlexWrap(flexWrap);
        setAlignItems(4);
        this.f60518x = context;
    }

    @Override
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount);
        W(positionStart);
    }

    public static class c extends RecyclerView.LayoutParams implements f {
        public static final Parcelable.Creator<c> CREATOR = new a();

        public float f60530b;

        public float f60531c;

        public int f60532d;

        public float f60533e;

        public int f60534f;

        public int f60535g;

        public int f60536h;

        public int f60537i;

        public boolean f60538j;

        public class a implements Parcelable.Creator<c> {
            @Override
            public c createFromParcel(Parcel source) {
                return new c(source);
            }

            @Override
            public c[] newArray(int size) {
                return new c[size];
            }
        }

        public c(Context c10, AttributeSet attrs) {
            super(c10, attrs);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
        }

        @Override
        public void G(int width) {
            this.width = width;
        }

        @Override
        public void R(int order) {
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
        }

        @Override
        public int S() {
            return this.f60532d;
        }

        @Override
        public float V() {
            return this.f60531c;
        }

        @Override
        public void Y(int minHeight) {
            this.f60535g = minHeight;
        }

        @Override
        public float Z() {
            return this.f60530b;
        }

        @Override
        public float c0() {
            return this.f60533e;
        }

        @Override
        public boolean d0() {
            return this.f60538j;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public int e0() {
            return this.f60536h;
        }

        @Override
        public int getHeight() {
            return this.height;
        }

        @Override
        public int getOrder() {
            return 1;
        }

        @Override
        public int getWidth() {
            return this.width;
        }

        @Override
        public void i0(float flexShrink) {
            this.f60531c = flexShrink;
        }

        @Override
        public void j(int maxWidth) {
            this.f60536h = maxWidth;
        }

        @Override
        public void j0(int minWidth) {
            this.f60534f = minWidth;
        }

        @Override
        public void k(boolean wrapBefore) {
            this.f60538j = wrapBefore;
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
            return this.f60534f;
        }

        @Override
        public int o0() {
            return this.rightMargin;
        }

        @Override
        public int p0() {
            return this.f60535g;
        }

        @Override
        public int q0() {
            return this.f60537i;
        }

        @Override
        public void r(int maxHeight) {
            this.f60537i = maxHeight;
        }

        @Override
        public void r0(int alignSelf) {
            this.f60532d = alignSelf;
        }

        @Override
        public int u() {
            return this.topMargin;
        }

        @Override
        public void w(float flexGrow) {
            this.f60530b = flexGrow;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeFloat(this.f60530b);
            parcel.writeFloat(this.f60531c);
            parcel.writeInt(this.f60532d);
            parcel.writeFloat(this.f60533e);
            parcel.writeInt(this.f60534f);
            parcel.writeInt(this.f60535g);
            parcel.writeInt(this.f60536h);
            parcel.writeInt(this.f60537i);
            parcel.writeByte(this.f60538j ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.bottomMargin);
            parcel.writeInt(this.leftMargin);
            parcel.writeInt(this.rightMargin);
            parcel.writeInt(this.topMargin);
            parcel.writeInt(this.height);
            parcel.writeInt(this.width);
        }

        @Override
        public void x(float flexBasisPercent) {
            this.f60533e = flexBasisPercent;
        }

        @Override
        public int z() {
            return this.bottomMargin;
        }

        public c(int width, int height) {
            super(width, height);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
        }

        public c(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
        }

        public c(ViewGroup.LayoutParams source) {
            super(source);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
        }

        public c(RecyclerView.LayoutParams source) {
            super(source);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
        }

        public c(c source) {
            super((RecyclerView.LayoutParams) source);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
            this.f60530b = source.f60530b;
            this.f60531c = source.f60531c;
            this.f60532d = source.f60532d;
            this.f60533e = source.f60533e;
            this.f60534f = source.f60534f;
            this.f60535g = source.f60535g;
            this.f60536h = source.f60536h;
            this.f60537i = source.f60537i;
            this.f60538j = source.f60538j;
        }

        public c(Parcel in2) {
            super(-2, -2);
            this.f60530b = 0.0f;
            this.f60531c = 1.0f;
            this.f60532d = -1;
            this.f60533e = -1.0f;
            this.f60536h = 16777215;
            this.f60537i = 16777215;
            this.f60530b = in2.readFloat();
            this.f60531c = in2.readFloat();
            this.f60532d = in2.readInt();
            this.f60533e = in2.readFloat();
            this.f60534f = in2.readInt();
            this.f60535g = in2.readInt();
            this.f60536h = in2.readInt();
            this.f60537i = in2.readInt();
            this.f60538j = in2.readByte() != 0;
            this.bottomMargin = in2.readInt();
            this.leftMargin = in2.readInt();
            this.rightMargin = in2.readInt();
            this.topMargin = in2.readInt();
            this.height = in2.readInt();
            this.width = in2.readInt();
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.f60500f = -1;
        this.f60503i = new ArrayList();
        this.f60504j = new com.google.android.flexbox.a(this);
        this.f60508n = new b();
        this.f60512r = -1;
        this.f60513s = Integer.MIN_VALUE;
        this.f60514t = Integer.MIN_VALUE;
        this.f60515u = Integer.MIN_VALUE;
        this.f60517w = new SparseArray<>();
        this.f60520z = -1;
        this.f60495A = new a.b();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attrs, defStyleAttr, defStyleRes);
        int i10 = properties.orientation;
        if (i10 != 0) {
            if (i10 == 1) {
                if (properties.reverseLayout) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.reverseLayout) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        this.f60518x = context;
    }
}
