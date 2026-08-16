package a2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import w1.C15879a;

public class C3572o {

    public static final InterfaceC3561d f31750m = new C3570m(0.5f);

    public C3562e f31751a;

    public C3562e f31752b;

    public C3562e f31753c;

    public C3562e f31754d;

    public InterfaceC3561d f31755e;

    public InterfaceC3561d f31756f;

    public InterfaceC3561d f31757g;

    public InterfaceC3561d f31758h;

    public C3564g f31759i;

    public C3564g f31760j;

    public C3564g f31761k;

    public C3564g f31762l;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface c {
        @NonNull
        InterfaceC3561d a(@NonNull InterfaceC3561d interfaceC3561d);
    }

    @NonNull
    public static b a() {
        return new b();
    }

    @NonNull
    public static b b(Context context, @StyleRes int i10, @StyleRes int i11) {
        return c(context, i10, i11, 0);
    }

    @NonNull
    public static b c(Context context, @StyleRes int i10, @StyleRes int i11, int i12) {
        return d(context, i10, i11, new C3558a(i12));
    }

    @NonNull
    public static b d(Context context, @StyleRes int i10, @StyleRes int i11, @NonNull InterfaceC3561d interfaceC3561d) {
        if (i11 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
            i10 = i11;
            context = contextThemeWrapper;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i10, C15879a.o.oq);
        try {
            int i12 = obtainStyledAttributes.getInt(C15879a.o.pq, 0);
            int i13 = obtainStyledAttributes.getInt(C15879a.o.sq, i12);
            int i14 = obtainStyledAttributes.getInt(C15879a.o.tq, i12);
            int i15 = obtainStyledAttributes.getInt(C15879a.o.rq, i12);
            int i16 = obtainStyledAttributes.getInt(C15879a.o.qq, i12);
            InterfaceC3561d m10 = m(obtainStyledAttributes, C15879a.o.uq, interfaceC3561d);
            InterfaceC3561d m11 = m(obtainStyledAttributes, C15879a.o.xq, m10);
            InterfaceC3561d m12 = m(obtainStyledAttributes, C15879a.o.yq, m10);
            InterfaceC3561d m13 = m(obtainStyledAttributes, C15879a.o.wq, m10);
            return new b().I(i13, m11).N(i14, m12).A(i15, m13).v(i16, m(obtainStyledAttributes, C15879a.o.vq, m10));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static b e(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        return f(context, attributeSet, i10, i11, 0);
    }

    @NonNull
    public static b f(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11, int i12) {
        return g(context, attributeSet, i10, i11, new C3558a(i12));
    }

    @NonNull
    public static b g(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11, @NonNull InterfaceC3561d interfaceC3561d) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f125484Zl, i10, i11);
        int resourceId = obtainStyledAttributes.getResourceId(C15879a.o.f125509am, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(C15879a.o.f125534bm, 0);
        obtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, interfaceC3561d);
    }

    @NonNull
    public static InterfaceC3561d m(TypedArray typedArray, int i10, @NonNull InterfaceC3561d interfaceC3561d) {
        TypedValue peekValue = typedArray.peekValue(i10);
        if (peekValue == null) {
            return interfaceC3561d;
        }
        int i11 = peekValue.type;
        return i11 == 5 ? new C3558a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i11 == 6 ? new C3570m(peekValue.getFraction(1.0f, 1.0f)) : interfaceC3561d;
    }

    @NonNull
    public C3564g h() {
        return this.f31761k;
    }

    @NonNull
    public C3562e i() {
        return this.f31754d;
    }

    @NonNull
    public InterfaceC3561d j() {
        return this.f31758h;
    }

    @NonNull
    public C3562e k() {
        return this.f31753c;
    }

    @NonNull
    public InterfaceC3561d l() {
        return this.f31757g;
    }

    @NonNull
    public C3564g n() {
        return this.f31762l;
    }

    @NonNull
    public C3564g o() {
        return this.f31760j;
    }

    @NonNull
    public C3564g p() {
        return this.f31759i;
    }

    @NonNull
    public C3562e q() {
        return this.f31751a;
    }

    @NonNull
    public InterfaceC3561d r() {
        return this.f31755e;
    }

    @NonNull
    public C3562e s() {
        return this.f31752b;
    }

