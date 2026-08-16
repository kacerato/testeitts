package Vh;

import hi.C13479C;
import hi.C13481E;
import hi.z0;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class q extends AbstractC14545v {

    public static final C14539s f27071g = new C14539s(0);

    public C14539s f27072b;

    public C13481E f27073c;

    public E f27074d;

    public C13479C f27075e;

    public boolean f27076f;

    public q(C13481E c13481e, E e10, C13479C c13479c) {
        this.f27072b = f27071g;
        this.f27073c = c13481e;
        this.f27074d = e10;
        this.f27075e = c13479c;
    }

    public static q u(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(E.G(obj));
        }
        return null;
    }

    public static q v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    public C14539s A() {
        return this.f27072b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        if (!this.f27072b.A(f27071g) || this.f27076f) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) this.f27072b));
        }
        C13481E c13481e = this.f27073c;
        if (c13481e != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) c13481e));
        }
        c14518h.a(this.f27074d);
        C13479C c13479c = this.f27075e;
        if (c13479c != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public C13479C x() {
        return this.f27075e;
    }

    public E y() {
        return this.f27074d;
    }

    public C13481E z() {
        return this.f27073c;
    }

    public q(C13481E c13481e, E e10, z0 z0Var) {
        this.f27072b = f27071g;
        this.f27073c = c13481e;
        this.f27074d = e10;
        this.f27075e = C13479C.C(z0Var);
    }

    public q(E e10) {
        int i10 = 0;
        if ((e10.I(0) instanceof M) && ((M) e10.I(0)).g() == 0) {
            this.f27076f = true;
            this.f27072b = C14539s.G((M) e10.I(0), true);
            i10 = 1;
        } else {
            this.f27072b = f27071g;
        }
        if (e10.I(i10) instanceof M) {
            this.f27073c = C13481E.w((M) e10.I(i10), true);
            i10++;
        }
        int i11 = i10 + 1;
        this.f27074d = (E) e10.I(i10);
        if (e10.size() == i10 + 2) {
            this.f27075e = C13479C.D((M) e10.I(i11), true);
        }
    }
}
