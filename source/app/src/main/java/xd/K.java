package Xd;

import ee.InterfaceC13084z;
import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class K implements InterfaceC13084z, Serializable {

    public static final long f28351f = 1978198479659022715L;

    public final InterfaceC13084z f28352b;

    public final Object f28353c;

    public transient InterfaceC13970d f28354d = null;

    public transient Sd.b f28355e = null;

    public K(InterfaceC13084z interfaceC13084z) {
        interfaceC13084z.getClass();
        this.f28352b = interfaceC13084z;
        this.f28353c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28353c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public char F5(float f10, char c10) {
        char F52;
        synchronized (this.f28353c) {
            F52 = this.f28352b.F5(f10, c10);
        }
        return F52;
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28353c) {
            G02 = this.f28352b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28353c) {
            H10 = this.f28352b.H(f10);
        }
        return H10;
    }

    @Override
    public boolean J9(float f10, char c10) {
        boolean J92;
        synchronized (this.f28353c) {
            J92 = this.f28352b.J9(f10, c10);
        }
        return J92;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28353c) {
            K10 = this.f28352b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28353c) {
            O10 = this.f28352b.O(c10);
        }
        return O10;
    }

    @Override
    public void S7(InterfaceC13084z interfaceC13084z) {
        synchronized (this.f28353c) {
            this.f28352b.S7(interfaceC13084z);
        }
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28353c) {
            Z10 = this.f28352b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public boolean Zb(he.C c10) {
        boolean Zb2;
        synchronized (this.f28353c) {
            Zb2 = this.f28352b.Zb(c10);
        }
        return Zb2;
    }

    @Override
    public char c(float f10) {
        char c10;
        synchronized (this.f28353c) {
            c10 = this.f28352b.c(f10);
        }
        return c10;
    }

    @Override
    public void clear() {
        synchronized (this.f28353c) {
            this.f28352b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28353c) {
            d02 = this.f28352b.d0(fArr);
        }
        return d02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28353c) {
            equals = this.f28352b.equals(obj);
        }
        return equals;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28353c) {
            this.f28352b.g(bVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28353c) {
            hashCode = this.f28352b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28352b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28353c) {
            isEmpty = this.f28352b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.D iterator() {
        return this.f28352b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28353c) {
            j10 = this.f28352b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28353c) {
            j02 = this.f28352b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28353c) {
            try {
                if (this.f28355e == null) {
                    this.f28355e = new C3289p(this.f28352b.k(), this.f28353c);
                }
                bVar = this.f28355e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28353c) {
            try {
                if (this.f28354d == null) {
                    this.f28354d = new T(this.f28352b.keySet(), this.f28353c);
                }
                interfaceC13970d = this.f28354d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28352b.l();
    }

    @Override
    public char p9(float f10, char c10, char c11) {
        char p92;
        synchronized (this.f28353c) {
            p92 = this.f28352b.p9(f10, c10, c11);
        }
        return p92;
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Character> map) {
        synchronized (this.f28353c) {
            this.f28352b.putAll(map);
        }
    }

    @Override
    public char q0(float f10) {
        char q02;
        synchronized (this.f28353c) {
            q02 = this.f28352b.q0(f10);
        }
        return q02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28353c) {
            size = this.f28352b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28353c) {
            obj = this.f28352b.toString();
        }
        return obj;
    }

    @Override
    public boolean v5(he.C c10) {
        boolean v52;
        synchronized (this.f28353c) {
            v52 = this.f28352b.v5(c10);
        }
        return v52;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28353c) {
            values = this.f28352b.values();
        }
        return values;
    }

    @Override
    public char xe(float f10, char c10) {
        char xe2;
        synchronized (this.f28353c) {
            xe2 = this.f28352b.xe(f10, c10);
        }
        return xe2;
    }

    public K(InterfaceC13084z interfaceC13084z, Object obj) {
        this.f28352b = interfaceC13084z;
        this.f28353c = obj;
    }
}
