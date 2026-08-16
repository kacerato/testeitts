package a2;

import a2.C3572o;
import a2.C3573p;
import a2.C3574q;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;
import w1.C15879a;

public class C3567j extends Drawable implements TintAwareDrawable, InterfaceC3576s {

    public static final int f31692A = 0;

    public static final int f31693B = 1;

    public static final int f31694C = 2;

    public static final Paint f31695D;

    public static final String f31696x = "j";

    public static final float f31697y = 0.75f;

    public static final float f31698z = 0.25f;

    public d f31699b;

    public final C3574q.i[] f31700c;

    public final C3574q.i[] f31701d;

    public final BitSet f31702e;

    public boolean f31703f;

    public final Matrix f31704g;

    public final Path f31705h;

    public final Path f31706i;

    public final RectF f31707j;

    public final RectF f31708k;

    public final Region f31709l;

    public final Region f31710m;

    public C3572o f31711n;

    public final Paint f31712o;

    public final Paint f31713p;

    public final Z1.b f31714q;

    @NonNull
    public final C3573p.b f31715r;

    public final C3573p f31716s;

    @Nullable
    public PorterDuffColorFilter f31717t;

    @Nullable
    public PorterDuffColorFilter f31718u;

    @NonNull
    public final RectF f31719v;

    public boolean f31720w;

    public class a implements C3573p.b {
        public a() {
        }

        @Override
        public void a(@NonNull C3574q c3574q, Matrix matrix, int i10) {
            C3567j.this.f31702e.set(i10 + 4, c3574q.e());
            C3567j.this.f31701d[i10] = c3574q.f(matrix);
        }

        @Override
        public void b(@NonNull C3574q c3574q, Matrix matrix, int i10) {
            C3567j.this.f31702e.set(i10, c3574q.e());
            C3567j.this.f31700c[i10] = c3574q.f(matrix);
        }
    }

    public class b implements C3572o.c {

        public final float f31722a;

        public b(float f10) {
            this.f31722a = f10;
        }

