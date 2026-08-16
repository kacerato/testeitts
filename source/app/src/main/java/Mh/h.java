package Mh;

import fi.C13226b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.F0;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class h extends AbstractC14545v {

    public static final C14549x f15289g;

    public static final C14549x f15290h;

    public static final C14549x f15291i;

    public static final C14549x f15292j;

    public static final C14549x f15293k;

    public static final C14549x f15294l;

    public static final C14549x f15295m;

    public static final C14549x f15296n;

    public static final C14549x f15297o;

    public static final C14549x f15298p;

    public static final C14549x f15299q;

    public static final C14549x f15300r;

    public static final C14549x f15301s;

    public static final C14549x f15302t;

    public static final C14549x f15303u;

    public static final C14549x f15304v;

    public static final C14549x f15305w;

    public static final C14549x f15306x;

    public static final C14549x f15307y;

    public f f15308b;

    public E f15309c;

    public E f15310d;

    public String f15311e;

    public AbstractC14551y f15312f;

    static {
        StringBuilder sb2 = new StringBuilder();
        C14549x c14549x = f.f15281e;
        sb2.append((Object) c14549x);
        sb2.append(".1");
        f15289g = new C14549x(sb2.toString());
        f15290h = new C14549x(((Object) c14549x) + ".2");
        f15291i = new C14549x(((Object) c14549x) + ".3");
        f15292j = new C14549x(((Object) c14549x) + ".4");
        f15293k = new C14549x(((Object) c14549x) + ".5");
        f15294l = new C14549x(((Object) c14549x) + ".6");
        f15295m = new C14549x(((Object) c14549x) + ".7");
        f15296n = new C14549x(((Object) c14549x) + ".8");
        f15297o = new C14549x(((Object) c14549x) + ".9");
        f15298p = new C14549x(((Object) c14549x) + ".10");
        f15299q = new C14549x(((Object) c14549x) + ".11");
        f15300r = new C14549x(((Object) c14549x) + ".12");
        f15301s = new C14549x(((Object) c14549x) + ".13");
        f15302t = new C14549x(((Object) c14549x) + ".14");
        f15303u = new C14549x(((Object) c14549x) + ".15");
        f15304v = new C14549x(((Object) c14549x) + ".16");
        f15305w = new C14549x(((Object) c14549x) + ".17");
        f15306x = new C14549x(((Object) c14549x) + ".18");
        f15307y = new C14549x(((Object) c14549x) + ".19");
    }

    public h(f fVar, C13226b[] c13226bArr, C14549x[] c14549xArr, String str, AbstractC14551y abstractC14551y) {
        this.f15308b = fVar;
        this.f15309c = new G0(c13226bArr);
        if (c14549xArr != null) {
            this.f15310d = new G0(c14549xArr);
        }
        this.f15311e = str;
        this.f15312f = abstractC14551y;
    }

    public static h v(Object obj) {
        if (obj == null || (obj instanceof h)) {
            return (h) obj;
        }
        if (obj instanceof E) {
            return new h((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public String A() {
        return this.f15311e;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(5);
        f fVar = this.f15308b;
        if (fVar != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) fVar));
        }
        c14518h.a(this.f15309c);
        E e10 = this.f15310d;
        if (e10 != null) {
            c14518h.a(e10);
        }
        if (this.f15311e != null) {
            c14518h.a(new F0(this.f15311e, true));
        }
        AbstractC14551y abstractC14551y = this.f15312f;
        if (abstractC14551y != null) {
            c14518h.a(abstractC14551y);
        }
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f15312f;
    }

    public f x() {
        return this.f15308b;
    }

    public C13226b[] y() {
        C13226b[] c13226bArr = new C13226b[this.f15309c.size()];
        Enumeration J10 = this.f15309c.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            c13226bArr[i10] = C13226b.u(J10.nextElement());
            i10++;
        }
        return c13226bArr;
    }

    public C14549x[] z() {
        E e10 = this.f15310d;
        int i10 = 0;
        if (e10 == null) {
            return new C14549x[0];
        }
        C14549x[] c14549xArr = new C14549x[e10.size()];
        Enumeration J10 = this.f15310d.J();
        while (J10.hasMoreElements()) {
            c14549xArr[i10] = C14549x.K(J10.nextElement());
            i10++;
        }
        return c14549xArr;
    }

    public h(E e10) {
        if (e10.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
        if (interfaceC14516g instanceof M) {
            M m10 = (M) interfaceC14516g;
            if (m10.g() != 0) {
                throw new IllegalArgumentException("Bad tag number: " + m10.g());
            }
            this.f15308b = f.v(m10, true);
            interfaceC14516g = (InterfaceC14516g) J10.nextElement();
        }
        this.f15309c = E.G(interfaceC14516g);
        if (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g2 = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g2 instanceof E) {
                this.f15310d = E.G(interfaceC14516g2);
            } else if (interfaceC14516g2 instanceof C) {
                this.f15311e = C.F(interfaceC14516g2).getString();
            } else {
                if (!(interfaceC14516g2 instanceof AbstractC14551y)) {
                    throw new IllegalArgumentException("Bad object encountered: " + ((Object) interfaceC14516g2.getClass()));
                }
                this.f15312f = AbstractC14551y.F(interfaceC14516g2);
            }
        }
        if (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g3 = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g3 instanceof C) {
                this.f15311e = C.F(interfaceC14516g3).getString();
            } else {
                if (!(interfaceC14516g3 instanceof C0)) {
                    throw new IllegalArgumentException("Bad object encountered: " + ((Object) interfaceC14516g3.getClass()));
                }
                this.f15312f = (C0) interfaceC14516g3;
            }
        }
        if (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g4 = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g4 instanceof C0) {
                this.f15312f = (C0) interfaceC14516g4;
                return;
            }
            throw new IllegalArgumentException("Bad object encountered: " + ((Object) interfaceC14516g4.getClass()));
        }
    }
}
