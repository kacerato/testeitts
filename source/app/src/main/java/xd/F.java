package Xd;

import Zd.InterfaceC3467z;
import ee.InterfaceC13080v;
import he.InterfaceC13468x;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class F implements InterfaceC13080v, Serializable {

    public static final long f28307f = 1978198479659022715L;

    public final InterfaceC13080v f28308b;

    public final Object f28309c;

    public transient InterfaceC13969c f28310d = null;

    public transient Sd.h f28311e = null;

    public F(InterfaceC13080v interfaceC13080v) {
        interfaceC13080v.getClass();
        this.f28308b = interfaceC13080v;
        this.f28309c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28309c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28309c) {
            A10 = this.f28308b.A(d10);
        }
        return A10;
    }

    @Override
    public boolean L2(InterfaceC13468x interfaceC13468x) {
        boolean L22;
        synchronized (this.f28309c) {
            L22 = this.f28308b.L2(interfaceC13468x);
        }
        return L22;
    }

    @Override
    public long O2(double d10, long j10) {
        long O22;
        synchronized (this.f28309c) {
            O22 = this.f28308b.O2(d10, j10);
        }
        return O22;
    }

    @Override
    public boolean Oa(double d10, long j10) {
        boolean Oa2;
        synchronized (this.f28309c) {
            Oa2 = this.f28308b.Oa(d10, j10);
        }
        return Oa2;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28309c) {
            R10 = this.f28308b.R(j10);
        }
        return R10;
    }

    @Override
    public long U4(double d10, long j10, long j11) {
        long U42;
        synchronized (this.f28309c) {
            U42 = this.f28308b.U4(d10, j10, j11);
        }
        return U42;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28309c) {
            W10 = this.f28308b.W(dArr);
        }
        return W10;
    }

    @Override
    public long Y8(double d10, long j10) {
        long Y82;
        synchronized (this.f28309c) {
            Y82 = this.f28308b.Y8(d10, j10);
        }
        return Y82;
    }

    @Override
    public long a(double d10) {
        long a10;
        synchronized (this.f28309c) {
            a10 = this.f28308b.a(d10);
        }
        return a10;
    }

    @Override
    public void clear() {
        synchronized (this.f28309c) {
            this.f28308b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28309c) {
            equals = this.f28308b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28309c) {
            g02 = this.f28308b.g0(jArr);
        }
        return g02;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28309c) {
            this.f28308b.h(fVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28309c) {
            hashCode = this.f28308b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28308b.i();
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28309c) {
            increment = this.f28308b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28309c) {
            isEmpty = this.f28308b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3467z iterator() {
        return this.f28308b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28309c) {
            j10 = this.f28308b.j();
        }
        return j10;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28309c) {
            try {
                if (this.f28311e == null) {
                    this.f28311e = new C3276i0(this.f28308b.k(), this.f28309c);
                }
                hVar = this.f28311e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28309c) {
            k02 = this.f28308b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28309c) {
            try {
                if (this.f28310d == null) {
                    this.f28310d = new H(this.f28308b.keySet(), this.f28309c);
                }
                interfaceC13969c = this.f28310d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28308b.l();
    }

    @Override
    public boolean oc(InterfaceC13468x interfaceC13468x) {
        boolean oc2;
        synchronized (this.f28309c) {
            oc2 = this.f28308b.oc(interfaceC13468x);
        }
        return oc2;
    }

    @Override
    public long p0(double d10) {
        long p02;
        synchronized (this.f28309c) {
            p02 = this.f28308b.p0(d10);
        }
        return p02;
    }

    @Override
    public void pe(InterfaceC13080v interfaceC13080v) {
        synchronized (this.f28309c) {
            this.f28308b.pe(interfaceC13080v);
        }
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Long> map) {
        synchronized (this.f28309c) {
            this.f28308b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28309c) {
            size = this.f28308b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28309c) {
            obj = this.f28308b.toString();
        }
        return obj;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28309c) {
            values = this.f28308b.values();
        }
        return values;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28309c) {
            x10 = this.f28308b.x(b0Var);
        }
        return x10;
    }

    public F(InterfaceC13080v interfaceC13080v, Object obj) {
        this.f28308b = interfaceC13080v;
        this.f28309c = obj;
    }
}
