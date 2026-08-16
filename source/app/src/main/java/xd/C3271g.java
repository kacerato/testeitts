package Xd;

import Zd.InterfaceC3447e;
import ee.InterfaceC13063d;
import he.InterfaceC13449d;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3271g implements InterfaceC13063d, Serializable {

    public static final long f28483f = 1978198479659022715L;

    public final InterfaceC13063d f28484b;

    public final Object f28485c;

    public transient InterfaceC13967a f28486d = null;

    public transient Sd.f f28487e = null;

    public C3271g(InterfaceC13063d interfaceC13063d) {
        interfaceC13063d.getClass();
        this.f28484b = interfaceC13063d;
        this.f28485c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28485c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28485c) {
            B10 = this.f28484b.B(i10);
        }
        return B10;
    }

    @Override
    public boolean D(byte b10) {
        boolean D10;
        synchronized (this.f28485c) {
            D10 = this.f28484b.D(b10);
        }
        return D10;
    }

    @Override
    public boolean E0(byte b10) {
        boolean E02;
        synchronized (this.f28485c) {
            E02 = this.f28484b.E0(b10);
        }
        return E02;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28485c) {
            U10 = this.f28484b.U(f10);
        }
        return U10;
    }

    @Override
    public float V3(byte b10, float f10) {
        float V32;
        synchronized (this.f28485c) {
            V32 = this.f28484b.V3(b10, f10);
        }
        return V32;
    }

    @Override
    public byte[] X(byte[] bArr) {
        byte[] X10;
        synchronized (this.f28485c) {
            X10 = this.f28484b.X(bArr);
        }
        return X10;
    }

    @Override
    public float X9(byte b10, float f10) {
        float X92;
        synchronized (this.f28485c) {
            X92 = this.f28484b.X9(b10, f10);
        }
        return X92;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28485c) {
            c02 = this.f28484b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28485c) {
            this.f28484b.clear();
        }
    }

    @Override
    public void d9(InterfaceC13063d interfaceC13063d) {
        synchronized (this.f28485c) {
            this.f28484b.d9(interfaceC13063d);
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28485c) {
            equals = this.f28484b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28485c) {
            hashCode = this.f28484b.hashCode();
        }
        return hashCode;
    }

    @Override
    public boolean he(byte b10, float f10) {
        boolean he2;
        synchronized (this.f28485c) {
            he2 = this.f28484b.he(b10, f10);
        }
        return he2;
    }

    @Override
    public float i() {
        return this.f28484b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28485c) {
            isEmpty = this.f28484b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3447e iterator() {
        return this.f28484b.iterator();
    }

    @Override
    public byte[] j() {
        byte[] j10;
        synchronized (this.f28485c) {
            j10 = this.f28484b.j();
        }
        return j10;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28485c) {
            try {
                if (this.f28487e == null) {
                    this.f28487e = new L(this.f28484b.k(), this.f28485c);
                }
                fVar = this.f28487e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public InterfaceC13967a keySet() {
        InterfaceC13967a interfaceC13967a;
        synchronized (this.f28485c) {
            try {
                if (this.f28486d == null) {
                    this.f28486d = new C3281l(this.f28484b.keySet(), this.f28485c);
                }
                interfaceC13967a = this.f28486d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13967a;
    }

    @Override
    public byte l() {
        return this.f28484b.l();
    }

    @Override
    public float m(byte b10) {
        float m10;
        synchronized (this.f28485c) {
            m10 = this.f28484b.m(b10);
        }
        return m10;
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28485c) {
            this.f28484b.n(dVar);
        }
    }

    @Override
    public float n4(byte b10, float f10, float f11) {
        float n42;
        synchronized (this.f28485c) {
            n42 = this.f28484b.n4(b10, f10, f11);
        }
        return n42;
    }

    @Override
    public boolean ob(InterfaceC13449d interfaceC13449d) {
        boolean ob2;
        synchronized (this.f28485c) {
            ob2 = this.f28484b.ob(interfaceC13449d);
        }
        return ob2;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Float> map) {
        synchronized (this.f28485c) {
            this.f28484b.putAll(map);
        }
    }

    @Override
    public float s0(byte b10) {
        float s02;
        synchronized (this.f28485c) {
            s02 = this.f28484b.s0(b10);
        }
        return s02;
    }

    @Override
    public boolean s3(InterfaceC13449d interfaceC13449d) {
        boolean s32;
        synchronized (this.f28485c) {
            s32 = this.f28484b.s3(interfaceC13449d);
        }
        return s32;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28485c) {
            size = this.f28484b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28485c) {
            obj = this.f28484b.toString();
        }
        return obj;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28485c) {
            values = this.f28484b.values();
        }
        return values;
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        boolean w10;
        synchronized (this.f28485c) {
            w10 = this.f28484b.w(interfaceC13453h);
        }
        return w10;
    }

    public C3271g(InterfaceC13063d interfaceC13063d, Object obj) {
        this.f28484b = interfaceC13063d;
        this.f28485c = obj;
    }
}
