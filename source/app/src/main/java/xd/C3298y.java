package Xd;

import Zd.InterfaceC3461t;
import ee.InterfaceC13076q;
import he.InterfaceC13453h;
import he.InterfaceC13463s;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class C3298y implements InterfaceC13076q, Serializable {

    public static final long f28638f = 1978198479659022715L;

    public final InterfaceC13076q f28639b;

    public final Object f28640c;

    public transient InterfaceC13969c f28641d = null;

    public transient Sd.a f28642e = null;

    public C3298y(InterfaceC13076q interfaceC13076q) {
        interfaceC13076q.getClass();
        this.f28639b = interfaceC13076q;
        this.f28640c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28640c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28640c) {
            A10 = this.f28639b.A(d10);
        }
        return A10;
    }

    @Override
    public byte H2(double d10, byte b10) {
        byte H22;
        synchronized (this.f28640c) {
            H22 = this.f28639b.H2(d10, b10);
        }
        return H22;
    }

    @Override
    public boolean Ia(double d10, byte b10) {
        boolean Ia2;
        synchronized (this.f28640c) {
            Ia2 = this.f28639b.Ia(d10, b10);
        }
        return Ia2;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28640c) {
            M10 = this.f28639b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28640c) {
            P10 = this.f28639b.P(b10);
        }
        return P10;
    }

    @Override
    public void Q5(InterfaceC13076q interfaceC13076q) {
        synchronized (this.f28640c) {
            this.f28639b.Q5(interfaceC13076q);
        }
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28640c) {
            W10 = this.f28639b.W(dArr);
        }
        return W10;
    }

    @Override
    public byte a(double d10) {
        byte a10;
        synchronized (this.f28640c) {
            a10 = this.f28639b.a(d10);
        }
        return a10;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28640c) {
            a02 = this.f28639b.a0(bArr);
        }
        return a02;
    }

    @Override
    public void clear() {
        synchronized (this.f28640c) {
            this.f28639b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28640c) {
            equals = this.f28639b.equals(obj);
        }
        return equals;
    }

    @Override
    public byte fe(double d10, byte b10, byte b11) {
        byte fe2;
        synchronized (this.f28640c) {
            fe2 = this.f28639b.fe(d10, b10, b11);
        }
        return fe2;
    }

    @Override
    public byte g9(double d10, byte b10) {
        byte g92;
        synchronized (this.f28640c) {
            g92 = this.f28639b.g9(d10, b10);
        }
        return g92;
    }

    @Override
    public boolean h9(InterfaceC13463s interfaceC13463s) {
        boolean h92;
        synchronized (this.f28640c) {
            h92 = this.f28639b.h9(interfaceC13463s);
        }
        return h92;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28640c) {
            hashCode = this.f28639b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28639b.i();
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28640c) {
            increment = this.f28639b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28640c) {
            isEmpty = this.f28639b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3461t iterator() {
        return this.f28639b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28640c) {
            j10 = this.f28639b.j();
        }
        return j10;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28640c) {
            try {
                if (this.f28642e == null) {
                    this.f28642e = new C3267e(this.f28639b.k(), this.f28640c);
                }
                aVar = this.f28642e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28640c) {
            k02 = this.f28639b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28640c) {
            try {
                if (this.f28641d == null) {
                    this.f28641d = new H(this.f28639b.keySet(), this.f28640c);
                }
                interfaceC13969c = this.f28641d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28639b.l();
    }

    @Override
    public byte p0(double d10) {
        byte p02;
        synchronized (this.f28640c) {
            p02 = this.f28639b.p0(d10);
        }
        return p02;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Byte> map) {
        synchronized (this.f28640c) {
            this.f28639b.putAll(map);
        }
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28640c) {
            this.f28639b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28640c) {
            size = this.f28639b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28640c) {
            obj = this.f28639b.toString();
        }
        return obj;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28640c) {
            values = this.f28639b.values();
        }
        return values;
    }

    @Override
    public boolean vc(InterfaceC13463s interfaceC13463s) {
        boolean vc2;
        synchronized (this.f28640c) {
            vc2 = this.f28639b.vc(interfaceC13463s);
        }
        return vc2;
    }

    public C3298y(InterfaceC13076q interfaceC13076q, Object obj) {
        this.f28639b = interfaceC13076q;
        this.f28640c = obj;
    }
}
