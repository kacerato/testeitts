package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3266d0<V> implements ee.M<V>, Serializable {

    public static final long f28464f = 1978198479659022715L;

    public final ee.M<V> f28465b;

    public final Object f28466c;

    public transient InterfaceC13971e f28467d = null;

    public transient Collection<V> f28468e = null;

    public C3266d0(ee.M<V> m10) {
        m10.getClass();
        this.f28465b = m10;
        this.f28466c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28466c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28466c) {
            F10 = this.f28465b.F(i10);
        }
        return F10;
    }

    @Override
    public V Gd(int i10, V v10) {
        V Gd2;
        synchronized (this.f28466c) {
            Gd2 = this.f28465b.Gd(i10, v10);
        }
        return Gd2;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28466c) {
            J10 = this.f28465b.J(s10);
        }
        return J10;
    }

    @Override
    public void Ja(ee.M<? extends V> m10) {
        synchronized (this.f28466c) {
            this.f28465b.Ja(m10);
        }
    }

    @Override
    public boolean Mb(he.Q<? super V> q10) {
        boolean Mb2;
        synchronized (this.f28466c) {
            Mb2 = this.f28465b.Mb(q10);
        }
        return Mb2;
    }

    @Override
    public boolean Pb(he.Q<? super V> q10) {
        boolean Pb2;
        synchronized (this.f28466c) {
            Pb2 = this.f28465b.Pb(q10);
        }
        return Pb2;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28466c) {
            S10 = this.f28465b.S(k0Var);
        }
        return S10;
    }

    @Override
    public V ae(int i10, V v10) {
        V ae2;
        synchronized (this.f28466c) {
            ae2 = this.f28465b.ae(i10, v10);
        }
        return ae2;
    }

    @Override
    public void clear() {
        synchronized (this.f28466c) {
            this.f28465b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28466c) {
            containsValue = this.f28465b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28466c) {
            equals = this.f28465b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28466c) {
            f02 = this.f28465b.f0(iArr);
        }
        return f02;
    }

    @Override
    public V get(int i10) {
        V v10;
        synchronized (this.f28466c) {
            v10 = this.f28465b.get(i10);
        }
        return v10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28466c) {
            hashCode = this.f28465b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28466c) {
            isEmpty = this.f28465b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.T<V> iterator() {
        return this.f28465b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28466c) {
            j10 = this.f28465b.j();
        }
        return j10;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28466c) {
            try {
                if (this.f28468e == null) {
                    this.f28468e = new C3259a(this.f28465b.k(), this.f28466c);
                }
                collection = this.f28468e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28466c) {
            try {
                if (this.f28467d == null) {
                    this.f28467d = new C3268e0(this.f28465b.keySet(), this.f28466c);
                }
                interfaceC13971e = this.f28467d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28465b.l();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends V> map) {
        synchronized (this.f28466c) {
            this.f28465b.putAll(map);
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28466c) {
            this.f28465b.r0(gVar);
        }
    }

    @Override
    public V remove(int i10) {
        V remove;
        synchronized (this.f28466c) {
            remove = this.f28465b.remove(i10);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28466c) {
            size = this.f28465b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28466c) {
            obj = this.f28465b.toString();
        }
        return obj;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28466c) {
            v02 = this.f28465b.v0(vArr);
        }
        return v02;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28466c) {
            values = this.f28465b.values();
        }
        return values;
    }

    public C3266d0(ee.M<V> m10, Object obj) {
        this.f28465b = m10;
        this.f28466c = obj;
    }
}
