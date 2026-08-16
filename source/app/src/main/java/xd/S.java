package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13970d;

public class S<V> implements ee.E<V>, Serializable {

    public static final long f28404f = 1978198479659022715L;

    public final ee.E<V> f28405b;

    public final Object f28406c;

    public transient InterfaceC13970d f28407d = null;

    public transient Collection<V> f28408e = null;

    public S(ee.E<V> e10) {
        e10.getClass();
        this.f28405b = e10;
        this.f28406c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28406c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28406c) {
            H10 = this.f28405b.H(f10);
        }
        return H10;
    }

    @Override
    public boolean He(he.H<? super V> h10) {
        boolean He2;
        synchronized (this.f28406c) {
            He2 = this.f28405b.He(h10);
        }
        return He2;
    }

    @Override
    public V Me(float f10, V v10) {
        V Me2;
        synchronized (this.f28406c) {
            Me2 = this.f28405b.Me(f10, v10);
        }
        return Me2;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28406c) {
            S10 = this.f28405b.S(k0Var);
        }
        return S10;
    }

    @Override
    public V c(float f10) {
        V c10;
        synchronized (this.f28406c) {
            c10 = this.f28405b.c(f10);
        }
        return c10;
    }

    @Override
    public void clear() {
        synchronized (this.f28406c) {
            this.f28405b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28406c) {
            containsValue = this.f28405b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28406c) {
            d02 = this.f28405b.d0(fArr);
        }
        return d02;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28406c) {
            equals = this.f28405b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28406c) {
            hashCode = this.f28405b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28406c) {
            isEmpty = this.f28405b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.J<V> iterator() {
        return this.f28405b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28406c) {
            j10 = this.f28405b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28406c) {
            j02 = this.f28405b.j0(i10);
        }
        return j02;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28406c) {
            try {
                if (this.f28408e == null) {
                    this.f28408e = new C3259a(this.f28405b.k(), this.f28406c);
                }
                collection = this.f28408e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28406c) {
            try {
                if (this.f28407d == null) {
                    this.f28407d = new T(this.f28405b.keySet(), this.f28406c);
                }
                interfaceC13970d = this.f28407d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28405b.l();
    }

    @Override
    public V l9(float f10, V v10) {
        V l92;
        synchronized (this.f28406c) {
            l92 = this.f28405b.l9(f10, v10);
        }
        return l92;
    }

    @Override
    public boolean n6(he.H<? super V> h10) {
        boolean n62;
        synchronized (this.f28406c) {
            n62 = this.f28405b.n6(h10);
        }
        return n62;
    }

    @Override
    public void p6(ee.E<? extends V> e10) {
        synchronized (this.f28406c) {
            this.f28405b.p6(e10);
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends V> map) {
        synchronized (this.f28406c) {
            this.f28405b.putAll(map);
        }
    }

    @Override
    public V q0(float f10) {
        V q02;
        synchronized (this.f28406c) {
            q02 = this.f28405b.q0(f10);
        }
        return q02;
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28406c) {
            this.f28405b.r0(gVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28406c) {
            size = this.f28405b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28406c) {
            obj = this.f28405b.toString();
        }
        return obj;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28406c) {
            v02 = this.f28405b.v0(vArr);
        }
        return v02;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28406c) {
            values = this.f28405b.values();
        }
        return values;
    }

    public S(ee.E<V> e10, Object obj) {
        this.f28405b = e10;
        this.f28406c = obj;
    }
}
