package Mh;

import fi.C13226b;
import hi.C13481E;
import hi.K;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C;
import oh.C14518h;
import oh.E;
import oh.F0;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class g extends AbstractC14545v {

    public String f15285b;

    public C13226b f15286c;

    public C13481E f15287d;

    public K f15288e;

    public g(String str, C13226b c13226b, C13481E c13481e) {
        this.f15285b = str;
        this.f15286c = c13226b;
        this.f15287d = c13481e;
        this.f15288e = null;
    }

    public static g w(Object obj) {
        if (obj == null || (obj instanceof g)) {
            return (g) obj;
        }
        if (obj instanceof E) {
            return new g((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        if (this.f15285b != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) new F0(this.f15285b, true)));
        }
        C13226b c13226b = this.f15286c;
        if (c13226b != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) c13226b));
        }
        C13481E c13481e = this.f15287d;
        if (c13481e != null) {
            c14518h.a(new K0(true, 3, (InterfaceC14516g) c13481e));
        } else {
            c14518h.a(new K0(true, 3, (InterfaceC14516g) this.f15288e));
        }
        return new G0(c14518h);
    }

    public K u() {
        return this.f15288e;
    }

    public String v() {
        return this.f15285b;
    }

    public C13481E x() {
        return this.f15287d;
    }

    public C13226b y() {
        return this.f15286c;
    }

    public g(String str, C13226b c13226b, K k10) {
        this.f15285b = str;
        this.f15286c = c13226b;
        this.f15287d = null;
        this.f15288e = k10;
    }

    public g(E e10) {
        if (e10.size() < 1 || e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M S10 = M.S(J10.nextElement(), 128);
            int g10 = S10.g();
            if (g10 == 1) {
                this.f15285b = C.G(S10, true).getString();
            } else if (g10 == 2) {
                this.f15286c = C13226b.v(S10, true);
            } else {
                if (g10 != 3) {
                    throw new IllegalArgumentException("Bad tag number: " + S10.g());
                }
                AbstractC14545v O10 = S10.O();
                if (O10 instanceof M) {
                    this.f15287d = C13481E.v(O10);
                } else {
                    this.f15288e = K.u(O10);
                }
            }
        }
    }
}
