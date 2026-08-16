package Mh;

import hi.C13481E;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class b extends AbstractC14545v {

    public C13481E f15269b;

    public E f15270c;

    public b(C13481E c13481e, E e10) {
        this.f15269b = c13481e;
        this.f15270c = e10;
    }

    public static b w(Object obj) {
        if (obj == null || (obj instanceof b)) {
            return (b) obj;
        }
        if (obj instanceof E) {
            return new b((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        C13481E c13481e = this.f15269b;
        if (c13481e != null) {
            c14518h.a(c13481e);
        }
        c14518h.a(this.f15270c);
        return new G0(c14518h);
    }

    public C13481E u() {
        return this.f15269b;
    }

    public c[] v() {
        c[] cVarArr = new c[this.f15270c.size()];
        Enumeration J10 = this.f15270c.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            cVarArr[i10] = c.v(J10.nextElement());
            i10++;
        }
        return cVarArr;
    }

    public b(E e10) {
        InterfaceC14516g I10;
        int size = e10.size();
        if (size == 1) {
            I10 = e10.I(0);
        } else {
            if (size != 2) {
                throw new IllegalArgumentException("Bad sequence size: " + e10.size());
            }
            this.f15269b = C13481E.v(e10.I(0));
            I10 = e10.I(1);
        }
        this.f15270c = E.G(I10);
    }
}
