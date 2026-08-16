package Ih;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class d extends AbstractC14545v implements c {

    public static final int f9443f = 16;

    public C14539s f9444b;

    public C13486b f9445c;

    public b[] f9446d;

    public e f9447e;

    public d(C13486b c13486b, b[] bVarArr) {
        this.f9444b = new C14539s(0L);
        this.f9444b = new C14539s(0L);
        this.f9445c = c13486b;
        this.f9446d = v(bVarArr);
        u(bVarArr.length);
    }

    public static d z(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    public int A() {
        return this.f9444b.O();
    }

    public e B() {
        return this.f9447e;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f9444b);
        c14518h.a(this.f9445c);
        c14518h.a(new G0(this.f9446d));
        e eVar = this.f9447e;
        if (eVar != null) {
            c14518h.a(eVar);
        }
        return new G0(c14518h);
    }

    public final void u(int i10) {
        if (i10 < 2 || i10 > 16) {
            throw new IllegalArgumentException("wrong size in DataGroupHashValues : not in (2..16)");
        }
    }

    public final b[] v(b[] bVarArr) {
        int length = bVarArr.length;
        b[] bVarArr2 = new b[length];
        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
        return bVarArr2;
    }

    public b[] x() {
        return v(this.f9446d);
    }

    public C13486b y() {
        return this.f9445c;
    }

    public d(C13486b c13486b, b[] bVarArr, e eVar) {
        this.f9444b = new C14539s(0L);
        this.f9444b = new C14539s(1L);
        this.f9445c = c13486b;
        this.f9446d = v(bVarArr);
        this.f9447e = eVar;
        u(bVarArr.length);
    }

    public d(E e10) {
        this.f9444b = new C14539s(0L);
        if (e10 == null || e10.size() == 0) {
            throw new IllegalArgumentException("null or empty sequence passed.");
        }
        Enumeration J10 = e10.J();
        this.f9444b = C14539s.F(J10.nextElement());
        this.f9445c = C13486b.v(J10.nextElement());
        E G10 = E.G(J10.nextElement());
        if (this.f9444b.J(1)) {
            this.f9447e = e.u(J10.nextElement());
        }
        u(G10.size());
        this.f9446d = new b[G10.size()];
        for (int i10 = 0; i10 < G10.size(); i10++) {
            this.f9446d[i10] = b.w(G10.I(i10));
        }
    }
}
