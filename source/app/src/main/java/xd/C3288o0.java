package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3288o0<V> implements ee.V<V>, Serializable {

    public static final long f28556f = 1978198479659022715L;

    public final ee.V<V> f28557b;

    public final Object f28558c;

    public transient InterfaceC13972f f28559d = null;

    public transient Collection<V> f28560e = null;

    public C3288o0(ee.V<V> v10) {
        v10.getClass();
        this.f28557b = v10;
        this.f28558c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28558c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public V Bd(long j10, V v10) {
        V Bd2;
        synchronized (this.f28558c) {
            Bd2 = this.f28557b.Bd(j10, v10);
        }
        return Bd2;
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28558c) {
            E10 = this.f28557b.E(j10);
        }
        return E10;
    }

    @Override
    public void L6(ee.V<? extends V> v10) {
        synchronized (this.f28558c) {
            this.f28557b.L6(v10);
        }
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28558c) {
            S10 = this.f28557b.S(k0Var);
        }
        return S10;
    }

    @Override
    public void clear() {
        synchronized (this.f28558c) {
            this.f28557b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28558c) {
            containsValue = this.f28557b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public V e(long j10) {
        V e10;
        synchronized (this.f28558c) {
            e10 = this.f28557b.e(j10);
        }
        return e10;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28558c) {
            equals = this.f28557b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28558c) {
            h02 = this.f28557b.h0(jArr);
        }
        return h02;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28558c) {
            hashCode = this.f28557b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28558c) {
            isEmpty = this.f28557b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.d0<V> iterator() {
        return this.f28557b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28558c) {
            j10 = this.f28557b.j();
        }
        return j10;
    }

    @Override
    public boolean j5(he.a0<? super V> a0Var) {
        boolean j52;
        synchronized (this.f28558c) {
            j52 = this.f28557b.j5(a0Var);
        }
        return j52;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28558c) {
            try {
                if (this.f28560e == null) {
                    this.f28560e = new C3259a(this.f28557b.k(), this.f28558c);
                }
                collection = this.f28560e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28558c) {
            try {
                if (this.f28559d == null) {
                    this.f28559d = new C3290p0(this.f28557b.keySet(), this.f28558c);
                }
                interfaceC13972f = this.f28559d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28557b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28558c) {
            l02 = this.f28557b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends V> map) {
        synchronized (this.f28558c) {
            this.f28557b.putAll(map);
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28558c) {
            this.f28557b.r0(gVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28558c) {
            size = this.f28557b.size();
        }
        return size;
    }

    @Override
    public boolean tb(he.a0<? super V> a0Var) {
        boolean tb2;
        synchronized (this.f28558c) {
            tb2 = this.f28557b.tb(a0Var);
        }
        return tb2;
    }

    @Override
    public V td(long j10, V v10) {
        V td2;
        synchronized (this.f28558c) {
            td2 = this.f28557b.td(j10, v10);
        }
        return td2;
    }

    public String toString() {
        String obj;
        synchronized (this.f28558c) {
            obj = this.f28557b.toString();
        }
        return obj;
    }

    @Override
    public V u(long j10) {
        V u10;
        synchronized (this.f28558c) {
            u10 = this.f28557b.u(j10);
        }
        return u10;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28558c) {
            v02 = this.f28557b.v0(vArr);
        }
        return v02;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28558c) {
            values = this.f28557b.values();
        }
        return values;
    }

    public C3288o0(ee.V<V> v10, Object obj) {
        this.f28557b = v10;
        this.f28558c = obj;
    }
}
