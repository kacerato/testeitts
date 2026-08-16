package Xd;

import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class s0<K> implements ee.Z<K>, Serializable {

    public static final long f28590f = 1978198479659022715L;

    public final ee.Z<K> f28591b;

    public final Object f28592c;

    public transient Set<K> f28593d = null;

    public transient Sd.b f28594e = null;

    public s0(ee.Z<K> z10) {
        z10.getClass();
        this.f28591b = z10;
        this.f28592c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28592c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28592c) {
            C02 = this.f28591b.C0(kArr);
        }
        return C02;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28592c) {
            G10 = this.f28591b.G(k0Var);
        }
        return G10;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28592c) {
            K10 = this.f28591b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28592c) {
            O10 = this.f28591b.O(c10);
        }
        return O10;
    }

    @Override
    public void Ya(ee.Z<? extends K> z10) {
        synchronized (this.f28592c) {
            this.f28591b.Ya(z10);
        }
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28592c) {
            Z10 = this.f28591b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public void clear() {
        synchronized (this.f28592c) {
            this.f28591b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28592c) {
            containsKey = this.f28591b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28592c) {
            equals = this.f28591b.equals(obj);
        }
        return equals;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28592c) {
            this.f28591b.g(bVar);
        }
    }

    @Override
    public char get(Object obj) {
        char c10;
        synchronized (this.f28592c) {
            c10 = this.f28591b.get(obj);
        }
        return c10;
    }

    @Override
    public char h4(K k10, char c10) {
        char h42;
        synchronized (this.f28592c) {
            h42 = this.f28591b.h4(k10, c10);
        }
        return h42;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28592c) {
            hashCode = this.f28591b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28591b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28592c) {
            isEmpty = this.f28591b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.g0<K> iterator() {
        return this.f28591b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28592c) {
            j10 = this.f28591b.j();
        }
        return j10;
    }

    @Override
    public boolean je(he.e0<? super K> e0Var) {
        boolean je2;
        synchronized (this.f28592c) {
            je2 = this.f28591b.je(e0Var);
        }
        return je2;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28592c) {
            try {
                if (this.f28594e == null) {
                    this.f28594e = new C3289p(this.f28591b.k(), this.f28592c);
                }
                bVar = this.f28594e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public boolean k5(K k10, char c10) {
        boolean k52;
        synchronized (this.f28592c) {
            k52 = this.f28591b.k5(k10, c10);
        }
        return k52;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28592c) {
            try {
                if (this.f28593d == null) {
                    this.f28593d = new C3261b(this.f28591b.keySet(), this.f28592c);
                }
                set = this.f28593d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public char m9(K k10, char c10, char c11) {
        char m92;
        synchronized (this.f28592c) {
            m92 = this.f28591b.m9(k10, c10, c11);
        }
        return m92;
    }

    @Override
    public boolean p7(he.e0<? super K> e0Var) {
        boolean p72;
        synchronized (this.f28592c) {
            p72 = this.f28591b.p7(e0Var);
        }
        return p72;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Character> map) {
        synchronized (this.f28592c) {
            this.f28591b.putAll(map);
        }
    }

    @Override
    public char qa(K k10, char c10) {
        char qa2;
        synchronized (this.f28592c) {
            qa2 = this.f28591b.qa(k10, c10);
        }
        return qa2;
    }

    @Override
    public char remove(Object obj) {
        char remove;
        synchronized (this.f28592c) {
            remove = this.f28591b.remove(obj);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28592c) {
            size = this.f28591b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28592c) {
            obj = this.f28591b.toString();
        }
        return obj;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28592c) {
            values = this.f28591b.values();
        }
        return values;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28592c) {
            x02 = this.f28591b.x0(k10);
        }
        return x02;
    }

    public s0(ee.Z<K> z10, Object obj) {
        this.f28591b = z10;
        this.f28592c = obj;
    }
}
