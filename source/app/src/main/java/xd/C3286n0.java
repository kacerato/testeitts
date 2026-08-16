package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3286n0 implements ee.U, Serializable {

    public static final long f28546f = 1978198479659022715L;

    public final ee.U f28547b;

    public final Object f28548c;

    public transient InterfaceC13972f f28549d = null;

    public transient Sd.h f28550e = null;

    public C3286n0(ee.U u10) {
        u10.getClass();
        this.f28547b = u10;
        this.f28548c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28548c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28548c) {
            E10 = this.f28547b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean G5(he.Z z10) {
        boolean G52;
        synchronized (this.f28548c) {
            G52 = this.f28547b.G5(z10);
        }
        return G52;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28548c) {
            H02 = this.f28547b.H0(j10);
        }
        return H02;
    }

    @Override
    public boolean P5(he.Z z10) {
        boolean P52;
        synchronized (this.f28548c) {
            P52 = this.f28547b.P5(z10);
        }
        return P52;
    }

    @Override
    public long Pc(long j10, long j11) {
        long Pc2;
        synchronized (this.f28548c) {
            Pc2 = this.f28547b.Pc(j10, j11);
        }
        return Pc2;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28548c) {
            R10 = this.f28547b.R(j10);
        }
        return R10;
    }

    @Override
    public void clear() {
        synchronized (this.f28548c) {
            this.f28547b.clear();
        }
    }

    @Override
    public long e(long j10) {
        long e10;
        synchronized (this.f28548c) {
            e10 = this.f28547b.e(j10);
        }
        return e10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28548c) {
            equals = this.f28547b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28548c) {
            g02 = this.f28547b.g0(jArr);
        }
        return g02;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28548c) {
            this.f28547b.h(fVar);
        }
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28548c) {
            h02 = this.f28547b.h0(jArr);
        }
        return h02;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28548c) {
            hashCode = this.f28547b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28547b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28548c) {
            isEmpty = this.f28547b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.c0 iterator() {
        return this.f28547b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28548c) {
            j10 = this.f28547b.j();
        }
        return j10;
    }

    @Override
    public long jc(long j10, long j11, long j12) {
        long jc2;
        synchronized (this.f28548c) {
            jc2 = this.f28547b.jc(j10, j11, j12);
        }
        return jc2;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28548c) {
            try {
                if (this.f28550e == null) {
                    this.f28550e = new C3276i0(this.f28547b.k(), this.f28548c);
                }
                hVar = this.f28550e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28548c) {
            try {
                if (this.f28549d == null) {
                    this.f28549d = new C3290p0(this.f28547b.keySet(), this.f28548c);
                }
                interfaceC13972f = this.f28549d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28547b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28548c) {
            l02 = this.f28547b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public long n7(long j10, long j11) {
        long n72;
        synchronized (this.f28548c) {
            n72 = this.f28547b.n7(j10, j11);
        }
        return n72;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Long> map) {
        synchronized (this.f28548c) {
            this.f28547b.putAll(map);
        }
    }

    @Override
    public boolean rb(long j10, long j11) {
        boolean rb2;
        synchronized (this.f28548c) {
            rb2 = this.f28547b.rb(j10, j11);
        }
        return rb2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28548c) {
            size = this.f28547b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28548c) {
            obj = this.f28547b.toString();
        }
        return obj;
    }

    @Override
    public long u(long j10) {
        long u10;
        synchronized (this.f28548c) {
            u10 = this.f28547b.u(j10);
        }
        return u10;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28548c) {
            values = this.f28547b.values();
        }
        return values;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28548c) {
            x10 = this.f28547b.x(b0Var);
        }
        return x10;
    }

    @Override
    public void zd(ee.U u10) {
        synchronized (this.f28548c) {
            this.f28547b.zd(u10);
        }
    }

    public C3286n0(ee.U u10, Object obj) {
        this.f28547b = u10;
        this.f28548c = obj;
    }
}
