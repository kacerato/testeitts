package E1;

import X1.c;
import a2.C3562e;
import a2.C3563f;
import a2.C3567j;
import a2.C3571n;
import a2.C3572o;
import android.R;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    public static final int f5336u = -1;

    public static final float f5338w = 1.5f;

    public static final int f5339x = 2;

    @NonNull
    public final E1.a f5340a;

    @NonNull
    public final C3567j f5342c;

    @NonNull
    public final C3567j f5343d;

    @Dimension
    public int f5344e;

    @Dimension
    public int f5345f;

    @Dimension
    public int f5346g;

    @Nullable
    public Drawable f5347h;

    @Nullable
    public Drawable f5348i;

    @Nullable
    public ColorStateList f5349j;

    @Nullable
    public ColorStateList f5350k;

    @Nullable
    public C3572o f5351l;

    @Nullable
    public ColorStateList f5352m;

    @Nullable
    public Drawable f5353n;

    @Nullable
    public LayerDrawable f5354o;

    @Nullable
    public C3567j f5355p;

    @Nullable
    public C3567j f5356q;

    public boolean f5358s;

    public static final int[] f5335t = {R.attr.state_checked};

    public static final double f5337v = Math.cos(Math.toRadians(45.0d));

    @NonNull
    public final Rect f5341b = new Rect();

    public boolean f5357r = false;

    public class a extends InsetDrawable {
        public a(Drawable drawable, int i10, int i11, int i12, int i13) {
            super(drawable, i10, i11, i12, i13);
        }

        @Override
        public int getMinimumHeight() {
            return -1;
        }

        @Override
        public int getMinimumWidth() {
            return -1;
        }

        @Override
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public b(@NonNull E1.a aVar, AttributeSet attributeSet, int i10, @StyleRes int i11) {
        this.f5340a = aVar;
        C3567j c3567j = new C3567j(aVar.getContext(), attributeSet, i10, i11);
        this.f5342c = c3567j;
        c3567j.Y(aVar.getContext());
        c3567j.u0(-12303292);
        C3572o.b v10 = c3567j.getShapeAppearanceModel().v();
        TypedArray obtainStyledAttributes = aVar.getContext().obtainStyledAttributes(attributeSet, C15879a.o.f125592e5, i10, C15879a.n.f124782u3);
        int i12 = C15879a.o.f125692i5;
        if (obtainStyledAttributes.hasValue(i12)) {
            v10.o(obtainStyledAttributes.getDimension(i12, 0.0f));
        }
        this.f5343d = new C3567j();
        R(v10.m());
        obtainStyledAttributes.recycle();
    }

    @NonNull
    public Rect A() {
        return this.f5341b;
    }

    @NonNull
    public final Drawable B(Drawable drawable) {
        int i10;
        int i11;
        if (this.f5340a.getUseCompatPadding()) {
            i11 = (int) Math.ceil(d());
            i10 = (int) Math.ceil(c());
        } else {
            i10 = 0;
            i11 = 0;
        }
        return new a(drawable, i10, i11, i10, i11);
    }

    public boolean C() {
        return this.f5357r;
    }

    public boolean D() {
        return this.f5358s;
    }

    public void E(@NonNull TypedArray typedArray) {
        ColorStateList a10 = c.a(this.f5340a.getContext(), typedArray, C15879a.o.f125172Ml);
        this.f5352m = a10;
        if (a10 == null) {
            this.f5352m = ColorStateList.valueOf(-1);
        }
        this.f5346g = typedArray.getDimensionPixelSize(C15879a.o.f125196Nl, 0);
        boolean z10 = typedArray.getBoolean(C15879a.o.f124932Cl, false);
        this.f5358s = z10;
        this.f5340a.setLongClickable(z10);
        this.f5350k = c.a(this.f5340a.getContext(), typedArray, C15879a.o.f125052Hl);
        K(c.d(this.f5340a.getContext(), typedArray, C15879a.o.f124980El));
        M(typedArray.getDimensionPixelSize(C15879a.o.f125028Gl, 0));
        L(typedArray.getDimensionPixelSize(C15879a.o.f125004Fl, 0));
        ColorStateList a11 = c.a(this.f5340a.getContext(), typedArray, C15879a.o.f125076Il);
        this.f5349j = a11;
        if (a11 == null) {
            this.f5349j = ColorStateList.valueOf(J1.a.d(this.f5340a, C15879a.c.f121898E2));
        }
        I(c.a(this.f5340a.getContext(), typedArray, C15879a.o.f124956Dl));
        c0();
        Z();
        d0();
        this.f5340a.setBackgroundInternal(B(this.f5342c));
        Drawable r10 = this.f5340a.isClickable() ? r() : this.f5343d;
        this.f5347h = r10;
        this.f5340a.setForeground(B(r10));
    }

    public void F(int i10, int i11) {
        int i12;
        int i13;
        if (this.f5354o != null) {
            int i14 = this.f5344e;
            int i15 = this.f5345f;
            int i16 = (i10 - i14) - i15;
            int i17 = (i11 - i14) - i15;
            if (this.f5340a.getUseCompatPadding()) {
                i17 -= (int) Math.ceil(d() * 2.0f);
                i16 -= (int) Math.ceil(c() * 2.0f);
            }
            int i18 = i17;
            int i19 = this.f5344e;
            if (ViewCompat.getLayoutDirection(this.f5340a) == 1) {
                i13 = i16;
                i12 = i19;
            } else {
                i12 = i16;
                i13 = i19;
            }
            this.f5354o.setLayerInset(2, i12, this.f5344e, i13, i18);
        }
    }

    public void G(boolean z10) {
        this.f5357r = z10;
    }

    public void H(ColorStateList colorStateList) {
        this.f5342c.n0(colorStateList);
    }

    public void I(@Nullable ColorStateList colorStateList) {
        C3567j c3567j = this.f5343d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        c3567j.n0(colorStateList);
    }

    public void J(boolean z10) {
        this.f5358s = z10;
    }

    public void K(@Nullable Drawable drawable) {
        this.f5348i = drawable;
        if (drawable != null) {
            Drawable wrap = DrawableCompat.wrap(drawable.mutate());
            this.f5348i = wrap;
            DrawableCompat.setTintList(wrap, this.f5350k);
        }
        if (this.f5354o != null) {
            this.f5354o.setDrawableByLayerId(C15879a.h.f123705b3, f());
        }
    }

    public void L(@Dimension int i10) {
        this.f5344e = i10;
    }

    public void M(@Dimension int i10) {
        this.f5345f = i10;
    }

    public void N(@Nullable ColorStateList colorStateList) {
        this.f5350k = colorStateList;
        Drawable drawable = this.f5348i;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    public void O(float f10) {
        R(this.f5351l.w(f10));
        this.f5347h.invalidateSelf();
        if (W() || V()) {
            Y();
        }
        if (W()) {
            b0();
        }
    }

    public void P(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f5342c.o0(f10);
        C3567j c3567j = this.f5343d;
        if (c3567j != null) {
            c3567j.o0(f10);
        }
        C3567j c3567j2 = this.f5356q;
        if (c3567j2 != null) {
            c3567j2.o0(f10);
        }
    }

    public void Q(@Nullable ColorStateList colorStateList) {
        this.f5349j = colorStateList;
        c0();
    }

    public void R(@NonNull C3572o c3572o) {
        this.f5351l = c3572o;
        this.f5342c.setShapeAppearanceModel(c3572o);
        this.f5342c.t0(!r0.d0());
        C3567j c3567j = this.f5343d;
        if (c3567j != null) {
            c3567j.setShapeAppearanceModel(c3572o);
        }
        C3567j c3567j2 = this.f5356q;
        if (c3567j2 != null) {
            c3567j2.setShapeAppearanceModel(c3572o);
        }
        C3567j c3567j3 = this.f5355p;
        if (c3567j3 != null) {
            c3567j3.setShapeAppearanceModel(c3572o);
        }
    }

    public void S(ColorStateList colorStateList) {
        if (this.f5352m == colorStateList) {
            return;
        }
        this.f5352m = colorStateList;
        d0();
    }

    public void T(@Dimension int i10) {
        if (i10 == this.f5346g) {
            return;
        }
        this.f5346g = i10;
        d0();
    }

    public void U(int i10, int i11, int i12, int i13) {
        this.f5341b.set(i10, i11, i12, i13);
        Y();
    }

    public final boolean V() {
        return this.f5340a.getPreventCornerOverlap() && !e();
    }

    public final boolean W() {
        return this.f5340a.getPreventCornerOverlap() && e() && this.f5340a.getUseCompatPadding();
    }

    public void X() {
        Drawable drawable = this.f5347h;
        Drawable r10 = this.f5340a.isClickable() ? r() : this.f5343d;
        this.f5347h = r10;
        if (drawable != r10) {
            a0(r10);
        }
    }

    public void Y() {
        int a10 = (int) (((V() || W()) ? a() : 0.0f) - t());
        E1.a aVar = this.f5340a;
        Rect rect = this.f5341b;
        aVar.i(rect.left + a10, rect.top + a10, rect.right + a10, rect.bottom + a10);
    }

    public void Z() {
        this.f5342c.m0(this.f5340a.getCardElevation());
    }

    public final float a() {
        return Math.max(Math.max(b(this.f5351l.q(), this.f5342c.R()), b(this.f5351l.s(), this.f5342c.S())), Math.max(b(this.f5351l.k(), this.f5342c.u()), b(this.f5351l.i(), this.f5342c.t())));
    }

    public final void a0(Drawable drawable) {
        if (this.f5340a.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.f5340a.getForeground()).setDrawable(drawable);
        } else {
            this.f5340a.setForeground(B(drawable));
        }
    }

    public final float b(C3562e c3562e, float f10) {
        if (c3562e instanceof C3571n) {
            return (float) ((1.0d - f5337v) * f10);
        }
        if (c3562e instanceof C3563f) {
            return f10 / 2.0f;
        }
        return 0.0f;
    }

    public void b0() {
        if (!C()) {
            this.f5340a.setBackgroundInternal(B(this.f5342c));
        }
        this.f5340a.setForeground(B(this.f5347h));
    }

    public final float c() {
        return this.f5340a.getMaxCardElevation() + (W() ? a() : 0.0f);
    }

    public final void c0() {
        Drawable drawable;
        if (Y1.b.f29721a && (drawable = this.f5353n) != null) {
            ((RippleDrawable) drawable).setColor(this.f5349j);
            return;
        }
        C3567j c3567j = this.f5355p;
        if (c3567j != null) {
            c3567j.n0(this.f5349j);
        }
    }

    public final float d() {
        return (this.f5340a.getMaxCardElevation() * 1.5f) + (W() ? a() : 0.0f);
    }

    public void d0() {
        this.f5343d.D0(this.f5346g, this.f5352m);
    }

    public final boolean e() {
        return this.f5342c.d0();
    }

    @NonNull
    public final Drawable f() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable drawable = this.f5348i;
        if (drawable != null) {
            stateListDrawable.addState(f5335t, drawable);
        }
        return stateListDrawable;
    }

    @NonNull
    public final Drawable g() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        C3567j i10 = i();
        this.f5355p = i10;
        i10.n0(this.f5349j);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.f5355p);
        return stateListDrawable;
    }

    @NonNull
    public final Drawable h() {
        if (!Y1.b.f29721a) {
            return g();
        }
        this.f5356q = i();
        return new RippleDrawable(this.f5349j, null, this.f5356q);
    }

    @NonNull
    public final C3567j i() {
        return new C3567j(this.f5351l);
    }

    @RequiresApi(api = 23)
    public void j() {
        Drawable drawable = this.f5353n;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i10 = bounds.bottom;
            this.f5353n.setBounds(bounds.left, bounds.top, bounds.right, i10 - 1);
            this.f5353n.setBounds(bounds.left, bounds.top, bounds.right, i10);
        }
    }

    @NonNull
    public C3567j k() {
        return this.f5342c;
    }

    public ColorStateList l() {
        return this.f5342c.y();
    }

    public ColorStateList m() {
        return this.f5343d.y();
    }

    @Nullable
    public Drawable n() {
        return this.f5348i;
    }

    @Dimension
    public int o() {
        return this.f5344e;
    }

    @Dimension
    public int p() {
        return this.f5345f;
    }

    @Nullable
    public ColorStateList q() {
        return this.f5350k;
    }

    @NonNull
    public final Drawable r() {
        if (this.f5353n == null) {
            this.f5353n = h();
        }
        if (this.f5354o == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f5353n, this.f5343d, f()});
            this.f5354o = layerDrawable;
            layerDrawable.setId(2, C15879a.h.f123705b3);
        }
        return this.f5354o;
    }

    public float s() {
        return this.f5342c.R();
    }

    public final float t() {
        if (this.f5340a.getPreventCornerOverlap() && this.f5340a.getUseCompatPadding()) {
            return (float) ((1.0d - f5337v) * this.f5340a.getCardViewRadius());
        }
        return 0.0f;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float u() {
        return this.f5342c.z();
    }

    @Nullable
    public ColorStateList v() {
        return this.f5349j;
    }

    public C3572o w() {
        return this.f5351l;
    }

    @ColorInt
    public int x() {
        ColorStateList colorStateList = this.f5352m;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    @Nullable
    public ColorStateList y() {
        return this.f5352m;
    }

    @Dimension
    public int z() {
        return this.f5346g;
    }
}
