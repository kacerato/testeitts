package b2;

import a2.C3567j;
import a2.C3572o;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import b2.AbstractC3834c;
import b2.InterfaceC3832a;
import b2.InterfaceC3833b;
import com.google.android.material.internal.A;
import com.google.android.material.internal.C12455c;
import com.google.android.material.internal.s;
import com.google.android.material.internal.z;
import h2.C13421a;
import i2.C13578a;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;
import w1.C15879a;
import x1.C16046a;

public abstract class AbstractC3834c<S extends AbstractC3834c<S, L, T>, L extends InterfaceC3832a<S>, T extends InterfaceC3833b<S>> extends View {

    public static final String f32818F1 = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.";

    public static final int f32819H1 = 200;

    public static final int f32820L1 = 63;

    public static final double f32821M1 = 1.0E-4d;

    public static final int f32822R1 = C15879a.n.f124721pc;

    public static final int f32823V1 = 1;

    public static final String f32824b1 = "c";

    public static final int f32825b2 = 0;

    public static final String f32826i1 = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";

    public static final long f32827i2 = 83;

    public static final String f32828m1 = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";

    public static final long f32829m2 = 117;

    public static final String f32830q1 = "valueFrom(%s) must be smaller than valueTo(%s)";

    public static final String f32831v1 = "valueTo(%s) must be greater than valueFrom(%s)";

    public static final String f32832y1 = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";

    public int f32833A;

    public int f32834B;

    public float f32835C;

    public MotionEvent f32836D;

    public int f32837D0;

    public InterfaceC3836e f32838E;

    public boolean f32839F;

    public float f32840G;

    public float f32841H;

    public ArrayList<Float> f32842I;

    public int f32843J;

    public int f32844K;

    public float f32845L;

    public float[] f32846M;

    public boolean f32847N;

    public int f32848O;

    public boolean f32849P;

    public boolean f32850Q;

    public boolean f32851R;

    @NonNull
    public ColorStateList f32852S;

    @NonNull
    public ColorStateList f32853T;

    @NonNull
    public ColorStateList f32854U;

    @NonNull
    public ColorStateList f32855V;

    @NonNull
    public ColorStateList f32856W;

    @NonNull
    public final Paint f32857b;

    @NonNull
    public final Paint f32858c;

    @NonNull
    public final Paint f32859d;

    @NonNull
    public final Paint f32860e;

    @NonNull
    public final Paint f32861f;

    @NonNull
    public final Paint f32862g;

    @NonNull
    public final e f32863h;

    public final AccessibilityManager f32864i;

    public AbstractC3834c<S, L, T>.d f32865j;

    @NonNull
    public final g f32866k;

    @NonNull
    public final List<C13578a> f32867l;

    @NonNull
    public final List<L> f32868m;

    @NonNull
    public final List<T> f32869n;

    public boolean f32870o;

    public ValueAnimator f32871p;

    public ValueAnimator f32872q;

    @NonNull
    public final C3567j f32873q0;

    public final int f32874r;

    public int f32875s;

    public int f32876t;

    public int f32877u;

    public int f32878v;

    public float f32879v0;

    public int f32880w;

    public int f32881x;

    public int f32882y;

    public int f32883z;

    public class a implements g {

        public final AttributeSet f32884a;

        public final int f32885b;

        public a(AttributeSet attributeSet, int i10) {
            this.f32884a = attributeSet;
            this.f32885b = i10;
        }

        @Override
        public C13578a a() {
            TypedArray j10 = s.j(AbstractC3834c.this.getContext(), this.f32884a, C15879a.o.Lq, this.f32885b, AbstractC3834c.f32822R1, new int[0]);
            C13578a a02 = AbstractC3834c.a0(AbstractC3834c.this.getContext(), j10);
            j10.recycle();
            return a02;
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it = AbstractC3834c.this.f32867l.iterator();
            while (it.hasNext()) {
                ((C13578a) it.next()).k1(floatValue);
            }
            ViewCompat.postInvalidateOnAnimation(AbstractC3834c.this);
        }
    }

