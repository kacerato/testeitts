package Xd;

import Zd.InterfaceC3444b;
import ee.InterfaceC13060a;
import he.InterfaceC13446a;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3263c implements InterfaceC13060a, Serializable {

    public static final long f28449f = 1978198479659022715L;

    public final InterfaceC13060a f28450b;

    public final Object f28451c;

    public transient InterfaceC13967a f28452d = null;

    public transient Sd.a f28453e = null;

    public C3263c(InterfaceC13060a interfaceC13060a) {
        interfaceC13060a.getClass();
        this.f28450b = interfaceC13060a;
        this.f28451c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28451c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28451c) {
            D10 = this.f28450b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28451c) {
            E02 = this.f28450b.E0(b10);
        }
        return E02;
    }

    @Override
    public boolean G2(InterfaceC13446a interfaceC13446a) {
        boolean G22;
        synchronized (this.f28451c) {
            G22 = this.f28450b.G2(interfaceC13446a);
        }
        return G22;
    }

    @Override
    public void L8(InterfaceC13060a interfaceC13060a) {
        synchronized (this.f28451c) {
            this.f28450b.L8(interfaceC13060a);
        }
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28451c) {
            M10 = this.f28450b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28451c) {
            P10 = this.f28450b.P(b10);
        }
        return P10;
    }

    @Override
    public byte P3(byte b10, byte b11) {
        byte P32;
        synchronized (this.f28451c) {
            P32 = this.f28450b.P3(b10, b11);
        }
        return P32;
    }

    @Override
    public boolean Uc(InterfaceC13446a interfaceC13446a) {
        boolean Uc2;
        synchronized (this.f28451c) {
            Uc2 = this.f28450b.Uc(interfaceC13446a);
        }
        return Uc2;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28451c) {
            X10 = this.f28450b.X(bArr);
        }
        return X10;
    }

    @Override
    public byte X5(byte b10, byte b11, byte b12) {
        byte X52;
        synchronized (this.f28451c) {
            X52 = this.f28450b.X5(b10, b11, b12);
        }
        return X52;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28451c) {
            a02 = this.f28450b.a0(bArr);
        }
        return a02;
    }

    @Override
    public void clear() {
        synchronized (this.f28451c) {
            this.f28450b.clear();
        }
    }

    @Override
    public byte da(byte b10, byte b11) {
        byte da2;
        synchronized (this.f28451c) {
            da2 = this.f28450b.da(b10, b11);
        }
        return da2;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28451c) {
            equals = this.f28450b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28451c) {
            hashCode = this.f28450b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28450b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28451c) {
            isEmpty = this.f28450b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3444b iterator() {
        return this.f28450b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28451c) {
            j10 = this.f28450b.j();
        }
        return j10;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28451c) {
            try {
                if (this.f28453e == null) {
                    this.f28453e = new C3267e(this.f28450b.k(), this.f28451c);
                }
                aVar = this.f28453e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28451c) {
            try {
                if (this.f28452d == null) {
                    this.f28452d = new C3281l(this.f28450b.keySet(), this.f28451c);
                }
                interfaceC13967a = this.f28452d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28450b.l();
    }

    @Override
    public byte m(byte b10) {
        byte m10;
        synchronized (this.f28451c) {
            m10 = this.f28450b.m(b10);
        }
        return m10;
    }

    @Override
    public boolean me(byte b10, byte b11) {
        boolean me2;
        synchronized (this.f28451c) {
            me2 = this.f28450b.me(b10, b11);
        }
        return me2;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Byte> map) {
        synchronized (this.f28451c) {
            this.f28450b.putAll(map);
        }
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28451c) {
            this.f28450b.s(aVar);
        }
    }

    @Override
    public byte s0(byte b10) {
        byte s02;
        synchronized (this.f28451c) {
            s02 = this.f28450b.s0(b10);
        }
        return s02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28451c) {
            size = this.f28450b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28451c) {
            obj = this.f28450b.toString();
        }
        return obj;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28451c) {
            values = this.f28450b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28451c) {
            w10 = this.f28450b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3263c(InterfaceC13060a interfaceC13060a, Object obj) {
        this.f28450b = interfaceC13060a;
        this.f28451c = obj;
    }
}
