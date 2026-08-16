package com.google.android.material.internal;

import X1.a;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import x1.C16046a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class C12453a {

    public static final String f64622k0 = "CollapsingTextHelper";

    public static final String f64623l0 = "\u2026";

    public static final float f64624m0 = 0.5f;

    public static final boolean f64625n0 = false;

    public X1.a f64627A;

    @Nullable
    public CharSequence f64628B;

    @Nullable
    public CharSequence f64629C;

    public boolean f64630D;

    public boolean f64632F;

    @Nullable
    public Bitmap f64633G;

    public Paint f64634H;

    public float f64635I;

    public float f64636J;

    public int[] f64637K;

    public boolean f64638L;

    @NonNull
    public final TextPaint f64639M;

    @NonNull
    public final TextPaint f64640N;

    public TimeInterpolator f64641O;

    public TimeInterpolator f64642P;

    public float f64643Q;

    public float f64644R;

    public float f64645S;

    public ColorStateList f64646T;

    public float f64647U;

    public float f64648V;

    public float f64649W;

    public ColorStateList f64650X;

    public float f64651Y;

    public float f64652Z;

    public final View f64653a;

    public StaticLayout f64654a0;

    public boolean f64655b;

    public float f64656b0;

    public float f64657c;

    public float f64658c0;

    public boolean f64659d;

    public float f64660d0;

    public float f64661e;

    public CharSequence f64662e0;

    public float f64663f;

    public int f64665g;

    @NonNull
    public final Rect f64667h;

    @NonNull
    public final Rect f64669i;

    @NonNull
    public final RectF f64671j;

    public ColorStateList f64676o;

    public ColorStateList f64677p;

    public float f64678q;

    public float f64679r;

    public float f64680s;

    public float f64681t;

    public float f64682u;

    public float f64683v;

    public Typeface f64684w;

    public Typeface f64685x;

    public Typeface f64686y;

    public X1.a f64687z;

    public static final boolean f64621j0 = false;

    @NonNull
    public static final Paint f64626o0 = null;

    public int f64672k = 16;

    public int f64673l = 16;

    public float f64674m = 15.0f;

    public float f64675n = 15.0f;

    public boolean f64631E = true;

    public int f64664f0 = 1;

    public float f64666g0 = 0.0f;

    public float f64668h0 = 1.0f;

    public int f64670i0 = StaticLayoutBuilderCompat.f64598n;

    public class C0965a implements a.InterfaceC0776a {
        public C0965a() {
        }

        @Override
        public void a(Typeface typeface) {
            C12453a.this.i0(typeface);
        }
    }

    public class b implements a.InterfaceC0776a {
        public b() {
        }

        @Override
        public void a(Typeface typeface) {
            C12453a.this.s0(typeface);
        }
    }

    public C12453a(View view) {
        this.f64653a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f64639M = textPaint;
        this.f64640N = new TextPaint(textPaint);
        this.f64669i = new Rect();
        this.f64667h = new Rect();
        this.f64671j = new RectF();
        this.f64663f = f();
    }

    public static boolean R(float f10, float f11) {
        return Math.abs(f10 - f11) < 0.001f;
    }

    public static float W(float f10, float f11, float f12, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return C16046a.a(f10, f11, f12);
    }

    public static int a(int i10, int i11, float f10) {
        float f11 = 1.0f - f10;
        return Color.argb((int) ((Color.alpha(i10) * f11) + (Color.alpha(i11) * f10)), (int) ((Color.red(i10) * f11) + (Color.red(i11) * f10)), (int) ((Color.green(i10) * f11) + (Color.green(i11) * f10)), (int) ((Color.blue(i10) * f11) + (Color.blue(i11) * f10)));
    }

    public static boolean a0(@NonNull Rect rect, int i10, int i11, int i12, int i13) {
        return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
    }

    public ColorStateList A() {
        return this.f64676o;
    }

    @RequiresApi(23)
    public void A0(@FloatRange(from = 0.0d) float f10) {
        this.f64668h0 = f10;
    }

    public float B() {
        P(this.f64640N);
        return (-this.f64640N.ascent()) + this.f64640N.descent();
    }

    public void B0(int i10) {
        if (i10 != this.f64664f0) {
            this.f64664f0 = i10;
            k();
            Y();
        }
    }

    public int C() {
        return this.f64672k;
    }

    public void C0(TimeInterpolator timeInterpolator) {
        this.f64641O = timeInterpolator;
        Y();
    }

    public float D() {
        P(this.f64640N);
        return -this.f64640N.ascent();
    }

    public void D0(boolean z10) {
        this.f64631E = z10;
    }

    public float E() {
        return this.f64674m;
    }

    public final boolean E0(int[] iArr) {
        this.f64637K = iArr;
        if (!U()) {
            return false;
        }
        Y();
        return true;
    }

    public Typeface F() {
        Typeface typeface = this.f64685x;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void F0(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f64628B, charSequence)) {
            this.f64628B = charSequence;
            this.f64629C = null;
            k();
            Y();
        }
    }

    public float G() {
        return this.f64657c;
    }

    public void G0(TimeInterpolator timeInterpolator) {
        this.f64642P = timeInterpolator;
        Y();
    }

    public float H() {
        return this.f64663f;
    }

    public void H0(Typeface typeface) {
        boolean j02 = j0(typeface);
        boolean t02 = t0(typeface);
        if (j02 || t02) {
            Y();
        }
    }

    @RequiresApi(23)
    public int I() {
        return this.f64670i0;
    }

    public final boolean I0() {
        return this.f64664f0 > 1 && (!this.f64630D || this.f64659d) && !this.f64632F;
    }

    public int J() {
        StaticLayout staticLayout = this.f64654a0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    @RequiresApi(23)
    public float K() {
        return this.f64654a0.getSpacingAdd();
    }

    @RequiresApi(23)
    public float L() {
        return this.f64654a0.getSpacingMultiplier();
    }

    public int M() {
        return this.f64664f0;
    }

    @Nullable
    public CharSequence N() {
        return this.f64628B;
    }

    public final void O(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f64675n);
        textPaint.setTypeface(this.f64684w);
        textPaint.setLetterSpacing(this.f64651Y);
    }

    public final void P(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f64674m);
        textPaint.setTypeface(this.f64685x);
        textPaint.setLetterSpacing(this.f64652Z);
    }

    public final void Q(float f10) {
        if (this.f64659d) {
            this.f64671j.set(f10 < this.f64663f ? this.f64667h : this.f64669i);
            return;
        }
        this.f64671j.left = W(this.f64667h.left, this.f64669i.left, f10, this.f64641O);
        this.f64671j.top = W(this.f64678q, this.f64679r, f10, this.f64641O);
        this.f64671j.right = W(this.f64667h.right, this.f64669i.right, f10, this.f64641O);
        this.f64671j.bottom = W(this.f64667h.bottom, this.f64669i.bottom, f10, this.f64641O);
    }

    public final boolean S() {
        return ViewCompat.getLayoutDirection(this.f64653a) == 1;
    }

    public boolean T() {
        return this.f64631E;
    }

    public final boolean U() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f64677p;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f64676o) != null && colorStateList.isStateful());
    }

    public final boolean V(@NonNull CharSequence charSequence, boolean z10) {
        return (z10 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    public void X() {
        this.f64655b = this.f64669i.width() > 0 && this.f64669i.height() > 0 && this.f64667h.width() > 0 && this.f64667h.height() > 0;
    }

    public void Y() {
        Z(false);
    }

    public void Z(boolean z10) {
        if ((this.f64653a.getHeight() <= 0 || this.f64653a.getWidth() <= 0) && !z10) {
            return;
        }
        b(z10);
        d();
    }

    public final void b(boolean z10) {
        StaticLayout staticLayout;
        float f10 = this.f64636J;
        j(this.f64675n, z10);
        CharSequence charSequence = this.f64629C;
        if (charSequence != null && (staticLayout = this.f64654a0) != null) {
            this.f64662e0 = TextUtils.ellipsize(charSequence, this.f64639M, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f64662e0;
        float measureText = charSequence2 != null ? this.f64639M.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f64673l, this.f64630D ? 1 : 0);
        int i10 = absoluteGravity & 112;
        if (i10 == 48) {
            this.f64679r = this.f64669i.top;
        } else if (i10 != 80) {
            this.f64679r = this.f64669i.centerY() - ((this.f64639M.descent() - this.f64639M.ascent()) / 2.0f);
        } else {
            this.f64679r = this.f64669i.bottom + this.f64639M.ascent();
        }
        int i11 = absoluteGravity & 8388615;
        if (i11 == 1) {
            this.f64681t = this.f64669i.centerX() - (measureText / 2.0f);
        } else if (i11 != 5) {
            this.f64681t = this.f64669i.left;
        } else {
            this.f64681t = this.f64669i.right - measureText;
        }
        j(this.f64674m, z10);
        float height = this.f64654a0 != null ? r13.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f64629C;
        float measureText2 = charSequence3 != null ? this.f64639M.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout2 = this.f64654a0;
        if (staticLayout2 != null && this.f64664f0 > 1) {
            measureText2 = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f64654a0;
        this.f64660d0 = staticLayout3 != null ? this.f64664f0 > 1 ? staticLayout3.getLineStart(0) : staticLayout3.getLineLeft(0) : 0.0f;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f64672k, this.f64630D ? 1 : 0);
        int i12 = absoluteGravity2 & 112;
        if (i12 == 48) {
            this.f64678q = this.f64667h.top;
        } else if (i12 != 80) {
            this.f64678q = this.f64667h.centerY() - (height / 2.0f);
        } else {
            this.f64678q = (this.f64667h.bottom - height) + this.f64639M.descent();
        }
        int i13 = absoluteGravity2 & 8388615;
        if (i13 == 1) {
            this.f64680s = this.f64667h.centerX() - (measureText2 / 2.0f);
        } else if (i13 != 5) {
            this.f64680s = this.f64667h.left;
        } else {
            this.f64680s = this.f64667h.right - measureText2;
        }
        k();
        y0(f10);
    }

    public void b0(int i10, int i11, int i12, int i13) {
        if (a0(this.f64669i, i10, i11, i12, i13)) {
            return;
        }
        this.f64669i.set(i10, i11, i12, i13);
        this.f64638L = true;
        X();
    }

    public float c() {
        if (this.f64628B == null) {
            return 0.0f;
        }
        O(this.f64640N);
        TextPaint textPaint = this.f64640N;
        CharSequence charSequence = this.f64628B;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void c0(@NonNull Rect rect) {
        b0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void d() {
        h(this.f64657c);
    }

    public void d0(int i10) {
        X1.d dVar = new X1.d(this.f64653a.getContext(), i10);
        if (dVar.i() != null) {
            this.f64677p = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f64675n = dVar.j();
        }
        ColorStateList colorStateList = dVar.f27896c;
        if (colorStateList != null) {
            this.f64646T = colorStateList;
        }
        this.f64644R = dVar.f27901h;
        this.f64645S = dVar.f27902i;
        this.f64643Q = dVar.f27903j;
        this.f64651Y = dVar.f27905l;
        X1.a aVar = this.f64627A;
        if (aVar != null) {
            aVar.c();
        }
        this.f64627A = new X1.a(new C0965a(), dVar.e());
        dVar.g(this.f64653a.getContext(), this.f64627A);
        Y();
    }

    public final float e(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        float f11 = this.f64663f;
        return f10 <= f11 ? C16046a.b(1.0f, 0.0f, this.f64661e, f11, f10) : C16046a.b(0.0f, 1.0f, f11, 1.0f, f10);
    }

    public final void e0(float f10) {
        this.f64656b0 = f10;
        ViewCompat.postInvalidateOnAnimation(this.f64653a);
    }

    public final float f() {
        float f10 = this.f64661e;
        return f10 + ((1.0f - f10) * 0.5f);
    }

    public void f0(ColorStateList colorStateList) {
        if (this.f64677p != colorStateList) {
            this.f64677p = colorStateList;
            Y();
        }
    }

    public final boolean g(@NonNull CharSequence charSequence) {
        boolean S10 = S();
        return this.f64631E ? V(charSequence, S10) : S10;
    }

    public void g0(int i10) {
        if (this.f64673l != i10) {
            this.f64673l = i10;
            Y();
        }
    }

    public final void h(float f10) {
        float f11;
        Q(f10);
        if (!this.f64659d) {
            this.f64682u = W(this.f64680s, this.f64681t, f10, this.f64641O);
            this.f64683v = W(this.f64678q, this.f64679r, f10, this.f64641O);
            y0(W(this.f64674m, this.f64675n, f10, this.f64642P));
            f11 = f10;
        } else if (f10 < this.f64663f) {
            this.f64682u = this.f64680s;
            this.f64683v = this.f64678q;
            y0(this.f64674m);
            f11 = 0.0f;
        } else {
            this.f64682u = this.f64681t;
            this.f64683v = this.f64679r - Math.max(0, this.f64665g);
            y0(this.f64675n);
            f11 = 1.0f;
        }
        TimeInterpolator timeInterpolator = C16046a.f127889b;
        e0(1.0f - W(0.0f, 1.0f, 1.0f - f10, timeInterpolator));
        o0(W(1.0f, 0.0f, f10, timeInterpolator));
        if (this.f64677p != this.f64676o) {
            this.f64639M.setColor(a(z(), x(), f11));
        } else {
            this.f64639M.setColor(x());
        }
        float f12 = this.f64651Y;
        float f13 = this.f64652Z;
        if (f12 != f13) {
            this.f64639M.setLetterSpacing(W(f13, f12, f10, timeInterpolator));
        } else {
            this.f64639M.setLetterSpacing(f12);
        }
        this.f64639M.setShadowLayer(W(this.f64647U, this.f64643Q, f10, null), W(this.f64648V, this.f64644R, f10, null), W(this.f64649W, this.f64645S, f10, null), a(y(this.f64650X), y(this.f64646T), f10));
        if (this.f64659d) {
            this.f64639M.setAlpha((int) (e(f10) * 255.0f));
        }
        ViewCompat.postInvalidateOnAnimation(this.f64653a);
    }

    public void h0(float f10) {
        if (this.f64675n != f10) {
            this.f64675n = f10;
            Y();
        }
    }

    public final void i(float f10) {
        j(f10, false);
    }

    public void i0(Typeface typeface) {
        if (j0(typeface)) {
            Y();
        }
    }

    public final void j(float f10, boolean z10) {
        boolean z11;
        float f11;
        boolean z12;
        if (this.f64628B == null) {
            return;
        }
        float width = this.f64669i.width();
        float width2 = this.f64667h.width();
        if (R(f10, this.f64675n)) {
            f11 = this.f64675n;
            this.f64635I = 1.0f;
            Typeface typeface = this.f64686y;
            Typeface typeface2 = this.f64684w;
            if (typeface != typeface2) {
                this.f64686y = typeface2;
                z12 = true;
            } else {
                z12 = false;
            }
        } else {
            float f12 = this.f64674m;
            Typeface typeface3 = this.f64686y;
            Typeface typeface4 = this.f64685x;
            if (typeface3 != typeface4) {
                this.f64686y = typeface4;
                z11 = true;
            } else {
                z11 = false;
            }
            if (R(f10, f12)) {
                this.f64635I = 1.0f;
            } else {
                this.f64635I = f10 / this.f64674m;
            }
            float f13 = this.f64675n / this.f64674m;
            width = (!z10 && width2 * f13 > width) ? Math.min(width / f13, width2) : width2;
            f11 = f12;
            z12 = z11;
        }
        if (width > 0.0f) {
            z12 = this.f64636J != f11 || this.f64638L || z12;
            this.f64636J = f11;
            this.f64638L = false;
        }
        if (this.f64629C == null || z12) {
            this.f64639M.setTextSize(this.f64636J);
            this.f64639M.setTypeface(this.f64686y);
            this.f64639M.setLinearText(this.f64635I != 1.0f);
            this.f64630D = g(this.f64628B);
            StaticLayout l10 = l(I0() ? this.f64664f0 : 1, width, this.f64630D);
            this.f64654a0 = l10;
            this.f64629C = l10.getText();
        }
    }

    public final boolean j0(Typeface typeface) {
        X1.a aVar = this.f64627A;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f64684w == typeface) {
            return false;
        }
        this.f64684w = typeface;
        return true;
    }

    public final void k() {
        Bitmap bitmap = this.f64633G;
        if (bitmap != null) {
            bitmap.recycle();
            this.f64633G = null;
        }
    }

    public void k0(int i10) {
        this.f64665g = i10;
    }

    public final StaticLayout l(int i10, float f10, boolean z10) {
        StaticLayout staticLayout;
        try {
            staticLayout = StaticLayoutBuilderCompat.c(this.f64628B, this.f64639M, (int) f10).e(TextUtils.TruncateAt.END).i(z10).d(Layout.Alignment.ALIGN_NORMAL).h(false).k(i10).j(this.f64666g0, this.f64668h0).g(this.f64670i0).a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e10) {
            Log.e(f64622k0, e10.getCause().getMessage(), e10);
            staticLayout = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayout);
    }

    public void l0(int i10, int i11, int i12, int i13) {
        if (a0(this.f64667h, i10, i11, i12, i13)) {
            return;
        }
        this.f64667h.set(i10, i11, i12, i13);
        this.f64638L = true;
        X();
    }

    public void m(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (this.f64629C == null || !this.f64655b) {
            return;
        }
        float lineStart = (this.f64682u + (this.f64664f0 > 1 ? this.f64654a0.getLineStart(0) : this.f64654a0.getLineLeft(0))) - (this.f64660d0 * 2.0f);
        this.f64639M.setTextSize(this.f64636J);
        float f10 = this.f64682u;
        float f11 = this.f64683v;
        boolean z10 = this.f64632F && this.f64633G != null;
        float f12 = this.f64635I;
        if (f12 != 1.0f && !this.f64659d) {
            canvas.scale(f12, f12, f10, f11);
        }
        if (z10) {
            canvas.drawBitmap(this.f64633G, f10, f11, this.f64634H);
            canvas.restoreToCount(save);
            return;
        }
        if (!I0() || (this.f64659d && this.f64657c <= this.f64663f)) {
            canvas.translate(f10, f11);
            this.f64654a0.draw(canvas);
        } else {
            n(canvas, lineStart, f11);
        }
        canvas.restoreToCount(save);
    }

    public void m0(@NonNull Rect rect) {
        l0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void n(@NonNull Canvas canvas, float f10, float f11) {
        int alpha = this.f64639M.getAlpha();
        canvas.translate(f10, f11);
        float f12 = alpha;
        this.f64639M.setAlpha((int) (this.f64658c0 * f12));
        this.f64654a0.draw(canvas);
        this.f64639M.setAlpha((int) (this.f64656b0 * f12));
        int lineBaseline = this.f64654a0.getLineBaseline(0);
        CharSequence charSequence = this.f64662e0;
        float f13 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f13, this.f64639M);
        if (this.f64659d) {
            return;
        }
        String trim = this.f64662e0.toString().trim();
        if (trim.endsWith(f64623l0)) {
            trim = trim.substring(0, trim.length() - 1);
        }
        String str = trim;
        this.f64639M.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f64654a0.getLineEnd(0), str.length()), 0.0f, f13, (Paint) this.f64639M);
    }

    public void n0(int i10) {
        X1.d dVar = new X1.d(this.f64653a.getContext(), i10);
        if (dVar.i() != null) {
            this.f64676o = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f64674m = dVar.j();
        }
        ColorStateList colorStateList = dVar.f27896c;
        if (colorStateList != null) {
            this.f64650X = colorStateList;
        }
        this.f64648V = dVar.f27901h;
        this.f64649W = dVar.f27902i;
        this.f64647U = dVar.f27903j;
        this.f64652Z = dVar.f27905l;
        X1.a aVar = this.f64687z;
        if (aVar != null) {
            aVar.c();
        }
        this.f64687z = new X1.a(new b(), dVar.e());
        dVar.g(this.f64653a.getContext(), this.f64687z);
        Y();
    }

    public final void o() {
        if (this.f64633G != null || this.f64667h.isEmpty() || TextUtils.isEmpty(this.f64629C)) {
            return;
        }
        h(0.0f);
        int width = this.f64654a0.getWidth();
        int height = this.f64654a0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.f64633G = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f64654a0.draw(new Canvas(this.f64633G));
        if (this.f64634H == null) {
            this.f64634H = new Paint(3);
        }
    }

    public final void o0(float f10) {
        this.f64658c0 = f10;
        ViewCompat.postInvalidateOnAnimation(this.f64653a);
    }

    public void p(@NonNull RectF rectF, int i10, int i11) {
        this.f64630D = g(this.f64628B);
        rectF.left = t(i10, i11);
        rectF.top = this.f64669i.top;
        rectF.right = u(rectF, i10, i11);
        rectF.bottom = this.f64669i.top + s();
    }

    public void p0(ColorStateList colorStateList) {
        if (this.f64676o != colorStateList) {
            this.f64676o = colorStateList;
            Y();
        }
    }

    public ColorStateList q() {
        return this.f64677p;
    }

    public void q0(int i10) {
        if (this.f64672k != i10) {
            this.f64672k = i10;
            Y();
        }
    }

    public int r() {
        return this.f64673l;
    }

    public void r0(float f10) {
        if (this.f64674m != f10) {
            this.f64674m = f10;
            Y();
        }
    }

    public float s() {
        O(this.f64640N);
        return -this.f64640N.ascent();
    }

    public void s0(Typeface typeface) {
        if (t0(typeface)) {
            Y();
        }
    }

    public final float t(int i10, int i11) {
        return (i11 == 17 || (i11 & 7) == 1) ? (i10 / 2.0f) - (c() / 2.0f) : ((i11 & 8388613) == 8388613 || (i11 & 5) == 5) ? this.f64630D ? this.f64669i.left : this.f64669i.right - c() : this.f64630D ? this.f64669i.right - c() : this.f64669i.left;
    }

    public final boolean t0(Typeface typeface) {
        X1.a aVar = this.f64687z;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f64685x == typeface) {
            return false;
        }
        this.f64685x = typeface;
        return true;
    }

    public final float u(@NonNull RectF rectF, int i10, int i11) {
        return (i11 == 17 || (i11 & 7) == 1) ? (i10 / 2.0f) + (c() / 2.0f) : ((i11 & 8388613) == 8388613 || (i11 & 5) == 5) ? this.f64630D ? rectF.left + c() : this.f64669i.right : this.f64630D ? this.f64669i.right : rectF.left + c();
    }

    public void u0(float f10) {
        float clamp = MathUtils.clamp(f10, 0.0f, 1.0f);
        if (clamp != this.f64657c) {
            this.f64657c = clamp;
            d();
        }
    }

    public float v() {
        return this.f64675n;
    }

    public void v0(boolean z10) {
        this.f64659d = z10;
    }

    public Typeface w() {
        Typeface typeface = this.f64684w;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void w0(float f10) {
        this.f64661e = f10;
        this.f64663f = f();
    }

    @ColorInt
    public int x() {
        return y(this.f64677p);
    }

    @RequiresApi(23)
    public void x0(int i10) {
        this.f64670i0 = i10;
    }

    @ColorInt
    public final int y(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f64637K;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void y0(float f10) {
        i(f10);
        boolean z10 = f64621j0 && this.f64635I != 1.0f;
        this.f64632F = z10;
        if (z10) {
            o();
        }
        ViewCompat.postInvalidateOnAnimation(this.f64653a);
    }

    @ColorInt
    public final int z() {
        return y(this.f64676o);
    }

    @RequiresApi(23)
    public void z0(float f10) {
        this.f64666g0 = f10;
    }
}
