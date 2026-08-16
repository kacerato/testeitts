package Xd;

import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class t0<K> implements ee.a0<K>, Serializable {

    public static final long f28597f = 1978198479659022715L;

    public final ee.a0<K> f28598b;

    public final Object f28599c;

    public transient Set<K> f28600d = null;

    public transient Sd.e f28601e = null;

    public t0(ee.a0<K> a0Var) {
        a0Var.getClass();
        this.f28598b = a0Var;
        this.f28599c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28599c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28599c) {
            C02 = this.f28598b.C0(kArr);
        }
        return C02;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28599c) {
            G10 = this.f28598b.G(k0Var);
        }
        return G10;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        boolean I10;
        synchronized (this.f28599c) {
            I10 = this.f28598b.I(interfaceC13470z);
        }
        return I10;
    }

    @Override
    public double La(K k10, double d10, double d11) {
        double La2;
        synchronized (this.f28599c) {
            La2 = this.f28598b.La(k10, d10, d11);
        }
        return La2;
    }

    @Override
    public boolean Pd(he.f0<? super K> f0Var) {
        boolean Pd2;
        synchronized (this.f28599c) {
            Pd2 = this.f28598b.Pd(f0Var);
        }
        return Pd2;
    }

    @Override
    public boolean T(double d10) {
        boolean T10;
        synchronized (this.f28599c) {
            T10 = this.f28598b.T(d10);
        }
        return T10;
    }

    @Override
    public void Z6(ee.a0<? extends K> a0Var) {
        synchronized (this.f28599c) {
            this.f28598b.Z6(a0Var);
        }
    }

    @Override
    public double[] b0(double[] dArr) {
        double[] b02;
        synchronized (this.f28599c) {
            b02 = this.f28598b.b0(dArr);
        }
        return b02;
    }

    @Override
    public void clear() {
        synchronized (this.f28599c) {
            this.f28598b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28599c) {
            containsKey = this.f28598b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28599c) {
            equals = this.f28598b.equals(obj);
        }
        return equals;
    }

    @Override
    public boolean f8(he.f0<? super K> f0Var) {
        boolean f82;
        synchronized (this.f28599c) {
            f82 = this.f28598b.f8(f0Var);
        }
        return f82;
    }

    @Override
    public double get(Object obj) {
        double d10;
        synchronized (this.f28599c) {
            d10 = this.f28598b.get(obj);
        }
        return d10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28599c) {
            hashCode = this.f28598b.hashCode();
        }
        return hashCode;
    }

    @Override
    public double i() {
        return this.f28598b.i();
    }

    @Override
    public double i4(K k10, double d10) {
        double i42;
        synchronized (this.f28599c) {
            i42 = this.f28598b.i4(k10, d10);
        }
        return i42;
    }

    @Override
    public boolean i5(K k10, double d10) {
        boolean i52;
        synchronized (this.f28599c) {
            i52 = this.f28598b.i5(k10, d10);
        }
        return i52;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28599c) {
            isEmpty = this.f28598b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.h0<K> iterator() {
        return this.f28598b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28599c) {
            j10 = this.f28598b.j();
        }
        return j10;
    }

    @Override
    public Sd.e k() {
        Sd.e eVar;
        synchronized (this.f28599c) {
            try {
                if (this.f28601e == null) {
                    this.f28601e = new A(this.f28598b.k(), this.f28599c);
                }
                eVar = this.f28601e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28599c) {
            try {
                if (this.f28600d == null) {
                    this.f28600d = new C3261b(this.f28598b.keySet(), this.f28599c);
                }
                set = this.f28600d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public void p(Ud.c cVar) {
        synchronized (this.f28599c) {
            this.f28598b.p(cVar);
        }
    }

    @Override
    public void putAll(Map<? extends K, ? extends Double> map) {
        synchronized (this.f28599c) {
            this.f28598b.putAll(map);
        }
    }

    @Override
    public double remove(Object obj) {
        double remove;
        synchronized (this.f28599c) {
            remove = this.f28598b.remove(obj);
        }
        return remove;
    }

    @Override
    public double sa(K k10, double d10) {
        double sa2;
        synchronized (this.f28599c) {
            sa2 = this.f28598b.sa(k10, d10);
        }
        return sa2;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28599c) {
            size = this.f28598b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28599c) {
            obj = this.f28598b.toString();
        }
        return obj;
    }

    @Override
    public double[] values() {
        double[] values;
        synchronized (this.f28599c) {
            values = this.f28598b.values();
        }
        return values;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28599c) {
            x02 = this.f28598b.x0(k10);
        }
        return x02;
    }

    public t0(ee.a0<K> a0Var, Object obj) {
        this.f28598b = a0Var;
        this.f28599c = obj;
    }
}
