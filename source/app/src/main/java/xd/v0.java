package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class v0<K> implements ee.c0<K>, Serializable {

    public static final long f28617f = 1978198479659022715L;

    public final ee.c0<K> f28618b;

    public final Object f28619c;

    public transient Set<K> f28620d = null;

    public transient Sd.g f28621e = null;

    public v0(ee.c0<K> c0Var) {
        c0Var.getClass();
        this.f28618b = c0Var;
        this.f28619c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28619c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public void Ba(ee.c0<? extends K> c0Var) {
        synchronized (this.f28619c) {
            this.f28618b.Ba(c0Var);
        }
    }

    @Override
    public boolean Be(he.h0<? super K> h0Var) {
        boolean Be2;
        synchronized (this.f28619c) {
            Be2 = this.f28618b.Be(h0Var);
        }
        return Be2;
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28619c) {
            C02 = this.f28618b.C0(kArr);
        }
        return C02;
    }

    @Override
    public int Eb(K k10, int i10, int i11) {
        int Eb2;
        synchronized (this.f28619c) {
            Eb2 = this.f28618b.Eb(k10, i10, i11);
        }
        return Eb2;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28619c) {
            G10 = this.f28618b.G(k0Var);
        }
        return G10;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28619c) {
            Q10 = this.f28618b.Q(i10);
        }
        return Q10;
    }

    @Override
    public int Y9(K k10, int i10) {
        int Y92;
        synchronized (this.f28619c) {
            Y92 = this.f28618b.Y9(k10, i10);
        }
        return Y92;
    }

    @Override
    public int a4(K k10, int i10) {
        int a42;
        synchronized (this.f28619c) {
            a42 = this.f28618b.a4(k10, i10);
        }
        return a42;
    }

    @Override
    public void clear() {
        synchronized (this.f28619c) {
            this.f28618b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28619c) {
            containsKey = this.f28618b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28619c) {
            e02 = this.f28618b.e0(iArr);
        }
        return e02;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28619c) {
            equals = this.f28618b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28619c) {
            this.f28618b.f(eVar);
        }
    }

    @Override
    public int get(Object obj) {
        int i10;
        synchronized (this.f28619c) {
            i10 = this.f28618b.get(obj);
        }
        return i10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28619c) {
            hashCode = this.f28618b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28618b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28619c) {
            isEmpty = this.f28618b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.j0<K> iterator() {
        return this.f28618b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28619c) {
            j10 = this.f28618b.j();
        }
        return j10;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28619c) {
            try {
                if (this.f28621e == null) {
                    this.f28621e = new X(this.f28618b.k(), this.f28619c);
                }
                gVar = this.f28621e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28619c) {
            try {
                if (this.f28620d == null) {
                    this.f28620d = new C3261b(this.f28618b.keySet(), this.f28619c);
                }
                set = this.f28620d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28619c) {
            m02 = this.f28618b.m0(s10);
        }
        return m02;
    }

    @Override
    public boolean n9(he.h0<? super K> h0Var) {
        boolean n92;
        synchronized (this.f28619c) {
            n92 = this.f28618b.n9(h0Var);
        }
        return n92;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Integer> map) {
        synchronized (this.f28619c) {
            this.f28618b.putAll(map);
        }
    }

    @Override
    public int remove(Object obj) {
        int remove;
        synchronized (this.f28619c) {
            remove = this.f28618b.remove(obj);
        }
        return remove;
    }

    @Override
    public boolean s5(K k10, int i10) {
        boolean s52;
        synchronized (this.f28619c) {
            s52 = this.f28618b.s5(k10, i10);
        }
        return s52;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28619c) {
            size = this.f28618b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28619c) {
            obj = this.f28618b.toString();
        }
        return obj;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28619c) {
            values = this.f28618b.values();
        }
        return values;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28619c) {
            x02 = this.f28618b.x0(k10);
        }
        return x02;
    }

    public v0(ee.c0<K> c0Var, Object obj) {
        this.f28618b = c0Var;
        this.f28619c = obj;
    }
}
