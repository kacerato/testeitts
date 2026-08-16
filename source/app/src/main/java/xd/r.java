package Xd;

import Zd.InterfaceC3456n;
import ee.InterfaceC13071l;
import he.InterfaceC13458m;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class r implements InterfaceC13071l, Serializable {

    public static final long f28575f = 1978198479659022715L;

    public final InterfaceC13071l f28576b;

    public final Object f28577c;

    public transient InterfaceC13968b f28578d = null;

    public transient Sd.f f28579e = null;

    public r(InterfaceC13071l interfaceC13071l) {
        interfaceC13071l.getClass();
        this.f28576b = interfaceC13071l;
        this.f28577c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28577c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B(he.I i10) {
        boolean B10;
        synchronized (this.f28577c) {
            B10 = this.f28576b.B(i10);
        }
        return B10;
    }

    @Override
    public float B9(char c10, float f10) {
        float B92;
        synchronized (this.f28577c) {
            B92 = this.f28576b.B9(c10, f10);
        }
        return B92;
    }

    @Override
    public boolean C(char c10) {
        boolean C10;
        synchronized (this.f28577c) {
            C10 = this.f28576b.C(c10);
        }
        return C10;
    }

    @Override
    public float C4(char c10, float f10) {
        float C42;
        synchronized (this.f28577c) {
            C42 = this.f28576b.C4(c10, f10);
        }
        return C42;
    }

    @Override
    public boolean D0(char c10) {
        boolean D02;
        synchronized (this.f28577c) {
            D02 = this.f28576b.D0(c10);
        }
        return D02;
    }

    @Override
    public void E6(InterfaceC13071l interfaceC13071l) {
        synchronized (this.f28577c) {
            this.f28576b.E6(interfaceC13071l);
        }
    }

    @Override
    public float M4(char c10, float f10, float f11) {
        float M42;
        synchronized (this.f28577c) {
            M42 = this.f28576b.M4(c10, f10, f11);
        }
        return M42;
    }

    @Override
    public boolean Sd(char c10, float f10) {
        boolean Sd2;
        synchronized (this.f28577c) {
            Sd2 = this.f28576b.Sd(c10, f10);
        }
        return Sd2;
    }

    @Override
    public boolean U(float f10) {
        boolean U10;
        synchronized (this.f28577c) {
            U10 = this.f28576b.U(f10);
        }
        return U10;
    }

    @Override
    public char[] V(char[] cArr) {
        char[] V10;
        synchronized (this.f28577c) {
            V10 = this.f28576b.V(cArr);
        }
        return V10;
    }

    @Override
    public boolean X8(InterfaceC13458m interfaceC13458m) {
        boolean X82;
        synchronized (this.f28577c) {
            X82 = this.f28576b.X8(interfaceC13458m);
        }
        return X82;
    }

    @Override
    public float b(char c10) {
        float b10;
        synchronized (this.f28577c) {
            b10 = this.f28576b.b(c10);
        }
        return b10;
    }

    @Override
    public float[] c0(float[] fArr) {
        float[] c02;
        synchronized (this.f28577c) {
            c02 = this.f28576b.c0(fArr);
        }
        return c02;
    }

    @Override
    public void clear() {
        synchronized (this.f28577c) {
            this.f28576b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28577c) {
            equals = this.f28576b.equals(obj);
        }
        return equals;
    }

    @Override
    public boolean fd(InterfaceC13458m interfaceC13458m) {
        boolean fd2;
        synchronized (this.f28577c) {
            fd2 = this.f28576b.fd(interfaceC13458m);
        }
        return fd2;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28577c) {
            hashCode = this.f28576b.hashCode();
        }
        return hashCode;
    }

    @Override
    public float i() {
        return this.f28576b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28577c) {
            isEmpty = this.f28576b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3456n iterator() {
        return this.f28576b.iterator();
    }

    @Override
    public char[] j() {
        char[] j10;
        synchronized (this.f28577c) {
            j10 = this.f28576b.j();
        }
        return j10;
    }

    @Override
    public Sd.f k() {
        Sd.f fVar;
        synchronized (this.f28577c) {
            try {
                if (this.f28579e == null) {
                    this.f28579e = new L(this.f28576b.k(), this.f28577c);
                }
                fVar = this.f28579e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    @Override
    public InterfaceC13968b keySet() {
        InterfaceC13968b interfaceC13968b;
        synchronized (this.f28577c) {
            try {
                if (this.f28578d == null) {
                    this.f28578d = new C3296w(this.f28576b.keySet(), this.f28577c);
                }
                interfaceC13968b = this.f28578d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13968b;
    }

    @Override
    public char l() {
        return this.f28576b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        synchronized (this.f28577c) {
            this.f28576b.n(dVar);
        }
    }

    @Override
    public float o0(char c10) {
        float o02;
        synchronized (this.f28577c) {
            o02 = this.f28576b.o0(c10);
        }
        return o02;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Float> map) {
        synchronized (this.f28577c) {
            this.f28576b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28577c) {
            size = this.f28576b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28577c) {
            obj = this.f28576b.toString();
        }
        return obj;
    }

    @Override
    public float[] values() {
        float[] values;
        synchronized (this.f28577c) {
            values = this.f28576b.values();
        }
        return values;
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        boolean y10;
        synchronized (this.f28577c) {
            y10 = this.f28576b.y(interfaceC13462q);
        }
        return y10;
    }

    public r(InterfaceC13071l interfaceC13071l, Object obj) {
        this.f28576b = interfaceC13071l;
        this.f28577c = obj;
    }
}
