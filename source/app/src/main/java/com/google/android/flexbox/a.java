package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import o0.d;
import o0.f;
import o0.g;
import org.eclipse.jdt.internal.core.JavaElement;

public class a {

    public static final int f60555f = 10;

    public static final long f60556g = 4294967295L;

    public static final boolean f60557h = false;

    public final d f60558a;

    public boolean[] f60559b;

    @Nullable
    public int[] f60560c;

    @Nullable
    public long[] f60561d;

    @Nullable
    public long[] f60562e;

    public static class b {

        public List<g> f60563a;

        public int f60564b;

        public void a() {
            this.f60563a = null;
            this.f60564b = 0;
        }
    }

    public static class c implements Comparable<c> {

        public int f60565b;

        public int f60566c;

        public c() {
        }

        @Override
        public int compareTo(@NonNull c another) {
            int i10 = this.f60566c;
            int i11 = another.f60566c;
            return i10 != i11 ? i10 - i11 : this.f60565b - another.f60565b;
        }

        @NonNull
        public String toString() {
            return "Order{order=" + this.f60566c + ", index=" + this.f60565b + JavaElement.JEM_ANNOTATION;
        }
    }

    public a(d flexContainer) {
        this.f60558a = flexContainer;
    }

    public final int A(int widthMeasureSpec, f flexItem, int padding) {
        d dVar = this.f60558a;
        int h10 = dVar.h(widthMeasureSpec, dVar.getPaddingLeft() + this.f60558a.getPaddingRight() + flexItem.k0() + flexItem.o0() + padding, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(h10);
        return size > flexItem.e0() ? View.MeasureSpec.makeMeasureSpec(flexItem.e0(), View.MeasureSpec.getMode(h10)) : size < flexItem.o() ? View.MeasureSpec.makeMeasureSpec(flexItem.o(), View.MeasureSpec.getMode(h10)) : h10;
    }

    public final int B(f flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.z() : flexItem.o0();
    }

    public final int C(f flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.o0() : flexItem.z();
    }

    public final int D(f flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.u() : flexItem.k0();
    }

    public final int E(f flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.k0() : flexItem.u();
    }

    public final int F(f flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getHeight() : flexItem.getWidth();
    }

    public final int G(f flexItem, boolean isMainHorizontal) {
        return isMainHorizontal ? flexItem.getWidth() : flexItem.getHeight();
    }

    public final int H(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f60558a.getPaddingBottom() : this.f60558a.getPaddingEnd();
    }

    public final int I(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f60558a.getPaddingEnd() : this.f60558a.getPaddingBottom();
    }

    public final int J(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f60558a.getPaddingTop() : this.f60558a.getPaddingStart();
    }

    public final int K(boolean isMainHorizontal) {
        return isMainHorizontal ? this.f60558a.getPaddingStart() : this.f60558a.getPaddingTop();
    }

    public final int L(View view, boolean isMainHorizontal) {
        return isMainHorizontal ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    public final int M(View view, boolean isMainHorizontal) {
        return isMainHorizontal ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    public final boolean N(int childIndex, int childCount, g flexLine) {
        return childIndex == childCount - 1 && flexLine.d() != 0;
    }

    public boolean O(SparseIntArray orderCache) {
        int flexItemCount = this.f60558a.getFlexItemCount();
        if (orderCache.size() != flexItemCount) {
            return true;
        }
        for (int i10 = 0; i10 < flexItemCount; i10++) {
            View b10 = this.f60558a.b(i10);
            if (b10 != null && ((f) b10.getLayoutParams()).getOrder() != orderCache.get(i10)) {
                return true;
            }
        }
        return false;
    }

    public final boolean P(View view, int mode, int maxSize, int currentLength, int childLength, f flexItem, int index, int indexInFlexLine, int flexLinesSize) {
        if (this.f60558a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.d0()) {
            return true;
        }
        if (mode == 0) {
            return false;
        }
        int maxLine = this.f60558a.getMaxLine();
        if (maxLine != -1 && maxLine <= flexLinesSize + 1) {
            return false;
        }
        int g10 = this.f60558a.g(view, index, indexInFlexLine);
        if (g10 > 0) {
            childLength += g10;
        }
        return maxSize < currentLength + childLength;
    }

    public void Q(View view, g flexLine, int left, int top, int right, int bottom) {
        f fVar = (f) view.getLayoutParams();
        int alignItems = this.f60558a.getAlignItems();
        if (fVar.S() != -1) {
            alignItems = fVar.S();
        }
        int i10 = flexLine.f98428g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f60558a.getFlexWrap() == 2) {
                    view.layout(left, (top - i10) + view.getMeasuredHeight() + fVar.u(), right, (bottom - i10) + view.getMeasuredHeight() + fVar.u());
                    return;
                } else {
                    int i11 = top + i10;
                    view.layout(left, (i11 - view.getMeasuredHeight()) - fVar.z(), right, i11 - fVar.z());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i10 - view.getMeasuredHeight()) + fVar.u()) - fVar.z()) / 2;
                if (this.f60558a.getFlexWrap() != 2) {
                    int i12 = top + measuredHeight;
                    view.layout(left, i12, right, view.getMeasuredHeight() + i12);
                    return;
                } else {
                    int i13 = top - measuredHeight;
                    view.layout(left, i13, right, view.getMeasuredHeight() + i13);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.f60558a.getFlexWrap() != 2) {
                    int max = Math.max(flexLine.f98433l - view.getBaseline(), fVar.u());
                    view.layout(left, top + max, right, bottom + max);
                    return;
                } else {
                    int max2 = Math.max((flexLine.f98433l - view.getMeasuredHeight()) + view.getBaseline(), fVar.z());
                    view.layout(left, top - max2, right, bottom - max2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.f60558a.getFlexWrap() != 2) {
            view.layout(left, top + fVar.u(), right, bottom + fVar.u());
        } else {
            view.layout(left, top - fVar.z(), right, bottom - fVar.z());
        }
    }

    public void R(View view, g flexLine, boolean isRtl, int left, int top, int right, int bottom) {
        f fVar = (f) view.getLayoutParams();
        int alignItems = this.f60558a.getAlignItems();
        if (fVar.S() != -1) {
            alignItems = fVar.S();
        }
        int i10 = flexLine.f98428g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (isRtl) {
                    view.layout((left - i10) + view.getMeasuredWidth() + fVar.k0(), top, (right - i10) + view.getMeasuredWidth() + fVar.k0(), bottom);
                    return;
                } else {
                    view.layout(((left + i10) - view.getMeasuredWidth()) - fVar.o0(), top, ((right + i10) - view.getMeasuredWidth()) - fVar.o0(), bottom);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i10 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (isRtl) {
                    view.layout(left - measuredWidth, top, right - measuredWidth, bottom);
                    return;
                } else {
                    view.layout(left + measuredWidth, top, right + measuredWidth, bottom);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (isRtl) {
            view.layout(left - fVar.o0(), top, right - fVar.o0(), bottom);
        } else {
            view.layout(left + fVar.k0(), top, right + fVar.k0(), bottom);
        }
    }

    @VisibleForTesting
    public long S(int widthMeasureSpec, int heightMeasureSpec) {
        return (widthMeasureSpec & 4294967295L) | (heightMeasureSpec << 32);
    }

    public final void T(int widthMeasureSpec, int heightMeasureSpec, g flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int i10;
        int i11;
        int i12;
        int i13 = flexLine.f98426e;
        float f10 = flexLine.f98432k;
        float f11 = 0.0f;
        if (f10 <= 0.0f || maxMainSize > i13) {
            return;
        }
        float f12 = (i13 - maxMainSize) / f10;
        flexLine.f98426e = paddingAlongMainAxis + flexLine.f98427f;
        if (!calledRecursively) {
            flexLine.f98428g = Integer.MIN_VALUE;
        }
        int i14 = 0;
        boolean z10 = false;
        int i15 = 0;
        float f13 = 0.0f;
        while (i14 < flexLine.f98429h) {
            int i16 = flexLine.f98436o + i14;
            View f14 = this.f60558a.f(i16);
            if (f14 == null || f14.getVisibility() == 8) {
                i10 = i13;
                i11 = i14;
            } else {
                f fVar = (f) f14.getLayoutParams();
                int flexDirection = this.f60558a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i10 = i13;
                    int i17 = i14;
                    int measuredWidth = f14.getMeasuredWidth();
                    long[] jArr = this.f60562e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i16]);
                    }
                    int measuredHeight = f14.getMeasuredHeight();
                    long[] jArr2 = this.f60562e;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i16]);
                    }
                    if (this.f60559b[i16] || fVar.V() <= 0.0f) {
                        i11 = i17;
                    } else {
                        float V10 = measuredWidth - (fVar.V() * f12);
                        i11 = i17;
                        if (i11 == flexLine.f98429h - 1) {
                            V10 += f13;
                            f13 = 0.0f;
                        }
                        int round = Math.round(V10);
                        if (round < fVar.o()) {
                            round = fVar.o();
                            this.f60559b[i16] = true;
                            flexLine.f98432k -= fVar.V();
                            z10 = true;
                        } else {
                            f13 += V10 - round;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                round++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                round--;
                                f13 += 1.0f;
                            }
                        }
                        int z11 = z(heightMeasureSpec, fVar, flexLine.f98434m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        f14.measure(makeMeasureSpec, z11);
                        int measuredWidth2 = f14.getMeasuredWidth();
                        int measuredHeight2 = f14.getMeasuredHeight();
                        Z(i16, makeMeasureSpec, z11, f14);
                        this.f60558a.i(i16, f14);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int max = Math.max(i15, measuredHeight + fVar.u() + fVar.z() + this.f60558a.d(f14));
                    flexLine.f98426e += measuredWidth + fVar.k0() + fVar.o0();
                    i12 = max;
                } else {
                    int measuredHeight3 = f14.getMeasuredHeight();
                    long[] jArr3 = this.f60562e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i16]);
                    }
                    int measuredWidth3 = f14.getMeasuredWidth();
                    long[] jArr4 = this.f60562e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i16]);
                    }
                    if (this.f60559b[i16] || fVar.V() <= f11) {
                        i10 = i13;
                        i11 = i14;
                    } else {
                        float V11 = measuredHeight3 - (fVar.V() * f12);
                        if (i14 == flexLine.f98429h - 1) {
                            V11 += f13;
                            f13 = f11;
                        }
                        int round2 = Math.round(V11);
                        if (round2 < fVar.p0()) {
                            round2 = fVar.p0();
                            this.f60559b[i16] = true;
                            flexLine.f98432k -= fVar.V();
                            i10 = i13;
                            i11 = i14;
                            z10 = true;
                        } else {
                            f13 += V11 - round2;
                            i10 = i13;
                            i11 = i14;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                round2++;
                                f13 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                round2--;
                                f13 += 1.0f;
                            }
                        }
                        int A10 = A(widthMeasureSpec, fVar, flexLine.f98434m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        f14.measure(A10, makeMeasureSpec2);
                        measuredWidth3 = f14.getMeasuredWidth();
                        int measuredHeight4 = f14.getMeasuredHeight();
                        Z(i16, A10, makeMeasureSpec2, f14);
                        this.f60558a.i(i16, f14);
                        measuredHeight3 = measuredHeight4;
                    }
                    i12 = Math.max(i15, measuredWidth3 + fVar.k0() + fVar.o0() + this.f60558a.d(f14));
                    flexLine.f98426e += measuredHeight3 + fVar.u() + fVar.z();
                }
                flexLine.f98428g = Math.max(flexLine.f98428g, i12);
                i15 = i12;
            }
            i14 = i11 + 1;
            i13 = i10;
            f11 = 0.0f;
        }
        int i18 = i13;
        if (!z10 || i18 == flexLine.f98426e) {
            return;
        }
        T(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
    }

    public final int[] U(int childCount, List<c> orders, SparseIntArray orderCache) {
        Collections.sort(orders);
        orderCache.clear();
        int[] iArr = new int[childCount];
        int i10 = 0;
        for (c cVar : orders) {
            int i11 = cVar.f60565b;
            iArr[i10] = i11;
            orderCache.append(i11, cVar.f60566c);
            i10++;
        }
        return iArr;
    }

    public final void V(View view, int crossSize, int index) {
        f fVar = (f) view.getLayoutParams();
        int min = Math.min(Math.max(((crossSize - fVar.k0()) - fVar.o0()) - this.f60558a.d(view), fVar.o()), fVar.e0());
        long[] jArr = this.f60562e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? x(jArr[index]) : view.getMeasuredHeight(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        Z(index, makeMeasureSpec2, makeMeasureSpec, view);
        this.f60558a.i(index, view);
    }

    public final void W(View view, int crossSize, int index) {
        f fVar = (f) view.getLayoutParams();
        int min = Math.min(Math.max(((crossSize - fVar.u()) - fVar.z()) - this.f60558a.d(view), fVar.p0()), fVar.q0());
        long[] jArr = this.f60562e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? y(jArr[index]) : view.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        Z(index, makeMeasureSpec, makeMeasureSpec2, view);
        this.f60558a.i(index, view);
    }

    public void X() {
        Y(0);
    }

    public void Y(int fromIndex) {
        View f10;
        if (fromIndex >= this.f60558a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f60558a.getFlexDirection();
        if (this.f60558a.getAlignItems() != 4) {
            for (g gVar : this.f60558a.getFlexLinesInternal()) {
                for (Integer num : gVar.f98435n) {
                    View f11 = this.f60558a.f(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        W(f11, gVar.f98428g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        }
                        V(f11, gVar.f98428g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.f60560c;
        List<g> flexLinesInternal = this.f60558a.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i10 = iArr != null ? iArr[fromIndex] : 0; i10 < size; i10++) {
            g gVar2 = flexLinesInternal.get(i10);
            int i11 = gVar2.f98429h;
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = gVar2.f98436o + i12;
                if (i12 < this.f60558a.getFlexItemCount() && (f10 = this.f60558a.f(i13)) != null && f10.getVisibility() != 8) {
                    f fVar = (f) f10.getLayoutParams();
                    if (fVar.S() == -1 || fVar.S() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            W(f10, gVar2.f98428g, i13);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                            V(f10, gVar2.f98428g, i13);
                        }
                    }
                }
            }
        }
    }

    public final void Z(int index, int widthMeasureSpec, int heightMeasureSpec, View view) {
        long[] jArr = this.f60561d;
        if (jArr != null) {
            jArr[index] = S(widthMeasureSpec, heightMeasureSpec);
        }
        long[] jArr2 = this.f60562e;
        if (jArr2 != null) {
            jArr2[index] = S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public final void a(List<g> flexLines, g flexLine, int viewIndex, int usedCrossSizeSoFar) {
        flexLine.f98434m = usedCrossSizeSoFar;
        this.f60558a.a(flexLine);
        flexLine.f98437p = viewIndex;
        flexLines.add(flexLine);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b(b bVar, int i10, int i11, int i12, int i13, int i14, @Nullable List<g> list) {
        int i15;
        b bVar2;
        int i16;
        int i17;
        int i18;
        List<g> list2;
        int i19;
        View view;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28 = i10;
        int i29 = i11;
        int i30 = i14;
        boolean j10 = this.f60558a.j();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        List<g> arrayList = list == null ? new ArrayList() : list;
        bVar.f60563a = arrayList;
        int i31 = i30 == -1 ? 1 : 0;
        int K10 = K(j10);
        int I10 = I(j10);
        int J10 = J(j10);
        int H10 = H(j10);
        g gVar = new g();
        int i32 = i13;
        gVar.f98436o = i32;
        int i33 = I10 + K10;
        gVar.f98426e = i33;
        int flexItemCount = this.f60558a.getFlexItemCount();
        int i34 = i31;
        int i35 = Integer.MIN_VALUE;
        int i36 = 0;
        int i37 = 0;
        int i38 = 0;
        while (true) {
            if (i32 >= flexItemCount) {
                i15 = i37;
                bVar2 = bVar;
                break;
            }
            View f10 = this.f60558a.f(i32);
            if (f10 != null) {
                if (f10.getVisibility() != 8) {
                    if (f10 instanceof CompoundButton) {
                        v((CompoundButton) f10);
                    }
                    f fVar = (f) f10.getLayoutParams();
                    int i39 = flexItemCount;
                    if (fVar.S() == 4) {
                        gVar.f98435n.add(Integer.valueOf(i32));
                    }
                    int G10 = G(fVar, j10);
                    if (fVar.c0() != -1.0f && mode == 1073741824) {
                        G10 = Math.round(size * fVar.c0());
                    }
                    if (j10) {
                        int h10 = this.f60558a.h(i28, i33 + E(fVar, true) + C(fVar, true), G10);
                        i16 = size;
                        i17 = mode;
                        int c10 = this.f60558a.c(i29, J10 + H10 + D(fVar, true) + B(fVar, true) + i36, F(fVar, true));
                        f10.measure(h10, c10);
                        Z(i32, h10, c10, f10);
                        i18 = h10;
                    } else {
                        i16 = size;
                        i17 = mode;
                        int h11 = this.f60558a.h(i29, J10 + H10 + D(fVar, false) + B(fVar, false) + i36, F(fVar, false));
                        int c11 = this.f60558a.c(i28, E(fVar, false) + i33 + C(fVar, false), G10);
                        f10.measure(h11, c11);
                        Z(i32, h11, c11, f10);
                        i18 = c11;
                    }
                    this.f60558a.i(i32, f10);
                    i(f10, i32);
                    i37 = View.combineMeasuredStates(i37, f10.getMeasuredState());
                    int i40 = i36;
                    int i41 = i33;
                    g gVar2 = gVar;
                    int i42 = i32;
                    list2 = arrayList;
                    int i43 = i18;
                    if (P(f10, i17, i16, gVar.f98426e, C(fVar, j10) + M(f10, j10) + E(fVar, j10), fVar, i42, i38, arrayList.size())) {
                        i32 = i42;
                        if (gVar2.d() > 0) {
                            a(list2, gVar2, i32 > 0 ? i32 - 1 : 0, i40);
                            i36 = gVar2.f98428g + i40;
                        } else {
                            i36 = i40;
                        }
                        if (!j10) {
                            i19 = i11;
                            view = f10;
                            i20 = -1;
                            if (fVar.getWidth() == -1) {
                                d dVar = this.f60558a;
                                view.measure(dVar.h(i19, dVar.getPaddingLeft() + this.f60558a.getPaddingRight() + fVar.k0() + fVar.o0() + i36, fVar.getWidth()), i43);
                                i(view, i32);
                            }
                        } else if (fVar.getHeight() == -1) {
                            d dVar2 = this.f60558a;
                            i19 = i11;
                            i20 = -1;
                            view = f10;
                            view.measure(i43, dVar2.c(i19, dVar2.getPaddingTop() + this.f60558a.getPaddingBottom() + fVar.u() + fVar.z() + i36, fVar.getHeight()));
                            i(view, i32);
                        } else {
                            i19 = i11;
                            view = f10;
                            i20 = -1;
                        }
                        gVar = new g();
                        i22 = 1;
                        gVar.f98429h = 1;
                        i21 = i41;
                        gVar.f98426e = i21;
                        gVar.f98436o = i32;
                        i24 = Integer.MIN_VALUE;
                        i23 = 0;
                    } else {
                        i19 = i11;
                        i32 = i42;
                        view = f10;
                        i20 = -1;
                        gVar = gVar2;
                        i21 = i41;
                        i22 = 1;
                        gVar.f98429h++;
                        i23 = i38 + 1;
                        i36 = i40;
                        i24 = i35;
                    }
                    gVar.f98438q = (gVar.f98438q ? 1 : 0) | (fVar.Z() != 0.0f ? i22 : 0);
                    gVar.f98439r = (gVar.f98439r ? 1 : 0) | (fVar.V() != 0.0f ? i22 : 0);
                    int[] iArr = this.f60560c;
                    if (iArr != null) {
                        iArr[i32] = list2.size();
                    }
                    gVar.f98426e += M(view, j10) + E(fVar, j10) + C(fVar, j10);
                    gVar.f98431j += fVar.Z();
                    gVar.f98432k += fVar.V();
                    this.f60558a.e(view, i32, i23, gVar);
                    int max = Math.max(i24, L(view, j10) + D(fVar, j10) + B(fVar, j10) + this.f60558a.d(view));
                    gVar.f98428g = Math.max(gVar.f98428g, max);
                    if (j10) {
                        if (this.f60558a.getFlexWrap() != 2) {
                            gVar.f98433l = Math.max(gVar.f98433l, view.getBaseline() + fVar.u());
                        } else {
                            gVar.f98433l = Math.max(gVar.f98433l, (view.getMeasuredHeight() - view.getBaseline()) + fVar.z());
                        }
                    }
                    i25 = i39;
                    if (N(i32, i25, gVar)) {
                        a(list2, gVar, i32, i36);
                        i36 += gVar.f98428g;
                    }
                    i26 = i14;
                    if (i26 == i20 || list2.size() <= 0 || list2.get(list2.size() - i22).f98437p < i26 || i32 < i26 || i34 != 0) {
                        i27 = i12;
                    } else {
                        i36 = -gVar.a();
                        i27 = i12;
                        i34 = i22;
                    }
                    if (i36 > i27 && i34 != 0) {
                        bVar2 = bVar;
                        i15 = i37;
                        break;
                    }
                    i38 = i23;
                    i35 = max;
                    i32++;
                    i28 = i10;
                    flexItemCount = i25;
                    i29 = i19;
                    i33 = i21;
                    arrayList = list2;
                    size = i16;
                    mode = i17;
                    i30 = i26;
                } else {
                    gVar.f98430i++;
                    gVar.f98429h++;
                    if (N(i32, flexItemCount, gVar)) {
                        a(arrayList, gVar, i32, i36);
                    }
                }
            } else if (N(i32, flexItemCount, gVar)) {
                a(arrayList, gVar, i32, i36);
            }
            i16 = size;
            i17 = mode;
            i19 = i29;
            i26 = i30;
            i21 = i33;
            list2 = arrayList;
            i25 = flexItemCount;
            i32++;
            i28 = i10;
            flexItemCount = i25;
            i29 = i19;
            i33 = i21;
            arrayList = list2;
            size = i16;
            mode = i17;
            i30 = i26;
        }
        bVar2.f60564b = i15;
    }

    public void c(b result, int widthMeasureSpec, int heightMeasureSpec) {
        b(result, widthMeasureSpec, heightMeasureSpec, Integer.MAX_VALUE, 0, -1, null);
    }

    public void d(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, @Nullable List<g> existingLines) {
        b(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    public void e(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<g> existingLines) {
        b(result, widthMeasureSpec, heightMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    public void f(b result, int widthMeasureSpec, int heightMeasureSpec) {
        b(result, heightMeasureSpec, widthMeasureSpec, Integer.MAX_VALUE, 0, -1, null);
    }

    public void g(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int fromIndex, @Nullable List<g> existingLines) {
        b(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, fromIndex, -1, existingLines);
    }

    public void h(b result, int widthMeasureSpec, int heightMeasureSpec, int needsCalcAmount, int toIndex, List<g> existingLines) {
        b(result, heightMeasureSpec, widthMeasureSpec, needsCalcAmount, 0, toIndex, existingLines);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(View view, int index) {
        boolean z10;
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth < fVar.o()) {
            measuredWidth = fVar.o();
        } else {
            if (measuredWidth <= fVar.e0()) {
                z10 = false;
                if (measuredHeight >= fVar.p0()) {
                    measuredHeight = fVar.p0();
                } else if (measuredHeight > fVar.q0()) {
                    measuredHeight = fVar.q0();
                } else {
                    z11 = z10;
                }
                if (z11) {
                    return;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                Z(index, makeMeasureSpec, makeMeasureSpec2, view);
                this.f60558a.i(index, view);
                return;
            }
            measuredWidth = fVar.e0();
        }
        z10 = true;
        if (measuredHeight >= fVar.p0()) {
        }
        if (z11) {
        }
    }

    public void j(List<g> flexLines, int fromFlexItem) {
        int i10 = this.f60560c[fromFlexItem];
        if (i10 == -1) {
            i10 = 0;
        }
        if (flexLines.size() > i10) {
            flexLines.subList(i10, flexLines.size()).clear();
        }
        int[] iArr = this.f60560c;
        int length = iArr.length - 1;
        if (fromFlexItem > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, fromFlexItem, length, -1);
        }
        long[] jArr = this.f60561d;
        int length2 = jArr.length - 1;
        if (fromFlexItem > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, fromFlexItem, length2, 0L);
        }
    }

    public final List<g> k(List<g> flexLines, int size, int totalCrossSize) {
        int i10 = (size - totalCrossSize) / 2;
        ArrayList arrayList = new ArrayList();
        g gVar = new g();
        gVar.f98428g = i10;
        int size2 = flexLines.size();
        for (int i11 = 0; i11 < size2; i11++) {
            if (i11 == 0) {
                arrayList.add(gVar);
            }
            arrayList.add(flexLines.get(i11));
            if (i11 == flexLines.size() - 1) {
                arrayList.add(gVar);
            }
        }
        return arrayList;
    }

    @NonNull
    public final List<c> l(int childCount) {
        ArrayList arrayList = new ArrayList(childCount);
        for (int i10 = 0; i10 < childCount; i10++) {
            f fVar = (f) this.f60558a.b(i10).getLayoutParams();
            c cVar = new c();
            cVar.f60566c = fVar.getOrder();
            cVar.f60565b = i10;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    public int[] m(SparseIntArray orderCache) {
        int flexItemCount = this.f60558a.getFlexItemCount();
        return U(flexItemCount, l(flexItemCount), orderCache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] n(View viewBeforeAdded, int indexForViewBeforeAdded, ViewGroup.LayoutParams paramsForViewBeforeAdded, SparseIntArray orderCache) {
        int flexItemCount = this.f60558a.getFlexItemCount();
        List<c> l10 = l(flexItemCount);
        c cVar = new c();
        if (viewBeforeAdded == null || !(paramsForViewBeforeAdded instanceof f)) {
            cVar.f60566c = 1;
        } else {
            cVar.f60566c = ((f) paramsForViewBeforeAdded).getOrder();
        }
        if (indexForViewBeforeAdded == -1 || indexForViewBeforeAdded == flexItemCount) {
            cVar.f60565b = flexItemCount;
        } else if (indexForViewBeforeAdded < this.f60558a.getFlexItemCount()) {
            cVar.f60565b = indexForViewBeforeAdded;
            while (indexForViewBeforeAdded < flexItemCount) {
                l10.get(indexForViewBeforeAdded).f60565b++;
                indexForViewBeforeAdded++;
            }
        } else {
            cVar.f60565b = flexItemCount;
        }
        l10.add(cVar);
        return U(flexItemCount + 1, l10, orderCache);
    }

    public void o(int widthMeasureSpec, int heightMeasureSpec, int paddingAlongCrossAxis) {
        int i10;
        int i11;
        int flexDirection = this.f60558a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(heightMeasureSpec);
            int size = View.MeasureSpec.getSize(heightMeasureSpec);
            i10 = mode;
            i11 = size;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            i10 = View.MeasureSpec.getMode(widthMeasureSpec);
            i11 = View.MeasureSpec.getSize(widthMeasureSpec);
        }
        List<g> flexLinesInternal = this.f60558a.getFlexLinesInternal();
        if (i10 == 1073741824) {
            int sumOfCrossSize = this.f60558a.getSumOfCrossSize() + paddingAlongCrossAxis;
            int i12 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).f98428g = i11 - paddingAlongCrossAxis;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f60558a.getAlignContent();
                if (alignContent == 1) {
                    int i13 = i11 - sumOfCrossSize;
                    g gVar = new g();
                    gVar.f98428g = i13;
                    flexLinesInternal.add(0, gVar);
                    return;
                }
                if (alignContent == 2) {
                    this.f60558a.setFlexLines(k(flexLinesInternal, i11, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= i11) {
                        return;
                    }
                    float size2 = (i11 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size3 = flexLinesInternal.size();
                    float f10 = 0.0f;
                    while (i12 < size3) {
                        arrayList.add(flexLinesInternal.get(i12));
                        if (i12 != flexLinesInternal.size() - 1) {
                            g gVar2 = new g();
                            if (i12 == flexLinesInternal.size() - 2) {
                                gVar2.f98428g = Math.round(f10 + size2);
                                f10 = 0.0f;
                            } else {
                                gVar2.f98428g = Math.round(size2);
                            }
                            int i14 = gVar2.f98428g;
                            f10 += size2 - i14;
                            if (f10 > 1.0f) {
                                gVar2.f98428g = i14 + 1;
                                f10 -= 1.0f;
                            } else if (f10 < -1.0f) {
                                gVar2.f98428g = i14 - 1;
                                f10 += 1.0f;
                            }
                            arrayList.add(gVar2);
                        }
                        i12++;
                    }
                    this.f60558a.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= i11) {
                        this.f60558a.setFlexLines(k(flexLinesInternal, i11, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i11 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    g gVar3 = new g();
                    gVar3.f98428g = size4;
                    for (g gVar4 : flexLinesInternal) {
                        arrayList2.add(gVar3);
                        arrayList2.add(gVar4);
                        arrayList2.add(gVar3);
                    }
                    this.f60558a.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < i11) {
                    float size5 = (i11 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i12 < size6) {
                        g gVar5 = flexLinesInternal.get(i12);
                        float f12 = gVar5.f98428g + size5;
                        if (i12 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int round = Math.round(f12);
                        f11 += f12 - round;
                        if (f11 > 1.0f) {
                            round++;
                            f11 -= 1.0f;
                        } else if (f11 < -1.0f) {
                            round--;
                            f11 += 1.0f;
                        }
                        gVar5.f98428g = round;
                        i12++;
                    }
                }
            }
        }
    }

    public void p(int widthMeasureSpec, int heightMeasureSpec) {
        q(widthMeasureSpec, heightMeasureSpec, 0);
    }

    public void q(int widthMeasureSpec, int heightMeasureSpec, int fromIndex) {
        int size;
        int paddingLeft;
        int paddingRight;
        r(this.f60558a.getFlexItemCount());
        if (fromIndex >= this.f60558a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f60558a.getFlexDirection();
        int flexDirection2 = this.f60558a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            size = View.MeasureSpec.getSize(widthMeasureSpec);
            int largestMainSize = this.f60558a.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f60558a.getPaddingLeft();
            paddingRight = this.f60558a.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            size = View.MeasureSpec.getSize(heightMeasureSpec);
            if (mode2 != 1073741824) {
                size = this.f60558a.getLargestMainSize();
            }
            paddingLeft = this.f60558a.getPaddingTop();
            paddingRight = this.f60558a.getPaddingBottom();
        }
        int i10 = paddingLeft + paddingRight;
        int[] iArr = this.f60560c;
        List<g> flexLinesInternal = this.f60558a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i11 = iArr != null ? iArr[fromIndex] : 0; i11 < size2; i11++) {
            g gVar = flexLinesInternal.get(i11);
            int i12 = gVar.f98426e;
            if (i12 < size && gVar.f98438q) {
                w(widthMeasureSpec, heightMeasureSpec, gVar, size, i10, false);
            } else if (i12 > size && gVar.f98439r) {
                T(widthMeasureSpec, heightMeasureSpec, gVar, size, i10, false);
            }
        }
    }

    public final void r(int size) {
        boolean[] zArr = this.f60559b;
        if (zArr == null) {
            this.f60559b = new boolean[Math.max(size, 10)];
        } else if (zArr.length < size) {
            this.f60559b = new boolean[Math.max(zArr.length * 2, size)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    public void s(int size) {
        int[] iArr = this.f60560c;
        if (iArr == null) {
            this.f60560c = new int[Math.max(size, 10)];
        } else if (iArr.length < size) {
            this.f60560c = Arrays.copyOf(this.f60560c, Math.max(iArr.length * 2, size));
        }
    }

    public void t(int size) {
        long[] jArr = this.f60561d;
        if (jArr == null) {
            this.f60561d = new long[Math.max(size, 10)];
        } else if (jArr.length < size) {
            this.f60561d = Arrays.copyOf(this.f60561d, Math.max(jArr.length * 2, size));
        }
    }

    public void u(int size) {
        long[] jArr = this.f60562e;
        if (jArr == null) {
            this.f60562e = new long[Math.max(size, 10)];
        } else if (jArr.length < size) {
            this.f60562e = Arrays.copyOf(this.f60562e, Math.max(jArr.length * 2, size));
        }
    }

    public final void v(CompoundButton compoundButton) {
        f fVar = (f) compoundButton.getLayoutParams();
        int o10 = fVar.o();
        int p02 = fVar.p0();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable != null ? buttonDrawable.getMinimumHeight() : 0;
        if (o10 == -1) {
            o10 = minimumWidth;
        }
        fVar.j0(o10);
        if (p02 == -1) {
            p02 = minimumHeight;
        }
        fVar.Y(p02);
    }

    public final void w(int widthMeasureSpec, int heightMeasureSpec, g flexLine, int maxMainSize, int paddingAlongMainAxis, boolean calledRecursively) {
        int i10;
        int i11;
        int i12;
        double d10;
        int i13;
        double d11;
        float f10 = flexLine.f98431j;
        float f11 = 0.0f;
        if (f10 <= 0.0f || maxMainSize < (i10 = flexLine.f98426e)) {
            return;
        }
        float f12 = (maxMainSize - i10) / f10;
        flexLine.f98426e = paddingAlongMainAxis + flexLine.f98427f;
        if (!calledRecursively) {
            flexLine.f98428g = Integer.MIN_VALUE;
        }
        int i14 = 0;
        boolean z10 = false;
        int i15 = 0;
        float f13 = 0.0f;
        while (i14 < flexLine.f98429h) {
            int i16 = flexLine.f98436o + i14;
            View f14 = this.f60558a.f(i16);
            if (f14 == null || f14.getVisibility() == 8) {
                i11 = i10;
            } else {
                f fVar = (f) f14.getLayoutParams();
                int flexDirection = this.f60558a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int i17 = i10;
                    int measuredWidth = f14.getMeasuredWidth();
                    long[] jArr = this.f60562e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i16]);
                    }
                    int measuredHeight = f14.getMeasuredHeight();
                    long[] jArr2 = this.f60562e;
                    i11 = i17;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i16]);
                    }
                    if (!this.f60559b[i16] && fVar.Z() > 0.0f) {
                        float Z10 = measuredWidth + (fVar.Z() * f12);
                        if (i14 == flexLine.f98429h - 1) {
                            Z10 += f13;
                            f13 = 0.0f;
                        }
                        int round = Math.round(Z10);
                        if (round > fVar.e0()) {
                            round = fVar.e0();
                            this.f60559b[i16] = true;
                            flexLine.f98431j -= fVar.Z();
                            z10 = true;
                        } else {
                            f13 += Z10 - round;
                            double d12 = f13;
                            if (d12 > 1.0d) {
                                round++;
                                d10 = d12 - 1.0d;
                            } else if (d12 < -1.0d) {
                                round--;
                                d10 = d12 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int z11 = z(heightMeasureSpec, fVar, flexLine.f98434m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        f14.measure(makeMeasureSpec, z11);
                        int measuredWidth2 = f14.getMeasuredWidth();
                        int measuredHeight2 = f14.getMeasuredHeight();
                        Z(i16, makeMeasureSpec, z11, f14);
                        this.f60558a.i(i16, f14);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int max = Math.max(i15, measuredHeight + fVar.u() + fVar.z() + this.f60558a.d(f14));
                    flexLine.f98426e += measuredWidth + fVar.k0() + fVar.o0();
                    i12 = max;
                } else {
                    int measuredHeight3 = f14.getMeasuredHeight();
                    long[] jArr3 = this.f60562e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i16]);
                    }
                    int measuredWidth3 = f14.getMeasuredWidth();
                    long[] jArr4 = this.f60562e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i16]);
                    }
                    if (this.f60559b[i16] || fVar.Z() <= f11) {
                        i13 = i10;
                    } else {
                        float Z11 = measuredHeight3 + (fVar.Z() * f12);
                        if (i14 == flexLine.f98429h - 1) {
                            Z11 += f13;
                            f13 = f11;
                        }
                        int round2 = Math.round(Z11);
                        if (round2 > fVar.q0()) {
                            round2 = fVar.q0();
                            this.f60559b[i16] = true;
                            flexLine.f98431j -= fVar.Z();
                            i13 = i10;
                            z10 = true;
                        } else {
                            f13 += Z11 - round2;
                            i13 = i10;
                            double d13 = f13;
                            if (d13 > 1.0d) {
                                round2++;
                                d11 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                round2--;
                                d11 = d13 + 1.0d;
                            }
                            f13 = (float) d11;
                        }
                        int A10 = A(widthMeasureSpec, fVar, flexLine.f98434m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        f14.measure(A10, makeMeasureSpec2);
                        measuredWidth3 = f14.getMeasuredWidth();
                        int measuredHeight4 = f14.getMeasuredHeight();
                        Z(i16, A10, makeMeasureSpec2, f14);
                        this.f60558a.i(i16, f14);
                        measuredHeight3 = measuredHeight4;
                    }
                    i12 = Math.max(i15, measuredWidth3 + fVar.k0() + fVar.o0() + this.f60558a.d(f14));
                    flexLine.f98426e += measuredHeight3 + fVar.u() + fVar.z();
                    i11 = i13;
                }
                flexLine.f98428g = Math.max(flexLine.f98428g, i12);
                i15 = i12;
            }
            i14++;
            i10 = i11;
            f11 = 0.0f;
        }
        int i18 = i10;
        if (!z10 || i18 == flexLine.f98426e) {
            return;
        }
        w(widthMeasureSpec, heightMeasureSpec, flexLine, maxMainSize, paddingAlongMainAxis, true);
    }

    public int x(long longValue) {
        return (int) (longValue >> 32);
    }

    public int y(long longValue) {
        return (int) longValue;
    }

    public final int z(int heightMeasureSpec, f flexItem, int padding) {
        d dVar = this.f60558a;
        int c10 = dVar.c(heightMeasureSpec, dVar.getPaddingTop() + this.f60558a.getPaddingBottom() + flexItem.u() + flexItem.z() + padding, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(c10);
        return size > flexItem.q0() ? View.MeasureSpec.makeMeasureSpec(flexItem.q0(), View.MeasureSpec.getMode(c10)) : size < flexItem.p0() ? View.MeasureSpec.makeMeasureSpec(flexItem.p0(), View.MeasureSpec.getMode(c10)) : c10;
    }
}
