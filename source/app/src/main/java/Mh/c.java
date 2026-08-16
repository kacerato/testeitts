package Mh;

import hi.C13481E;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class c extends AbstractC14545v {

    public C13481E f15271b;

    public f f15272c;

    public E f15273d;

    public c(C13481E c13481e, f fVar, h[] hVarArr) {
        this.f15271b = c13481e;
        this.f15272c = fVar;
        this.f15273d = new G0(hVarArr);
    }

    public static c v(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (obj instanceof E) {
            return new c((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        C13481E c13481e = this.f15271b;
        if (c13481e != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13481e));
        }
        f fVar = this.f15272c;
        if (fVar != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) fVar));
        }
        c14518h.a(this.f15273d);
        return new G0(c14518h);
    }

    public C13481E u() {
        return this.f15271b;
    }

    public f x() {
        return this.f15272c;
    }

    public h[] y() {
        h[] hVarArr = new h[this.f15273d.size()];
        Enumeration J10 = this.f15273d.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            hVarArr[i10] = h.v(J10.nextElement());
            i10++;
        }
        return hVarArr;
    }

    public c(E e10) {
        if (e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
        if (interfaceC14516g instanceof M) {
            M m10 = (M) interfaceC14516g;
            int g10 = m10.g();
            if (g10 == 0) {
                this.f15271b = C13481E.w(m10, true);
            } else {
                if (g10 != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + m10.g());
                }
                this.f15272c = f.v(m10, true);
            }
            interfaceC14516g = (InterfaceC14516g) J10.nextElement();
        }
        if (interfaceC14516g instanceof M) {
            M m11 = (M) interfaceC14516g;
            if (m11.g() != 1) {
                throw new IllegalArgumentException("Bad tag number: " + m11.g());
            }
            this.f15272c = f.v(m11, true);
            interfaceC14516g = (InterfaceC14516g) J10.nextElement();
        }
        this.f15273d = E.G(interfaceC14516g);
        if (J10.hasMoreElements()) {
            throw new IllegalArgumentException("Bad object encountered: " + ((Object) J10.nextElement().getClass()));
        }
    }
}
