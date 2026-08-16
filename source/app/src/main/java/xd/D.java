package Xd;

import Zd.InterfaceC3465x;
import ee.InterfaceC13079u;
import he.InterfaceC13467w;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class D implements InterfaceC13079u, Serializable {

    public static final long f28298f = 1978198479659022715L;

    public final InterfaceC13079u f28299b;

    public final Object f28300c;

    public transient InterfaceC13969c f28301d = null;

    public transient Sd.g f28302e = null;

    public D(InterfaceC13079u interfaceC13079u) {
        interfaceC13079u.getClass();
        this.f28299b = interfaceC13079u;
        this.f28300c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28300c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28300c) {
            A10 = this.f28299b.A(d10);
        }
        return A10;
    }

    @Override
    public int N2(double d10, int i10) {
        int N22;
        synchronized (this.f28300c) {
            N22 = this.f28299b.N2(d10, i10);
        }
        return N22;
    }

    @Override
    public int N4(double d10, int i10, int i11) {
        int N42;
        synchronized (this.f28300c) {
            N42 = this.f28299b.N4(d10, i10, i11);
        }
        return N42;
    }

    @Override
    public boolean Pa(double d10, int i10) {
        boolean Pa2;
        synchronized (this.f28300c) {
            Pa2 = this.f28299b.Pa(d10, i10);
        }
        return Pa2;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28300c) {
            Q10 = this.f28299b.Q(i10);
        }
        return Q10;
    }

    @Override
    public boolean S5(InterfaceC13467w interfaceC13467w) {
        boolean S52;
        synchronized (this.f28300c) {
            S52 = this.f28299b.S5(interfaceC13467w);
        }
        return S52;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28300c) {
            W10 = this.f28299b.W(dArr);
        }
        return W10;
    }

    @Override
    public boolean W5(InterfaceC13467w interfaceC13467w) {
        boolean W52;
        synchronized (this.f28300c) {
            W52 = this.f28299b.W5(interfaceC13467w);
        }
        return W52;
    }

    @Override
    public int a(double d10) {
        int a10;
        synchronized (this.f28300c) {
            a10 = this.f28299b.a(d10);
        }
        return a10;
    }

    @Override
    public void clear() {
        synchronized (this.f28300c) {
            this.f28299b.clear();
        }
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28300c) {
            e02 = this.f28299b.e0(iArr);
        }
        return e02;
    }

    @Override
    public int e9(double d10, int i10) {
        int e92;
        synchronized (this.f28300c) {
            e92 = this.f28299b.e9(d10, i10);
        }
        return e92;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28300c) {
            equals = this.f28299b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28300c) {
            this.f28299b.f(eVar);
        }
    }

    @Override
    public void g3(InterfaceC13079u interfaceC13079u) {
        synchronized (this.f28300c) {
            this.f28299b.g3(interfaceC13079u);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28300c) {
            hashCode = this.f28299b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28299b.i();
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28300c) {
            increment = this.f28299b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28300c) {
            isEmpty = this.f28299b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3465x iterator() {
        return this.f28299b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28300c) {
            j10 = this.f28299b.j();
        }
        return j10;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28300c) {
            try {
                if (this.f28302e == null) {
                    this.f28302e = new X(this.f28299b.k(), this.f28300c);
                }
                gVar = this.f28302e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28300c) {
            k02 = this.f28299b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28300c) {
            try {
                if (this.f28301d == null) {
                    this.f28301d = new H(this.f28299b.keySet(), this.f28300c);
                }
                interfaceC13969c = this.f28301d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28299b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28300c) {
            m02 = this.f28299b.m0(s10);
        }
        return m02;
    }

    @Override
    public int p0(double d10) {
        int p02;
        synchronized (this.f28300c) {
            p02 = this.f28299b.p0(d10);
        }
        return p02;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Integer> map) {
        synchronized (this.f28300c) {
            this.f28299b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28300c) {
            size = this.f28299b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28300c) {
            obj = this.f28299b.toString();
        }
        return obj;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28300c) {
            values = this.f28299b.values();
        }
        return values;
    }

    public D(InterfaceC13079u interfaceC13079u, Object obj) {
        this.f28299b = interfaceC13079u;
        this.f28300c = obj;
    }
}
