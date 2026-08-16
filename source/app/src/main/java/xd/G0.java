package Xd;

import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class G0 implements ee.g0, Serializable {

    public static final long f28322f = 1978198479659022715L;

    public final ee.g0 f28323b;

    public final Object f28324c;

    public transient InterfaceC13973g f28325d = null;

    public transient Sd.b f28326e = null;

    public G0(ee.g0 g0Var) {
        g0Var.getClass();
        this.f28323b = g0Var;
        this.f28324c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28324c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public void Ab(ee.g0 g0Var) {
        synchronized (this.f28324c) {
            this.f28323b.Ab(g0Var);
        }
    }

    @Override
    public char D3(short s10, char c10) {
        char D32;
        synchronized (this.f28324c) {
            D32 = this.f28323b.D3(s10, c10);
        }
        return D32;
    }

    @Override
    public boolean I0(short s10) {
        boolean I02;
        synchronized (this.f28324c) {
            I02 = this.f28323b.I0(s10);
        }
        return I02;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28324c) {
            K10 = this.f28323b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28324c) {
            O10 = this.f28323b.O(c10);
        }
        return O10;
    }

    @Override
    public char Wb(short s10, char c10, char c11) {
        char Wb2;
        synchronized (this.f28324c) {
            Wb2 = this.f28323b.Wb(s10, c10, c11);
        }
        return Wb2;
    }

    @Override
    public short[] Y(short[] sArr) {
        short[] Y10;
        synchronized (this.f28324c) {
            Y10 = this.f28323b.Y(sArr);
        }
        return Y10;
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28324c) {
            Z10 = this.f28323b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public boolean Z5(he.n0 n0Var) {
        boolean Z52;
        synchronized (this.f28324c) {
            Z52 = this.f28323b.Z5(n0Var);
        }
        return Z52;
    }

    @Override
    public void clear() {
        synchronized (this.f28324c) {
            this.f28323b.clear();
        }
    }

    @Override
    public char d(short s10) {
        char d10;
        synchronized (this.f28324c) {
            d10 = this.f28323b.d(s10);
        }
        return d10;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28324c) {
            equals = this.f28323b.equals(obj);
        }
        return equals;
    }

    @Override
    public boolean fc(he.n0 n0Var) {
        boolean fc2;
        synchronized (this.f28324c) {
            fc2 = this.f28323b.fc(n0Var);
        }
        return fc2;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28324c) {
            this.f28323b.g(bVar);
        }
    }

    @Override
    public boolean h8(short s10, char c10) {
        boolean h82;
        synchronized (this.f28324c) {
            h82 = this.f28323b.h8(s10, c10);
        }
        return h82;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28324c) {
            hashCode = this.f28323b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28323b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28324c) {
            isEmpty = this.f28323b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.o0 iterator() {
        return this.f28323b.iterator();
    }

    @Override
    public short[] j() {
        short[] j10;
        synchronized (this.f28324c) {
            j10 = this.f28323b.j();
        }
        return j10;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28324c) {
            try {
                if (this.f28326e == null) {
                    this.f28326e = new C3289p(this.f28323b.k(), this.f28324c);
                }
                bVar = this.f28326e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public char ka(short s10, char c10) {
        char ka2;
        synchronized (this.f28324c) {
            ka2 = this.f28323b.ka(s10, c10);
        }
        return ka2;
    }

    @Override
    public InterfaceC13973g keySet() {
        InterfaceC13973g interfaceC13973g;
        synchronized (this.f28324c) {
            try {
                if (this.f28325d == null) {
                    this.f28325d = new O0(this.f28323b.keySet(), this.f28324c);
                }
                interfaceC13973g = this.f28325d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13973g;
    }

    @Override
    public short l() {
        return this.f28323b.l();
    }

    @Override
    public char n0(short s10) {
        char n02;
        synchronized (this.f28324c) {
            n02 = this.f28323b.n0(s10);
        }
        return n02;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Character> map) {
        synchronized (this.f28324c) {
            this.f28323b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28324c) {
            size = this.f28323b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28324c) {
            obj = this.f28323b.toString();
        }
        return obj;
    }

    @Override
    public boolean v(he.t0 t0Var) {
        boolean v10;
        synchronized (this.f28324c) {
            v10 = this.f28323b.v(t0Var);
        }
        return v10;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28324c) {
            values = this.f28323b.values();
        }
        return values;
    }

    @Override
    public boolean z(short s10) {
        boolean z10;
        synchronized (this.f28324c) {
            z10 = this.f28323b.z(s10);
        }
        return z10;
    }

    public G0(ee.g0 g0Var, Object obj) {
        this.f28323b = g0Var;
        this.f28324c = obj;
    }
}
