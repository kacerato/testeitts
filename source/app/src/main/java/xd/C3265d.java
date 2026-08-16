package Xd;

import Zd.InterfaceC3445c;
import ee.InterfaceC13061b;
import he.InterfaceC13447b;
import he.InterfaceC13453h;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3265d implements InterfaceC13061b, Serializable {

    public static final long f28459f = 1978198479659022715L;

    public final InterfaceC13061b f28460b;

    public final Object f28461c;

    public transient InterfaceC13967a f28462d = null;

    public transient Sd.b f28463e = null;

    public C3265d(InterfaceC13061b interfaceC13061b) {
        interfaceC13061b.getClass();
        this.f28460b = interfaceC13061b;
        this.f28461c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28461c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28461c) {
            D10 = this.f28460b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28461c) {
            E02 = this.f28460b.E0(b10);
        }
        return E02;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28461c) {
            K10 = this.f28460b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public char L4(byte b10, char c10, char c11) {
        char L42;
        synchronized (this.f28461c) {
            L42 = this.f28460b.L4(b10, c10, c11);
        }
        return L42;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28461c) {
            O10 = this.f28460b.O(c10);
        }
        return O10;
    }

    @Override
    public void O6(InterfaceC13061b interfaceC13061b) {
        synchronized (this.f28461c) {
            this.f28460b.O6(interfaceC13061b);
        }
    }

    @Override
    public char R3(byte b10, char c10) {
        char R32;
        synchronized (this.f28461c) {
            R32 = this.f28460b.R3(b10, c10);
        }
        return R32;
    }

    @Override
    public boolean R6(InterfaceC13447b interfaceC13447b) {
        boolean R62;
        synchronized (this.f28461c) {
            R62 = this.f28460b.R6(interfaceC13447b);
        }
        return R62;
    }

    @Override
    public boolean U9(InterfaceC13447b interfaceC13447b) {
        boolean U92;
        synchronized (this.f28461c) {
            U92 = this.f28460b.U9(interfaceC13447b);
        }
        return U92;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28461c) {
            X10 = this.f28460b.X(bArr);
        }
        return X10;
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28461c) {
            Z10 = this.f28460b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public void clear() {
        synchronized (this.f28461c) {
            this.f28460b.clear();
        }
    }

    @Override
    public char ea(byte b10, char c10) {
        char ea2;
        synchronized (this.f28461c) {
            ea2 = this.f28460b.ea(b10, c10);
        }
        return ea2;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28461c) {
            equals = this.f28460b.equals(obj);
        }
        return equals;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28461c) {
            this.f28460b.g(bVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28461c) {
            hashCode = this.f28460b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28460b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28461c) {
            isEmpty = this.f28460b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3445c iterator() {
        return this.f28460b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28461c) {
            j10 = this.f28460b.j();
        }
        return j10;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28461c) {
            try {
                if (this.f28463e == null) {
                    this.f28463e = new C3289p(this.f28460b.k(), this.f28461c);
                }
                bVar = this.f28463e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28461c) {
            try {
                if (this.f28462d == null) {
                    this.f28462d = new C3281l(this.f28460b.keySet(), this.f28461c);
                }
                interfaceC13967a = this.f28462d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28460b.l();
    }

    @Override
    public boolean le(byte b10, char c10) {
        boolean le2;
        synchronized (this.f28461c) {
            le2 = this.f28460b.le(b10, c10);
        }
        return le2;
    }

    @Override
    public char m(byte b10) {
        char m10;
        synchronized (this.f28461c) {
            m10 = this.f28460b.m(b10);
        }
        return m10;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Character> map) {
        synchronized (this.f28461c) {
            this.f28460b.putAll(map);
        }
    }

    @Override
    public char s0(byte b10) {
        char s02;
        synchronized (this.f28461c) {
            s02 = this.f28460b.s0(b10);
        }
        return s02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28461c) {
            size = this.f28460b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28461c) {
            obj = this.f28460b.toString();
        }
        return obj;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28461c) {
            values = this.f28460b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28461c) {
            w10 = this.f28460b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3265d(InterfaceC13061b interfaceC13061b, Object obj) {
        this.f28460b = interfaceC13061b;
        this.f28461c = obj;
    }
}
