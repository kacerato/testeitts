package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class Q implements ee.D, Serializable {

    public static final long f28399f = 1978198479659022715L;

    public final ee.D f28400b;

    public final Object f28401c;

    public transient InterfaceC13970d f28402d = null;

    public transient Sd.h f28403e = null;

    public Q(ee.D d10) {
        d10.getClass();
        this.f28400b = d10;
        this.f28401c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28401c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean G0(float f10) {
        boolean G02;
        synchronized (this.f28401c) {
            G02 = this.f28400b.G0(f10);
        }
        return G02;
    }

    @Override
    public boolean H(float f10) {
        boolean H10;
        synchronized (this.f28401c) {
            H10 = this.f28400b.H(f10);
        }
        return H10;
    }

    @Override
    public long O5(float f10, long j10) {
        long O52;
        synchronized (this.f28401c) {
            O52 = this.f28400b.O5(f10, j10);
        }
        return O52;
    }

    @Override
    public boolean O9(float f10, long j10) {
        boolean O92;
        synchronized (this.f28401c) {
            O92 = this.f28400b.O9(f10, j10);
        }
        return O92;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28401c) {
            R10 = this.f28400b.R(j10);
        }
        return R10;
    }

    @Override
    public long c(float f10) {
        long c10;
        synchronized (this.f28401c) {
            c10 = this.f28400b.c(f10);
        }
        return c10;
    }

    @Override
    public boolean ce(he.G g10) {
        boolean ce2;
        synchronized (this.f28401c) {
            ce2 = this.f28400b.ce(g10);
        }
        return ce2;
    }

    @Override
    public void clear() {
        synchronized (this.f28401c) {
            this.f28400b.clear();
        }
    }

    @Override
    public float[] d0(float[] fArr) {
        float[] d02;
        synchronized (this.f28401c) {
            d02 = this.f28400b.d0(fArr);
        }
        return d02;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28401c) {
            equals = this.f28400b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28401c) {
            g02 = this.f28400b.g0(jArr);
        }
        return g02;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28401c) {
            this.f28400b.h(fVar);
        }
    }

    public int hashCode() {
        int hashCode;
        synchronized (this.f28401c) {
            hashCode = this.f28400b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28400b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28401c) {
            isEmpty = this.f28400b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.I iterator() {
        return this.f28400b.iterator();
    }

    @Override
    public float[] j() {
        float[] j10;
        synchronized (this.f28401c) {
            j10 = this.f28400b.j();
        }
        return j10;
    }

    @Override
    public boolean j0(he.I i10) {
        boolean j02;
        synchronized (this.f28401c) {
            j02 = this.f28400b.j0(i10);
        }
        return j02;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28401c) {
            try {
                if (this.f28403e == null) {
                    this.f28403e = new C3276i0(this.f28400b.k(), this.f28401c);
                }
                hVar = this.f28403e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public InterfaceC13970d keySet() {
        InterfaceC13970d interfaceC13970d;
        synchronized (this.f28401c) {
            try {
                if (this.f28402d == null) {
                    this.f28402d = new T(this.f28400b.keySet(), this.f28401c);
                }
                interfaceC13970d = this.f28402d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC13970d;
    }

    @Override
    public float l() {
        return this.f28400b.l();
    }

    @Override
    public long ld(float f10, long j10, long j11) {
        long ld2;
        synchronized (this.f28401c) {
            ld2 = this.f28400b.ld(f10, j10, j11);
        }
        return ld2;
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Long> map) {
        synchronized (this.f28401c) {
            this.f28400b.putAll(map);
        }
    }

    @Override
    public long q0(float f10) {
        long q02;
        synchronized (this.f28401c) {
            q02 = this.f28400b.q0(f10);
        }
        return q02;
    }

    @Override
    public long re(float f10, long j10) {
        long re2;
        synchronized (this.f28401c) {
            re2 = this.f28400b.re(f10, j10);
        }
        return re2;
    }

    @Override
    public boolean s7(he.G g10) {
        boolean s72;
        synchronized (this.f28401c) {
            s72 = this.f28400b.s7(g10);
        }
        return s72;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28401c) {
            size = this.f28400b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28401c) {
            obj = this.f28400b.toString();
        }
        return obj;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28401c) {
            values = this.f28400b.values();
        }
        return values;
    }

    @Override
    public void w7(ee.D d10) {
        synchronized (this.f28401c) {
            this.f28400b.w7(d10);
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28401c) {
            x10 = this.f28400b.x(b0Var);
        }
        return x10;
    }

    public Q(ee.D d10, Object obj) {
        this.f28400b = d10;
        this.f28401c = obj;
    }
}
