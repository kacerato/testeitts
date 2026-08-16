package Xd;

import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3272g0 implements ee.O, Serializable {

    public static final long f28488f = 1978198479659022715L;

    public final ee.O f28489b;

    public final Object f28490c;

    public transient InterfaceC13972f f28491d = null;

    public transient Sd.a f28492e = null;

    public C3272g0(ee.O o10) {
        o10.getClass();
        this.f28489b = o10;
        this.f28490c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28490c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean E(long j10) {
        boolean E10;
        synchronized (this.f28490c) {
            E10 = this.f28489b.E(j10);
        }
        return E10;
    }

    @Override
    public boolean H0(long j10) {
        boolean H02;
        synchronized (this.f28490c) {
            H02 = this.f28489b.H0(j10);
        }
        return H02;
    }

    @Override
    public byte K7(long j10, byte b10, byte b11) {
        byte K72;
        synchronized (this.f28490c) {
            K72 = this.f28489b.K7(j10, b10, b11);
        }
        return K72;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28490c) {
            M10 = this.f28489b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public boolean M6(he.U u10) {
        boolean M62;
        synchronized (this.f28490c) {
            M62 = this.f28489b.M6(u10);
        }
        return M62;
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28490c) {
            P10 = this.f28489b.P(b10);
        }
        return P10;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28490c) {
            a02 = this.f28489b.a0(bArr);
        }
        return a02;
    }

    @Override
    public boolean aa(he.U u10) {
        boolean aa2;
        synchronized (this.f28490c) {
            aa2 = this.f28489b.aa(u10);
        }
        return aa2;
    }

    @Override
    public void clear() {
        synchronized (this.f28490c) {
            this.f28489b.clear();
        }
    }

    @Override
    public byte e(long j10) {
        byte e10;
        synchronized (this.f28490c) {
            e10 = this.f28489b.e(j10);
        }
        return e10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28490c) {
            equals = this.f28489b.equals(obj);
        }
        return equals;
    }

    @Override
    public byte f7(long j10, byte b10) {
        byte f72;
        synchronized (this.f28490c) {
            f72 = this.f28489b.f7(j10, b10);
        }
        return f72;
    }

    @Override
    public long[] h0(long[] jArr) {
        long[] h02;
        synchronized (this.f28490c) {
            h02 = this.f28489b.h0(jArr);
        }
        return h02;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28490c) {
            hashCode = this.f28489b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28489b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28490c) {
            isEmpty = this.f28489b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.W iterator() {
        return this.f28489b.iterator();
    }

    @Override
    public long[] j() {
        long[] j10;
        synchronized (this.f28490c) {
            j10 = this.f28489b.j();
        }
        return j10;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28490c) {
            try {
                if (this.f28492e == null) {
                    this.f28492e = new C3267e(this.f28489b.k(), this.f28490c);
                }
                aVar = this.f28492e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public InterfaceC13972f keySet() {
        InterfaceC13972f interfaceC13972f;
        synchronized (this.f28490c) {
            try {
                if (this.f28491d == null) {
                    this.f28491d = new C3290p0(this.f28489b.keySet(), this.f28490c);
                }
                interfaceC13972f = this.f28491d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13972f;
    }

    @Override
    public long l() {
        return this.f28489b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        boolean l02;
        synchronized (this.f28490c) {
            l02 = this.f28489b.l0(b0Var);
        }
        return l02;
    }

    @Override
    public boolean mb(long j10, byte b10) {
        boolean mb2;
        synchronized (this.f28490c) {
            mb2 = this.f28489b.mb(j10, b10);
        }
        return mb2;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Byte> map) {
        synchronized (this.f28490c) {
            this.f28489b.putAll(map);
        }
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28490c) {
            this.f28489b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28490c) {
            size = this.f28489b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28490c) {
            obj = this.f28489b.toString();
        }
        return obj;
    }

    @Override
    public byte u(long j10) {
        byte u10;
        synchronized (this.f28490c) {
            u10 = this.f28489b.u(j10);
        }
        return u10;
    }

    @Override
    public byte ud(long j10, byte b10) {
        byte ud2;
        synchronized (this.f28490c) {
            ud2 = this.f28489b.ud(j10, b10);
        }
        return ud2;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28490c) {
            values = this.f28489b.values();
        }
        return values;
    }

    @Override
    public void ya(ee.O o10) {
        synchronized (this.f28490c) {
            this.f28489b.ya(o10);
        }
    }

    public C3272g0(ee.O o10, Object obj) {
        this.f28489b = o10;
        this.f28490c = obj;
    }
}
