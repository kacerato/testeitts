package Xd;

import Zd.InterfaceC3451i;
import ee.InterfaceC13066g;
import he.InterfaceC13452g;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3279k<V> implements InterfaceC13066g<V>, Serializable {

    public static final long f28518f = 1978198479659022715L;

    public final InterfaceC13066g<V> f28519b;

    public final Object f28520c;

    public transient InterfaceC13967a f28521d = null;

    public transient Collection<V> f28522e = null;

    public C3279k(InterfaceC13066g<V> interfaceC13066g) {
        interfaceC13066g.getClass();
        this.f28519b = interfaceC13066g;
        this.f28520c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28520c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28520c) {
            D10 = this.f28519b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28520c) {
            S10 = this.f28519b.S(k0Var);
        }
        return S10;
    }

    @Override
    public boolean Tc(InterfaceC13452g<? super V> interfaceC13452g) {
        boolean Tc2;
        synchronized (this.f28520c) {
            Tc2 = this.f28519b.Tc(interfaceC13452g);
        }
        return Tc2;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28520c) {
            X10 = this.f28519b.X(bArr);
        }
        return X10;
    }

    @Override
    public V ab(byte b10, V v10) {
        V ab2;
        synchronized (this.f28520c) {
            ab2 = this.f28519b.ab(b10, v10);
        }
        return ab2;
    }

    @Override
    public void clear() {
        synchronized (this.f28520c) {
            this.f28519b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28520c) {
            containsValue = this.f28519b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28520c) {
            equals = this.f28519b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28520c) {
            hashCode = this.f28519b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28520c) {
            isEmpty = this.f28519b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3451i<V> iterator() {
        return this.f28519b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28520c) {
            j10 = this.f28519b.j();
        }
        return j10;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28520c) {
            try {
                if (this.f28522e == null) {
                    this.f28522e = new C3259a(this.f28519b.k(), this.f28520c);
                }
                collection = this.f28522e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public V k4(byte b10, V v10) {
        V k42;
        synchronized (this.f28520c) {
            k42 = this.f28519b.k4(b10, v10);
        }
        return k42;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28520c) {
            try {
                if (this.f28521d == null) {
                    this.f28521d = new C3281l(this.f28519b.keySet(), this.f28520c);
                }
                interfaceC13967a = this.f28521d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28519b.l();
    }

    @Override
    public V m(byte b10) {
        V m10;
        synchronized (this.f28520c) {
            m10 = this.f28519b.m(b10);
        }
        return m10;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends V> map) {
        synchronized (this.f28520c) {
            this.f28519b.putAll(map);
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28520c) {
            this.f28519b.r0(gVar);
        }
    }

    @Override
    public V s0(byte b10) {
        V s02;
        synchronized (this.f28520c) {
            s02 = this.f28519b.s0(b10);
        }
        return s02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28520c) {
            size = this.f28519b.size();
        }
        return size;
    }

    @Override
    public void t6(InterfaceC13066g<? extends V> interfaceC13066g) {
        synchronized (this.f28520c) {
            this.f28519b.t6(interfaceC13066g);
        }
    }

    public String toString() {
        String obj;
        synchronized (this.f28520c) {
            obj = this.f28519b.toString();
        }
        return obj;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28520c) {
            v02 = this.f28519b.v0(vArr);
        }
        return v02;
    }

    @Override
    public boolean v4(InterfaceC13452g<? super V> interfaceC13452g) {
        boolean v42;
        synchronized (this.f28520c) {
            v42 = this.f28519b.v4(interfaceC13452g);
        }
        return v42;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28520c) {
            values = this.f28519b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28520c) {
            w10 = this.f28519b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3279k(InterfaceC13066g<V> interfaceC13066g, Object obj) {
        this.f28519b = interfaceC13066g;
        this.f28520c = obj;
    }
}