        @Override
        @NonNull
        public InterfaceC3561d a(@NonNull InterfaceC3561d interfaceC3561d) {
            return interfaceC3561d instanceof C3570m ? interfaceC3561d : new C3559b(this.f31722a, interfaceC3561d);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface c {
    }

    static {
        Paint paint = new Paint(1);
        f31695D = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public C3567j(d dVar, a aVar) {
        this(dVar);
    }

    public static int g0(int i10, int i11) {
        return (i10 * (i11 + (i11 >>> 7))) >>> 8;
    }

    @NonNull
    public static C3567j m(Context context) {
        return n(context, 0.0f);
    }

    @NonNull
    public static C3567j n(Context context, float f10) {
        int c10 = J1.a.c(context, C15879a.c.f122164T2, C3567j.class.getSimpleName());
        C3567j c3567j = new C3567j();
        c3567j.Y(context);
        c3567j.n0(ColorStateList.valueOf(c10));
        c3567j.m0(f10);
        return c3567j;
    }

    public Paint.Style A() {
        return this.f31699b.f31745v;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void A0(int i10) {
        d dVar = this.f31699b;
        if (dVar.f31742s != i10) {
            dVar.f31742s = i10;
            Z();
        }
    }

    public float B() {
        return this.f31699b.f31737n;
    }

    @Deprecated
    public void B0(@NonNull C3575r c3575r) {
        setShapeAppearanceModel(c3575r);
    }

    @Deprecated
    public void C(int i10, int i11, @NonNull Path path) {
        h(new RectF(0.0f, 0.0f, i10, i11), path);
    }

    public void C0(float f10, @ColorInt int i10) {
        H0(f10);
        E0(ColorStateList.valueOf(i10));
    }

    public float D() {
        return this.f31699b.f31733j;
    }

    public void D0(float f10, @Nullable ColorStateList colorStateList) {
        H0(f10);
        E0(colorStateList);
    }

    public int E() {
        return this.f31699b.f31743t;
    }

    public void E0(@Nullable ColorStateList colorStateList) {
        d dVar = this.f31699b;
        if (dVar.f31728e != colorStateList) {
            dVar.f31728e = colorStateList;
            onStateChange(getState());
        }
    }

    public int F() {
        return this.f31699b.f31740q;
    }

    public void F0(@ColorInt int i10) {
        G0(ColorStateList.valueOf(i10));
    }

    @Deprecated
    public int G() {
        return (int) x();
    }

    public void G0(ColorStateList colorStateList) {
        this.f31699b.f31729f = colorStateList;
        M0();
        Z();
    }

    public int H() {
        d dVar = this.f31699b;
        return (int) (dVar.f31742s * Math.sin(Math.toRadians(dVar.f31743t)));
    }

    public void H0(float f10) {
        this.f31699b.f31735l = f10;
        invalidateSelf();
    }

    public int I() {
        d dVar = this.f31699b;
        return (int) (dVar.f31742s * Math.cos(Math.toRadians(dVar.f31743t)));
    }

    public void I0(float f10) {
        d dVar = this.f31699b;
        if (dVar.f31739p != f10) {
            dVar.f31739p = f10;
            N0();
        }
    }

    public int J() {
        return this.f31699b.f31741r;
    }

    public void J0(boolean z10) {
        d dVar = this.f31699b;
        if (dVar.f31744u != z10) {
            dVar.f31744u = z10;
            invalidateSelf();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int K() {
        return this.f31699b.f31742s;
    }

    public void K0(float f10) {
        I0(f10 - x());
    }

    @Nullable
    @Deprecated
    public C3575r L() {
        C3572o shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof C3575r) {
            return (C3575r) shapeAppearanceModel;
        }
        return null;
    }

    public final boolean L0(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f31699b.f31727d == null || color2 == (colorForState2 = this.f31699b.f31727d.getColorForState(iArr, (color2 = this.f31712o.getColor())))) {
            z10 = false;
        } else {
            this.f31712o.setColor(colorForState2);
            z10 = true;
        }
        if (this.f31699b.f31728e == null || color == (colorForState = this.f31699b.f31728e.getColorForState(iArr, (color = this.f31713p.getColor())))) {
            return z10;
        }
        this.f31713p.setColor(colorForState);
        return true;
    }

    @Nullable
    public ColorStateList M() {
        return this.f31699b.f31728e;
    }

    public final boolean M0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f31717t;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f31718u;
        d dVar = this.f31699b;
        this.f31717t = k(dVar.f31730g, dVar.f31731h, this.f31712o, true);
        d dVar2 = this.f31699b;
        this.f31718u = k(dVar2.f31729f, dVar2.f31731h, this.f31713p, false);
        d dVar3 = this.f31699b;
        if (dVar3.f31744u) {
            this.f31714q.d(dVar3.f31730g.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.f31717t) && ObjectsCompat.equals(porterDuffColorFilter2, this.f31718u)) ? false : true;
    }

    public final float N() {
        if (X()) {
            return this.f31713p.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    public final void N0() {
        float U10 = U();
        this.f31699b.f31741r = (int) Math.ceil(0.75f * U10);
        this.f31699b.f31742s = (int) Math.ceil(U10 * 0.25f);
        M0();
        Z();
    }

    @Nullable
    public ColorStateList O() {
        return this.f31699b.f31729f;
    }

    public float P() {
        return this.f31699b.f31735l;
    }

    @Nullable
    public ColorStateList Q() {
        return this.f31699b.f31730g;
    }

    public float R() {
        return this.f31699b.f31724a.r().a(v());
    }

    public float S() {
        return this.f31699b.f31724a.t().a(v());
    }

    public float T() {
        return this.f31699b.f31739p;
    }

    public float U() {
        return x() + T();
    }

    public final boolean V() {
        d dVar = this.f31699b;
        int i10 = dVar.f31740q;
        return i10 != 1 && dVar.f31741r > 0 && (i10 == 2 || i0());
    }

    public final boolean W() {
        Paint.Style style = this.f31699b.f31745v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    public final boolean X() {
        Paint.Style style = this.f31699b.f31745v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f31713p.getStrokeWidth() > 0.0f;
    }

    public void Y(Context context) {
        this.f31699b.f31725b = new N1.a(context);
        N0();
    }

    public final void Z() {
        super.invalidateSelf();
    }

    public boolean a0() {
        N1.a aVar = this.f31699b.f31725b;
        return aVar != null && aVar.l();
    }

    public boolean b0() {
        return this.f31699b.f31725b != null;
    }

    public boolean c0(int i10, int i11) {
        return getTransparentRegion().contains(i10, i11);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean d0() {
        return this.f31699b.f31724a.u(v());
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        this.f31712o.setColorFilter(this.f31717t);
        int alpha = this.f31712o.getAlpha();
        this.f31712o.setAlpha(g0(alpha, this.f31699b.f31736m));
        this.f31713p.setColorFilter(this.f31718u);
        this.f31713p.setStrokeWidth(this.f31699b.f31735l);
        int alpha2 = this.f31713p.getAlpha();
        this.f31713p.setAlpha(g0(alpha2, this.f31699b.f31736m));
        if (this.f31703f) {
            i();
            g(v(), this.f31705h);
            this.f31703f = false;
        }
        f0(canvas);
        if (W()) {
            p(canvas);
        }
        if (X()) {
            s(canvas);
        }
        this.f31712o.setAlpha(alpha);
        this.f31713p.setAlpha(alpha2);
    }

    @Deprecated
    public boolean e0() {
        int i10 = this.f31699b.f31740q;
        return i10 == 0 || i10 == 2;
    }

    @Nullable
    public final PorterDuffColorFilter f(@NonNull Paint paint, boolean z10) {
        int color;
        int l10;
        if (!z10 || (l10 = l((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(l10, PorterDuff.Mode.SRC_IN);
    }

    public final void f0(@NonNull Canvas canvas) {
        if (V()) {
            canvas.save();
            h0(canvas);
            if (!this.f31720w) {
                o(canvas);
                canvas.restore();
                return;
            }
            int width = (int) (this.f31719v.width() - getBounds().width());
            int height = (int) (this.f31719v.height() - getBounds().height());
            if (width < 0 || height < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap createBitmap = Bitmap.createBitmap(((int) this.f31719v.width()) + (this.f31699b.f31741r * 2) + width, ((int) this.f31719v.height()) + (this.f31699b.f31741r * 2) + height, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap);
            float f10 = (getBounds().left - this.f31699b.f31741r) - width;
            float f11 = (getBounds().top - this.f31699b.f31741r) - height;
            canvas2.translate(-f10, -f11);
            o(canvas2);
            canvas.drawBitmap(createBitmap, f10, f11, (Paint) null);
            createBitmap.recycle();
            canvas.restore();
        }
    }

    public final void g(@NonNull RectF rectF, @NonNull Path path) {
        h(rectF, path);
        if (this.f31699b.f31733j != 1.0f) {
            this.f31704g.reset();
            Matrix matrix = this.f31704g;
            float f10 = this.f31699b.f31733j;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f31704g);
        }
        path.computeBounds(this.f31719v, true);
    }

    @Override
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f31699b;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f31699b.f31740q == 2) {
            return;
        }
        if (d0()) {
            outline.setRoundRect(getBounds(), R() * this.f31699b.f31734k);
            return;
        }
        g(v(), this.f31705h);
        if (this.f31705h.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.f31705h);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f31699b.f31732i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        return this.f31699b.f31724a;
    }

    @Override
    public Region getTransparentRegion() {
        this.f31709l.set(getBounds());
        g(v(), this.f31705h);
        this.f31710m.setPath(this.f31705h, this.f31709l);
        this.f31709l.op(this.f31710m, Region.Op.DIFFERENCE);
        return this.f31709l;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void h(@NonNull RectF rectF, @NonNull Path path) {
        C3573p c3573p = this.f31716s;
        d dVar = this.f31699b;
        c3573p.d(dVar.f31724a, dVar.f31734k, rectF, this.f31715r, path);
    }

    public final void h0(@NonNull Canvas canvas) {
        canvas.translate(H(), I());
    }

    public final void i() {
        C3572o y10 = getShapeAppearanceModel().y(new b(-N()));
        this.f31711n = y10;
        this.f31716s.e(y10, this.f31699b.f31734k, w(), this.f31706i);
    }

    public boolean i0() {
        return (d0() || this.f31705h.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    @Override
    public void invalidateSelf() {
        this.f31703f = true;
        super.invalidateSelf();
    }

    @Override
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f31699b.f31730g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f31699b.f31729f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f31699b.f31728e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f31699b.f31727d) != null && colorStateList4.isStateful())));
    }

    @NonNull
    public final PorterDuffColorFilter j(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z10) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z10) {
            colorForState = l(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    public void j0(float f10) {
        setShapeAppearanceModel(this.f31699b.f31724a.w(f10));
    }

    @NonNull
    public final PorterDuffColorFilter k(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z10) {
        return (colorStateList == null || mode == null) ? f(paint, z10) : j(colorStateList, mode, z10);
    }

    public void k0(@NonNull InterfaceC3561d interfaceC3561d) {
        setShapeAppearanceModel(this.f31699b.f31724a.x(interfaceC3561d));
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int l(@ColorInt int i10) {
        float U10 = U() + B();
        N1.a aVar = this.f31699b.f31725b;
        return aVar != null ? aVar.e(i10, U10) : i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void l0(boolean z10) {
        this.f31716s.n(z10);
    }

    public void m0(float f10) {
        d dVar = this.f31699b;
        if (dVar.f31738o != f10) {
            dVar.f31738o = f10;
            N0();
        }
    }

    @Override
    @NonNull
    public Drawable mutate() {
        this.f31699b = new d(this.f31699b);
        return this;
    }

    public void n0(@Nullable ColorStateList colorStateList) {
        d dVar = this.f31699b;
        if (dVar.f31727d != colorStateList) {
            dVar.f31727d = colorStateList;
            onStateChange(getState());
        }
    }

    public final void o(@NonNull Canvas canvas) {
        if (this.f31702e.cardinality() > 0) {
            Log.w(f31696x, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f31699b.f31742s != 0) {
            canvas.drawPath(this.f31705h, this.f31714q.c());
        }
        for (int i10 = 0; i10 < 4; i10++) {
            this.f31700c[i10].a(this.f31714q, this.f31699b.f31741r, canvas);
            this.f31701d[i10].a(this.f31714q, this.f31699b.f31741r, canvas);
        }
        if (this.f31720w) {
            int H10 = H();
            int I10 = I();
            canvas.translate(-H10, -I10);
            canvas.drawPath(this.f31705h, f31695D);
            canvas.translate(H10, I10);
        }
    }

    public void o0(float f10) {
        d dVar = this.f31699b;
        if (dVar.f31734k != f10) {
            dVar.f31734k = f10;
            this.f31703f = true;
            invalidateSelf();
        }
    }

    @Override
    public void onBoundsChange(Rect rect) {
        this.f31703f = true;
        super.onBoundsChange(rect);
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        boolean z10 = L0(iArr) || M0();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    public final void p(@NonNull Canvas canvas) {
        q(canvas, this.f31712o, this.f31705h, this.f31699b.f31724a, v());
    }

    public void p0(int i10, int i11, int i12, int i13) {
        d dVar = this.f31699b;
        if (dVar.f31732i == null) {
            dVar.f31732i = new Rect();
        }
        this.f31699b.f31732i.set(i10, i11, i12, i13);
        invalidateSelf();
    }

    public final void q(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull C3572o c3572o, @NonNull RectF rectF) {
        if (!c3572o.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float a10 = c3572o.t().a(rectF) * this.f31699b.f31734k;
            canvas.drawRoundRect(rectF, a10, a10, paint);
        }
    }

    public void q0(Paint.Style style) {
        this.f31699b.f31745v = style;
        Z();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void r(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        q(canvas, paint, path, this.f31699b.f31724a, rectF);
    }

    public void r0(float f10) {
        d dVar = this.f31699b;
        if (dVar.f31737n != f10) {
            dVar.f31737n = f10;
            N0();
        }
    }

    public final void s(@NonNull Canvas canvas) {
        q(canvas, this.f31713p, this.f31706i, this.f31711n, w());
    }

    public void s0(float f10) {
        d dVar = this.f31699b;
        if (dVar.f31733j != f10) {
            dVar.f31733j = f10;
            invalidateSelf();
        }
    }

    @Override
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        d dVar = this.f31699b;
        if (dVar.f31736m != i10) {
            dVar.f31736m = i10;
            Z();
        }
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f31699b.f31726c = colorFilter;
        Z();
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        this.f31699b.f31724a = c3572o;
        invalidateSelf();
    }

    @Override
    public void setTint(@ColorInt int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f31699b.f31730g = colorStateList;
        M0();
        Z();
    }

    @Override
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f31699b;
        if (dVar.f31731h != mode) {
            dVar.f31731h = mode;
            M0();
            Z();
        }
    }

    public float t() {
        return this.f31699b.f31724a.j().a(v());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void t0(boolean z10) {
        this.f31720w = z10;
    }

    public float u() {
        return this.f31699b.f31724a.l().a(v());
    }

    public void u0(int i10) {
        this.f31714q.d(i10);
        this.f31699b.f31744u = false;
        Z();
    }

    @NonNull
    public RectF v() {
        this.f31707j.set(getBounds());
        return this.f31707j;
    }

    public void v0(int i10) {
        d dVar = this.f31699b;
        if (dVar.f31743t != i10) {
            dVar.f31743t = i10;
            Z();
        }
    }

    @NonNull
    public final RectF w() {
        this.f31708k.set(v());
        float N10 = N();
        this.f31708k.inset(N10, N10);
        return this.f31708k;
    }

    public void w0(int i10) {
        d dVar = this.f31699b;
        if (dVar.f31740q != i10) {
            dVar.f31740q = i10;
            Z();
        }
    }

    public float x() {
        return this.f31699b.f31738o;
    }

    @Deprecated
    public void x0(int i10) {
        m0(i10);
    }

    @Nullable
    public ColorStateList y() {
        return this.f31699b.f31727d;
    }

    @Deprecated
    public void y0(boolean z10) {
        w0(!z10 ? 1 : 0);
    }

    public float z() {
        return this.f31699b.f31734k;
    }

    @Deprecated
    public void z0(int i10) {
        this.f31699b.f31741r = i10;
    }

    public C3567j() {
        this(new C3572o());
    }

    public C3567j(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        this(C3572o.e(context, attributeSet, i10, i11).m());
    }

    @Deprecated
    public C3567j(@NonNull C3575r c3575r) {
        this((C3572o) c3575r);
    }

    public C3567j(@NonNull C3572o c3572o) {
        this(new d(c3572o, null));
    }

    public C3567j(@NonNull d dVar) {
        this.f31700c = new C3574q.i[4];
        this.f31701d = new C3574q.i[4];
        this.f31702e = new BitSet(8);
        this.f31704g = new Matrix();
        this.f31705h = new Path();
        this.f31706i = new Path();
        this.f31707j = new RectF();
        this.f31708k = new RectF();
        this.f31709l = new Region();
        this.f31710m = new Region();
        Paint paint = new Paint(1);
        this.f31712o = paint;
        Paint paint2 = new Paint(1);
        this.f31713p = paint2;
        this.f31714q = new Z1.b();
        this.f31716s = Looper.getMainLooper().getThread() == Thread.currentThread() ? C3573p.k() : new C3573p();
        this.f31719v = new RectF();
        this.f31720w = true;
        this.f31699b = dVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        M0();
        L0(getState());
        this.f31715r = new a();
    }

    public static final class d extends Drawable.ConstantState {

        @NonNull
        public C3572o f31724a;

        @Nullable
        public N1.a f31725b;

        @Nullable
        public ColorFilter f31726c;

        @Nullable
        public ColorStateList f31727d;

        @Nullable
        public ColorStateList f31728e;

        @Nullable
        public ColorStateList f31729f;

        @Nullable
        public ColorStateList f31730g;

        @Nullable
        public PorterDuff.Mode f31731h;

        @Nullable
        public Rect f31732i;

        public float f31733j;

        public float f31734k;

        public float f31735l;

        public int f31736m;

        public float f31737n;

        public float f31738o;

        public float f31739p;

        public int f31740q;

        public int f31741r;

        public int f31742s;

        public int f31743t;

        public boolean f31744u;

        public Paint.Style f31745v;

        public d(C3572o c3572o, N1.a aVar) {
            this.f31727d = null;
            this.f31728e = null;
            this.f31729f = null;
            this.f31730g = null;
            this.f31731h = PorterDuff.Mode.SRC_IN;
            this.f31732i = null;
            this.f31733j = 1.0f;
            this.f31734k = 1.0f;
            this.f31736m = 255;
            this.f31737n = 0.0f;
            this.f31738o = 0.0f;
            this.f31739p = 0.0f;
            this.f31740q = 0;
            this.f31741r = 0;
            this.f31742s = 0;
            this.f31743t = 0;
            this.f31744u = false;
            this.f31745v = Paint.Style.FILL_AND_STROKE;
            this.f31724a = c3572o;
            this.f31725b = aVar;
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        @NonNull
        public Drawable newDrawable() {
            C3567j c3567j = new C3567j(this, null);
            c3567j.f31703f = true;
            return c3567j;
        }

        public d(@NonNull d dVar) {
            this.f31727d = null;
            this.f31728e = null;
            this.f31729f = null;
            this.f31730g = null;
            this.f31731h = PorterDuff.Mode.SRC_IN;
            this.f31732i = null;
            this.f31733j = 1.0f;
            this.f31734k = 1.0f;
            this.f31736m = 255;
            this.f31737n = 0.0f;
            this.f31738o = 0.0f;
            this.f31739p = 0.0f;
            this.f31740q = 0;
            this.f31741r = 0;
            this.f31742s = 0;
            this.f31743t = 0;
            this.f31744u = false;
            this.f31745v = Paint.Style.FILL_AND_STROKE;
            this.f31724a = dVar.f31724a;
            this.f31725b = dVar.f31725b;
            this.f31735l = dVar.f31735l;
            this.f31726c = dVar.f31726c;
            this.f31727d = dVar.f31727d;
            this.f31728e = dVar.f31728e;
            this.f31731h = dVar.f31731h;
            this.f31730g = dVar.f31730g;
            this.f31736m = dVar.f31736m;
            this.f31733j = dVar.f31733j;
            this.f31742s = dVar.f31742s;
            this.f31740q = dVar.f31740q;
            this.f31744u = dVar.f31744u;
            this.f31734k = dVar.f31734k;
            this.f31737n = dVar.f31737n;
            this.f31738o = dVar.f31738o;
            this.f31739p = dVar.f31739p;
            this.f31741r = dVar.f31741r;
            this.f31743t = dVar.f31743t;
            this.f31729f = dVar.f31729f;
            this.f31745v = dVar.f31745v;
            if (dVar.f31732i != null) {
                this.f31732i = new Rect(dVar.f31732i);
            }
        }
    }
}
