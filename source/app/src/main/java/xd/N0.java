package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13973g;

public class N0<V> implements ee.l0<V>, Serializable {

    public static final long f28381f = 1978198479659022715L;

    public final ee.l0<V> f28382b;

    public final Object f28383c;

    public transient InterfaceC13973g f28384d = null;

    public transient Collection<V> f28385e = null;

    public N0(ee.l0<V> l0Var) {
        l0Var.getClass();
        this.f28382b = l0Var;
        this.f28383c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28383c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public V Aa(short s10, V v10) {
        V Aa2;
        synchronized (this.f28383c) {
            Aa2 = this.f28382b.Aa(s10, v10);
        }
        return Aa2;
    }

    @Override
    public V O4(short s10, V v10) {
        V O42;
        synchronized (this.f28383c) {
            O42 = this.f28382b.O4(s10, v10);
        }
        return O42;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28383c) {
            S10 = this.f28382b.S(k0Var);
        }
        return S10;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28383c) {
            Y10 = this.f28382b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public boolean Zc(he.s0<? super V> s0Var) {
        boolean Zc2;
        synchronized (this.f28383c) {
            Zc2 = this.f28382b.Zc(s0Var);
        }
        return Zc2;
    }

    @Override
    public void clear() {
        synchronized (this.f28383c) {
            this.f28382b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28383c) {
            containsValue = this.f28382b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public V d(short s10) {
        V d10;
        synchronized (this.f28383c) {
            d10 = this.f28382b.d(s10);
        }
        return d10;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28383c) {
            equals = this.f28382b.equals(obj);
        }
        return equals;
    }

    @Override
    public boolean f4(he.s0<? super V> s0Var) {
        boolean f42;
        synchronized (this.f28383c) {
            f42 = this.f28382b.f4(s0Var);
        }
        return f42;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28383c) {
            hashCode = this.f28382b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28383c) {
            isEmpty = this.f28382b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.u0<V> iterator() {
        return this.f28382b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28383c) {
            j10 = this.f28382b.j();
        }
        return j10;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28383c) {
            try {
                if (this.f28385e == null) {
                    this.f28385e = new C3259a(this.f28382b.k(), this.f28383c);
                }
                collection = this.f28385e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28383c) {
            try {
                if (this.f28384d == null) {
                    this.f28384d = new O0(this.f28382b.keySet(), this.f28383c);
                }
                interfaceC13973g = this.f28384d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28382b.l();
    }

    @Override
    public V n0(short s10) {
        V n02;
        synchronized (this.f28383c) {
            n02 = this.f28382b.n0(s10);
        }
        return n02;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends V> map) {
        synchronized (this.f28383c) {
            this.f28382b.putAll(map);
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28383c) {
            this.f28382b.r0(gVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28383c) {
            size = this.f28382b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28383c) {
            obj = this.f28382b.toString();
        }
        return obj;
    }

    @Override
    public void ua(ee.l0<? extends V> l0Var) {
        synchronized (this.f28383c) {
            this.f28382b.ua(l0Var);
        }
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28383c) {
            v10 = this.f28382b.v(t0Var);
        }
        return v10;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28383c) {
            v02 = this.f28382b.v0(vArr);
        }
        return v02;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28383c) {
            values = this.f28382b.values();
        }
        return values;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28383c) {
            z10 = this.f28382b.z(s10);
        }
        return z10;
    }

    public N0(ee.l0<V> l0Var, Object obj) {
        this.f28382b = l0Var;
        this.f28383c = obj;
    }
}
