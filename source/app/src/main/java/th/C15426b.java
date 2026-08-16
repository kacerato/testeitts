package th;

import hi.C13496h;
import hi.C13505q;
import java.io.IOException;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C15426b extends AbstractC14545v implements InterfaceC14514f {

    public C13505q f117554b;

    public int f117555c;

    public AbstractC14545v f117556d;

    public C15426b(int i10, AbstractC14545v abstractC14545v) {
        this.f117555c = i10;
        this.f117556d = abstractC14545v;
    }

    public static C15426b u(Object obj) {
        if (obj == null || (obj instanceof C15426b)) {
            return (C15426b) obj;
        }
        if (obj instanceof byte[]) {
            try {
                obj = oh.B.B((byte[]) obj);
            } catch (IOException unused) {
                throw new IllegalArgumentException("Invalid encoding in CMPCertificate");
            }
        }
        if (obj instanceof oh.E) {
            return new C15426b(C13505q.v(obj));
        }
        if (obj instanceof oh.M) {
            oh.M S10 = oh.M.S(obj, 128);
            return new C15426b(S10.g(), S10.L());
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    public static C15426b v(oh.M m10, boolean z10) {
        if (m10 == null) {
            return null;
        }
        if (z10) {
            return u(m10.O());
        }
        throw new IllegalArgumentException("tag must be explicit");
    }

    public C13505q A() {
        return this.f117554b;
    }

    public boolean B() {
        return this.f117554b != null;
    }

    @Override
    public oh.B r() {
        AbstractC14545v abstractC14545v = this.f117556d;
        return abstractC14545v != null ? new K0(true, this.f117555c, (InterfaceC14516g) abstractC14545v) : this.f117554b.r();
    }

    public AbstractC14545v x() {
        return this.f117556d;
    }

    public int y() {
        return this.f117555c;
    }

    public C13496h z() {
        return C13496h.v(this.f117556d);
    }

    public C15426b(C13496h c13496h) {
        this(1, c13496h);
    }

    public C15426b(C13505q c13505q) {
        if (c13505q.G() != 3) {
            throw new IllegalArgumentException("only version 3 certificates allowed");
        }
        this.f117554b = c13505q;
    }
}
