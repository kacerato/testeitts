package com.google.android.material.chip;

import X1.c;
import X1.d;
import Y1.b;
import a2.C3567j;
import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import com.google.android.material.internal.A;
import com.google.android.material.internal.p;
import com.google.android.material.internal.s;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import w1.C15879a;
import x1.h;

public class a extends C3567j implements TintAwareDrawable, Drawable.Callback, p.b {

    public static final boolean f64156D5 = false;

    public static final int f64157D6 = 24;

    public static final int[] f64158F5 = {R.attr.state_enabled};

    public static final ShapeDrawable f64159F6 = new ShapeDrawable(new OvalShape());

    public static final String f64160H5 = "http://schemas.android.com/apk/res-auto";

    @Nullable
    public h f64161D0;

    @ColorInt
    public int f64162D2;

    @Nullable
    public PorterDuff.Mode f64163D3;

    public boolean f64164D4;

    @Nullable
    public ColorStateList f64165E;

    @Nullable
    public ColorStateList f64166F;

    public float f64167F1;

    @ColorInt
    public int f64168F2;

    public int[] f64169F3;

    public int f64170F4;

    public float f64171G;

    public float f64172H;

    public float f64173H1;

    @ColorInt
    public int f64174H2;

    public boolean f64175H3;

    public boolean f64176H4;

    @Nullable
    public ColorStateList f64177I;

    public float f64178J;

    @Nullable
    public ColorStateList f64179K;

    @Nullable
    public CharSequence f64180L;

    @NonNull
    public final Context f64181L1;

    @ColorInt
    public int f64182L2;

    public boolean f64183M;

    public final Paint f64184M1;

    @ColorInt
    public int f64185M2;

    @Nullable
    public ColorStateList f64186M3;

    @Nullable
    public Drawable f64187N;

    @Nullable
    public ColorStateList f64188O;

    public float f64189P;

    public boolean f64190Q;

    public boolean f64191R;

    @Nullable
    public final Paint f64192R1;

    public boolean f64193R2;

    @Nullable
    public Drawable f64194S;

    @Nullable
    public Drawable f64195T;

    @Nullable
    public ColorStateList f64196U;

    public float f64197V;

    public final Paint.FontMetrics f64198V1;

    @ColorInt
    public int f64199V2;

    @Nullable
    public CharSequence f64200W;

    public boolean f64201X;

    public boolean f64202Y;

    @Nullable
    public Drawable f64203Z;

    public float f64204b1;

    public final RectF f64205b2;

    public float f64206i1;

    public final PointF f64207i2;

    public int f64208i3;

    public float f64209m1;

    public final Path f64210m2;

    @Nullable
    public ColorFilter f64211m3;

    @NonNull
    public WeakReference<InterfaceC0960a> f64212m4;

    @Nullable
    public ColorStateList f64213q0;

    public float f64214q1;

    @NonNull
    public final p f64215q2;

    @Nullable
    public PorterDuffColorFilter f64216q3;

    @Nullable
    public h f64217v0;

    public float f64218v1;

    @ColorInt
    public int f64219v2;

    @Nullable
    public ColorStateList f64220v3;

    public TextUtils.TruncateAt f64221v4;

    public float f64222y1;

    public interface InterfaceC0960a {
        void a();
    }

    public a(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        this.f64172H = -1.0f;
        this.f64184M1 = new Paint(1);
        this.f64198V1 = new Paint.FontMetrics();
        this.f64205b2 = new RectF();
        this.f64207i2 = new PointF();
        this.f64210m2 = new Path();
        this.f64208i3 = 255;
        this.f64163D3 = PorterDuff.Mode.SRC_IN;
        this.f64212m4 = new WeakReference<>(null);
        Y(context);
        this.f64181L1 = context;
        p pVar = new p(this);
        this.f64215q2 = pVar;
        this.f64180L = "";
        pVar.e().density = context.getResources().getDisplayMetrics().density;
        this.f64192R1 = null;
        int[] iArr = f64158F5;
        setState(iArr);
        e3(iArr);
        this.f64164D4 = true;
        if (b.f29721a) {
            f64159F6.setTint(-1);
        }
    }

    public static boolean U1(@Nullable int[] iArr, @AttrRes int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    public static a Z0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        a aVar = new a(context, attributeSet, i10, i11);
        aVar.h2(attributeSet, i10, i11);
        return aVar;
    }

