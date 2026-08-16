package hi;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.K0;

public class C13506s extends AbstractC14545v {

    public C13505q f90911b;

    public C13505q f90912c;

    public C13506s(C13505q c13505q, C13505q c13505q2) {
        this.f90911b = c13505q;
        this.f90912c = c13505q2;
    }

    public static C13506s v(Object obj) {
        if (obj == null || (obj instanceof C13506s)) {
            return (C13506s) obj;
        }
        if (obj instanceof oh.E) {
            return new C13506s((oh.E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C13505q c13505q = this.f90911b;
        if (c13505q != null) {
            c14518h.a(new K0(0, c13505q));
        }
        C13505q c13505q2 = this.f90912c;
        if (c13505q2 != null) {
            c14518h.a(new K0(1, c13505q2));
        }
        return new G0(c14518h);
    }

    public C13505q u() {
        return this.f90911b;
    }

    public C13505q x() {
        return this.f90912c;
    }

    public C13506s(oh.E e10) {
        if (e10.size() != 1 && e10.size() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            oh.M R10 = oh.M.R(J10.nextElement());
            if (R10.g() == 0) {
                this.f90911b = C13505q.w(R10, true);
            } else {
                if (R10.g() != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + R10.g());
                }
                this.f90912c = C13505q.w(R10, true);
            }
        }
    }
}
