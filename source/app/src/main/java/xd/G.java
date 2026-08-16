package Xd;

import ee.InterfaceC13081w;
import he.InterfaceC13469y;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13969c;

public class G<V> implements InterfaceC13081w<V>, Serializable {

    public static final long f28317f = 1978198479659022715L;

    public final InterfaceC13081w<V> f28318b;

    public final Object f28319c;

    public transient InterfaceC13969c f28320d = null;

    public transient Collection<V> f28321e = null;

    public G(InterfaceC13081w<V> interfaceC13081w) {
        interfaceC13081w.getClass();
        this.f28318b = interfaceC13081w;
        this.f28319c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28319c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28319c) {
            A10 = this.f28318b.A(d10);
        }
        return A10;
    }

    @Override
    public V Lb(double d10, V v10) {
        V Lb2;
        synchronized (this.f28319c) {
            Lb2 = this.f28318b.Lb(d10, v10);
        }
        return Lb2;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28319c) {
            S10 = this.f28318b.S(k0Var);
        }
        return S10;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28319c) {
            W10 = this.f28318b.W(dArr);
        }
        return W10;
    }

    @Override
    public V W2(double d10, V v10) {
        V W22;
        synchronized (this.f28319c) {
            W22 = this.f28318b.W2(d10, v10);
        }
        return W22;
    }

    @Override
    public V a(double d10) {
        V a10;
        synchronized (this.f28319c) {
            a10 = this.f28318b.a(d10);
        }
        return a10;
    }

    @Override
    public void clear() {
        synchronized (this.f28319c) {
            this.f28318b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28319c) {
            containsValue = this.f28318b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public boolean de(InterfaceC13469y<? super V> interfaceC13469y) {
        boolean de2;
        synchronized (this.f28319c) {
            de2 = this.f28318b.de(interfaceC13469y);
        }
        return de2;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28319c) {
            equals = this.f28318b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28319c) {
            hashCode = this.f28318b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28319c) {
            isEmpty = this.f28318b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.A<V> iterator() {
        return this.f28318b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28319c) {
            j10 = this.f28318b.j();
        }
        return j10;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28319c) {
            try {
                if (this.f28321e == null) {
                    this.f28321e = new C3259a(this.f28318b.k(), this.f28319c);
                }
                collection = this.f28321e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28319c) {
            k02 = this.f28318b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28319c) {
            try {
                if (this.f28320d == null) {
                    this.f28320d = new H(this.f28318b.keySet(), this.f28319c);
                }
                interfaceC13969c = this.f28320d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28318b.l();
    }

    @Override
    public V p0(double d10) {
        V p02;
        synchronized (this.f28319c) {
            p02 = this.f28318b.p0(d10);
        }
        return p02;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends V> map) {
        synchronized (this.f28319c) {
            this.f28318b.putAll(map);
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28319c) {
            this.f28318b.r0(gVar);
        }
    }

    @Override
    public void r7(InterfaceC13081w<? extends V> interfaceC13081w) {
        synchronized (this.f28319c) {
            this.f28318b.r7(interfaceC13081w);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28319c) {
            size = this.f28318b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28319c) {
            obj = this.f28318b.toString();
        }
        return obj;
    }

    @Override
    public boolean u8(InterfaceC13469y<? super V> interfaceC13469y) {
        boolean u82;
        synchronized (this.f28319c) {
            u82 = this.f28318b.u8(interfaceC13469y);
        }
        return u82;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28319c) {
            v02 = this.f28318b.v0(vArr);
        }
        return v02;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28319c) {
            values = this.f28318b.values();
        }
        return values;
    }

    public G(InterfaceC13081w<V> interfaceC13081w, Object obj) {
        this.f28318b = interfaceC13081w;
        this.f28319c = obj;
    }
}
