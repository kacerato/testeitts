package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3282l0 implements ee.T, Serializable {

    public static final long f28529f = 1978198479659022715L;

    public final ee.T f28530b;

    public final Object f28531c;

    public transient InterfaceC13972f f28532d = null;

    public transient Sd.g f28533e = null;

    public C3282l0(ee.T t10) {
        t10.getClass();
        this.f28530b = t10;
        this.f28531c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28531c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean Cb(he.Y y10) {
        boolean Cb2;
        synchronized (this.f28531c) {
            Cb2 = this.f28530b.Cb(y10);
        }
        return Cb2;
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28531c) {
            E10 = this.f28530b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28531c) {
            H02 = this.f28530b.H0(j10);
        }
        return H02;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28531c) {
            Q10 = this.f28530b.Q(i10);
        }
        return Q10;
    }

    @Override
    public int Xb(long j10, int i10, int i11) {
        int Xb2;
        synchronized (this.f28531c) {
            Xb2 = this.f28530b.Xb(j10, i10, i11);
        }
        return Xb2;
    }

    @Override
    public boolean Y4(he.Y y10) {
        boolean Y42;
        synchronized (this.f28531c) {
            Y42 = this.f28530b.Y4(y10);
        }
        return Y42;
    }

    @Override
    public void clear() {
        synchronized (this.f28531c) {
            this.f28530b.clear();
        }
    }

    @Override
    public int e(long j10) {
        int e10;
        synchronized (this.f28531c) {
            e10 = this.f28530b.e(j10);
        }
        return e10;
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28531c) {
            e02 = this.f28530b.e0(iArr);
        }
        return e02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28531c) {
            equals = this.f28530b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28531c) {
            this.f28530b.f(eVar);
        }
    }

    @Override
    public boolean gb(long j10, int i10) {
        boolean gb2;
        synchronized (this.f28531c) {
            gb2 = this.f28530b.gb(j10, i10);
        }
        return gb2;
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28531c) {
            h02 = this.f28530b.h0(jArr);
        }
        return h02;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28531c) {
            hashCode = this.f28530b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28530b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28531c) {
            isEmpty = this.f28530b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.a0 iterator() {
        return this.f28530b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28531c) {
            j10 = this.f28530b.j();
        }
        return j10;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28531c) {
            try {
                if (this.f28533e == null) {
                    this.f28533e = new X(this.f28530b.k(), this.f28531c);
                }
                gVar = this.f28533e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28531c) {
            try {
                if (this.f28532d == null) {
                    this.f28532d = new C3290p0(this.f28530b.keySet(), this.f28531c);
                }
                interfaceC13972f = this.f28532d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28530b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28531c) {
            l02 = this.f28530b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28531c) {
            m02 = this.f28530b.m0(s10);
        }
        return m02;
    }

    @Override
    public void m3(ee.T t10) {
        synchronized (this.f28531c) {
            this.f28530b.m3(t10);
        }
    }

    @Override
    public int m7(long j10, int i10) {
        int m72;
        synchronized (this.f28531c) {
            m72 = this.f28530b.m7(j10, i10);
        }
        return m72;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Integer> map) {
        synchronized (this.f28531c) {
            this.f28530b.putAll(map);
        }
    }

    @Override
    public int sd(long j10, int i10) {
        int sd2;
        synchronized (this.f28531c) {
            sd2 = this.f28530b.sd(j10, i10);
        }
        return sd2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28531c) {
            size = this.f28530b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28531c) {
            obj = this.f28530b.toString();
        }
        return obj;
    }

    @Override
    public int u(long j10) {
        int u10;
        synchronized (this.f28531c) {
            u10 = this.f28530b.u(j10);
        }
        return u10;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28531c) {
            values = this.f28530b.values();
        }
        return values;
    }

    public C3282l0(ee.T t10, Object obj) {
        this.f28530b = t10;
        this.f28531c = obj;
    }
}
