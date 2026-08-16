package Xd;

import Zd.InterfaceC3452j;
import ee.InterfaceC13067h;
import he.InterfaceC13453h;
import he.InterfaceC13454i;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3283m implements InterfaceC13067h, Serializable {

    public static final long f28534f = 1978198479659022715L;

    public final InterfaceC13067h f28535b;

    public final Object f28536c;

    public transient InterfaceC13967a f28537d = null;

    public transient Sd.i f28538e = null;

    public C3283m(InterfaceC13067h interfaceC13067h) {
        interfaceC13067h.getClass();
        this.f28535b = interfaceC13067h;
        this.f28536c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28536c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean Cd(byte b10, short s10) {
        boolean Cd2;
        synchronized (this.f28536c) {
            Cd2 = this.f28535b.Cd(b10, s10);
        }
        return Cd2;
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28536c) {
            D10 = this.f28535b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean Dd(InterfaceC13454i interfaceC13454i) {
        boolean Dd2;
        synchronized (this.f28536c) {
            Dd2 = this.f28535b.Dd(interfaceC13454i);
        }
        return Dd2;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28536c) {
            E02 = this.f28535b.E0(b10);
        }
        return E02;
    }

    @Override
    public boolean L(short s10) {
        boolean L10;
        synchronized (this.f28536c) {
            L10 = this.f28535b.L(s10);
        }
        return L10;
    }

    @Override
    public void Lc(InterfaceC13067h interfaceC13067h) {
        synchronized (this.f28536c) {
            this.f28535b.Lc(interfaceC13067h);
        }
    }

    @Override
    public boolean N(he.t0 t0Var) {
        boolean N10;
        synchronized (this.f28536c) {
            N10 = this.f28535b.N(t0Var);
        }
        return N10;
    }

    @Override
    public boolean P7(InterfaceC13454i interfaceC13454i) {
        boolean P72;
        synchronized (this.f28536c) {
            P72 = this.f28535b.P7(interfaceC13454i);
        }
        return P72;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28536c) {
            X10 = this.f28535b.X(bArr);
        }
        return X10;
    }

    @Override
    public void clear() {
        synchronized (this.f28536c) {
            this.f28535b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28536c) {
            equals = this.f28535b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28536c) {
            hashCode = this.f28535b.hashCode();
        }
        return hashCode;
    }

    @Override
    public short i() {
        return this.f28535b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        short[] i02;
        synchronized (this.f28536c) {
            i02 = this.f28535b.i0(sArr);
        }
        return i02;
    }

    @Override
    public short ia(byte b10, short s10) {
        short ia2;
        synchronized (this.f28536c) {
            ia2 = this.f28535b.ia(b10, s10);
        }
        return ia2;
    }

    @Override
    public short ic(byte b10, short s10, short s11) {
        short ic2;
        synchronized (this.f28536c) {
            ic2 = this.f28535b.ic(b10, s10, s11);
        }
        return ic2;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28536c) {
            isEmpty = this.f28535b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3452j iterator() {
        return this.f28535b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28536c) {
            j10 = this.f28535b.j();
        }
        return j10;
    }

    @Override
    public Sd.i k() {
        Sd.i iVar;
        synchronized (this.f28536c) {
            try {
                if (this.f28538e == null) {
                    this.f28538e = new H0(this.f28535b.k(), this.f28536c);
                }
                iVar = this.f28538e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28536c) {
            try {
                if (this.f28537d == null) {
                    this.f28537d = new C3281l(this.f28535b.keySet(), this.f28536c);
                }
                interfaceC13967a = this.f28537d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28535b.l();
    }

    @Override
    public short m(byte b10) {
        short m10;
        synchronized (this.f28536c) {
            m10 = this.f28535b.m(b10);
        }
        return m10;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Short> map) {
        synchronized (this.f28536c) {
            this.f28535b.putAll(map);
        }
    }

    @Override
    public void r(Ud.h hVar) {
        synchronized (this.f28536c) {
            this.f28535b.r(hVar);
        }
    }

    @Override
    public short s0(byte b10) {
        short s02;
        synchronized (this.f28536c) {
            s02 = this.f28535b.s0(b10);
        }
        return s02;
    }

    @Override
    public short s4(byte b10, short s10) {
        short s42;
        synchronized (this.f28536c) {
            s42 = this.f28535b.s4(b10, s10);
        }
        return s42;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28536c) {
            size = this.f28535b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28536c) {
            obj = this.f28535b.toString();
        }
        return obj;
    }

    @Override
    public short[] values() {
        short[] values;
        synchronized (this.f28536c) {
            values = this.f28535b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28536c) {
            w10 = this.f28535b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3283m(InterfaceC13067h interfaceC13067h, Object obj) {
        this.f28535b = interfaceC13067h;
        this.f28536c = obj;
    }
}
