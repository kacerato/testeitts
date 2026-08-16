package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class x0<K> implements ee.e0<K>, Serializable {

    public static final long f28633f = 1978198479659022715L;

    public final ee.e0<K> f28634b;

    public final Object f28635c;

    public transient Set<K> f28636d = null;

    public transient Sd.i f28637e = null;

    public x0(ee.e0<K> e0Var) {
        e0Var.getClass();
        this.f28634b = e0Var;
        this.f28635c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28635c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28635c) {
            C02 = this.f28634b.C0(kArr);
        }
        return C02;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28635c) {
            G10 = this.f28634b.G(k0Var);
        }
        return G10;
    }

    @Override
    public void Ic(ee.e0<? extends K> e0Var) {
        synchronized (this.f28635c) {
            this.f28634b.Ic(e0Var);
        }
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28635c) {
            L10 = this.f28634b.L(s10);
        }
        return L10;
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28635c) {
            N10 = this.f28634b.N(t0Var);
        }
        return N10;
    }

    @Override
    public short N3(K k10, short s10) {
        short N32;
        synchronized (this.f28635c) {
            N32 = this.f28634b.N3(k10, s10);
        }
        return N32;
    }

    @Override
    public boolean S4(K k10, short s10) {
        boolean S42;
        synchronized (this.f28635c) {
            S42 = this.f28634b.S4(k10, s10);
        }
        return S42;
    }

    @Override
    public boolean T6(he.l0<? super K> l0Var) {
        boolean T62;
        synchronized (this.f28635c) {
            T62 = this.f28634b.T6(l0Var);
        }
        return T62;
    }

    @Override
    public short U2(K k10, short s10, short s11) {
        short U22;
        synchronized (this.f28635c) {
            U22 = this.f28634b.U2(k10, s10, s11);
        }
        return U22;
    }

    @Override
    public void clear() {
        synchronized (this.f28635c) {
            this.f28634b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28635c) {
            containsKey = this.f28634b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28635c) {
            equals = this.f28634b.equals(obj);
        }
        return equals;
    }

    @Override
    public short ga(K k10, short s10) {
        short ga2;
        synchronized (this.f28635c) {
            ga2 = this.f28634b.ga(k10, s10);
        }
        return ga2;
    }

    @Override
    public short get(Object obj) {
        short s10;
        synchronized (this.f28635c) {
            s10 = this.f28634b.get(obj);
        }
        return s10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28635c) {
            hashCode = this.f28634b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28634b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28635c) {
            i02 = this.f28634b.i0(sArr);
        }
        return i02;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28635c) {
            isEmpty = this.f28634b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.l0<K> iterator() {
        return this.f28634b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28635c) {
            j10 = this.f28634b.j();
        }
        return j10;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28635c) {
            try {
                if (this.f28637e == null) {
                    this.f28637e = new H0(this.f28634b.k(), this.f28635c);
                }
                iVar = this.f28637e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28635c) {
            try {
                if (this.f28636d == null) {
                    this.f28636d = new C3261b(this.f28634b.keySet(), this.f28635c);
                }
                set = this.f28636d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public boolean l3(he.l0<? super K> l0Var) {
        boolean l32;
        synchronized (this.f28635c) {
            l32 = this.f28634b.l3(l0Var);
        }
        return l32;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Short> map) {
        synchronized (this.f28635c) {
            this.f28634b.putAll(map);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28635c) {
            this.f28634b.r(hVar);
        }
    }

    @Override
    public short remove(Object obj) {
        short remove;
        synchronized (this.f28635c) {
            remove = this.f28634b.remove(obj);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28635c) {
            size = this.f28634b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28635c) {
            obj = this.f28634b.toString();
        }
        return obj;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28635c) {
            values = this.f28634b.values();
        }
        return values;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28635c) {
            x02 = this.f28634b.x0(k10);
        }
        return x02;
    }

    public x0(ee.e0<K> e0Var, Object obj) {
        this.f28634b = e0Var;
        this.f28635c = obj;
    }
}
