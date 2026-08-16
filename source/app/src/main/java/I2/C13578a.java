package i2;

import X1.c;
import X1.d;
import a2.C3564g;
import a2.C3566i;
import a2.C3567j;
import a2.C3569l;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.internal.p;
import com.google.android.material.internal.s;
import w1.C15879a;
import x1.C16046a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class C13578a extends C3567j implements p.b {

    @StyleRes
    public static final int f91381V = C15879a.n.f124470Xc;

    @AttrRes
    public static final int f91382W = C15879a.c.f122143Rf;

    @Nullable
    public CharSequence f91383E;

    @NonNull
    public final Context f91384F;

    @Nullable
    public final Paint.FontMetrics f91385G;

    @NonNull
    public final p f91386H;

    @NonNull
    public final View.OnLayoutChangeListener f91387I;

    @NonNull
    public final Rect f91388J;

    public int f91389K;

    public int f91390L;

    public int f91391M;

    public int f91392N;

    public int f91393O;

    public int f91394P;

    public float f91395Q;

    public float f91396R;

    public final float f91397S;

    public float f91398T;

    public float f91399U;

    public class ViewOnLayoutChangeListenerC1746a implements View.OnLayoutChangeListener {
        public ViewOnLayoutChangeListenerC1746a() {
        }

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            C13578a.this.q1(view);
        }
    }

    public C13578a(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        this.f91385G = new Paint.FontMetrics();
        p pVar = new p(this);
        this.f91386H = pVar;
        this.f91387I = new ViewOnLayoutChangeListenerC1746a();
        this.f91388J = new Rect();
        this.f91395Q = 1.0f;
        this.f91396R = 1.0f;
        this.f91397S = 0.5f;
        this.f91398T = 0.5f;
        this.f91399U = 1.0f;
        this.f91384F = context;
        pVar.e().density = context.getResources().getDisplayMetrics().density;
        pVar.e().setTextAlign(Paint.Align.CENTER);
    }

    private float Q0() {
        this.f91386H.e().getFontMetrics(this.f91385G);
        Paint.FontMetrics fontMetrics = this.f91385G;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    @NonNull
    public static C13578a S0(@NonNull Context context) {
        return U0(context, null, f91382W, f91381V);
    }

    @NonNull
    public static C13578a T0(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return U0(context, attributeSet, f91382W, f91381V);
    }

    @NonNull
    public static C13578a U0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        C13578a c13578a = new C13578a(context, attributeSet, i10, i11);
        c13578a.f1(attributeSet, i10, i11);
        return c13578a;
    }

    private void f1(@Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray j10 = s.j(this.f91384F, attributeSet, C15879a.o.cv, i10, i11, new int[0]);
        this.f91393O = this.f91384F.getResources().getDimensionPixelSize(C15879a.f.f123307q6);
        setShapeAppearanceModel(getShapeAppearanceModel().v().t(V0()).m());
        l1(j10.getText(C15879a.o.jv));
        d f10 = c.f(this.f91384F, j10, C15879a.o.dv);
        if (f10 != null) {
            int i12 = C15879a.o.ev;
            if (j10.hasValue(i12)) {
                f10.k(c.a(this.f91384F, j10, i12));
            }
        }
        m1(f10);
        n0(ColorStateList.valueOf(j10.getColor(C15879a.o.kv, J1.a.g(ColorUtils.setAlphaComponent(J1.a.c(this.f91384F, R.attr.colorBackground, C13578a.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(J1.a.c(this.f91384F, C15879a.c.f121952H2, C13578a.class.getCanonicalName()), 153)))));
        E0(ColorStateList.valueOf(J1.a.c(this.f91384F, C15879a.c.f122164T2, C13578a.class.getCanonicalName())));
        this.f91389K = j10.getDimensionPixelSize(C15879a.o.fv, 0);
        this.f91390L = j10.getDimensionPixelSize(C15879a.o.hv, 0);
        this.f91391M = j10.getDimensionPixelSize(C15879a.o.iv, 0);
        this.f91392N = j10.getDimensionPixelSize(C15879a.o.gv, 0);
        j10.recycle();
    }

    public final float P0() {
        int i10;
        if (((this.f91388J.right - getBounds().right) - this.f91394P) - this.f91392N < 0) {
            i10 = ((this.f91388J.right - getBounds().right) - this.f91394P) - this.f91392N;
        } else {
            if (((this.f91388J.left - getBounds().left) - this.f91394P) + this.f91392N <= 0) {
                return 0.0f;
            }
            i10 = ((this.f91388J.left - getBounds().left) - this.f91394P) + this.f91392N;
        }
        return i10;
    }

    public final float R0(@NonNull Rect rect) {
        return rect.centerY() - Q0();
    }

    public final C3564g V0() {
        float f10 = -P0();
        float width = ((float) (getBounds().width() - (this.f91393O * Math.sqrt(2.0d)))) / 2.0f;
        return new C3569l(new C3566i(this.f91393O), Math.min(Math.max(f10, -width), width));
    }

    public void W0(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.f91387I);
    }

    public final void X0(@NonNull Canvas canvas) {
        if (this.f91383E == null) {
            return;
        }
        int R02 = (int) R0(getBounds());
        if (this.f91386H.d() != null) {
            this.f91386H.e().drawableState = getState();
            this.f91386H.k(this.f91384F);
            this.f91386H.e().setAlpha((int) (this.f91399U * 255.0f));
        }
        CharSequence charSequence = this.f91383E;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), R02, this.f91386H.e());
    }

    public int Y0() {
        return this.f91392N;
    }

    public int Z0() {
        return this.f91391M;
    }

    @Override
    public void a() {
        invalidateSelf();
    }

    public int a1() {
        return this.f91390L;
    }

    @Nullable
    public CharSequence b1() {
        return this.f91383E;
    }

    @Nullable
    public d c1() {
        return this.f91386H.d();
    }

    public int d1() {
        return this.f91389K;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        float P02 = P0();
        float f10 = (float) (-((this.f91393O * Math.sqrt(2.0d)) - this.f91393O));
        canvas.scale(this.f91395Q, this.f91396R, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f91398T));
        canvas.translate(P02, f10);
        super.draw(canvas);
        X0(canvas);
        canvas.restore();
    }

    public final float e1() {
        CharSequence charSequence = this.f91383E;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f91386H.f(charSequence.toString());
    }

    public void g1(@Px int i10) {
        this.f91392N = i10;
        invalidateSelf();
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f91386H.e().getTextSize(), this.f91391M);
    }

    @Override
    public int getIntrinsicWidth() {
        return (int) Math.max((this.f91389K * 2) + e1(), this.f91390L);
    }

    public void h1(@Px int i10) {
        this.f91391M = i10;
        invalidateSelf();
    }

    public void i1(@Px int i10) {
        this.f91390L = i10;
        invalidateSelf();
    }

    public void j1(@Nullable View view) {
        if (view == null) {
            return;
        }
        q1(view);
        view.addOnLayoutChangeListener(this.f91387I);
    }

    public void k1(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f91398T = 1.2f;
        this.f91395Q = f10;
        this.f91396R = f10;
        this.f91399U = C16046a.b(0.0f, 1.0f, 0.19f, 1.0f, f10);
        invalidateSelf();
    }

    public void l1(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.f91383E, charSequence)) {
            return;
        }
        this.f91383E = charSequence;
        this.f91386H.j(true);
        invalidateSelf();
    }

    public void m1(@Nullable d dVar) {
        this.f91386H.i(dVar, this.f91384F);
    }

    public void n1(@StyleRes int i10) {
        m1(new d(this.f91384F, i10));
    }

    public void o1(@Px int i10) {
        this.f91389K = i10;
        invalidateSelf();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().v().t(V0()).m());
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void p1(@StringRes int i10) {
        l1(this.f91384F.getResources().getString(i10));
    }

    public final void q1(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f91394P = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f91388J);
    }
}
