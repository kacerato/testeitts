package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class M0 implements ee.k0, Serializable {

    public static final long f28371f = 1978198479659022715L;

    public final ee.k0 f28372b;

    public final Object f28373c;

    public transient InterfaceC13973g f28374d = null;

    public transient Sd.h f28375e = null;

    public M0(ee.k0 k0Var) {
        k0Var.getClass();
        this.f28372b = k0Var;
        this.f28373c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28373c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public long C3(short s10, long j10) {
        long C32;
        synchronized (this.f28373c) {
            C32 = this.f28372b.C3(s10, j10);
        }
        return C32;
    }

    @Override
    public boolean Hc(he.r0 r0Var) {
        boolean Hc2;
        synchronized (this.f28373c) {
            Hc2 = this.f28372b.Hc(r0Var);
        }
        return Hc2;
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28373c) {
            I02 = this.f28372b.I0(s10);
        }
        return I02;
    }

    @Override
    public long N9(short s10, long j10, long j11) {
        long N92;
        synchronized (this.f28373c) {
            N92 = this.f28372b.N9(s10, j10, j11);
        }
        return N92;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28373c) {
            R10 = this.f28372b.R(j10);
        }
        return R10;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28373c) {
            Y10 = this.f28372b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public void Z2(ee.k0 k0Var) {
        synchronized (this.f28373c) {
            this.f28372b.Z2(k0Var);
        }
    }

    @Override
    public boolean c8(short s10, long j10) {
        boolean c82;
        synchronized (this.f28373c) {
            c82 = this.f28372b.c8(s10, j10);
        }
        return c82;
    }

    @Override
    public void clear() {
        synchronized (this.f28373c) {
            this.f28372b.clear();
        }
    }

    @Override
    public long d(short s10) {
        long d10;
        synchronized (this.f28373c) {
            d10 = this.f28372b.d(s10);
        }
        return d10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28373c) {
            equals = this.f28372b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28373c) {
            g02 = this.f28372b.g0(jArr);
        }
        return g02;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28373c) {
            this.f28372b.h(fVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28373c) {
            hashCode = this.f28372b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28372b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28373c) {
            isEmpty = this.f28372b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.t0 iterator() {
        return this.f28372b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28373c) {
            j10 = this.f28372b.j();
        }
        return j10;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28373c) {
            try {
                if (this.f28375e == null) {
                    this.f28375e = new C3276i0(this.f28372b.k(), this.f28373c);
                }
                hVar = this.f28375e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28373c) {
            try {
                if (this.f28374d == null) {
                    this.f28374d = new O0(this.f28372b.keySet(), this.f28373c);
                }
                interfaceC13973g = this.f28374d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28372b.l();
    }

    @Override
    public long n0(short s10) {
        long n02;
        synchronized (this.f28373c) {
            n02 = this.f28372b.n0(s10);
        }
        return n02;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Long> map) {
        synchronized (this.f28373c) {
            this.f28372b.putAll(map);
        }
    }

    @Override
    public boolean ra(he.r0 r0Var) {
        boolean ra2;
        synchronized (this.f28373c) {
            ra2 = this.f28372b.ra(r0Var);
        }
        return ra2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28373c) {
            size = this.f28372b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28373c) {
            obj = this.f28372b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28373c) {
            v10 = this.f28372b.v(t0Var);
        }
        return v10;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28373c) {
            values = this.f28372b.values();
        }
        return values;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28373c) {
            x10 = this.f28372b.x(b0Var);
        }
        return x10;
    }

    @Override
    public long xa(short s10, long j10) {
        long xa2;
        synchronized (this.f28373c) {
            xa2 = this.f28372b.xa(s10, j10);
        }
        return xa2;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28373c) {
            z10 = this.f28372b.z(s10);
        }
        return z10;
    }

    public M0(ee.k0 k0Var, Object obj) {
        this.f28372b = k0Var;
        this.f28373c = obj;
    }
}
