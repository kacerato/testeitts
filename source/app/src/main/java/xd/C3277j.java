package Xd;

import Zd.InterfaceC3450h;
import ee.InterfaceC13065f;
import he.InterfaceC13451f;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3277j implements InterfaceC13065f, Serializable {

    public static final long f28508f = 1978198479659022715L;

    public final InterfaceC13065f f28509b;

    public final Object f28510c;

    public transient InterfaceC13967a f28511d = null;

    public transient Sd.h f28512e = null;

    public C3277j(InterfaceC13065f interfaceC13065f) {
        interfaceC13065f.getClass();
        this.f28509b = interfaceC13065f;
        this.f28510c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28510c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28510c) {
            D10 = this.f28509b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28510c) {
            E02 = this.f28509b.E0(b10);
        }
        return E02;
    }

    @Override
    public long N8(byte b10, long j10, long j11) {
        long N82;
        synchronized (this.f28510c) {
            N82 = this.f28509b.N8(b10, j10, j11);
        }
        return N82;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28510c) {
            R10 = this.f28509b.R(j10);
        }
        return R10;
    }

    @Override
    public void R4(InterfaceC13065f interfaceC13065f) {
        synchronized (this.f28510c) {
            this.f28509b.R4(interfaceC13065f);
        }
    }

    @Override
    public boolean V5(InterfaceC13451f interfaceC13451f) {
        boolean V52;
        synchronized (this.f28510c) {
            V52 = this.f28509b.V5(interfaceC13451f);
        }
        return V52;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28510c) {
            X10 = this.f28509b.X(bArr);
        }
        return X10;
    }

    @Override
    public boolean a9(InterfaceC13451f interfaceC13451f) {
        boolean a92;
        synchronized (this.f28510c) {
            a92 = this.f28509b.a9(interfaceC13451f);
        }
        return a92;
    }

    @Override
    public long b4(byte b10, long j10) {
        long b42;
        synchronized (this.f28510c) {
            b42 = this.f28509b.b4(b10, j10);
        }
        return b42;
    }

    @Override
    public void clear() {
        synchronized (this.f28510c) {
            this.f28509b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28510c) {
            equals = this.f28509b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28510c) {
            g02 = this.f28509b.g0(jArr);
        }
        return g02;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28510c) {
            this.f28509b.h(fVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28510c) {
            hashCode = this.f28509b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28509b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28510c) {
            isEmpty = this.f28509b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3450h iterator() {
        return this.f28509b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28510c) {
            j10 = this.f28509b.j();
        }
        return j10;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28510c) {
            try {
                if (this.f28512e == null) {
                    this.f28512e = new C3276i0(this.f28509b.k(), this.f28510c);
                }
                hVar = this.f28512e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28510c) {
            try {
                if (this.f28511d == null) {
                    this.f28511d = new C3281l(this.f28509b.keySet(), this.f28510c);
                }
                interfaceC13967a = this.f28511d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28509b.l();
    }

    @Override
    public long m(byte b10) {
        long m10;
        synchronized (this.f28510c) {
            m10 = this.f28509b.m(b10);
        }
        return m10;
    }

    @Override
    public boolean oe(byte b10, long j10) {
        boolean oe2;
        synchronized (this.f28510c) {
            oe2 = this.f28509b.oe(b10, j10);
        }
        return oe2;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Long> map) {
        synchronized (this.f28510c) {
            this.f28509b.putAll(map);
        }
    }

    @Override
    public long s0(byte b10) {
        long s02;
        synchronized (this.f28510c) {
            s02 = this.f28509b.s0(b10);
        }
        return s02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28510c) {
            size = this.f28509b.size();
        }
        return size;
    }

    @Override
    public long ta(byte b10, long j10) {
        long ta2;
        synchronized (this.f28510c) {
            ta2 = this.f28509b.ta(b10, j10);
        }
        return ta2;
    }

    public String toString() {
        String obj;
        synchronized (this.f28510c) {
            obj = this.f28509b.toString();
        }
        return obj;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28510c) {
            values = this.f28509b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28510c) {
            w10 = this.f28509b.w(interfaceC13453h);
        }
        return w10;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28510c) {
            x10 = this.f28509b.x(b0Var);
        }
        return x10;
    }

    public C3277j(InterfaceC13065f interfaceC13065f, Object obj) {
        this.f28509b = interfaceC13065f;
        this.f28510c = obj;
    }
}
