package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public class w0<K> implements ee.d0<K>, Serializable {

    public static final long f28623f = 1978198479659022715L;

    public final ee.d0<K> f28624b;

    public final Object f28625c;

    public transient Set<K> f28626d = null;

    public transient Sd.h f28627e = null;

    public w0(ee.d0<K> d0Var) {
        d0Var.getClass();
        this.f28624b = d0Var;
        this.f28625c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28625c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public K[] C0(K[] kArr) {
        K[] C02;
        synchronized (this.f28625c) {
            C02 = this.f28624b.C0(kArr);
        }
        return C02;
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        boolean G10;
        synchronized (this.f28625c) {
            G10 = this.f28624b.G(k0Var);
        }
        return G10;
    }

    @Override
    public long J6(K k10, long j10, long j11) {
        long J62;
        synchronized (this.f28625c) {
            J62 = this.f28624b.J6(k10, j10, j11);
        }
        return J62;
    }

    @Override
    public boolean R(long j10) {
        boolean R10;
        synchronized (this.f28625c) {
            R10 = this.f28624b.R(j10);
        }
        return R10;
    }

    @Override
    public void R2(ee.d0<? extends K> d0Var) {
        synchronized (this.f28625c) {
            this.f28624b.R2(d0Var);
        }
    }

    @Override
    public boolean U7(he.i0<? super K> i0Var) {
        boolean U72;
        synchronized (this.f28625c) {
            U72 = this.f28624b.U7(i0Var);
        }
        return U72;
    }

    @Override
    public long ba(K k10, long j10) {
        long ba2;
        synchronized (this.f28625c) {
            ba2 = this.f28624b.ba(k10, j10);
        }
        return ba2;
    }

    @Override
    public void clear() {
        synchronized (this.f28625c) {
            this.f28624b.clear();
        }
    }

    @Override
    public boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f28625c) {
            containsKey = this.f28624b.containsKey(obj);
        }
        return containsKey;
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28625c) {
            equals = this.f28624b.equals(obj);
        }
        return equals;
    }

    @Override
    public long[] g0(long[] jArr) {
        long[] g02;
        synchronized (this.f28625c) {
            g02 = this.f28624b.g0(jArr);
        }
        return g02;
    }

    @Override
    public long g4(K k10, long j10) {
        long g42;
        synchronized (this.f28625c) {
            g42 = this.f28624b.g4(k10, j10);
        }
        return g42;
    }

    @Override
    public long get(Object obj) {
        long j10;
        synchronized (this.f28625c) {
            j10 = this.f28624b.get(obj);
        }
        return j10;
    }

    @Override
    public void h(Ud.f fVar) {
        synchronized (this.f28625c) {
            this.f28624b.h(fVar);
        }
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28625c) {
            hashCode = this.f28624b.hashCode();
        }
        return hashCode;
    }

    @Override
    public long i() {
        return this.f28624b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28625c) {
            isEmpty = this.f28624b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.k0<K> iterator() {
        return this.f28624b.iterator();
    }

    @Override
    public Object[] j() {
        Object[] j10;
        synchronized (this.f28625c) {
            j10 = this.f28624b.j();
        }
        return j10;
    }

    @Override
    public Sd.h k() {
        Sd.h hVar;
        synchronized (this.f28625c) {
            try {
                if (this.f28627e == null) {
                    this.f28627e = new C3276i0(this.f28624b.k(), this.f28625c);
                }
                hVar = this.f28627e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVar;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set;
        synchronized (this.f28625c) {
            try {
                if (this.f28626d == null) {
                    this.f28626d = new C3261b(this.f28624b.keySet(), this.f28625c);
                }
                set = this.f28626d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return set;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Long> map) {
        synchronized (this.f28625c) {
            this.f28624b.putAll(map);
        }
    }

    @Override
    public boolean q5(K k10, long j10) {
        boolean q52;
        synchronized (this.f28625c) {
            q52 = this.f28624b.q5(k10, j10);
        }
        return q52;
    }

    @Override
    public long remove(Object obj) {
        long remove;
        synchronized (this.f28625c) {
            remove = this.f28624b.remove(obj);
        }
        return remove;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28625c) {
            size = this.f28624b.size();
        }
        return size;
    }

    public String toString() {
        String obj;
        synchronized (this.f28625c) {
            obj = this.f28624b.toString();
        }
        return obj;
    }

    @Override
    public boolean u4(he.i0<? super K> i0Var) {
        boolean u42;
        synchronized (this.f28625c) {
            u42 = this.f28624b.u4(i0Var);
        }
        return u42;
    }

    @Override
    public long[] values() {
        long[] values;
        synchronized (this.f28625c) {
            values = this.f28624b.values();
        }
        return values;
    }

    @Override
    public boolean x(he.b0 b0Var) {
        boolean x10;
        synchronized (this.f28625c) {
            x10 = this.f28624b.x(b0Var);
        }
        return x10;
    }

    @Override
    public boolean x0(K k10) {
        boolean x02;
        synchronized (this.f28625c) {
            x02 = this.f28624b.x0(k10);
        }
        return x02;
    }

    public w0(ee.d0<K> d0Var, Object obj) {
        this.f28624b = d0Var;
        this.f28625c = obj;
    }
}
