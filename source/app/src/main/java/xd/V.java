package Xd;

import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class V implements ee.G, Serializable {

    public static final long f28415f = 1978198479659022715L;

    public final ee.G f28416b;

    public final Object f28417c;

    public transient InterfaceC13971e f28418d = null;

    public transient Sd.a f28419e = null;

    public V(ee.G g10) {
        g10.getClass();
        this.f28416b = g10;
        this.f28417c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28417c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28417c) {
            F10 = this.f28416b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28417c) {
            F02 = this.f28416b.F0(i10);
        }
        return F02;
    }

    @Override
    public boolean Ib(int i10, byte b10) {
        boolean Ib2;
        synchronized (this.f28417c) {
            Ib2 = this.f28416b.Ib(i10, b10);
        }
        return Ib2;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28417c) {
            J10 = this.f28416b.J(s10);
        }
        return J10;
    }

    @Override
    public boolean K6(he.K k10) {
        boolean K62;
        synchronized (this.f28417c) {
            K62 = this.f28416b.K6(k10);
        }
        return K62;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28417c) {
            M10 = this.f28416b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28417c) {
            P10 = this.f28416b.P(b10);
        }
        return P10;
    }

    @Override
    public byte Td(int i10, byte b10) {
        byte Td2;
        synchronized (this.f28417c) {
            Td2 = this.f28416b.Td(i10, b10);
        }
        return Td2;
    }

    @Override
    public byte V4(int i10, byte b10) {
        byte V42;
        synchronized (this.f28417c) {
            V42 = this.f28416b.V4(i10, b10);
        }
        return V42;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28417c) {
            a02 = this.f28416b.a0(bArr);
        }
        return a02;
    }

    @Override
    public void clear() {
        synchronized (this.f28417c) {
            this.f28416b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28417c) {
            equals = this.f28416b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28417c) {
            f02 = this.f28416b.f0(iArr);
        }
        return f02;
    }

    @Override
    public byte get(int i10) {
        byte b10;
        synchronized (this.f28417c) {
            b10 = this.f28416b.get(i10);
        }
        return b10;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28417c) {
            hashCode = this.f28416b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28416b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28417c) {
            isEmpty = this.f28416b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.L iterator() {
        return this.f28416b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28417c) {
            j10 = this.f28416b.j();
        }
        return j10;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28417c) {
            try {
                if (this.f28419e == null) {
                    this.f28419e = new C3267e(this.f28416b.k(), this.f28417c);
                }
                aVar = this.f28419e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28417c) {
            try {
                if (this.f28418d == null) {
                    this.f28418d = new C3268e0(this.f28416b.keySet(), this.f28417c);
                }
                interfaceC13971e = this.f28418d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28416b.l();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Byte> map) {
        synchronized (this.f28417c) {
            this.f28416b.putAll(map);
        }
    }

    @Override
    public byte remove(int i10) {
        byte remove;
        synchronized (this.f28417c) {
            remove = this.f28416b.remove(i10);
        }
        return remove;
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28417c) {
            this.f28416b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28417c) {
            size = this.f28416b.size();
        }
        return size;
    }

    @Override
    public void t7(ee.G g10) {
        synchronized (this.f28417c) {
            this.f28416b.t7(g10);
        }
    }

    public String toString() {
        String obj;
        synchronized (this.f28417c) {
            obj = this.f28416b.toString();
        }
        return obj;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28417c) {
            values = this.f28416b.values();
        }
        return values;
    }

    @Override
    public boolean x5(he.K k10) {
        boolean x52;
        synchronized (this.f28417c) {
            x52 = this.f28416b.x5(k10);
        }
        return x52;
    }

    @Override
    public byte z7(int i10, byte b10, byte b11) {
        byte z72;
        synchronized (this.f28417c) {
            z72 = this.f28416b.z7(i10, b10, b11);
        }
        return z72;
    }

    public V(ee.G g10, Object obj) {
        this.f28416b = g10;
        this.f28417c = obj;
    }
}
