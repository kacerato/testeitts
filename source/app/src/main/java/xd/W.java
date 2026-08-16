package Xd;

import he.InterfaceC13462q;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class W implements ee.H, Serializable {

    public static final long f28420f = 1978198479659022715L;

    public final ee.H f28421b;

    public final Object f28422c;

    public transient InterfaceC13971e f28423d = null;

    public transient Sd.b f28424e = null;

    public W(ee.H h10) {
        h10.getClass();
        this.f28421b = h10;
        this.f28422c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28422c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean F(int i10) {
        boolean F10;
        synchronized (this.f28422c) {
            F10 = this.f28421b.F(i10);
        }
        return F10;
    }

    @Override
    public boolean F0(int i10) {
        boolean F02;
        synchronized (this.f28422c) {
            F02 = this.f28421b.F0(i10);
        }
        return F02;
    }

    @Override
    public boolean Gb(int i10, char c10) {
        boolean Gb2;
        synchronized (this.f28422c) {
            Gb2 = this.f28421b.Gb(i10, c10);
        }
        return Gb2;
    }

    @Override
    public boolean J(he.S s10) {
        boolean J10;
        synchronized (this.f28422c) {
            J10 = this.f28421b.J(s10);
        }
        return J10;
    }

    @Override
    public char J7(int i10, char c10, char c11) {
        char J72;
        synchronized (this.f28422c) {
            J72 = this.f28421b.J7(i10, c10, c11);
        }
        return J72;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        boolean K10;
        synchronized (this.f28422c) {
            K10 = this.f28421b.K(interfaceC13462q);
        }
        return K10;
    }

    @Override
    public boolean O(char c10) {
        boolean O10;
        synchronized (this.f28422c) {
            O10 = this.f28421b.O(c10);
        }
        return O10;
    }

    @Override
    public char Vd(int i10, char c10) {
        char Vd2;
        synchronized (this.f28422c) {
            Vd2 = this.f28421b.Vd(i10, c10);
        }
        return Vd2;
    }

    @Override
    public char X4(int i10, char c10) {
        char X42;
        synchronized (this.f28422c) {
            X42 = this.f28421b.X4(i10, c10);
        }
        return X42;
    }

    @Override
    public char[] Z(char[] cArr) {
        char[] Z10;
        synchronized (this.f28422c) {
            Z10 = this.f28421b.Z(cArr);
        }
        return Z10;
    }

    @Override
    public void clear() {
        synchronized (this.f28422c) {
            this.f28421b.clear();
        }
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28422c) {
            equals = this.f28421b.equals(obj);
        }
        return equals;
    }

    @Override
    public int[] f0(int[] iArr) {
        int[] f02;
        synchronized (this.f28422c) {
            f02 = this.f28421b.f0(iArr);
        }
        return f02;
    }

    @Override
    public boolean f3(he.L l10) {
        boolean f32;
        synchronized (this.f28422c) {
            f32 = this.f28421b.f3(l10);
        }
        return f32;
    }

    @Override
    public void g(Ud.b bVar) {
        synchronized (this.f28422c) {
            this.f28421b.g(bVar);
        }
    }

    @Override
    public char get(int i10) {
        char c10;
        synchronized (this.f28422c) {
            c10 = this.f28421b.get(i10);
        }
        return c10;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28422c) {
            hashCode = this.f28421b.hashCode();
        }
        return hashCode;
    }

    @Override
    public char i() {
        return this.f28421b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28422c) {
            isEmpty = this.f28421b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.M iterator() {
        return this.f28421b.iterator();
    }

    @Override
    public int[] j() {
        int[] j10;
        synchronized (this.f28422c) {
            j10 = this.f28421b.j();
        }
        return j10;
    }

    @Override
    public Sd.b k() {
        Sd.b bVar;
        synchronized (this.f28422c) {
            try {
                if (this.f28424e == null) {
                    this.f28424e = new C3289p(this.f28421b.k(), this.f28422c);
                }
                bVar = this.f28424e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public InterfaceC13971e keySet() {
        InterfaceC13971e interfaceC13971e;
        synchronized (this.f28422c) {
            try {
                if (this.f28423d == null) {
                    this.f28423d = new C3268e0(this.f28421b.keySet(), this.f28422c);
                }
                interfaceC13971e = this.f28423d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13971e;
    }

    @Override
    public int l() {
        return this.f28421b.l();
    }

    @Override
    public void m4(ee.H h10) {
        synchronized (this.f28422c) {
            this.f28421b.m4(h10);
        }
    }

    @Override
    public boolean nc(he.L l10) {
        boolean nc2;
        synchronized (this.f28422c) {
            nc2 = this.f28421b.nc(l10);
        }
        return nc2;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Character> map) {
        synchronized (this.f28422c) {
            this.f28421b.putAll(map);
        }
    }

    @Override
    public char remove(int i10) {
        char remove;
        synchronized (this.f28422c) {
            remove = this.f28421b.remove(i10);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28422c) {
            size = this.f28421b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28422c) {
            obj = this.f28421b.toString();
        }
        return obj;
    }

    @Override
    public char[] values() {
        char[] values;
        synchronized (this.f28422c) {
            values = this.f28421b.values();
        }
        return values;
    }

    public W(ee.H h10, Object obj) {
        this.f28421b = h10;
        this.f28422c = obj;
    }
}