    @NonNull
    public InterfaceC3561d t() {
        return this.f31756f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean u(@NonNull RectF rectF) {
        boolean z10 = this.f31762l.getClass().equals(C3564g.class) && this.f31760j.getClass().equals(C3564g.class) && this.f31759i.getClass().equals(C3564g.class) && this.f31761k.getClass().equals(C3564g.class);
        float a10 = this.f31755e.a(rectF);
        return z10 && ((this.f31756f.a(rectF) > a10 ? 1 : (this.f31756f.a(rectF) == a10 ? 0 : -1)) == 0 && (this.f31758h.a(rectF) > a10 ? 1 : (this.f31758h.a(rectF) == a10 ? 0 : -1)) == 0 && (this.f31757g.a(rectF) > a10 ? 1 : (this.f31757g.a(rectF) == a10 ? 0 : -1)) == 0) && ((this.f31752b instanceof C3571n) && (this.f31751a instanceof C3571n) && (this.f31753c instanceof C3571n) && (this.f31754d instanceof C3571n));
    }

    @NonNull
    public b v() {
        return new b(this);
    }

    @NonNull
    public C3572o w(float f10) {
        return v().o(f10).m();
    }

    @NonNull
    public C3572o x(@NonNull InterfaceC3561d interfaceC3561d) {
        return v().p(interfaceC3561d).m();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public C3572o y(@NonNull c cVar) {
        return v().L(cVar.a(r())).Q(cVar.a(t())).y(cVar.a(j())).D(cVar.a(l())).m();
    }

    public C3572o(@NonNull b bVar) {
        this.f31751a = bVar.f31763a;
        this.f31752b = bVar.f31764b;
        this.f31753c = bVar.f31765c;
        this.f31754d = bVar.f31766d;
        this.f31755e = bVar.f31767e;
        this.f31756f = bVar.f31768f;
        this.f31757g = bVar.f31769g;
        this.f31758h = bVar.f31770h;
        this.f31759i = bVar.f31771i;
        this.f31760j = bVar.f31772j;
        this.f31761k = bVar.f31773k;
        this.f31762l = bVar.f31774l;
    }

    public static final class b {

        @NonNull
        public C3562e f31763a;

        @NonNull
        public C3562e f31764b;

        @NonNull
        public C3562e f31765c;

        @NonNull
        public C3562e f31766d;

        @NonNull
        public InterfaceC3561d f31767e;

        @NonNull
        public InterfaceC3561d f31768f;

        @NonNull
        public InterfaceC3561d f31769g;

        @NonNull
        public InterfaceC3561d f31770h;

        @NonNull
        public C3564g f31771i;

        @NonNull
        public C3564g f31772j;

        @NonNull
        public C3564g f31773k;

        @NonNull
        public C3564g f31774l;

        public b() {
            this.f31763a = C3568k.b();
            this.f31764b = C3568k.b();
            this.f31765c = C3568k.b();
            this.f31766d = C3568k.b();
            this.f31767e = new C3558a(0.0f);
            this.f31768f = new C3558a(0.0f);
            this.f31769g = new C3558a(0.0f);
            this.f31770h = new C3558a(0.0f);
            this.f31771i = C3568k.c();
            this.f31772j = C3568k.c();
            this.f31773k = C3568k.c();
            this.f31774l = C3568k.c();
        }

        public static float n(C3562e c3562e) {
            if (c3562e instanceof C3571n) {
                return ((C3571n) c3562e).f31749a;
            }
            if (c3562e instanceof C3563f) {
                return ((C3563f) c3562e).f31683a;
            }
            return -1.0f;
        }

        @NonNull
        public b A(int i10, @NonNull InterfaceC3561d interfaceC3561d) {
            return B(C3568k.a(i10)).D(interfaceC3561d);
        }

        @NonNull
        public b B(@NonNull C3562e c3562e) {
            this.f31765c = c3562e;
            float n10 = n(c3562e);
            if (n10 != -1.0f) {
                C(n10);
            }
            return this;
        }

        @NonNull
        public b C(@Dimension float f10) {
            this.f31769g = new C3558a(f10);
            return this;
        }

        @NonNull
        public b D(@NonNull InterfaceC3561d interfaceC3561d) {
            this.f31769g = interfaceC3561d;
            return this;
        }

        @NonNull
        public b E(@NonNull C3564g c3564g) {
            this.f31774l = c3564g;
            return this;
        }

        @NonNull
        public b F(@NonNull C3564g c3564g) {
            this.f31772j = c3564g;
            return this;
        }

        @NonNull
        public b G(@NonNull C3564g c3564g) {
            this.f31771i = c3564g;
            return this;
        }

        @NonNull
        public b H(int i10, @Dimension float f10) {
            return J(C3568k.a(i10)).K(f10);
        }

        @NonNull
        public b I(int i10, @NonNull InterfaceC3561d interfaceC3561d) {
            return J(C3568k.a(i10)).L(interfaceC3561d);
        }

        @NonNull
        public b J(@NonNull C3562e c3562e) {
            this.f31763a = c3562e;
            float n10 = n(c3562e);
            if (n10 != -1.0f) {
                K(n10);
            }
            return this;
        }

        @NonNull
        public b K(@Dimension float f10) {
            this.f31767e = new C3558a(f10);
            return this;
        }

        @NonNull
        public b L(@NonNull InterfaceC3561d interfaceC3561d) {
            this.f31767e = interfaceC3561d;
            return this;
        }

        @NonNull
        public b M(int i10, @Dimension float f10) {
            return O(C3568k.a(i10)).P(f10);
        }

        @NonNull
        public b N(int i10, @NonNull InterfaceC3561d interfaceC3561d) {
            return O(C3568k.a(i10)).Q(interfaceC3561d);
        }

        @NonNull
        public b O(@NonNull C3562e c3562e) {
            this.f31764b = c3562e;
            float n10 = n(c3562e);
            if (n10 != -1.0f) {
                P(n10);
            }
            return this;
        }

        @NonNull
        public b P(@Dimension float f10) {
            this.f31768f = new C3558a(f10);
            return this;
        }

        @NonNull
        public b Q(@NonNull InterfaceC3561d interfaceC3561d) {
            this.f31768f = interfaceC3561d;
            return this;
        }

        @NonNull
        public C3572o m() {
            return new C3572o(this);
        }

        @NonNull
        public b o(@Dimension float f10) {
            return K(f10).P(f10).C(f10).x(f10);
        }

        @NonNull
        public b p(@NonNull InterfaceC3561d interfaceC3561d) {
            return L(interfaceC3561d).Q(interfaceC3561d).D(interfaceC3561d).y(interfaceC3561d);
        }

        @NonNull
        public b q(int i10, @Dimension float f10) {
            return r(C3568k.a(i10)).o(f10);
        }

        @NonNull
        public b r(@NonNull C3562e c3562e) {
            return J(c3562e).O(c3562e).B(c3562e).w(c3562e);
        }

        @NonNull
        public b s(@NonNull C3564g c3564g) {
            return E(c3564g).G(c3564g).F(c3564g).t(c3564g);
        }

        @NonNull
        public b t(@NonNull C3564g c3564g) {
            this.f31773k = c3564g;
            return this;
        }

        @NonNull
        public b u(int i10, @Dimension float f10) {
            return w(C3568k.a(i10)).x(f10);
        }

        @NonNull
        public b v(int i10, @NonNull InterfaceC3561d interfaceC3561d) {
            return w(C3568k.a(i10)).y(interfaceC3561d);
        }

        @NonNull
        public b w(@NonNull C3562e c3562e) {
            this.f31766d = c3562e;
            float n10 = n(c3562e);
            if (n10 != -1.0f) {
                x(n10);
            }
            return this;
        }

        @NonNull
        public b x(@Dimension float f10) {
            this.f31770h = new C3558a(f10);
            return this;
        }

        @NonNull
        public b y(@NonNull InterfaceC3561d interfaceC3561d) {
            this.f31770h = interfaceC3561d;
            return this;
        }

        @NonNull
        public b z(int i10, @Dimension float f10) {
            return B(C3568k.a(i10)).C(f10);
        }

        public b(@NonNull C3572o c3572o) {
            this.f31763a = C3568k.b();
            this.f31764b = C3568k.b();
            this.f31765c = C3568k.b();
            this.f31766d = C3568k.b();
            this.f31767e = new C3558a(0.0f);
            this.f31768f = new C3558a(0.0f);
            this.f31769g = new C3558a(0.0f);
            this.f31770h = new C3558a(0.0f);
            this.f31771i = C3568k.c();
            this.f31772j = C3568k.c();
            this.f31773k = C3568k.c();
            this.f31774l = C3568k.c();
            this.f31763a = c3572o.f31751a;
            this.f31764b = c3572o.f31752b;
            this.f31765c = c3572o.f31753c;
            this.f31766d = c3572o.f31754d;
            this.f31767e = c3572o.f31755e;
            this.f31768f = c3572o.f31756f;
            this.f31769g = c3572o.f31757g;
            this.f31770h = c3572o.f31758h;
            this.f31771i = c3572o.f31759i;
            this.f31772j = c3572o.f31760j;
            this.f31773k = c3572o.f31761k;
            this.f31774l = c3572o.f31762l;
        }
    }

    public C3572o() {
        this.f31751a = C3568k.b();
        this.f31752b = C3568k.b();
        this.f31753c = C3568k.b();
        this.f31754d = C3568k.b();
        this.f31755e = new C3558a(0.0f);
        this.f31756f = new C3558a(0.0f);
        this.f31757g = new C3558a(0.0f);
        this.f31758h = new C3558a(0.0f);
        this.f31759i = C3568k.c();
        this.f31760j = C3568k.c();
        this.f31761k = C3568k.c();
        this.f31762l = C3568k.c();
    }
}
