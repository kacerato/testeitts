package hi;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class l0 extends AbstractC14545v implements InterfaceC14514f {

    public static final int f90849d = 0;

    public static final int f90850e = 1;

    public C13481E f90851b;

    public C13481E f90852c;

    public l0(int i10, C13481E c13481e) {
        this(new K0(i10, c13481e));
    }

    public static l0 u(Object obj) {
        if (obj == null || (obj instanceof l0)) {
            return (l0) obj;
        }
        if (obj instanceof oh.M) {
            return new l0((oh.M) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + ((Object) obj.getClass()));
    }

    @Override
    public oh.B r() {
        C13481E c13481e = this.f90851b;
        return c13481e != null ? new K0(true, 0, (InterfaceC14516g) c13481e) : new K0(true, 1, (InterfaceC14516g) this.f90852c);
    }

    public C13481E v() {
        return this.f90852c;
    }

    public C13481E x() {
        return this.f90851b;
    }

    public l0(oh.M m10) {
        int g10 = m10.g();
        if (g10 == 0) {
            this.f90851b = C13481E.w(m10, true);
        } else {
            if (g10 == 1) {
                this.f90852c = C13481E.w(m10, true);
                return;
            }
            throw new IllegalArgumentException("unknown tag: " + m10.g());
        }
    }
}
