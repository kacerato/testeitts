package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class O extends AbstractC14545v {

    public final C14539s[] f117528b;

    public final C14539s[] f117529c;

    public final F[] f117530d;

    public O(C14539s c14539s, C14539s c14539s2) {
        this(c14539s, c14539s2, null);
    }

    public static O w(Object obj) {
        if (obj instanceof O) {
            return (O) obj;
        }
        if (obj != null) {
            return new O(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(this.f117528b.length);
        for (int i10 = 0; i10 != this.f117528b.length; i10++) {
            C14518h c14518h2 = new C14518h(3);
            c14518h2.a(this.f117528b[i10]);
            c14518h2.a(this.f117529c[i10]);
            F f10 = this.f117530d[i10];
            if (f10 != null) {
                c14518h2.a(f10);
            }
            c14518h.a(new G0(c14518h2));
        }
        return new G0(c14518h);
    }

    public int size() {
        return this.f117528b.length;
    }

    public C14539s u(int i10) {
        return this.f117528b[i10];
    }

    public C14539s v(int i10) {
        return this.f117529c[i10];
    }

    public F x(int i10) {
        return this.f117530d[i10];
    }

    public O(C14539s c14539s, C14539s c14539s2, F f10) {
        this.f117528b = r1;
        this.f117529c = r2;
        this.f117530d = r0;
        C14539s[] c14539sArr = {c14539s};
        C14539s[] c14539sArr2 = {c14539s2};
        F[] fArr = {f10};
    }

    public O(oh.E e10) {
        this.f117528b = new C14539s[e10.size()];
        this.f117529c = new C14539s[e10.size()];
        this.f117530d = new F[e10.size()];
        for (int i10 = 0; i10 != e10.size(); i10++) {
            oh.E G10 = oh.E.G(e10.I(i10));
            this.f117528b[i10] = C14539s.F(G10.I(0));
            this.f117529c[i10] = C14539s.F(G10.I(1));
            if (G10.size() > 2) {
                this.f117530d[i10] = F.u(G10.I(2));
            }
        }
    }
}
