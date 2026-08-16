package C1;

import X1.c;
import Y1.b;
import a2.C3567j;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.A;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a {

    public static final boolean f1964t = true;

    public final MaterialButton f1965a;

    @NonNull
    public C3572o f1966b;

    public int f1967c;

    public int f1968d;

    public int f1969e;

    public int f1970f;

    public int f1971g;

    public int f1972h;

    @Nullable
    public PorterDuff.Mode f1973i;

    @Nullable
    public ColorStateList f1974j;

    @Nullable
    public ColorStateList f1975k;

    @Nullable
    public ColorStateList f1976l;

    @Nullable
    public Drawable f1977m;

    public boolean f1978n = false;

    public boolean f1979o = false;

    public boolean f1980p = false;

    public boolean f1981q;

    public LayerDrawable f1982r;

    public int f1983s;

    public a(MaterialButton materialButton, @NonNull C3572o c3572o) {
        this.f1965a = materialButton;
        this.f1966b = c3572o;
    }

    public void A(@Nullable ColorStateList colorStateList) {
        if (this.f1975k != colorStateList) {
            this.f1975k = colorStateList;
            I();
        }
    }

    public void B(int i10) {
        if (this.f1972h != i10) {
            this.f1972h = i10;
            I();
        }
    }

    public void C(@Nullable ColorStateList colorStateList) {
        if (this.f1974j != colorStateList) {
            this.f1974j = colorStateList;
            if (f() != null) {
                DrawableCompat.setTintList(f(), this.f1974j);
            }
        }
    }

    public void D(@Nullable PorterDuff.Mode mode) {
        if (this.f1973i != mode) {
            this.f1973i = mode;
            if (f() == null || this.f1973i == null) {
                return;
            }
            DrawableCompat.setTintMode(f(), this.f1973i);
        }
    }

    public final void E(@Dimension int i10, @Dimension int i11) {
        int paddingStart = ViewCompat.getPaddingStart(this.f1965a);
        int paddingTop = this.f1965a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f1965a);
        int paddingBottom = this.f1965a.getPaddingBottom();
        int i12 = this.f1969e;
        int i13 = this.f1970f;
        this.f1970f = i11;
        this.f1969e = i10;
        if (!this.f1979o) {
            F();
        }
        ViewCompat.setPaddingRelative(this.f1965a, paddingStart, (paddingTop + i10) - i12, paddingEnd, (paddingBottom + i11) - i13);
    }

    public final void F() {
        this.f1965a.setInternalBackground(a());
        C3567j f10 = f();
        if (f10 != null) {
            f10.m0(this.f1983s);
        }
    }

    public final void G(@NonNull C3572o c3572o) {
        if (f() != null) {
            f().setShapeAppearanceModel(c3572o);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(c3572o);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(c3572o);
        }
    }

    public void H(int i10, int i11) {
        Drawable drawable = this.f1977m;
        if (drawable != null) {
            drawable.setBounds(this.f1967c, this.f1969e, i11 - this.f1968d, i10 - this.f1970f);
        }
    }

    public final void I() {
        C3567j f10 = f();
        C3567j n10 = n();
        if (f10 != null) {
            f10.D0(this.f1972h, this.f1975k);
            if (n10 != null) {
                n10.C0(this.f1972h, this.f1978n ? J1.a.d(this.f1965a, C15879a.c.f122164T2) : 0);
            }
        }
    }

    @NonNull
    public final InsetDrawable J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f1967c, this.f1969e, this.f1968d, this.f1970f);
    }

    public final Drawable a() {
        C3567j c3567j = new C3567j(this.f1966b);
        c3567j.Y(this.f1965a.getContext());
        DrawableCompat.setTintList(c3567j, this.f1974j);
        PorterDuff.Mode mode = this.f1973i;
        if (mode != null) {
            DrawableCompat.setTintMode(c3567j, mode);
        }
        c3567j.D0(this.f1972h, this.f1975k);
        C3567j c3567j2 = new C3567j(this.f1966b);
        c3567j2.setTint(0);
        c3567j2.C0(this.f1972h, this.f1978n ? J1.a.d(this.f1965a, C15879a.c.f122164T2) : 0);
        if (f1964t) {
            C3567j c3567j3 = new C3567j(this.f1966b);
            this.f1977m = c3567j3;
            DrawableCompat.setTint(c3567j3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(b.d(this.f1976l), J(new LayerDrawable(new Drawable[]{c3567j2, c3567j})), this.f1977m);
            this.f1982r = rippleDrawable;
            return rippleDrawable;
        }
        Y1.a aVar = new Y1.a(this.f1966b);
        this.f1977m = aVar;
        DrawableCompat.setTintList(aVar, b.d(this.f1976l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c3567j2, c3567j, this.f1977m});
        this.f1982r = layerDrawable;
        return J(layerDrawable);
    }

    public int b() {
        return this.f1971g;
    }

    public int c() {
        return this.f1970f;
    }

    public int d() {
        return this.f1969e;
    }

    @Nullable
    public InterfaceC3576s e() {
        LayerDrawable layerDrawable = this.f1982r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f1982r.getNumberOfLayers() > 2 ? (InterfaceC3576s) this.f1982r.getDrawable(2) : (InterfaceC3576s) this.f1982r.getDrawable(1);
    }

    @Nullable
    public C3567j f() {
        return g(false);
    }

    @Nullable
    public final C3567j g(boolean z10) {
        LayerDrawable layerDrawable = this.f1982r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f1964t ? (C3567j) ((LayerDrawable) ((InsetDrawable) this.f1982r.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0) : (C3567j) this.f1982r.getDrawable(!z10 ? 1 : 0);
    }

    @Nullable
    public ColorStateList h() {
        return this.f1976l;
    }

    @NonNull
    public C3572o i() {
        return this.f1966b;
    }

    @Nullable
    public ColorStateList j() {
        return this.f1975k;
    }

    public int k() {
        return this.f1972h;
    }

    public ColorStateList l() {
        return this.f1974j;
    }

    public PorterDuff.Mode m() {
        return this.f1973i;
    }

    @Nullable
    public final C3567j n() {
        return g(true);
    }

    public boolean o() {
        return this.f1979o;
    }

    public boolean p() {
        return this.f1981q;
    }

    public void q(@NonNull TypedArray typedArray) {
        this.f1967c = typedArray.getDimensionPixelOffset(C15879a.o.f125051Hk, 0);
        this.f1968d = typedArray.getDimensionPixelOffset(C15879a.o.f125075Ik, 0);
        this.f1969e = typedArray.getDimensionPixelOffset(C15879a.o.f125099Jk, 0);
        this.f1970f = typedArray.getDimensionPixelOffset(C15879a.o.f125123Kk, 0);
        int i10 = C15879a.o.f125219Ok;
        if (typedArray.hasValue(i10)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i10, -1);
            this.f1971g = dimensionPixelSize;
            y(this.f1966b.w(dimensionPixelSize));
            this.f1980p = true;
        }
        this.f1972h = typedArray.getDimensionPixelSize(C15879a.o.f125508al, 0);
        this.f1973i = A.k(typedArray.getInt(C15879a.o.f125195Nk, -1), PorterDuff.Mode.SRC_IN);
        this.f1974j = c.a(this.f1965a.getContext(), typedArray, C15879a.o.f125171Mk);
        this.f1975k = c.a(this.f1965a.getContext(), typedArray, C15879a.o.f125483Zk);
        this.f1976l = c.a(this.f1965a.getContext(), typedArray, C15879a.o.f125411Wk);
        this.f1981q = typedArray.getBoolean(C15879a.o.f125147Lk, false);
        this.f1983s = typedArray.getDimensionPixelSize(C15879a.o.f125243Pk, 0);
        int paddingStart = ViewCompat.getPaddingStart(this.f1965a);
        int paddingTop = this.f1965a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f1965a);
        int paddingBottom = this.f1965a.getPaddingBottom();
        if (typedArray.hasValue(C15879a.o.f125027Gk)) {
            s();
        } else {
            F();
        }
        ViewCompat.setPaddingRelative(this.f1965a, paddingStart + this.f1967c, paddingTop + this.f1969e, paddingEnd + this.f1968d, paddingBottom + this.f1970f);
    }

    public void r(int i10) {
        if (f() != null) {
            f().setTint(i10);
        }
    }

    public void s() {
        this.f1979o = true;
        this.f1965a.setSupportBackgroundTintList(this.f1974j);
        this.f1965a.setSupportBackgroundTintMode(this.f1973i);
    }

    public void t(boolean z10) {
        this.f1981q = z10;
    }

    public void u(int i10) {
        if (this.f1980p && this.f1971g == i10) {
            return;
        }
        this.f1971g = i10;
        this.f1980p = true;
        y(this.f1966b.w(i10));
    }

    public void v(@Dimension int i10) {
        E(this.f1969e, i10);
    }

    public void w(@Dimension int i10) {
        E(i10, this.f1970f);
    }

    public void x(@Nullable ColorStateList colorStateList) {
        if (this.f1976l != colorStateList) {
            this.f1976l = colorStateList;
            boolean z10 = f1964t;
            if (z10 && (this.f1965a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f1965a.getBackground()).setColor(b.d(colorStateList));
            } else {
                if (z10 || !(this.f1965a.getBackground() instanceof Y1.a)) {
                    return;
                }
                ((Y1.a) this.f1965a.getBackground()).setTintList(b.d(colorStateList));
            }
        }
    }

    public void y(@NonNull C3572o c3572o) {
        this.f1966b = c3572o;
        G(c3572o);
    }

    public void z(boolean z10) {
        this.f1978n = z10;
        I();
    }
}
