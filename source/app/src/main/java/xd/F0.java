package Xd;

import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class F0 implements ee.f0, Serializable {

    public static final long f28312f = 1978198479659022715L;

    public final ee.f0 f28313b;

    public final Object f28314c;

    public transient InterfaceC13973g f28315d = null;

    public transient Sd.a f28316e = null;

    public F0(ee.f0 f0Var) {
        f0Var.getClass();
        this.f28313b = f0Var;
        this.f28314c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28314c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28314c) {
            I02 = this.f28313b.I0(s10);
        }
        return I02;
    }

    @Override
    public byte K3(short s10, byte b10) {
        byte K32;
        synchronized (this.f28314c) {
            K32 = this.f28313b.K3(s10, b10);
        }
        return K32;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28314c) {
            M10 = this.f28313b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28314c) {
            P10 = this.f28313b.P(b10);
        }
        return P10;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28314c) {
            Y10 = this.f28313b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public boolean Z7(short s10, byte b10) {
        boolean Z72;
        synchronized (this.f28314c) {
            Z72 = this.f28313b.Z7(s10, b10);
        }
        return Z72;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28314c) {
            a02 = this.f28313b.a0(bArr);
        }
        return a02;
    }

    @Override
    public byte a7(short s10, byte b10, byte b11) {
        byte a72;
        synchronized (this.f28314c) {
            a72 = this.f28313b.a7(s10, b10, b11);
        }
        return a72;
    }

    @Override
    public void clear() {
        synchronized (this.f28314c) {
            this.f28313b.clear();
        }
    }

    @Override
    public byte d(short s10) {
        byte d10;
        synchronized (this.f28314c) {
            d10 = this.f28313b.d(s10);
        }
        return d10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28314c) {
            equals = this.f28313b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28314c) {
            hashCode = this.f28313b.hashCode();
        }
        return hashCode;
    }

    @Override
    public void hd(ee.f0 f0Var) {
        synchronized (this.f28314c) {
            this.f28313b.hd(f0Var);
        }
    }

    @Override
    public byte i() {
        return this.f28313b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28314c) {
            isEmpty = this.f28313b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.n0 iterator() {
        return this.f28313b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28314c) {
            j10 = this.f28313b.j();
        }
        return j10;
    }

    @Override
    public byte ja(short s10, byte b10) {
        byte ja2;
        synchronized (this.f28314c) {
            ja2 = this.f28313b.ja(s10, b10);
        }
        return ja2;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28314c) {
            try {
                if (this.f28316e == null) {
                    this.f28316e = new C3267e(this.f28313b.k(), this.f28314c);
                }
                aVar = this.f28316e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28314c) {
            try {
                if (this.f28315d == null) {
                    this.f28315d = new O0(this.f28313b.keySet(), this.f28314c);
                }
                interfaceC13973g = this.f28315d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28313b.l();
    }

    @Override
    public byte n0(short s10) {
        byte n02;
        synchronized (this.f28314c) {
            n02 = this.f28313b.n0(s10);
        }
        return n02;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Byte> map) {
        synchronized (this.f28314c) {
            this.f28313b.putAll(map);
        }
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28314c) {
            this.f28313b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28314c) {
            size = this.f28313b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28314c) {
            obj = this.f28313b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28314c) {
            v10 = this.f28313b.v(t0Var);
        }
        return v10;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28314c) {
            values = this.f28313b.values();
        }
        return values;
    }

    @Override
    public boolean xc(he.m0 m0Var) {
        boolean xc2;
        synchronized (this.f28314c) {
            xc2 = this.f28313b.xc(m0Var);
        }
        return xc2;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28314c) {
            z10 = this.f28313b.z(s10);
        }
        return z10;
    }

    @Override
    public boolean z5(he.m0 m0Var) {
        boolean z52;
        synchronized (this.f28314c) {
            z52 = this.f28313b.z5(m0Var);
        }
        return z52;
    }

    public F0(ee.f0 f0Var, Object obj) {
        this.f28313b = f0Var;
        this.f28314c = obj;
    }
}