    @NonNull
    public static a a1(@NonNull Context context, @XmlRes int i10) {
        AttributeSet a10 = M1.a.a(context, i10, "chip");
        int styleAttribute = a10.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = C15879a.n.f124720pb;
        }
        return Z0(context, a10, C15879a.c.f122231X1, styleAttribute);
    }

    public static boolean e2(@Nullable d dVar) {
        return (dVar == null || dVar.i() == null || !dVar.i().isStateful()) ? false : true;
    }

    public static boolean f2(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean g2(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public float A1() {
        return this.f64197V;
    }

    public void A2(@Nullable Drawable drawable) {
        Drawable p12 = p1();
        if (p12 != drawable) {
            float Q02 = Q0();
            this.f64187N = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float Q03 = Q0();
            L3(p12);
            if (J3()) {
                O0(this.f64187N);
            }
            invalidateSelf();
            if (Q02 != Q03) {
                i2();
            }
        }
    }

    public void A3(float f10) {
        if (this.f64218v1 != f10) {
            this.f64218v1 = f10;
            invalidateSelf();
            i2();
        }
    }

    public float B1() {
        return this.f64222y1;
    }

    @Deprecated
    public void B2(boolean z10) {
        J2(z10);
    }

    public void B3(@DimenRes int i10) {
        A3(this.f64181L1.getResources().getDimension(i10));
    }

    @NonNull
    public int[] C1() {
        return this.f64169F3;
    }

    @Deprecated
    public void C2(@BoolRes int i10) {
        I2(i10);
    }

    public void C3(@StringRes int i10) {
        x3(this.f64181L1.getResources().getString(i10));
    }

    @Nullable
    public ColorStateList D1() {
        return this.f64196U;
    }

    public void D2(@DrawableRes int i10) {
        A2(AppCompatResources.getDrawable(this.f64181L1, i10));
    }

    public void D3(@Dimension float f10) {
        d P12 = P1();
        if (P12 != null) {
            P12.l(f10);
            this.f64215q2.e().setTextSize(f10);
            a();
        }
    }

    public void E1(@NonNull RectF rectF) {
        T0(getBounds(), rectF);
    }

    public void E2(float f10) {
        if (this.f64189P != f10) {
            float Q02 = Q0();
            this.f64189P = f10;
            float Q03 = Q0();
            invalidateSelf();
            if (Q02 != Q03) {
                i2();
            }
        }
    }

    public void E3(float f10) {
        if (this.f64214q1 != f10) {
            this.f64214q1 = f10;
            invalidateSelf();
            i2();
        }
    }

    public final float F1() {
        Drawable drawable = this.f64193R2 ? this.f64203Z : this.f64187N;
        float f10 = this.f64189P;
        if (f10 <= 0.0f && drawable != null) {
            f10 = (float) Math.ceil(A.e(this.f64181L1, 24));
            if (drawable.getIntrinsicHeight() <= f10) {
                return drawable.getIntrinsicHeight();
            }
        }
        return f10;
    }

    public void F2(@DimenRes int i10) {
        E2(this.f64181L1.getResources().getDimension(i10));
    }

    public void F3(@DimenRes int i10) {
        E3(this.f64181L1.getResources().getDimension(i10));
    }

    public final float G1() {
        Drawable drawable = this.f64193R2 ? this.f64203Z : this.f64187N;
        float f10 = this.f64189P;
        return (f10 > 0.0f || drawable == null) ? f10 : drawable.getIntrinsicWidth();
    }

    public void G2(@Nullable ColorStateList colorStateList) {
        this.f64190Q = true;
        if (this.f64188O != colorStateList) {
            this.f64188O = colorStateList;
            if (J3()) {
                DrawableCompat.setTintList(this.f64187N, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void G3(boolean z10) {
        if (this.f64175H3 != z10) {
            this.f64175H3 = z10;
            M3();
            onStateChange(getState());
        }
    }

    public TextUtils.TruncateAt H1() {
        return this.f64221v4;
    }

    public void H2(@ColorRes int i10) {
        G2(AppCompatResources.getColorStateList(this.f64181L1, i10));
    }

    public boolean H3() {
        return this.f64164D4;
    }

    @Nullable
    public h I1() {
        return this.f64161D0;
    }

    public void I2(@BoolRes int i10) {
        J2(this.f64181L1.getResources().getBoolean(i10));
    }

    public final boolean I3() {
        return this.f64202Y && this.f64203Z != null && this.f64193R2;
    }

    public float J1() {
        return this.f64209m1;
    }

    public void J2(boolean z10) {
        if (this.f64183M != z10) {
            boolean J32 = J3();
            this.f64183M = z10;
            boolean J33 = J3();
            if (J32 != J33) {
                if (J33) {
                    O0(this.f64187N);
                } else {
                    L3(this.f64187N);
                }
                invalidateSelf();
                i2();
            }
        }
    }

    public final boolean J3() {
        return this.f64183M && this.f64187N != null;
    }

    public float K1() {
        return this.f64206i1;
    }

    public void K2(float f10) {
        if (this.f64171G != f10) {
            this.f64171G = f10;
            invalidateSelf();
            i2();
        }
    }

    public final boolean K3() {
        return this.f64191R && this.f64194S != null;
    }

    @Px
    public int L1() {
        return this.f64170F4;
    }

    public void L2(@DimenRes int i10) {
        K2(this.f64181L1.getResources().getDimension(i10));
    }

    public final void L3(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Nullable
    public ColorStateList M1() {
        return this.f64179K;
    }

    public void M2(float f10) {
        if (this.f64204b1 != f10) {
            this.f64204b1 = f10;
            invalidateSelf();
            i2();
        }
    }

    public final void M3() {
        this.f64186M3 = this.f64175H3 ? b.d(this.f64179K) : null;
    }

    @Nullable
    public h N1() {
        return this.f64217v0;
    }

    public void N2(@DimenRes int i10) {
        M2(this.f64181L1.getResources().getDimension(i10));
    }

    @TargetApi(21)
    public final void N3() {
        this.f64195T = new RippleDrawable(b.d(M1()), this.f64194S, f64159F6);
    }

    public final void O0(@Nullable Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f64194S) {
            if (drawable.isStateful()) {
                drawable.setState(C1());
            }
            DrawableCompat.setTintList(drawable, this.f64196U);
            return;
        }
        Drawable drawable2 = this.f64187N;
        if (drawable == drawable2 && this.f64190Q) {
            DrawableCompat.setTintList(drawable2, this.f64188O);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    @Nullable
    public CharSequence O1() {
        return this.f64180L;
    }

    public void O2(@Nullable ColorStateList colorStateList) {
        if (this.f64177I != colorStateList) {
            this.f64177I = colorStateList;
            if (this.f64176H4) {
                E0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void P0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (J3() || I3()) {
            float f10 = this.f64204b1 + this.f64206i1;
            float G12 = G1();
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f11 = rect.left + f10;
                rectF.left = f11;
                rectF.right = f11 + G12;
            } else {
                float f12 = rect.right - f10;
                rectF.right = f12;
                rectF.left = f12 - G12;
            }
            float F12 = F1();
            float exactCenterY = rect.exactCenterY() - (F12 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + F12;
        }
    }

    @Nullable
    public d P1() {
        return this.f64215q2.d();
    }

    public void P2(@ColorRes int i10) {
        O2(AppCompatResources.getColorStateList(this.f64181L1, i10));
    }

    public float Q0() {
        if (J3() || I3()) {
            return this.f64206i1 + G1() + this.f64209m1;
        }
        return 0.0f;
    }

    public float Q1() {
        return this.f64218v1;
    }

    public void Q2(float f10) {
        if (this.f64178J != f10) {
            this.f64178J = f10;
            this.f64184M1.setStrokeWidth(f10);
            if (this.f64176H4) {
                super.H0(f10);
            }
            invalidateSelf();
        }
    }

    public final void R0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (K3()) {
            float f10 = this.f64173H1 + this.f64167F1 + this.f64197V + this.f64222y1 + this.f64218v1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f10;
            } else {
                rectF.left = rect.left + f10;
            }
        }
    }

    public float R1() {
        return this.f64214q1;
    }

    public void R2(@DimenRes int i10) {
        Q2(this.f64181L1.getResources().getDimension(i10));
    }

    public final void S0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (K3()) {
            float f10 = this.f64173H1 + this.f64167F1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f11 = rect.right - f10;
                rectF.right = f11;
                rectF.left = f11 - this.f64197V;
            } else {
                float f12 = rect.left + f10;
                rectF.left = f12;
                rectF.right = f12 + this.f64197V;
            }
            float exactCenterY = rect.exactCenterY();
            float f13 = this.f64197V;
            float f14 = exactCenterY - (f13 / 2.0f);
            rectF.top = f14;
            rectF.bottom = f14 + f13;
        }
    }

    @Nullable
    public final ColorFilter S1() {
        ColorFilter colorFilter = this.f64211m3;
        return colorFilter != null ? colorFilter : this.f64216q3;
    }

    public final void S2(@Nullable ColorStateList colorStateList) {
        if (this.f64165E != colorStateList) {
            this.f64165E = colorStateList;
            onStateChange(getState());
        }
    }

    public final void T0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (K3()) {
            float f10 = this.f64173H1 + this.f64167F1 + this.f64197V + this.f64222y1 + this.f64218v1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f11 = rect.right;
                rectF.right = f11;
                rectF.left = f11 - f10;
            } else {
                int i10 = rect.left;
                rectF.left = i10;
                rectF.right = i10 + f10;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    public boolean T1() {
        return this.f64175H3;
    }

    public void T2(@Nullable Drawable drawable) {
        Drawable x12 = x1();
        if (x12 != drawable) {
            float U02 = U0();
            this.f64194S = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (b.f29721a) {
                N3();
            }
            float U03 = U0();
            L3(x12);
            if (K3()) {
                O0(this.f64194S);
            }
            invalidateSelf();
            if (U02 != U03) {
                i2();
            }
        }
    }

    public float U0() {
        if (K3()) {
            return this.f64222y1 + this.f64197V + this.f64167F1;
        }
        return 0.0f;
    }

    public void U2(@Nullable CharSequence charSequence) {
        if (this.f64200W != charSequence) {
            this.f64200W = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    public final void V0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.f64180L != null) {
            float Q02 = this.f64204b1 + Q0() + this.f64214q1;
            float U02 = this.f64173H1 + U0() + this.f64218v1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + Q02;
                rectF.right = rect.right - U02;
            } else {
                rectF.left = rect.left + U02;
                rectF.right = rect.right - Q02;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    public boolean V1() {
        return this.f64201X;
    }

    @Deprecated
    public void V2(boolean z10) {
        i3(z10);
    }

    public final float W0() {
        this.f64215q2.e().getFontMetrics(this.f64198V1);
        Paint.FontMetrics fontMetrics = this.f64198V1;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    @Deprecated
    public boolean W1() {
        return X1();
    }

    @Deprecated
    public void W2(@BoolRes int i10) {
        h3(i10);
    }

    @NonNull
    public Paint.Align X0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f64180L != null) {
            float Q02 = this.f64204b1 + Q0() + this.f64214q1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.f32425x = rect.left + Q02;
            } else {
                pointF.f32425x = rect.right - Q02;
                align = Paint.Align.RIGHT;
            }
            pointF.f32426y = rect.centerY() - W0();
        }
        return align;
    }

    public boolean X1() {
        return this.f64202Y;
    }

    public void X2(float f10) {
        if (this.f64167F1 != f10) {
            this.f64167F1 = f10;
            invalidateSelf();
            if (K3()) {
                i2();
            }
        }
    }

    public final boolean Y0() {
        return this.f64202Y && this.f64203Z != null && this.f64201X;
    }

    @Deprecated
    public boolean Y1() {
        return Z1();
    }

    public void Y2(@DimenRes int i10) {
        X2(this.f64181L1.getResources().getDimension(i10));
    }

    public boolean Z1() {
        return this.f64183M;
    }

    public void Z2(@DrawableRes int i10) {
        T2(AppCompatResources.getDrawable(this.f64181L1, i10));
    }

    @Override
    public void a() {
        i2();
        invalidateSelf();
    }

    @Deprecated
    public boolean a2() {
        return c2();
    }

    public void a3(float f10) {
        if (this.f64197V != f10) {
            this.f64197V = f10;
            invalidateSelf();
            if (K3()) {
                i2();
            }
        }
    }

    public final void b1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (I3()) {
            P0(rect, this.f64205b2);
            RectF rectF = this.f64205b2;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f64203Z.setBounds(0, 0, (int) this.f64205b2.width(), (int) this.f64205b2.height());
            this.f64203Z.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    public boolean b2() {
        return g2(this.f64194S);
    }

    public void b3(@DimenRes int i10) {
        a3(this.f64181L1.getResources().getDimension(i10));
    }

    public final void c1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f64176H4) {
            return;
        }
        this.f64184M1.setColor(this.f64162D2);
        this.f64184M1.setStyle(Paint.Style.FILL);
        this.f64184M1.setColorFilter(S1());
        this.f64205b2.set(rect);
        canvas.drawRoundRect(this.f64205b2, n1(), n1(), this.f64184M1);
    }

    public boolean c2() {
        return this.f64191R;
    }

    public void c3(float f10) {
        if (this.f64222y1 != f10) {
            this.f64222y1 = f10;
            invalidateSelf();
            if (K3()) {
                i2();
            }
        }
    }

    public final void d1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (J3()) {
            P0(rect, this.f64205b2);
            RectF rectF = this.f64205b2;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f64187N.setBounds(0, 0, (int) this.f64205b2.width(), (int) this.f64205b2.height());
            this.f64187N.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    public boolean d2() {
        return this.f64176H4;
    }

    public void d3(@DimenRes int i10) {
        c3(this.f64181L1.getResources().getDimension(i10));
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i10 = this.f64208i3;
        int a10 = i10 < 255 ? D1.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i10) : 0;
        f1(canvas, bounds);
        c1(canvas, bounds);
        if (this.f64176H4) {
            super.draw(canvas);
        }
        e1(canvas, bounds);
        h1(canvas, bounds);
        d1(canvas, bounds);
        b1(canvas, bounds);
        if (this.f64164D4) {
            j1(canvas, bounds);
        }
        g1(canvas, bounds);
        i1(canvas, bounds);
        if (this.f64208i3 < 255) {
            canvas.restoreToCount(a10);
        }
    }

    public final void e1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f64178J <= 0.0f || this.f64176H4) {
            return;
        }
        this.f64184M1.setColor(this.f64174H2);
        this.f64184M1.setStyle(Paint.Style.STROKE);
        if (!this.f64176H4) {
            this.f64184M1.setColorFilter(S1());
        }
        RectF rectF = this.f64205b2;
        float f10 = rect.left;
        float f11 = this.f64178J;
        rectF.set(f10 + (f11 / 2.0f), rect.top + (f11 / 2.0f), rect.right - (f11 / 2.0f), rect.bottom - (f11 / 2.0f));
        float f12 = this.f64172H - (this.f64178J / 2.0f);
        canvas.drawRoundRect(this.f64205b2, f12, f12, this.f64184M1);
    }

    public boolean e3(@NonNull int[] iArr) {
        if (Arrays.equals(this.f64169F3, iArr)) {
            return false;
        }
        this.f64169F3 = iArr;
        if (K3()) {
            return j2(getState(), iArr);
        }
        return false;
    }

    public final void f1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f64176H4) {
            return;
        }
        this.f64184M1.setColor(this.f64219v2);
        this.f64184M1.setStyle(Paint.Style.FILL);
        this.f64205b2.set(rect);
        canvas.drawRoundRect(this.f64205b2, n1(), n1(), this.f64184M1);
    }

    public void f3(@Nullable ColorStateList colorStateList) {
        if (this.f64196U != colorStateList) {
            this.f64196U = colorStateList;
            if (K3()) {
                DrawableCompat.setTintList(this.f64194S, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void g1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (K3()) {
            S0(rect, this.f64205b2);
            RectF rectF = this.f64205b2;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f64194S.setBounds(0, 0, (int) this.f64205b2.width(), (int) this.f64205b2.height());
            if (b.f29721a) {
                this.f64195T.setBounds(this.f64194S.getBounds());
                this.f64195T.jumpToCurrentState();
                this.f64195T.draw(canvas);
            } else {
                this.f64194S.draw(canvas);
            }
            canvas.translate(-f10, -f11);
        }
    }

    public void g3(@ColorRes int i10) {
        f3(AppCompatResources.getColorStateList(this.f64181L1, i10));
    }

    @Override
    public int getAlpha() {
        return this.f64208i3;
    }

    @Override
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f64211m3;
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) this.f64171G;
    }

    @Override
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f64204b1 + Q0() + this.f64214q1 + this.f64215q2.f(O1().toString()) + this.f64218v1 + U0() + this.f64173H1), this.f64170F4);
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f64176H4) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f64172H);
        } else {
            outline.setRoundRect(bounds, this.f64172H);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public final void h1(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.f64184M1.setColor(this.f64182L2);
        this.f64184M1.setStyle(Paint.Style.FILL);
        this.f64205b2.set(rect);
        if (!this.f64176H4) {
            canvas.drawRoundRect(this.f64205b2, n1(), n1(), this.f64184M1);
        } else {
            h(new RectF(rect), this.f64210m2);
            super.r(canvas, this.f64184M1, this.f64210m2, v());
        }
    }

    public final void h2(@Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray j10 = s.j(this.f64181L1, attributeSet, C15879a.o.f125943s5, i10, i11, new int[0]);
        this.f64176H4 = j10.hasValue(C15879a.o.f125593e6);
        S2(c.a(this.f64181L1, j10, C15879a.o.f125276R5));
        u2(c.a(this.f64181L1, j10, C15879a.o.f124964E5));
        K2(j10.getDimension(C15879a.o.f125156M5, 0.0f));
        int i12 = C15879a.o.f124988F5;
        if (j10.hasValue(i12)) {
            w2(j10.getDimension(i12, 0.0f));
        }
        O2(c.a(this.f64181L1, j10, C15879a.o.f125228P5));
        Q2(j10.getDimension(C15879a.o.f125252Q5, 0.0f));
        s3(c.a(this.f64181L1, j10, C15879a.o.f125568d6));
        x3(j10.getText(C15879a.o.f126093y5));
        d f10 = c.f(this.f64181L1, j10, C15879a.o.f125968t5);
        f10.l(j10.getDimension(C15879a.o.f125993u5, f10.j()));
        y3(f10);
        int i13 = j10.getInt(C15879a.o.f126043w5, 0);
        if (i13 == 1) {
            k3(TextUtils.TruncateAt.START);
        } else if (i13 == 2) {
            k3(TextUtils.TruncateAt.MIDDLE);
        } else if (i13 == 3) {
            k3(TextUtils.TruncateAt.END);
        }
        J2(j10.getBoolean(C15879a.o.f125132L5, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f64160H5, "chipIconEnabled") != null && attributeSet.getAttributeValue(f64160H5, "chipIconVisible") == null) {
            J2(j10.getBoolean(C15879a.o.f125060I5, false));
        }
        A2(c.d(this.f64181L1, j10, C15879a.o.f125036H5));
        int i14 = C15879a.o.f125108K5;
        if (j10.hasValue(i14)) {
            G2(c.a(this.f64181L1, j10, i14));
        }
        E2(j10.getDimension(C15879a.o.f125084J5, -1.0f));
        i3(j10.getBoolean(C15879a.o.f125444Y5, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f64160H5, "closeIconEnabled") != null && attributeSet.getAttributeValue(f64160H5, "closeIconVisible") == null) {
            i3(j10.getBoolean(C15879a.o.f125324T5, false));
        }
        T2(c.d(this.f64181L1, j10, C15879a.o.f125300S5));
        f3(c.a(this.f64181L1, j10, C15879a.o.f125420X5));
        a3(j10.getDimension(C15879a.o.f125372V5, 0.0f));
        k2(j10.getBoolean(C15879a.o.f126117z5, false));
        t2(j10.getBoolean(C15879a.o.f124940D5, false));
        if (attributeSet != null && attributeSet.getAttributeValue(f64160H5, "checkedIconEnabled") != null && attributeSet.getAttributeValue(f64160H5, "checkedIconVisible") == null) {
            t2(j10.getBoolean(C15879a.o.f124892B5, false));
        }
        m2(c.d(this.f64181L1, j10, C15879a.o.f124868A5));
        int i15 = C15879a.o.f124916C5;
        if (j10.hasValue(i15)) {
            q2(c.a(this.f64181L1, j10, i15));
        }
        v3(h.c(this.f64181L1, j10, C15879a.o.f125643g6));
        l3(h.c(this.f64181L1, j10, C15879a.o.f125493a6));
        M2(j10.getDimension(C15879a.o.f125204O5, 0.0f));
        p3(j10.getDimension(C15879a.o.f125543c6, 0.0f));
        n3(j10.getDimension(C15879a.o.f125518b6, 0.0f));
        E3(j10.getDimension(C15879a.o.f125693i6, 0.0f));
        A3(j10.getDimension(C15879a.o.f125668h6, 0.0f));
        c3(j10.getDimension(C15879a.o.f125396W5, 0.0f));
        X2(j10.getDimension(C15879a.o.f125348U5, 0.0f));
        y2(j10.getDimension(C15879a.o.f125012G5, 0.0f));
        r3(j10.getDimensionPixelSize(C15879a.o.f126068x5, Integer.MAX_VALUE));
        j10.recycle();
    }

    public void h3(@BoolRes int i10) {
        i3(this.f64181L1.getResources().getBoolean(i10));
    }

    public final void i1(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.f64192R1;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.f64192R1);
            if (J3() || I3()) {
                P0(rect, this.f64205b2);
                canvas.drawRect(this.f64205b2, this.f64192R1);
            }
            if (this.f64180L != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f64192R1);
            }
            if (K3()) {
                S0(rect, this.f64205b2);
                canvas.drawRect(this.f64205b2, this.f64192R1);
            }
            this.f64192R1.setColor(ColorUtils.setAlphaComponent(-65536, 127));
            R0(rect, this.f64205b2);
            canvas.drawRect(this.f64205b2, this.f64192R1);
            this.f64192R1.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            T0(rect, this.f64205b2);
            canvas.drawRect(this.f64205b2, this.f64192R1);
        }
    }

    public void i2() {
        InterfaceC0960a interfaceC0960a = this.f64212m4.get();
        if (interfaceC0960a != null) {
            interfaceC0960a.a();
        }
    }

    public void i3(boolean z10) {
        if (this.f64191R != z10) {
            boolean K32 = K3();
            this.f64191R = z10;
            boolean K33 = K3();
            if (K32 != K33) {
                if (K33) {
                    O0(this.f64194S);
                } else {
                    L3(this.f64194S);
                }
                invalidateSelf();
                i2();
            }
        }
    }

    @Override
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override
    public boolean isStateful() {
        return f2(this.f64165E) || f2(this.f64166F) || f2(this.f64177I) || (this.f64175H3 && f2(this.f64186M3)) || e2(this.f64215q2.d()) || Y0() || g2(this.f64187N) || g2(this.f64203Z) || f2(this.f64220v3);
    }

    public final void j1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f64180L != null) {
            Paint.Align X02 = X0(rect, this.f64207i2);
            V0(rect, this.f64205b2);
            if (this.f64215q2.d() != null) {
                this.f64215q2.e().drawableState = getState();
                this.f64215q2.k(this.f64181L1);
            }
            this.f64215q2.e().setTextAlign(X02);
            int i10 = 0;
            boolean z10 = Math.round(this.f64215q2.f(O1().toString())) > Math.round(this.f64205b2.width());
            if (z10) {
                i10 = canvas.save();
                canvas.clipRect(this.f64205b2);
            }
            CharSequence charSequence = this.f64180L;
            if (z10 && this.f64221v4 != null) {
                charSequence = TextUtils.ellipsize(charSequence, this.f64215q2.e(), this.f64205b2.width(), this.f64221v4);
            }
            CharSequence charSequence2 = charSequence;
            int length = charSequence2.length();
            PointF pointF = this.f64207i2;
            canvas.drawText(charSequence2, 0, length, pointF.f32425x, pointF.f32426y, this.f64215q2.e());
            if (z10) {
                canvas.restoreToCount(i10);
            }
        }
    }

    public final boolean j2(@NonNull int[] iArr, @NonNull int[] iArr2) {
        boolean z10;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f64165E;
        int l10 = l(colorStateList != null ? colorStateList.getColorForState(iArr, this.f64219v2) : 0);
        boolean z11 = true;
        if (this.f64219v2 != l10) {
            this.f64219v2 = l10;
            onStateChange = true;
        }
        ColorStateList colorStateList2 = this.f64166F;
        int l11 = l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f64162D2) : 0);
        if (this.f64162D2 != l11) {
            this.f64162D2 = l11;
            onStateChange = true;
        }
        int g10 = J1.a.g(l10, l11);
        if ((this.f64168F2 != g10) | (y() == null)) {
            this.f64168F2 = g10;
            n0(ColorStateList.valueOf(g10));
            onStateChange = true;
        }
        ColorStateList colorStateList3 = this.f64177I;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f64174H2) : 0;
        if (this.f64174H2 != colorForState) {
            this.f64174H2 = colorForState;
            onStateChange = true;
        }
        int colorForState2 = (this.f64186M3 == null || !b.e(iArr)) ? 0 : this.f64186M3.getColorForState(iArr, this.f64182L2);
        if (this.f64182L2 != colorForState2) {
            this.f64182L2 = colorForState2;
            if (this.f64175H3) {
                onStateChange = true;
            }
        }
        int colorForState3 = (this.f64215q2.d() == null || this.f64215q2.d().i() == null) ? 0 : this.f64215q2.d().i().getColorForState(iArr, this.f64185M2);
        if (this.f64185M2 != colorForState3) {
            this.f64185M2 = colorForState3;
            onStateChange = true;
        }
        boolean z12 = U1(getState(), R.attr.state_checked) && this.f64201X;
        if (this.f64193R2 == z12 || this.f64203Z == null) {
            z10 = false;
        } else {
            float Q02 = Q0();
            this.f64193R2 = z12;
            if (Q02 != Q0()) {
                onStateChange = true;
                z10 = true;
            } else {
                z10 = false;
                onStateChange = true;
            }
        }
        ColorStateList colorStateList4 = this.f64220v3;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f64199V2) : 0;
        if (this.f64199V2 != colorForState4) {
            this.f64199V2 = colorForState4;
            this.f64216q3 = M1.a.c(this, this.f64220v3, this.f64163D3);
        } else {
            z11 = onStateChange;
        }
        if (g2(this.f64187N)) {
            z11 |= this.f64187N.setState(iArr);
        }
        if (g2(this.f64203Z)) {
            z11 |= this.f64203Z.setState(iArr);
        }
        if (g2(this.f64194S)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            z11 |= this.f64194S.setState(iArr3);
        }
        if (b.f29721a && g2(this.f64195T)) {
            z11 |= this.f64195T.setState(iArr2);
        }
        if (z11) {
            invalidateSelf();
        }
        if (z10) {
            i2();
        }
        return z11;
    }

    public void j3(@Nullable InterfaceC0960a interfaceC0960a) {
        this.f64212m4 = new WeakReference<>(interfaceC0960a);
    }

    @Nullable
    public Drawable k1() {
        return this.f64203Z;
    }

    public void k2(boolean z10) {
        if (this.f64201X != z10) {
            this.f64201X = z10;
            float Q02 = Q0();
            if (!z10 && this.f64193R2) {
                this.f64193R2 = false;
            }
            float Q03 = Q0();
            invalidateSelf();
            if (Q02 != Q03) {
                i2();
            }
        }
    }

    public void k3(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f64221v4 = truncateAt;
    }

    @Nullable
    public ColorStateList l1() {
        return this.f64213q0;
    }

    public void l2(@BoolRes int i10) {
        k2(this.f64181L1.getResources().getBoolean(i10));
    }

    public void l3(@Nullable h hVar) {
        this.f64161D0 = hVar;
    }

    @Nullable
    public ColorStateList m1() {
        return this.f64166F;
    }

    public void m2(@Nullable Drawable drawable) {
        if (this.f64203Z != drawable) {
            float Q02 = Q0();
            this.f64203Z = drawable;
            float Q03 = Q0();
            L3(this.f64203Z);
            O0(this.f64203Z);
            invalidateSelf();
            if (Q02 != Q03) {
                i2();
            }
        }
    }

    public void m3(@AnimatorRes int i10) {
        l3(h.d(this.f64181L1, i10));
    }

    public float n1() {
        return this.f64176H4 ? R() : this.f64172H;
    }

    @Deprecated
    public void n2(boolean z10) {
        t2(z10);
    }

    public void n3(float f10) {
        if (this.f64209m1 != f10) {
            float Q02 = Q0();
            this.f64209m1 = f10;
            float Q03 = Q0();
            invalidateSelf();
            if (Q02 != Q03) {
                i2();
            }
        }
    }

    public float o1() {
        return this.f64173H1;
    }

    @Deprecated
    public void o2(@BoolRes int i10) {
        t2(this.f64181L1.getResources().getBoolean(i10));
    }

    public void o3(@DimenRes int i10) {
        n3(this.f64181L1.getResources().getDimension(i10));
    }

    @Override
    public boolean onLayoutDirectionChanged(int i10) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (J3()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f64187N, i10);
        }
        if (I3()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f64203Z, i10);
        }
        if (K3()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f64194S, i10);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override
    public boolean onLevelChange(int i10) {
        boolean onLevelChange = super.onLevelChange(i10);
        if (J3()) {
            onLevelChange |= this.f64187N.setLevel(i10);
        }
        if (I3()) {
            onLevelChange |= this.f64203Z.setLevel(i10);
        }
        if (K3()) {
            onLevelChange |= this.f64194S.setLevel(i10);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.f64176H4) {
            super.onStateChange(iArr);
        }
        return j2(iArr, C1());
    }

    @Nullable
    public Drawable p1() {
        Drawable drawable = this.f64187N;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void p2(@DrawableRes int i10) {
        m2(AppCompatResources.getDrawable(this.f64181L1, i10));
    }

    public void p3(float f10) {
        if (this.f64206i1 != f10) {
            float Q02 = Q0();
            this.f64206i1 = f10;
            float Q03 = Q0();
            invalidateSelf();
            if (Q02 != Q03) {
                i2();
            }
        }
    }

    public float q1() {
        return this.f64189P;
    }

    public void q2(@Nullable ColorStateList colorStateList) {
        if (this.f64213q0 != colorStateList) {
            this.f64213q0 = colorStateList;
            if (Y0()) {
                DrawableCompat.setTintList(this.f64203Z, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void q3(@DimenRes int i10) {
        p3(this.f64181L1.getResources().getDimension(i10));
    }

    @Nullable
    public ColorStateList r1() {
        return this.f64188O;
    }

    public void r2(@ColorRes int i10) {
        q2(AppCompatResources.getColorStateList(this.f64181L1, i10));
    }

    public void r3(@Px int i10) {
        this.f64170F4 = i10;
    }

    public float s1() {
        return this.f64171G;
    }

    public void s2(@BoolRes int i10) {
        t2(this.f64181L1.getResources().getBoolean(i10));
    }

    public void s3(@Nullable ColorStateList colorStateList) {
        if (this.f64179K != colorStateList) {
            this.f64179K = colorStateList;
            M3();
            onStateChange(getState());
        }
    }

    @Override
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override
    public void setAlpha(int i10) {
        if (this.f64208i3 != i10) {
            this.f64208i3 = i10;
            invalidateSelf();
        }
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f64211m3 != colorFilter) {
            this.f64211m3 = colorFilter;
            invalidateSelf();
        }
    }

    @Override
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.f64220v3 != colorStateList) {
            this.f64220v3 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f64163D3 != mode) {
            this.f64163D3 = mode;
            this.f64216q3 = M1.a.c(this, this.f64220v3, mode);
            invalidateSelf();
        }
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        if (J3()) {
            visible |= this.f64187N.setVisible(z10, z11);
        }
        if (I3()) {
            visible |= this.f64203Z.setVisible(z10, z11);
        }
        if (K3()) {
            visible |= this.f64194S.setVisible(z10, z11);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public float t1() {
        return this.f64204b1;
    }

    public void t2(boolean z10) {
        if (this.f64202Y != z10) {
            boolean I32 = I3();
            this.f64202Y = z10;
            boolean I33 = I3();
            if (I32 != I33) {
                if (I33) {
                    O0(this.f64203Z);
                } else {
                    L3(this.f64203Z);
                }
                invalidateSelf();
                i2();
            }
        }
    }

    public void t3(@ColorRes int i10) {
        s3(AppCompatResources.getColorStateList(this.f64181L1, i10));
    }

    @Nullable
    public ColorStateList u1() {
        return this.f64177I;
    }

    public void u2(@Nullable ColorStateList colorStateList) {
        if (this.f64166F != colorStateList) {
            this.f64166F = colorStateList;
            onStateChange(getState());
        }
    }

    public void u3(boolean z10) {
        this.f64164D4 = z10;
    }

    @Override
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public float v1() {
        return this.f64178J;
    }

    public void v2(@ColorRes int i10) {
        u2(AppCompatResources.getColorStateList(this.f64181L1, i10));
    }

    public void v3(@Nullable h hVar) {
        this.f64217v0 = hVar;
    }

    public void w1(@NonNull RectF rectF) {
        R0(getBounds(), rectF);
    }

    @Deprecated
    public void w2(float f10) {
        if (this.f64172H != f10) {
            this.f64172H = f10;
            setShapeAppearanceModel(getShapeAppearanceModel().w(f10));
        }
    }

    public void w3(@AnimatorRes int i10) {
        v3(h.d(this.f64181L1, i10));
    }

    @Nullable
    public Drawable x1() {
        Drawable drawable = this.f64194S;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Deprecated
    public void x2(@DimenRes int i10) {
        w2(this.f64181L1.getResources().getDimension(i10));
    }

    public void x3(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.f64180L, charSequence)) {
            return;
        }
        this.f64180L = charSequence;
        this.f64215q2.j(true);
        invalidateSelf();
        i2();
    }

    @Nullable
    public CharSequence y1() {
        return this.f64200W;
    }

    public void y2(float f10) {
        if (this.f64173H1 != f10) {
            this.f64173H1 = f10;
            invalidateSelf();
            i2();
        }
    }

    public void y3(@Nullable d dVar) {
        this.f64215q2.i(dVar, this.f64181L1);
    }

    public float z1() {
        return this.f64167F1;
    }

    public void z2(@DimenRes int i10) {
        y2(this.f64181L1.getResources().getDimension(i10));
    }

    public void z3(@StyleRes int i10) {
        y3(new d(this.f64181L1, i10));
    }
}
