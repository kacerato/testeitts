package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class u0<K> implements ee.b0<K>, Serializable {

    public static final long f28607f = 1978198479659022715L;

    public final ee.b0<K> f28608b;

    public final Object f28609c;

    public transient Set<K> f28610d = null;

    public transient Sd.f f28611e = null;

    public u0(ee.b0<K> b0Var) {
        b0Var.getClass();
        this.f28608b = b0Var;
        this.f28609c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28609c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28609c) {
            B10 = this.f28608b.B(i10);
        }
        return B10;
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28609c) {
            C02 = this.f28608b.C0(kArr);
        }
        return C02;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28609c) {
            G10 = this.f28608b.G(k0Var);
        }
        return G10;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28609c) {
            U10 = this.f28608b.U(f10);
        }
        return U10;
    }

    @Override
    public void Z8(ee.b0<? extends K> b0Var) {
        synchronized (this.f28609c) {
            this.f28608b.Z8(b0Var);
        }
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28609c) {
            c02 = this.f28608b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28609c) {
            this.f28608b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28609c) {
            containsKey = this.f28608b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public boolean e5(K k10, float f10) {
        boolean e52;
        synchronized (this.f28609c) {
            e52 = this.f28608b.e5(k10, f10);
        }
        return e52;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28609c) {
            equals = this.f28608b.equals(obj);
        }
        return equals;
    }

    @Override
    public float get(Object obj) {
        float f10;
        synchronized (this.f28609c) {
            f10 = this.f28608b.get(obj);
        }
        return f10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28609c) {
            hashCode = this.f28608b.hashCode();
        }
        return hashCode;
    }

    @Override
    public float i() {
        return this.f28608b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28609c) {
            isEmpty = this.f28608b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.i0<K> iterator() {
        return this.f28608b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28609c) {
            j10 = this.f28608b.j();
        }
        return j10;
    }

    @Override
    public float j4(K k10, float f10) {
        float j42;
        synchronized (this.f28609c) {
            j42 = this.f28608b.j4(k10, f10);
        }
        return j42;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28609c) {
            try {
                if (this.f28611e == null) {
                    this.f28611e = new L(this.f28608b.k(), this.f28609c);
                }
                fVar = this.f28611e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28609c) {
            try {
                if (this.f28610d == null) {
                    this.f28610d = new C3261b(this.f28608b.keySet(), this.f28609c);
                }
                set = this.f28610d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28609c) {
            this.f28608b.n(dVar);
        }
    }

    @Override
    public float pb(K k10, float f10, float f11) {
        float pb2;
        synchronized (this.f28609c) {
            pb2 = this.f28608b.pb(k10, f10, f11);
        }
        return pb2;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Float> map) {
        synchronized (this.f28609c) {
            this.f28608b.putAll(map);
        }
    }

    @Override
    public float remove(Object obj) {
        float remove;
        synchronized (this.f28609c) {
            remove = this.f28608b.remove(obj);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28609c) {
            size = this.f28608b.size();
        }
        return size;
    }

    @Override
    public boolean tc(he.g0<? super K> g0Var) {
        boolean tc2;
        synchronized (this.f28609c) {
            tc2 = this.f28608b.tc(g0Var);
        }
        return tc2;
    }

    public String toString() {
        String obj;
        synchronized (this.f28609c) {
            obj = this.f28608b.toString();
        }
        return obj;
    }

    @Override
    public boolean v9(he.g0<? super K> g0Var) {
        boolean v92;
        synchronized (this.f28609c) {
            v92 = this.f28608b.v9(g0Var);
        }
        return v92;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28609c) {
            values = this.f28608b.values();
        }
        return values;
    }

    @Override
    public float wa(K k10, float f10) {
        float wa2;
        synchronized (this.f28609c) {
            wa2 = this.f28608b.wa(k10, f10);
        }
        return wa2;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28609c) {
            x02 = this.f28608b.x0(k10);
        }
        return x02;
    }

    public u0(ee.b0<K> b0Var, Object obj) {
        this.f28608b = b0Var;
        this.f28609c = obj;
    }
}
