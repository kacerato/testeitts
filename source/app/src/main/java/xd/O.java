package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class O implements ee.C, Serializable {

    public static final long f28386f = 1978198479659022715L;

    public final ee.C f28387b;

    public final Object f28388c;

    public transient InterfaceC13970d f28389d = null;

    public transient Sd.g f28390e = null;

    public O(ee.C c10) {
        c10.getClass();
        this.f28387b = c10;
        this.f28388c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28388c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean D9(float f10, int i10) {
        boolean D92;
        synchronized (this.f28388c) {
            D92 = this.f28387b.D9(f10, i10);
        }
        return D92;
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28388c) {
            G02 = this.f28387b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28388c) {
            H10 = this.f28387b.H(f10);
        }
        return H10;
    }

    @Override
    public boolean L3(he.F f10) {
        boolean L32;
        synchronized (this.f28388c) {
            L32 = this.f28387b.L3(f10);
        }
        return L32;
    }

    @Override
    public int M5(float f10, int i10) {
        int M52;
        synchronized (this.f28388c) {
            M52 = this.f28387b.M5(f10, i10);
        }
        return M52;
    }

    @Override
    public boolean Q(int i10) {
        boolean Q10;
        synchronized (this.f28388c) {
            Q10 = this.f28387b.Q(i10);
        }
        return Q10;
    }

    @Override
    public int Sc(float f10, int i10, int i11) {
        int Sc2;
        synchronized (this.f28388c) {
            Sc2 = this.f28387b.Sc(f10, i10, i11);
        }
        return Sc2;
    }

    @Override
    public int c(float f10) {
        int c10;
        synchronized (this.f28388c) {
            c10 = this.f28387b.c(f10);
        }
        return c10;
    }

    @Override
    public void clear() {
        synchronized (this.f28388c) {
            this.f28387b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28388c) {
            d02 = this.f28387b.d0(fArr);
        }
        return d02;
    }

    @Override
    public int[] e0(int[] iArr) {
        int[] e02;
        synchronized (this.f28388c) {
            e02 = this.f28387b.e0(iArr);
        }
        return e02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28388c) {
            equals = this.f28387b.equals(obj);
        }
        return equals;
    }

    @Override
    public void f(Ud.e eVar) {
        synchronized (this.f28388c) {
            this.f28387b.f(eVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28388c) {
            hashCode = this.f28387b.hashCode();
        }
        return hashCode;
    }

    @Override
    public int i() {
        return this.f28387b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28388c) {
            isEmpty = this.f28387b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.G iterator() {
        return this.f28387b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28388c) {
            j10 = this.f28387b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28388c) {
            j02 = this.f28387b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.g k() {
        Sd.g gVar;
        synchronized (this.f28388c) {
            try {
                if (this.f28390e == null) {
                    this.f28390e = new X(this.f28387b.k(), this.f28388c);
                }
                gVar = this.f28390e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28388c) {
            try {
                if (this.f28389d == null) {
                    this.f28389d = new T(this.f28387b.keySet(), this.f28388c);
                }
                interfaceC13970d = this.f28389d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28387b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        boolean m02;
        synchronized (this.f28388c) {
            m02 = this.f28387b.m0(s10);
        }
        return m02;
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Integer> map) {
        synchronized (this.f28388c) {
            this.f28387b.putAll(map);
        }
    }

    @Override
    public int q0(float f10) {
        int q02;
        synchronized (this.f28388c) {
            q02 = this.f28387b.q0(f10);
        }
        return q02;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28388c) {
            size = this.f28387b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28388c) {
            obj = this.f28387b.toString();
        }
        return obj;
    }

    @Override
    public int[] values() {
        int[] values;
        synchronized (this.f28388c) {
            values = this.f28387b.values();
        }
        return values;
    }

    @Override
    public int ve(float f10, int i10) {
        int ve2;
        synchronized (this.f28388c) {
            ve2 = this.f28387b.ve(f10, i10);
        }
        return ve2;
    }

    @Override
    public void y9(ee.C c10) {
        synchronized (this.f28388c) {
            this.f28387b.y9(c10);
        }
    }

    @Override
    public boolean yc(he.F f10) {
        boolean yc2;
        synchronized (this.f28388c) {
            yc2 = this.f28387b.yc(f10);
        }
        return yc2;
    }

    public O(ee.C c10, Object obj) {
        this.f28387b = c10;
        this.f28388c = obj;
    }
}
