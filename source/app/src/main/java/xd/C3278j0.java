package Xd;

import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3278j0 implements ee.Q, Serializable {

    public static final long f28513f = 1978198479659022715L;

    public final ee.Q f28514b;

    public final Object f28515c;

    public transient InterfaceC13972f f28516d = null;

    public transient Sd.e f28517e = null;

    public C3278j0(ee.Q q10) {
        q10.getClass();
        this.f28514b = q10;
        this.f28515c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28515c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28515c) {
            E10 = this.f28514b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean G6(he.W w10) {
        boolean G62;
        synchronized (this.f28515c) {
            G62 = this.f28514b.G6(w10);
        }
        return G62;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28515c) {
            H02 = this.f28514b.H0(j10);
        }
        return H02;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28515c) {
            I10 = this.f28514b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28515c) {
            T10 = this.f28514b.T(d10);
        }
        return T10;
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28515c) {
            b02 = this.f28514b.b0(dArr);
        }
        return b02;
    }

    @Override
    public double c7(long j10, double d10, double d11) {
        double c72;
        synchronized (this.f28515c) {
            c72 = this.f28514b.c7(j10, d10, d11);
        }
        return c72;
    }

    @Override
    public void clear() {
        synchronized (this.f28515c) {
            this.f28514b.clear();
        }
    }

    @Override
    public double e(long j10) {
        double e10;
        synchronized (this.f28515c) {
            e10 = this.f28514b.e(j10);
        }
        return e10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28515c) {
            equals = this.f28514b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28515c) {
            h02 = this.f28514b.h0(jArr);
        }
        return h02;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28515c) {
            hashCode = this.f28514b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28514b.i();
    }

    @Override
    public void ie(ee.Q q10) {
        synchronized (this.f28515c) {
            this.f28514b.ie(q10);
        }
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28515c) {
            isEmpty = this.f28514b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.Y iterator() {
        return this.f28514b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28515c) {
            j10 = this.f28514b.j();
        }
        return j10;
    }

    @Override
    public double j7(long j10, double d10) {
        double j72;
        synchronized (this.f28515c) {
            j72 = this.f28514b.j7(j10, d10);
        }
        return j72;
    }

    @Override
    public boolean jb(long j10, double d10) {
        boolean jb2;
        synchronized (this.f28515c) {
            jb2 = this.f28514b.jb(j10, d10);
        }
        return jb2;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28515c) {
            try {
                if (this.f28517e == null) {
                    this.f28517e = new A(this.f28514b.k(), this.f28515c);
                }
                eVar = this.f28517e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28515c) {
            try {
                if (this.f28516d == null) {
                    this.f28516d = new C3290p0(this.f28514b.keySet(), this.f28515c);
                }
                interfaceC13972f = this.f28516d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28514b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28515c) {
            l02 = this.f28514b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28515c) {
            this.f28514b.p(cVar);
        }
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Double> map) {
        synchronized (this.f28515c) {
            this.f28514b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28515c) {
            size = this.f28514b.size();
        }
        return size;
    }

    @Override
    public boolean te(he.W w10) {
        boolean te2;
        synchronized (this.f28515c) {
            te2 = this.f28514b.te(w10);
        }
        return te2;
    }

    public String toString() {
        String obj;
        synchronized (this.f28515c) {
            obj = this.f28514b.toString();
        }
        return obj;
    }

    @Override
    public double u(long j10) {
        double u10;
        synchronized (this.f28515c) {
            u10 = this.f28514b.u(j10);
        }
        return u10;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28515c) {
            values = this.f28514b.values();
        }
        return values;
    }

    @Override
    public double xd(long j10, double d10) {
        double xd2;
        synchronized (this.f28515c) {
            xd2 = this.f28514b.xd(j10, d10);
        }
        return xd2;
    }

    public C3278j0(ee.Q q10, Object obj) {
        this.f28514b = q10;
        this.f28515c = obj;
    }
}
