package Xd;

import Zd.InterfaceC3448f;
import ee.InterfaceC13064e;
import he.InterfaceC13450e;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3273h implements InterfaceC13064e, Serializable {

    public static final long f28493f = 1978198479659022715L;

    public final InterfaceC13064e f28494b;

    public final Object f28495c;

    public transient InterfaceC13967a f28496d = null;

    public transient Sd.g f28497e = null;

    public C3273h(InterfaceC13064e interfaceC13064e) {
        interfaceC13064e.getClass();
        this.f28494b = interfaceC13064e;
        this.f28495c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28495c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28495c) {
            D10 = this.f28494b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28495c) {
            E02 = this.f28494b.E0(b10);
        }
        return E02;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28495c) {
            Q10 = this.f28494b.Q(i10);
        }
        return Q10;
    }

    @Override
    public boolean Vb(InterfaceC13450e interfaceC13450e) {
        boolean Vb2;
        synchronized (this.f28495c) {
            Vb2 = this.f28494b.Vb(interfaceC13450e);
        }
        return Vb2;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28495c) {
            X10 = this.f28494b.X(bArr);
        }
        return X10;
    }

    @Override
    public int Y3(byte b10, int i10) {
        int Y32;
        synchronized (this.f28495c) {
            Y32 = this.f28494b.Y3(b10, i10);
        }
        return Y32;
    }

    @Override
    public void ac(InterfaceC13064e interfaceC13064e) {
        synchronized (this.f28495c) {
            this.f28494b.ac(interfaceC13064e);
        }
    }

    @Override
    public boolean bc(InterfaceC13450e interfaceC13450e) {
        boolean bc2;
        synchronized (this.f28495c) {
            bc2 = this.f28494b.bc(interfaceC13450e);
        }
        return bc2;
    }

    @Override
    public int ca(byte b10, int i10) {
        int ca2;
        synchronized (this.f28495c) {
            ca2 = this.f28494b.ca(b10, i10);
        }
        return ca2;
    }

    @Override
    public void clear() {
        synchronized (this.f28495c) {
            this.f28494b.clear();
        }
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28495c) {
            e02 = this.f28494b.e0(iArr);
        }
        return e02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28495c) {
            equals = this.f28494b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28495c) {
            this.f28494b.f(eVar);
        }
    }

    @Override
    public boolean ge(byte b10, int i10) {
        boolean ge2;
        synchronized (this.f28495c) {
            ge2 = this.f28494b.ge(b10, i10);
        }
        return ge2;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28495c) {
            hashCode = this.f28494b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28494b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28495c) {
            isEmpty = this.f28494b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3448f iterator() {
        return this.f28494b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28495c) {
            j10 = this.f28494b.j();
        }
        return j10;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28495c) {
            try {
                if (this.f28497e == null) {
                    this.f28497e = new X(this.f28494b.k(), this.f28495c);
                }
                gVar = this.f28497e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28495c) {
            try {
                if (this.f28496d == null) {
                    this.f28496d = new C3281l(this.f28494b.keySet(), this.f28495c);
                }
                interfaceC13967a = this.f28496d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28494b.l();
    }

    @Override
    public int m(byte b10) {
        int m10;
        synchronized (this.f28495c) {
            m10 = this.f28494b.m(b10);
        }
        return m10;
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28495c) {
            m02 = this.f28494b.m0(s10);
        }
        return m02;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Integer> map) {
        synchronized (this.f28495c) {
            this.f28494b.putAll(map);
        }
    }

    @Override
    public int s0(byte b10) {
        int s02;
        synchronized (this.f28495c) {
            s02 = this.f28494b.s0(b10);
        }
        return s02;
    }

    @Override
    public int s8(byte b10, int i10, int i11) {
        int s82;
        synchronized (this.f28495c) {
            s82 = this.f28494b.s8(b10, i10, i11);
        }
        return s82;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28495c) {
            size = this.f28494b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28495c) {
            obj = this.f28494b.toString();
        }
        return obj;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28495c) {
            values = this.f28494b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28495c) {
            w10 = this.f28494b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3273h(InterfaceC13064e interfaceC13064e, Object obj) {
        this.f28494b = interfaceC13064e;
        this.f28495c = obj;
    }
}
