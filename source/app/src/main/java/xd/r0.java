package Xd;

import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class r0<K> implements ee.Y<K>, Serializable {

    public static final long f28580f = 1978198479659022715L;

    public final ee.Y<K> f28581b;

    public final Object f28582c;

    public transient Set<K> f28583d = null;

    public transient Sd.a f28584e = null;

    public r0(ee.Y<K> y10) {
        y10.getClass();
        this.f28581b = y10;
        this.f28582c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28582c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28582c) {
            C02 = this.f28581b.C0(kArr);
        }
        return C02;
    }

    @Override
    public byte C9(K k10, byte b10, byte b11) {
        byte C92;
        synchronized (this.f28582c) {
            C92 = this.f28581b.C9(k10, b10, b11);
        }
        return C92;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28582c) {
            G10 = this.f28581b.G(k0Var);
        }
        return G10;
    }

    @Override
    public boolean L7(he.d0<? super K> d0Var) {
        boolean L72;
        synchronized (this.f28582c) {
            L72 = this.f28581b.L7(d0Var);
        }
        return L72;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28582c) {
            M10 = this.f28581b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28582c) {
            P10 = this.f28581b.P(b10);
        }
        return P10;
    }

    @Override
    public void W8(ee.Y<? extends K> y10) {
        synchronized (this.f28582c) {
            this.f28581b.W8(y10);
        }
    }

    @Override
    public boolean Zd(he.d0<? super K> d0Var) {
        boolean Zd2;
        synchronized (this.f28582c) {
            Zd2 = this.f28581b.Zd(d0Var);
        }
        return Zd2;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28582c) {
            a02 = this.f28581b.a0(bArr);
        }
        return a02;
    }

    @Override
    public void clear() {
        synchronized (this.f28582c) {
            this.f28581b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28582c) {
            containsKey = this.f28581b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28582c) {
            equals = this.f28581b.equals(obj);
        }
        return equals;
    }

    @Override
    public byte get(Object obj) {
        byte b10;
        synchronized (this.f28582c) {
            b10 = this.f28581b.get(obj);
        }
        return b10;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28582c) {
            hashCode = this.f28581b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28581b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28582c) {
            isEmpty = this.f28581b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.f0<K> iterator() {
        return this.f28581b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28582c) {
            j10 = this.f28581b.j();
        }
        return j10;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28582c) {
            try {
                if (this.f28584e == null) {
                    this.f28584e = new C3267e(this.f28581b.k(), this.f28582c);
                }
                aVar = this.f28584e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28582c) {
            try {
                if (this.f28583d == null) {
                    this.f28583d = new C3261b(this.f28581b.keySet(), this.f28582c);
                }
                set = this.f28583d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public boolean m5(K k10, byte b10) {
        boolean m52;
        synchronized (this.f28582c) {
            m52 = this.f28581b.m5(k10, b10);
        }
        return m52;
    }

    @Override
    public byte oa(K k10, byte b10) {
        byte oa2;
        synchronized (this.f28582c) {
            oa2 = this.f28581b.oa(k10, b10);
        }
        return oa2;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Byte> map) {
        synchronized (this.f28582c) {
            this.f28581b.putAll(map);
        }
    }

    @Override
    public byte r4(K k10, byte b10) {
        byte r42;
        synchronized (this.f28582c) {
            r42 = this.f28581b.r4(k10, b10);
        }
        return r42;
    }

    @Override
    public byte remove(Object obj) {
        byte remove;
        synchronized (this.f28582c) {
            remove = this.f28581b.remove(obj);
        }
        return remove;
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28582c) {
            this.f28581b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28582c) {
            size = this.f28581b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28582c) {
            obj = this.f28581b.toString();
        }
        return obj;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28582c) {
            values = this.f28581b.values();
        }
        return values;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28582c) {
            x02 = this.f28581b.x0(k10);
        }
        return x02;
    }

    public r0(ee.Y<K> y10, Object obj) {
        this.f28581b = y10;
        this.f28582c = obj;
    }
}
