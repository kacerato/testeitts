package Xd;

import Zd.InterfaceC3462u;
import he.InterfaceC13462q;
import he.InterfaceC13464t;
import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class C3299z implements ee.r, Serializable {

    public static final long f28644f = 1978198479659022715L;

    public final ee.r f28645b;

    public final Object f28646c;

    public transient InterfaceC13969c f28647d = null;

    public transient Sd.b f28648e = null;

    public C3299z(ee.r rVar) {
        rVar.getClass();
        this.f28645b = rVar;
        this.f28646c = this;
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28646c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A(double d10) {
        boolean A10;
        synchronized (this.f28646c) {
            A10 = this.f28645b.A(d10);
        }
        return A10;
    }

    @Override
    public boolean Ga(double d10, char c10) {
        boolean Ga2;
        synchronized (this.f28646c) {
            Ga2 = this.f28645b.Ga(d10, c10);
        }
        return Ga2;
    }

    @Override
    public char I2(double d10, char c10) {
        char I22;
        synchronized (this.f28646c) {
            I22 = this.f28645b.I2(d10, c10);
        }
        return I22;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28646c) {
            K10 = this.f28645b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28646c) {
            O10 = this.f28645b.O(c10);
        }
        return O10;
    }

    @Override
    public void Qe(ee.r rVar) {
        synchronized (this.f28646c) {
            this.f28645b.Qe(rVar);
        }
    }

    @Override
    public char Rc(double d10, char c10, char c11) {
        char Rc2;
        synchronized (this.f28646c) {
            Rc2 = this.f28645b.Rc(d10, c10, c11);
        }
        return Rc2;
    }

    @Override
    public double[] W(double[] dArr) {
        double[] W10;
        synchronized (this.f28646c) {
            W10 = this.f28645b.W(dArr);
        }
        return W10;
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28646c) {
            Z10 = this.f28645b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public char a(double d10) {
        char a10;
        synchronized (this.f28646c) {
            a10 = this.f28645b.a(d10);
        }
        return a10;
    }

    @Override
    public void clear() {
        synchronized (this.f28646c) {
            this.f28645b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28646c) {
            equals = this.f28645b.equals(obj);
        }
        return equals;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28646c) {
            this.f28645b.g(bVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28646c) {
            hashCode = this.f28645b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28645b.i();
    }

    @Override
    public char i9(double d10, char c10) {
        char i92;
        synchronized (this.f28646c) {
            i92 = this.f28645b.i9(d10, c10);
        }
        return i92;
    }

    @Override
    public boolean increment(double d10) {
        boolean increment;
        synchronized (this.f28646c) {
            increment = this.f28645b.increment(d10);
        }
        return increment;
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28646c) {
            isEmpty = this.f28645b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public InterfaceC3462u iterator() {
        return this.f28645b.iterator();
    }

    @Override
    public double[] j() {
        double[] j10;
        synchronized (this.f28646c) {
            j10 = this.f28645b.j();
        }
        return j10;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28646c) {
            try {
                if (this.f28648e == null) {
                    this.f28648e = new C3289p(this.f28645b.k(), this.f28646c);
                }
                bVar = this.f28648e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        boolean k02;
        synchronized (this.f28646c) {
            k02 = this.f28645b.k0(interfaceC13470z);
        }
        return k02;
    }

    @Override
    public InterfaceC13969c keySet() {
        InterfaceC13969c interfaceC13969c;
        synchronized (this.f28646c) {
            try {
                if (this.f28647d == null) {
                    this.f28647d = new H(this.f28645b.keySet(), this.f28646c);
                }
                interfaceC13969c = this.f28647d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13969c;
    }

    @Override
    public double l() {
        return this.f28645b.l();
    }

    @Override
    public char p0(double d10) {
        char p02;
        synchronized (this.f28646c) {
            p02 = this.f28645b.p0(d10);
        }
        return p02;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Character> map) {
        synchronized (this.f28646c) {
            this.f28645b.putAll(map);
        }
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28646c) {
            size = this.f28645b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28646c) {
            obj = this.f28645b.toString();
        }
        return obj;
    }

    @Override
    public boolean u3(InterfaceC13464t interfaceC13464t) {
        boolean u32;
        synchronized (this.f28646c) {
            u32 = this.f28645b.u3(interfaceC13464t);
        }
        return u32;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28646c) {
            values = this.f28645b.values();
        }
        return values;
    }

    @Override
    public boolean y8(InterfaceC13464t interfaceC13464t) {
        boolean y82;
        synchronized (this.f28646c) {
            y82 = this.f28645b.y8(interfaceC13464t);
        }
        return y82;
    }

    public C3299z(ee.r rVar, Object obj) {
        this.f28645b = rVar;
        this.f28646c = obj;
    }
}