    public class C0877c extends AnimatorListenerAdapter {
        public C0877c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Iterator it = AbstractC3834c.this.f32867l.iterator();
            while (it.hasNext()) {
                A.g(AbstractC3834c.this).remove((C13578a) it.next());
            }
        }
    }

    public static class e extends ExploreByTouchHelper {

        public final AbstractC3834c<?, ?, ?> f32891a;

        public Rect f32892b;

        public e(AbstractC3834c<?, ?, ?> abstractC3834c) {
            super(abstractC3834c);
            this.f32892b = new Rect();
            this.f32891a = abstractC3834c;
        }

        @NonNull
        public final String a(int i10) {
            return i10 == this.f32891a.getValues().size() + (-1) ? this.f32891a.getContext().getString(C15879a.m.f124086b0) : i10 == 0 ? this.f32891a.getContext().getString(C15879a.m.f124088c0) : "";
        }

        @Override
        public int getVirtualViewAt(float f10, float f11) {
            for (int i10 = 0; i10 < this.f32891a.getValues().size(); i10++) {
                this.f32891a.o0(i10, this.f32892b);
                if (this.f32892b.contains((int) f10, (int) f11)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        public void getVisibleVirtualViews(List<Integer> list) {
            for (int i10 = 0; i10 < this.f32891a.getValues().size(); i10++) {
                list.add(Integer.valueOf(i10));
            }
        }

        @Override
        public boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (!this.f32891a.isEnabled()) {
                return false;
            }
            if (i11 != 4096 && i11 != 8192) {
                if (i11 == 16908349 && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    if (this.f32891a.m0(i10, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                        this.f32891a.p0();
                        this.f32891a.postInvalidate();
                        invalidateVirtualView(i10);
                        return true;
                    }
                }
                return false;
            }
            float m10 = this.f32891a.m(20);
            if (i11 == 8192) {
                m10 = -m10;
            }
            if (this.f32891a.N()) {
                m10 = -m10;
            }
            if (!this.f32891a.m0(i10, MathUtils.clamp(this.f32891a.getValues().get(i10).floatValue() + m10, this.f32891a.getValueFrom(), this.f32891a.getValueTo()))) {
                return false;
            }
            this.f32891a.p0();
            this.f32891a.postInvalidate();
            invalidateVirtualView(i10);
            return true;
        }

        @Override
        public void onPopulateNodeForVirtualView(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f32891a.getValues();
            float floatValue = values.get(i10).floatValue();
            float valueFrom = this.f32891a.getValueFrom();
            float valueTo = this.f32891a.getValueTo();
            if (this.f32891a.isEnabled()) {
                if (floatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (floatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, floatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb2 = new StringBuilder();
            if (this.f32891a.getContentDescription() != null) {
                sb2.append(this.f32891a.getContentDescription());
                sb2.append(DocLint.SEPARATOR);
            }
            if (values.size() > 1) {
                sb2.append(a(i10));
                sb2.append(this.f32891a.D(floatValue));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb2.toString());
            this.f32891a.o0(i10, this.f32892b);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f32892b);
        }
    }

    public static class f extends View.BaseSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        public float f32893b;

        public float f32894c;

        public ArrayList<Float> f32895d;

        public float f32896e;

        public boolean f32897f;

        public static class a implements Parcelable.Creator<f> {
            @Override
            @NonNull
            public f createFromParcel(@NonNull Parcel parcel) {
                return new f(parcel, null);
            }

            @Override
            @NonNull
            public f[] newArray(int i10) {
                return new f[i10];
            }
        }

        public f(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f32893b);
            parcel.writeFloat(this.f32894c);
            parcel.writeList(this.f32895d);
            parcel.writeFloat(this.f32896e);
            parcel.writeBooleanArray(new boolean[]{this.f32897f});
        }

        public f(Parcelable parcelable) {
            super(parcelable);
        }

        public f(@NonNull Parcel parcel) {
            super(parcel);
            this.f32893b = parcel.readFloat();
            this.f32894c = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f32895d = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f32896e = parcel.readFloat();
            this.f32897f = parcel.createBooleanArray()[0];
        }
    }

    public interface g {
        C13578a a();
    }

    public AbstractC3834c(@NonNull Context context) {
        this(context, null);
    }

    public static float F(ValueAnimator valueAnimator, float f10) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f10;
        }
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return floatValue;
    }

    @NonNull
    public static C13578a a0(@NonNull Context context, @NonNull TypedArray typedArray) {
        return C13578a.U0(context, null, 0, typedArray.getResourceId(C15879a.o.Uq, C15879a.n.f124470Xc));
    }

    public static int c0(float[] fArr, float f10) {
        return Math.round(f10 * ((fArr.length / 2) - 1));
    }

    public final void A() {
        if (this.f32870o) {
            this.f32870o = false;
            ValueAnimator q10 = q(false);
            this.f32872q = q10;
            this.f32871p = null;
            q10.addListener(new C0877c());
            this.f32872q.start();
        }
    }

    public final void B(int i10) {
        if (i10 == 1) {
            U(Integer.MAX_VALUE);
            return;
        }
        if (i10 == 2) {
            U(Integer.MIN_VALUE);
        } else if (i10 == 17) {
            V(Integer.MAX_VALUE);
        } else {
            if (i10 != 66) {
                return;
            }
            V(Integer.MIN_VALUE);
        }
    }

    @VisibleForTesting
    public void C(boolean z10) {
        this.f32849P = z10;
    }

    public final String D(float f10) {
        if (K()) {
            return this.f32838E.a(f10);
        }
        return String.format(((float) ((int) f10)) == f10 ? "%.0f" : "%.2f", Float.valueOf(f10));
    }

    public final float[] E() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.f32842I.size() == 1) {
            floatValue2 = this.f32840G;
        }
        float W10 = W(floatValue2);
        float W11 = W(floatValue);
        return N() ? new float[]{W11, W10} : new float[]{W10, W11};
    }

    public final float G(int i10, float f10) {
        float minSeparation = this.f32845L == 0.0f ? getMinSeparation() : 0.0f;
        if (this.f32837D0 == 0) {
            minSeparation = t(minSeparation);
        }
        if (N()) {
            minSeparation = -minSeparation;
        }
        int i11 = i10 + 1;
        int i12 = i10 - 1;
        return MathUtils.clamp(f10, i12 < 0 ? this.f32840G : this.f32842I.get(i12).floatValue() + minSeparation, i11 >= this.f32842I.size() ? this.f32841H : this.f32842I.get(i11).floatValue() - minSeparation);
    }

    @ColorInt
    public final int H(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public final float I() {
        double l02 = l0(this.f32879v0);
        if (N()) {
            l02 = 1.0d - l02;
        }
        float f10 = this.f32841H;
        return (float) ((l02 * (f10 - r3)) + this.f32840G);
    }

    public final float J() {
        float f10 = this.f32879v0;
        if (N()) {
            f10 = 1.0f - f10;
        }
        float f11 = this.f32841H;
        float f12 = this.f32840G;
        return (f10 * (f11 - f12)) + f12;
    }

    public boolean K() {
        return this.f32838E != null;
    }

    public final void L() {
        this.f32857b.setStrokeWidth(this.f32880w);
        this.f32858c.setStrokeWidth(this.f32880w);
        this.f32861f.setStrokeWidth(this.f32880w / 2.0f);
        this.f32862g.setStrokeWidth(this.f32880w / 2.0f);
    }

    public final boolean M() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean N() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean O() {
        return this.f32847N;
    }

    public final void P(@NonNull Resources resources) {
        this.f32877u = resources.getDimensionPixelSize(C15879a.f.f123156Y5);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C15879a.f.f123140W5);
        this.f32875s = dimensionPixelOffset;
        this.f32881x = dimensionPixelOffset;
        this.f32876t = resources.getDimensionPixelSize(C15879a.f.f123124U5);
        this.f32882y = resources.getDimensionPixelOffset(C15879a.f.f123148X5);
        this.f32834B = resources.getDimensionPixelSize(C15879a.f.f123092Q5);
    }

    public final void Q() {
        if (this.f32845L <= 0.0f) {
            return;
        }
        r0();
        int min = Math.min((int) (((this.f32841H - this.f32840G) / this.f32845L) + 1.0f), (this.f32848O / (this.f32880w * 2)) + 1);
        float[] fArr = this.f32846M;
        if (fArr == null || fArr.length != min * 2) {
            this.f32846M = new float[min * 2];
        }
        float f10 = this.f32848O / (min - 1);
        for (int i10 = 0; i10 < min * 2; i10 += 2) {
            float[] fArr2 = this.f32846M;
            fArr2[i10] = this.f32881x + ((i10 / 2) * f10);
            fArr2[i10 + 1] = n();
        }
    }

    public final void R(@NonNull Canvas canvas, int i10, int i11) {
        if (j0()) {
            int W10 = (int) (this.f32881x + (W(this.f32842I.get(this.f32844K).floatValue()) * i10));
            if (Build.VERSION.SDK_INT < 28) {
                int i12 = this.f32833A;
                canvas.clipRect(W10 - i12, i11 - i12, W10 + i12, i12 + i11, Region.Op.UNION);
            }
            canvas.drawCircle(W10, i11, this.f32833A, this.f32860e);
        }
    }

    public final void S(@NonNull Canvas canvas) {
        if (!this.f32847N || this.f32845L <= 0.0f) {
            return;
        }
        float[] E10 = E();
        int c02 = c0(this.f32846M, E10[0]);
        int c03 = c0(this.f32846M, E10[1]);
        int i10 = c02 * 2;
        canvas.drawPoints(this.f32846M, 0, i10, this.f32861f);
        int i11 = c03 * 2;
        canvas.drawPoints(this.f32846M, i10, i11 - i10, this.f32862g);
        float[] fArr = this.f32846M;
        canvas.drawPoints(fArr, i11, fArr.length - i11, this.f32861f);
    }

    public final void T() {
        this.f32881x = this.f32875s + Math.max(this.f32883z - this.f32876t, 0);
        if (ViewCompat.isLaidOut(this)) {
            q0(getWidth());
        }
    }

    public final boolean U(int i10) {
        int i11 = this.f32844K;
        int clamp = (int) MathUtils.clamp(i11 + i10, 0L, this.f32842I.size() - 1);
        this.f32844K = clamp;
        if (clamp == i11) {
            return false;
        }
        if (this.f32843J != -1) {
            this.f32843J = clamp;
        }
        p0();
        postInvalidate();
        return true;
    }

    public final boolean V(int i10) {
        if (N()) {
            i10 = i10 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i10;
        }
        return U(i10);
    }

    public final float W(float f10) {
        float f11 = this.f32840G;
        float f12 = (f10 - f11) / (this.f32841H - f11);
        return N() ? 1.0f - f12 : f12;
    }

    public final Boolean X(int i10, @NonNull KeyEvent keyEvent) {
        if (i10 == 61) {
            return keyEvent.hasNoModifiers() ? Boolean.valueOf(U(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(U(-1)) : Boolean.FALSE;
        }
        if (i10 != 66) {
            if (i10 != 81) {
                if (i10 == 69) {
                    U(-1);
                    return Boolean.TRUE;
                }
                if (i10 != 70) {
                    switch (i10) {
                        case 21:
                            V(-1);
                            return Boolean.TRUE;
                        case 22:
                            V(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            U(1);
            return Boolean.TRUE;
        }
        this.f32843J = this.f32844K;
        postInvalidate();
        return Boolean.TRUE;
    }

    public final void Y() {
        Iterator<T> it = this.f32869n.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    public final void Z() {
        Iterator<T> it = this.f32869n.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    public boolean b0() {
        if (this.f32843J != -1) {
            return true;
        }
        float J10 = J();
        float x02 = x0(J10);
        this.f32843J = 0;
        float abs = Math.abs(this.f32842I.get(0).floatValue() - J10);
        for (int i10 = 1; i10 < this.f32842I.size(); i10++) {
            float abs2 = Math.abs(this.f32842I.get(i10).floatValue() - J10);
            float x03 = x0(this.f32842I.get(i10).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z10 = !N() ? x03 - x02 >= 0.0f : x03 - x02 <= 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.f32843J = i10;
            } else {
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else {
                    if (Math.abs(x03 - x02) < this.f32874r) {
                        this.f32843J = -1;
                        return false;
                    }
                    if (z10) {
                        this.f32843J = i10;
                    }
                }
            }
            abs = abs2;
        }
        return this.f32843J != -1;
    }

    public final void d0(Context context, AttributeSet attributeSet, int i10) {
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.Lq, i10, f32822R1, new int[0]);
        this.f32840G = j10.getFloat(C15879a.o.Pq, 0.0f);
        this.f32841H = j10.getFloat(C15879a.o.Qq, 1.0f);
        setValues(Float.valueOf(this.f32840G));
        this.f32845L = j10.getFloat(C15879a.o.Oq, 0.0f);
        int i11 = C15879a.o.er;
        boolean hasValue = j10.hasValue(i11);
        int i12 = hasValue ? i11 : C15879a.o.gr;
        if (!hasValue) {
            i11 = C15879a.o.fr;
        }
        ColorStateList a10 = X1.c.a(context, j10, i12);
        if (a10 == null) {
            a10 = AppCompatResources.getColorStateList(context, C15879a.e.f122928s1);
        }
        setTrackInactiveTintList(a10);
        ColorStateList a11 = X1.c.a(context, j10, i11);
        if (a11 == null) {
            a11 = AppCompatResources.getColorStateList(context, C15879a.e.f122916p1);
        }
        setTrackActiveTintList(a11);
        this.f32873q0.n0(X1.c.a(context, j10, C15879a.o.Vq));
        int i13 = C15879a.o.Yq;
        if (j10.hasValue(i13)) {
            setThumbStrokeColor(X1.c.a(context, j10, i13));
        }
        setThumbStrokeWidth(j10.getDimension(C15879a.o.Zq, 0.0f));
        ColorStateList a12 = X1.c.a(context, j10, C15879a.o.Rq);
        if (a12 == null) {
            a12 = AppCompatResources.getColorStateList(context, C15879a.e.f122920q1);
        }
        setHaloTintList(a12);
        this.f32847N = j10.getBoolean(C15879a.o.dr, true);
        int i14 = C15879a.o.ar;
        boolean hasValue2 = j10.hasValue(i14);
        int i15 = hasValue2 ? i14 : C15879a.o.cr;
        if (!hasValue2) {
            i14 = C15879a.o.br;
        }
        ColorStateList a13 = X1.c.a(context, j10, i15);
        if (a13 == null) {
            a13 = AppCompatResources.getColorStateList(context, C15879a.e.f122924r1);
        }
        setTickInactiveTintList(a13);
        ColorStateList a14 = X1.c.a(context, j10, i14);
        if (a14 == null) {
            a14 = AppCompatResources.getColorStateList(context, C15879a.e.f122912o1);
        }
        setTickActiveTintList(a14);
        setThumbRadius(j10.getDimensionPixelSize(C15879a.o.Xq, 0));
        setHaloRadius(j10.getDimensionPixelSize(C15879a.o.Sq, 0));
        setThumbElevation(j10.getDimension(C15879a.o.Wq, 0.0f));
        setTrackHeight(j10.getDimensionPixelSize(C15879a.o.hr, 0));
        this.f32878v = j10.getInt(C15879a.o.Tq, 0);
        if (!j10.getBoolean(C15879a.o.Mq, true)) {
            setEnabled(false);
        }
        j10.recycle();
    }

    @Override
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f32863h.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f32857b.setColor(H(this.f32856W));
        this.f32858c.setColor(H(this.f32855V));
        this.f32861f.setColor(H(this.f32854U));
        this.f32862g.setColor(H(this.f32853T));
        for (C13578a c13578a : this.f32867l) {
            if (c13578a.isStateful()) {
                c13578a.setState(getDrawableState());
            }
        }
        if (this.f32873q0.isStateful()) {
            this.f32873q0.setState(getDrawableState());
        }
        this.f32860e.setColor(H(this.f32852S));
        this.f32860e.setAlpha(63);
    }

    public void e0(@NonNull L l10) {
        this.f32868m.remove(l10);
    }

    public void f0(@NonNull T t10) {
        this.f32869n.remove(t10);
    }

    public final void g0(int i10) {
        AbstractC3834c<S, L, T>.d dVar = this.f32865j;
        if (dVar == null) {
            this.f32865j = new d(this, null);
        } else {
            removeCallbacks(dVar);
        }
        this.f32865j.a(i10);
        postDelayed(this.f32865j, 200L);
    }

    @Override
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f32863h.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.f32843J;
    }

    public int getFocusedThumbIndex() {
        return this.f32844K;
    }

    @Dimension
    public int getHaloRadius() {
        return this.f32833A;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.f32852S;
    }

    public int getLabelBehavior() {
        return this.f32878v;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f32845L;
    }

    public float getThumbElevation() {
        return this.f32873q0.x();
    }

    @Dimension
    public int getThumbRadius() {
        return this.f32883z;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f32873q0.M();
    }

    public float getThumbStrokeWidth() {
        return this.f32873q0.P();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.f32873q0.y();
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.f32853T;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.f32854U;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.f32854U.equals(this.f32853T)) {
            return this.f32853T;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.f32855V;
    }

    @Dimension
    public int getTrackHeight() {
        return this.f32880w;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.f32856W;
    }

    @Dimension
    public int getTrackSidePadding() {
        return this.f32881x;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.f32856W.equals(this.f32855V)) {
            return this.f32855V;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Dimension
    public int getTrackWidth() {
        return this.f32848O;
    }

    public float getValueFrom() {
        return this.f32840G;
    }

    public float getValueTo() {
        return this.f32841H;
    }

    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.f32842I);
    }

    public void h(@Nullable L l10) {
        this.f32868m.add(l10);
    }

    public final void h0(C13578a c13578a, float f10) {
        c13578a.l1(D(f10));
        int W10 = (this.f32881x + ((int) (W(f10) * this.f32848O))) - (c13578a.getIntrinsicWidth() / 2);
        int n10 = n() - (this.f32834B + this.f32883z);
        c13578a.setBounds(W10, n10 - c13578a.getIntrinsicHeight(), c13578a.getIntrinsicWidth() + W10, n10);
        Rect rect = new Rect(c13578a.getBounds());
        C12455c.c(A.f(this), this, rect);
        c13578a.setBounds(rect);
        A.g(this).add(c13578a);
    }

    public void i(@NonNull T t10) {
        this.f32869n.add(t10);
    }

    public final void i0(@NonNull ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.f32842I.size() == arrayList.size() && this.f32842I.equals(arrayList)) {
            return;
        }
        this.f32842I = arrayList;
        this.f32851R = true;
        this.f32844K = 0;
        p0();
        r();
        v();
        postInvalidate();
    }

    public final void j(C13578a c13578a) {
        c13578a.j1(A.f(this));
    }

    public final boolean j0() {
        return this.f32849P || !(getBackground() instanceof RippleDrawable);
    }

    public final Float k(int i10) {
        float m10 = this.f32850Q ? m(20) : l();
        if (i10 == 21) {
            if (!N()) {
                m10 = -m10;
            }
            return Float.valueOf(m10);
        }
        if (i10 == 22) {
            if (N()) {
                m10 = -m10;
            }
            return Float.valueOf(m10);
        }
        if (i10 == 69) {
            return Float.valueOf(-m10);
        }
        if (i10 == 70 || i10 == 81) {
            return Float.valueOf(m10);
        }
        return null;
    }

    public final boolean k0(float f10) {
        return m0(this.f32843J, f10);
    }

    public final float l() {
        float f10 = this.f32845L;
        if (f10 == 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    public final double l0(float f10) {
        float f11 = this.f32845L;
        if (f11 <= 0.0f) {
            return f10;
        }
        return Math.round(f10 * r0) / ((int) ((this.f32841H - this.f32840G) / f11));
    }

    public final float m(int i10) {
        float l10 = l();
        return (this.f32841H - this.f32840G) / l10 <= i10 ? l10 : Math.round(r1 / r4) * l10;
    }

    public final boolean m0(int i10, float f10) {
        this.f32844K = i10;
        if (Math.abs(f10 - this.f32842I.get(i10).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.f32842I.set(i10, Float.valueOf(G(i10, f10)));
        u(i10);
        return true;
    }

    public final int n() {
        return this.f32882y + (this.f32878v == 1 ? this.f32867l.get(0).getIntrinsicHeight() : 0);
    }

    public final boolean n0() {
        return k0(I());
    }

    public void o() {
        this.f32868m.clear();
    }

    public void o0(int i10, Rect rect) {
        int W10 = this.f32881x + ((int) (W(getValues().get(i10).floatValue()) * this.f32848O));
        int n10 = n();
        int i11 = this.f32883z;
        rect.set(W10 - i11, n10 - i11, W10 + i11, n10 + i11);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator<C13578a> it = this.f32867l.iterator();
        while (it.hasNext()) {
            j(it.next());
        }
    }

    @Override
    public void onDetachedFromWindow() {
        AbstractC3834c<S, L, T>.d dVar = this.f32865j;
        if (dVar != null) {
            removeCallbacks(dVar);
        }
        this.f32870o = false;
        Iterator<C13578a> it = this.f32867l.iterator();
        while (it.hasNext()) {
            s(it.next());
        }
        super.onDetachedFromWindow();
    }

    @Override
    public void onDraw(@NonNull Canvas canvas) {
        if (this.f32851R) {
            r0();
            Q();
        }
        super.onDraw(canvas);
        int n10 = n();
        x(canvas, this.f32848O, n10);
        if (((Float) Collections.max(getValues())).floatValue() > this.f32840G) {
            w(canvas, this.f32848O, n10);
        }
        S(canvas);
        if ((this.f32839F || isFocused()) && isEnabled()) {
            R(canvas, this.f32848O, n10);
            if (this.f32843J != -1) {
                z();
            }
        }
        y(canvas, this.f32848O, n10);
    }

    @Override
    public void onFocusChanged(boolean z10, int i10, @Nullable Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (z10) {
            B(i10);
            this.f32863h.requestKeyboardFocusForVirtualView(this.f32844K);
        } else {
            this.f32843J = -1;
            A();
            this.f32863h.clearKeyboardFocusForVirtualView(this.f32844K);
        }
    }

    @Override
    public boolean onKeyDown(int i10, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i10, keyEvent);
        }
        if (this.f32842I.size() == 1) {
            this.f32843J = 0;
        }
        if (this.f32843J == -1) {
            Boolean X10 = X(i10, keyEvent);
            return X10 != null ? X10.booleanValue() : super.onKeyDown(i10, keyEvent);
        }
        this.f32850Q |= keyEvent.isLongPress();
        Float k10 = k(i10);
        if (k10 != null) {
            if (k0(this.f32842I.get(this.f32843J).floatValue() + k10.floatValue())) {
                p0();
                postInvalidate();
            }
            return true;
        }
        if (i10 != 23) {
            if (i10 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return U(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return U(-1);
                }
                return false;
            }
            if (i10 != 66) {
                return super.onKeyDown(i10, keyEvent);
            }
        }
        this.f32843J = -1;
        A();
        postInvalidate();
        return true;
    }

    @Override
    public boolean onKeyUp(int i10, @NonNull KeyEvent keyEvent) {
        this.f32850Q = false;
        return super.onKeyUp(i10, keyEvent);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(this.f32877u + (this.f32878v == 1 ? this.f32867l.get(0).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        this.f32840G = fVar.f32893b;
        this.f32841H = fVar.f32894c;
        i0(fVar.f32895d);
        this.f32845L = fVar.f32896e;
        if (fVar.f32897f) {
            requestFocus();
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        fVar.f32893b = this.f32840G;
        fVar.f32894c = this.f32841H;
        fVar.f32895d = new ArrayList<>(this.f32842I);
        fVar.f32896e = this.f32845L;
        fVar.f32897f = hasFocus();
        return fVar;
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        q0(i10);
        p0();
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x10 = motionEvent.getX();
        float f10 = (x10 - this.f32881x) / this.f32848O;
        this.f32879v0 = f10;
        float max = Math.max(0.0f, f10);
        this.f32879v0 = max;
        this.f32879v0 = Math.min(1.0f, max);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f32835C = x10;
            if (!M()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (b0()) {
                    requestFocus();
                    this.f32839F = true;
                    n0();
                    p0();
                    invalidate();
                    Y();
                }
            }
        } else if (actionMasked == 1) {
            this.f32839F = false;
            MotionEvent motionEvent2 = this.f32836D;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.f32836D.getX() - motionEvent.getX()) <= this.f32874r && Math.abs(this.f32836D.getY() - motionEvent.getY()) <= this.f32874r && b0()) {
                Y();
            }
            if (this.f32843J != -1) {
                n0();
                this.f32843J = -1;
                Z();
            }
            A();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.f32839F) {
                if (M() && Math.abs(x10 - this.f32835C) < this.f32874r) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                Y();
            }
            if (b0()) {
                this.f32839F = true;
                n0();
                p0();
                invalidate();
            }
        }
        setPressed(this.f32839F);
        this.f32836D = MotionEvent.obtain(motionEvent);
        return true;
    }

    public void p() {
        this.f32869n.clear();
    }

    public final void p0() {
        if (j0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int W10 = (int) ((W(this.f32842I.get(this.f32844K).floatValue()) * this.f32848O) + this.f32881x);
            int n10 = n();
            int i10 = this.f32833A;
            DrawableCompat.setHotspotBounds(background, W10 - i10, n10 - i10, W10 + i10, n10 + i10);
        }
    }

    public final ValueAnimator q(boolean z10) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(F(z10 ? this.f32872q : this.f32871p, z10 ? 0.0f : 1.0f), z10 ? 1.0f : 0.0f);
        ofFloat.setDuration(z10 ? 83L : 117L);
        ofFloat.setInterpolator(z10 ? C16046a.f127892e : C16046a.f127890c);
        ofFloat.addUpdateListener(new b());
        return ofFloat;
    }

    public final void q0(int i10) {
        this.f32848O = Math.max(i10 - (this.f32881x * 2), 0);
        Q();
    }

    public final void r() {
        if (this.f32867l.size() > this.f32842I.size()) {
            List<C13578a> subList = this.f32867l.subList(this.f32842I.size(), this.f32867l.size());
            for (C13578a c13578a : subList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    s(c13578a);
                }
            }
            subList.clear();
        }
        while (this.f32867l.size() < this.f32842I.size()) {
            C13578a a10 = this.f32866k.a();
            this.f32867l.add(a10);
            if (ViewCompat.isAttachedToWindow(this)) {
                j(a10);
            }
        }
        int i10 = this.f32867l.size() == 1 ? 0 : 1;
        Iterator<C13578a> it = this.f32867l.iterator();
        while (it.hasNext()) {
            it.next().H0(i10);
        }
    }

    public final void r0() {
        if (this.f32851R) {
            t0();
            u0();
            s0();
            v0();
            y0();
            this.f32851R = false;
        }
    }

    public final void s(C13578a c13578a) {
        z g10 = A.g(this);
        if (g10 != null) {
            g10.remove(c13578a);
            c13578a.W0(A.f(this));
        }
    }

    public final void s0() {
        if (this.f32845L > 0.0f && !w0(this.f32841H)) {
            throw new IllegalStateException(String.format(f32832y1, Float.toString(this.f32845L), Float.toString(this.f32840G), Float.toString(this.f32841H)));
        }
    }

    public void setActiveThumbIndex(int i10) {
        this.f32843J = i10;
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setLayerType(z10 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i10) {
        if (i10 < 0 || i10 >= this.f32842I.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f32844K = i10;
        this.f32863h.requestKeyboardFocusForVirtualView(i10);
        postInvalidate();
    }

    public void setHaloRadius(@IntRange(from = 0) @Dimension int i10) {
        if (i10 == this.f32833A) {
            return;
        }
        this.f32833A = i10;
        Drawable background = getBackground();
        if (j0() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            M1.a.b((RippleDrawable) background, this.f32833A);
        }
    }

    public void setHaloRadiusResource(@DimenRes int i10) {
        setHaloRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32852S)) {
            return;
        }
        this.f32852S = colorStateList;
        Drawable background = getBackground();
        if (!j0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f32860e.setColor(H(colorStateList));
        this.f32860e.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i10) {
        if (this.f32878v != i10) {
            this.f32878v = i10;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable InterfaceC3836e interfaceC3836e) {
        this.f32838E = interfaceC3836e;
    }

    public void setSeparationUnit(int i10) {
        this.f32837D0 = i10;
    }

    public void setStepSize(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException(String.format(f32832y1, Float.toString(f10), Float.toString(this.f32840G), Float.toString(this.f32841H)));
        }
        if (this.f32845L != f10) {
            this.f32845L = f10;
            this.f32851R = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f10) {
        this.f32873q0.m0(f10);
    }

    public void setThumbElevationResource(@DimenRes int i10) {
        setThumbElevation(getResources().getDimension(i10));
    }

    public void setThumbRadius(@IntRange(from = 0) @Dimension int i10) {
        if (i10 == this.f32883z) {
            return;
        }
        this.f32883z = i10;
        T();
        this.f32873q0.setShapeAppearanceModel(C3572o.a().q(0, this.f32883z).m());
        C3567j c3567j = this.f32873q0;
        int i11 = this.f32883z;
        c3567j.setBounds(0, 0, i11 * 2, i11 * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(@DimenRes int i10) {
        setThumbRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f32873q0.E0(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i10) {
        if (i10 != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    public void setThumbStrokeWidth(float f10) {
        this.f32873q0.H0(f10);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i10) {
        if (i10 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i10));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32873q0.y())) {
            return;
        }
        this.f32873q0.n0(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32853T)) {
            return;
        }
        this.f32853T = colorStateList;
        this.f32862g.setColor(H(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32854U)) {
            return;
        }
        this.f32854U = colorStateList;
        this.f32861f.setColor(H(colorStateList));
        invalidate();
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z10) {
        if (this.f32847N != z10) {
            this.f32847N = z10;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32855V)) {
            return;
        }
        this.f32855V = colorStateList;
        this.f32858c.setColor(H(colorStateList));
        invalidate();
    }

    public void setTrackHeight(@IntRange(from = 0) @Dimension int i10) {
        if (this.f32880w != i10) {
            this.f32880w = i10;
            L();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32856W)) {
            return;
        }
        this.f32856W = colorStateList;
        this.f32857b.setColor(H(colorStateList));
        invalidate();
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f10) {
        this.f32840G = f10;
        this.f32851R = true;
        postInvalidate();
    }

    public void setValueTo(float f10) {
        this.f32841H = f10;
        this.f32851R = true;
        postInvalidate();
    }

    public void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        i0(arrayList);
    }

    public final float t(float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        float f11 = (f10 - this.f32881x) / this.f32848O;
        float f12 = this.f32840G;
        return (f11 * (f12 - this.f32841H)) + f12;
    }

    public final void t0() {
        if (this.f32840G >= this.f32841H) {
            throw new IllegalStateException(String.format(f32830q1, Float.toString(this.f32840G), Float.toString(this.f32841H)));
        }
    }

    public final void u(int i10) {
        Iterator<L> it = this.f32868m.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.f32842I.get(i10).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f32864i;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        g0(i10);
    }

    public final void u0() {
        if (this.f32841H <= this.f32840G) {
            throw new IllegalStateException(String.format(f32831v1, Float.toString(this.f32841H), Float.toString(this.f32840G)));
        }
    }

    public final void v() {
        for (L l10 : this.f32868m) {
            Iterator<Float> it = this.f32842I.iterator();
            while (it.hasNext()) {
                l10.a(this, it.next().floatValue(), false);
            }
        }
    }

    public final void v0() {
        Iterator<Float> it = this.f32842I.iterator();
        while (it.hasNext()) {
            Float next = it.next();
            if (next.floatValue() < this.f32840G || next.floatValue() > this.f32841H) {
                throw new IllegalStateException(String.format(f32826i1, Float.toString(next.floatValue()), Float.toString(this.f32840G), Float.toString(this.f32841H)));
            }
            if (this.f32845L > 0.0f && !w0(next.floatValue())) {
                throw new IllegalStateException(String.format(f32828m1, Float.toString(next.floatValue()), Float.toString(this.f32840G), Float.toString(this.f32845L), Float.toString(this.f32845L)));
            }
        }
    }

    public final void w(@NonNull Canvas canvas, int i10, int i11) {
        float[] E10 = E();
        int i12 = this.f32881x;
        float f10 = i10;
        float f11 = i11;
        canvas.drawLine(i12 + (E10[0] * f10), f11, i12 + (E10[1] * f10), f11, this.f32858c);
    }

    public final boolean w0(float f10) {
        double doubleValue = new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Float.toString(this.f32840G))).divide(new BigDecimal(Float.toString(this.f32845L)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    public final void x(@NonNull Canvas canvas, int i10, int i11) {
        float[] E10 = E();
        float f10 = i10;
        float f11 = this.f32881x + (E10[1] * f10);
        if (f11 < r1 + i10) {
            float f12 = i11;
            canvas.drawLine(f11, f12, r1 + i10, f12, this.f32857b);
        }
        int i12 = this.f32881x;
        float f13 = i12 + (E10[0] * f10);
        if (f13 > i12) {
            float f14 = i11;
            canvas.drawLine(i12, f14, f13, f14, this.f32857b);
        }
    }

    public final float x0(float f10) {
        return (W(f10) * this.f32848O) + this.f32881x;
    }

    public final void y(@NonNull Canvas canvas, int i10, int i11) {
        if (!isEnabled()) {
            Iterator<Float> it = this.f32842I.iterator();
            while (it.hasNext()) {
                canvas.drawCircle(this.f32881x + (W(it.next().floatValue()) * i10), i11, this.f32883z, this.f32859d);
            }
        }
        Iterator<Float> it2 = this.f32842I.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            canvas.save();
            int W10 = this.f32881x + ((int) (W(next.floatValue()) * i10));
            int i12 = this.f32883z;
            canvas.translate(W10 - i12, i11 - i12);
            this.f32873q0.draw(canvas);
            canvas.restore();
        }
    }

    public final void y0() {
        float f10 = this.f32845L;
        if (f10 == 0.0f) {
            return;
        }
        if (((int) f10) != f10) {
            Log.w(f32824b1, String.format(f32818F1, "stepSize", Float.valueOf(f10)));
        }
        float f11 = this.f32840G;
        if (((int) f11) != f11) {
            Log.w(f32824b1, String.format(f32818F1, "valueFrom", Float.valueOf(f11)));
        }
        float f12 = this.f32841H;
        if (((int) f12) != f12) {
            Log.w(f32824b1, String.format(f32818F1, "valueTo", Float.valueOf(f12)));
        }
    }

    public final void z() {
        if (this.f32878v == 2) {
            return;
        }
        if (!this.f32870o) {
            this.f32870o = true;
            ValueAnimator q10 = q(true);
            this.f32871p = q10;
            this.f32872q = null;
            q10.start();
        }
        Iterator<C13578a> it = this.f32867l.iterator();
        for (int i10 = 0; i10 < this.f32842I.size() && it.hasNext(); i10++) {
            if (i10 != this.f32844K) {
                h0(it.next(), this.f32842I.get(i10).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f32867l.size()), Integer.valueOf(this.f32842I.size())));
        }
        h0(it.next(), this.f32842I.get(this.f32844K).floatValue());
    }

    public class d implements Runnable {

        public int f32889b;

        public d() {
            this.f32889b = -1;
        }

        public void a(int i10) {
            this.f32889b = i10;
        }

        @Override
        public void run() {
            AbstractC3834c.this.f32863h.sendEventForVirtualView(this.f32889b, 4);
        }

        public d(AbstractC3834c abstractC3834c, a aVar) {
            this();
        }
    }

    public AbstractC3834c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122348dd);
    }

    public AbstractC3834c(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, f32822R1), attributeSet, i10);
        this.f32867l = new ArrayList();
        this.f32868m = new ArrayList();
        this.f32869n = new ArrayList();
        this.f32870o = false;
        this.f32839F = false;
        this.f32842I = new ArrayList<>();
        this.f32843J = -1;
        this.f32844K = -1;
        this.f32845L = 0.0f;
        this.f32847N = true;
        this.f32850Q = false;
        C3567j c3567j = new C3567j();
        this.f32873q0 = c3567j;
        this.f32837D0 = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f32857b = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint paint2 = new Paint();
        this.f32858c = paint2;
        paint2.setStyle(style);
        paint2.setStrokeCap(cap);
        Paint paint3 = new Paint(1);
        this.f32859d = paint3;
        Paint.Style style2 = Paint.Style.FILL;
        paint3.setStyle(style2);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.f32860e = paint4;
        paint4.setStyle(style2);
        Paint paint5 = new Paint();
        this.f32861f = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        Paint paint6 = new Paint();
        this.f32862g = paint6;
        paint6.setStyle(style);
        paint6.setStrokeCap(cap);
        P(context2.getResources());
        this.f32866k = new a(attributeSet, i10);
        d0(context2, attributeSet, i10);
        setFocusable(true);
        setClickable(true);
        c3567j.w0(2);
        this.f32874r = ViewConfiguration.get(context2).getScaledTouchSlop();
        e eVar = new e(this);
        this.f32863h = eVar;
        ViewCompat.setAccessibilityDelegate(this, eVar);
        this.f32864i = (AccessibilityManager) getContext().getSystemService(Context.ACCESSIBILITY_SERVICE);
    }

    public void setValues(@NonNull List<Float> list) {
        i0(new ArrayList<>(list));
    }
}
