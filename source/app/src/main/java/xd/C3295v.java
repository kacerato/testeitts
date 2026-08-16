package Xd;

import ee.InterfaceC13074o;
import he.InterfaceC13461p;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3295v<V> implements InterfaceC13074o<V>, Serializable {

    public static final long f28612f = 1978198479659022715L;

    public final InterfaceC13074o<V> f28613b;

    public final Object f28614c;

    public transient InterfaceC13968b f28615d = null;

    public transient Collection<V> f28616e = null;

    public C3295v(InterfaceC13074o<V> interfaceC13074o) {
        interfaceC13074o.getClass();
        this.f28613b = interfaceC13074o;
        this.f28614c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28614c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28614c) {
            C10 = this.f28613b.C(c10);
        }
        return C10;
    }

    @Override
    public V I3(char c10, V v10) {
        V I32;
        synchronized (this.f28614c) {
            I32 = this.f28613b.I3(c10, v10);
        }
        return I32;
    }

    @Override
    public boolean N5(InterfaceC13461p<? super V> interfaceC13461p) {
        boolean N52;
        synchronized (this.f28614c) {
            N52 = this.f28613b.N5(interfaceC13461p);
        }
        return N52;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        boolean S10;
        synchronized (this.f28614c) {
            S10 = this.f28613b.S(k0Var);
        }
        return S10;
    }

    @Override
    public boolean Tb(InterfaceC13461p<? super V> interfaceC13461p) {
        boolean Tb2;
        synchronized (this.f28614c) {
            Tb2 = this.f28613b.Tb(interfaceC13461p);
        }
        return Tb2;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28614c) {
            V10 = this.f28613b.V(cArr);
        }
        return V10;
    }

    @Override
    public V b(char c10) {
        V b10;
        synchronized (this.f28614c) {
            b10 = this.f28613b.b(c10);
        }
        return b10;
    }

    @Override
    public V cc(char c10, V v10) {
        V cc2;
        synchronized (this.f28614c) {
            cc2 = this.f28613b.cc(c10, v10);
        }
        return cc2;
    }

    @Override
    public void clear() {
        synchronized (this.f28614c) {
            this.f28613b.clear();
        }
    }

    @Override
    public boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f28614c) {
            containsValue = this.f28613b.containsValue(obj);
        }
        return containsValue;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28614c) {
            equals = this.f28613b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28614c) {
            hashCode = this.f28613b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28614c) {
            isEmpty = this.f28613b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.r<V> iterator() {
        return this.f28613b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28614c) {
            j10 = this.f28613b.j();
        }
        return j10;
    }

    @Override
    public Collection<V> k() {
        Collection<V> collection;
        synchronized (this.f28614c) {
            try {
                if (this.f28616e == null) {
                    this.f28616e = new C3259a(this.f28613b.k(), this.f28614c);
                }
                collection = this.f28616e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return collection;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28614c) {
            try {
                if (this.f28615d == null) {
                    this.f28615d = new C3296w(this.f28613b.keySet(), this.f28614c);
                }
                interfaceC13968b = this.f28615d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28613b.l();
    }

    @Override
    public V o0(char c10) {
        V o02;
        synchronized (this.f28614c) {
            o02 = this.f28613b.o0(c10);
        }
        return o02;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends V> map) {
        synchronized (this.f28614c) {
            this.f28613b.putAll(map);
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        synchronized (this.f28614c) {
            this.f28613b.r0(gVar);
        }
    }

    @Override
    public void r8(InterfaceC13074o<? extends V> interfaceC13074o) {
        synchronized (this.f28614c) {
            this.f28613b.r8(interfaceC13074o);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28614c) {
            size = this.f28613b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28614c) {
            obj = this.f28613b.toString();
        }
        return obj;
    }

    @Override
    public V[] v0(V[] vArr) {
        V[] v02;
        synchronized (this.f28614c) {
            v02 = this.f28613b.v0(vArr);
        }
        return v02;
    }

    @Override
    public Object[] values() {
        Object[] values;
        synchronized (this.f28614c) {
            values = this.f28613b.values();
        }
        return values;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28614c) {
            y10 = this.f28613b.y(interfaceC13462q);
        }
        return y10;
    }

    public C3295v(InterfaceC13074o<V> interfaceC13074o, Object obj) {
        this.f28613b = interfaceC13074o;
        this.f28614c = obj;
    }
}
