package li;

import fi.C13228d;
import hi.C13481E;
import hi.C13482F;
import hi.C13492e;
import hi.s0;
import java.util.ArrayList;
import oh.InterfaceC14516g;
import org.bouncycastle.util.r;

public class C14140b implements r {

    public final InterfaceC14516g f96464b;

    public C14140b(C13228d c13228d) {
        this.f96464b = new s0(new C13482F(new C13481E(c13228d)));
    }

    private boolean b(C13228d c13228d, C13482F c13482f) {
        C13481E[] y10 = c13482f.y();
        for (int i10 = 0; i10 != y10.length; i10++) {
            C13481E c13481e = y10[i10];
            if (c13481e.g() == 4 && C13228d.x(c13481e.x()).equals(c13228d)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean Z2(Object obj) {
        if (!(obj instanceof C14146h)) {
            return false;
        }
        C14146h c14146h = (C14146h) obj;
        InterfaceC14516g interfaceC14516g = this.f96464b;
        if (interfaceC14516g instanceof s0) {
            s0 s0Var = (s0) interfaceC14516g;
            if (s0Var.u() != null) {
                return s0Var.u().z().L(c14146h.i()) && b(c14146h.e(), s0Var.u().x());
            }
            if (b(c14146h.l(), s0Var.x())) {
                return true;
            }
        } else {
            if (b(c14146h.l(), (C13482F) interfaceC14516g)) {
                return true;
            }
        }
        return false;
    }

    public C13228d[] a() {
        InterfaceC14516g interfaceC14516g = this.f96464b;
        C13481E[] y10 = (interfaceC14516g instanceof s0 ? ((s0) interfaceC14516g).x() : (C13482F) interfaceC14516g).y();
        ArrayList arrayList = new ArrayList(y10.length);
        for (int i10 = 0; i10 != y10.length; i10++) {
            if (y10[i10].g() == 4) {
                arrayList.add(C13228d.x(y10[i10].x()));
            }
        }
        return (C13228d[]) arrayList.toArray(new C13228d[arrayList.size()]);
    }

    @Override
    public Object clone() {
        return new C14140b(C13492e.u(this.f96464b));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14140b) {
            return this.f96464b.equals(((C14140b) obj).f96464b);
        }
        return false;
    }

    public int hashCode() {
        return this.f96464b.hashCode();
    }

    public C14140b(C13492e c13492e) {
        this.f96464b = c13492e.x();
    }
}
