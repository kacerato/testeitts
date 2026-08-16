package Xd;

import ee.InterfaceC13083y;
import he.InterfaceC13445B;
import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class J implements InterfaceC13083y, Serializable {

    public static final long f28341f = 1978198479659022715L;

    public final InterfaceC13083y f28342b;

    public final Object f28343c;

    public transient InterfaceC13970d f28344d = null;

    public transient Sd.a f28345e = null;

    public J(InterfaceC13083y interfaceC13083y) {
        interfaceC13083y.getClass();
        this.f28342b = interfaceC13083y;
        this.f28343c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28343c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public byte D5(float f10, byte b10) {
        byte D52;
        synchronized (this.f28343c) {
            D52 = this.f28342b.D5(f10, b10);
        }
        return D52;
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28343c) {
            G02 = this.f28342b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28343c) {
            H10 = this.f28342b.H(f10);
        }
        return H10;
    }

    @Override
    public boolean K9(float f10, byte b10) {
        boolean K92;
        synchronized (this.f28343c) {
            K92 = this.f28342b.K9(f10, b10);
        }
        return K92;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        boolean M10;
        synchronized (this.f28343c) {
            M10 = this.f28342b.M(interfaceC13453h);
        }
        return M10;
    }

    @Override
    public void Ma(InterfaceC13083y interfaceC13083y) {
        synchronized (this.f28343c) {
            this.f28342b.Ma(interfaceC13083y);
        }
    }

    @Override
    public boolean P(byte b10) {
        boolean P10;
        synchronized (this.f28343c) {
            P10 = this.f28342b.P(b10);
        }
        return P10;
    }

    @Override
    public byte Qa(float f10, byte b10, byte b11) {
        byte Qa2;
        synchronized (this.f28343c) {
            Qa2 = this.f28342b.Qa(f10, b10, b11);
        }
        return Qa2;
    }

    @Override
    public boolean Za(InterfaceC13445B interfaceC13445B) {
        boolean Za2;
        synchronized (this.f28343c) {
            Za2 = this.f28342b.Za(interfaceC13445B);
        }
        return Za2;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        byte[] a02;
        synchronized (this.f28343c) {
            a02 = this.f28342b.a0(bArr);
        }
        return a02;
    }

    @Override
    public byte c(float f10) {
        byte c10;
        synchronized (this.f28343c) {
            c10 = this.f28342b.c(f10);
        }
        return c10;
    }

    @Override
    public void clear() {
        synchronized (this.f28343c) {
            this.f28342b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28343c) {
            d02 = this.f28342b.d0(fArr);
        }
        return d02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28343c) {
            equals = this.f28342b.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28343c) {
            hashCode = this.f28342b.hashCode();
        }
        return hashCode;
    }

    @Override
    public byte i() {
        return this.f28342b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28343c) {
            isEmpty = this.f28342b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.C iterator() {
        return this.f28342b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28343c) {
            j10 = this.f28342b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28343c) {
            j02 = this.f28342b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.a k() {
        Sd.a aVar;
        synchronized (this.f28343c) {
            try {
                if (this.f28345e == null) {
                    this.f28345e = new C3267e(this.f28342b.k(), this.f28343c);
                }
                aVar = this.f28345e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public boolean kc(InterfaceC13445B interfaceC13445B) {
        boolean kc2;
        synchronized (this.f28343c) {
            kc2 = this.f28342b.kc(interfaceC13445B);
        }
        return kc2;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28343c) {
            try {
                if (this.f28344d == null) {
                    this.f28344d = new T(this.f28342b.keySet(), this.f28343c);
                }
                interfaceC13970d = this.f28344d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28342b.l();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Byte> map) {
        synchronized (this.f28343c) {
            this.f28342b.putAll(map);
        }
    }

    @Override
    public byte q0(float f10) {
        byte q02;
        synchronized (this.f28343c) {
            q02 = this.f28342b.q0(f10);
        }
        return q02;
    }

    @Override
    public void s(Ud.a aVar) {
        synchronized (this.f28343c) {
            this.f28342b.s(aVar);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28343c) {
            size = this.f28342b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28343c) {
            obj = this.f28342b.toString();
        }
        return obj;
    }

    @Override
    public byte[] values() {
        byte[] values;
        synchronized (this.f28343c) {
            values = this.f28342b.values();
        }
        return values;
    }

    @Override
    public byte we(float f10, byte b10) {
        byte we2;
        synchronized (this.f28343c) {
            we2 = this.f28342b.we(f10, b10);
        }
        return we2;
    }

    public J(InterfaceC13083y interfaceC13083y, Object obj) {
        this.f28342b = interfaceC13083y;
        this.f28343c = obj;
    }
}
