package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class C3276i0 implements Sd.h, Serializable {

    public static final long f28505d = 3053995032091335093L;

    public final Sd.h f28506b;

    public final Object f28507c;

    public C3276i0(Sd.h hVar) {
        hVar.getClass();
        this.f28506b = hVar;
        this.f28507c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28507c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean B1(long[] jArr) {
        boolean B12;
        synchronized (this.f28507c) {
            B12 = this.f28506b.B1(jArr);
        }
        return B12;
    }

    @Override
    public boolean B2(Sd.h hVar) {
        boolean B22;
        synchronized (this.f28507c) {
            B22 = this.f28506b.B2(hVar);
        }
        return B22;
    }

    @Override
    public boolean H1(Sd.h hVar) {
        boolean H12;
        synchronized (this.f28507c) {
            H12 = this.f28506b.H1(hVar);
        }
        return H12;
    }

    @Override
    public boolean M0(long j10) {
        boolean M02;
        synchronized (this.f28507c) {
            M02 = this.f28506b.M0(j10);
        }
        return M02;
    }

    @Override
    public long[] O0(long[] jArr) {
        long[] O02;
        synchronized (this.f28507c) {
            O02 = this.f28506b.O0(jArr);
        }
        return O02;
    }

    @Override
    public boolean Q1(long[] jArr) {
        boolean Q12;
        synchronized (this.f28507c) {
            Q12 = this.f28506b.Q1(jArr);
        }
        return Q12;
    }

    @Override
    public boolean U1(long[] jArr) {
        boolean U12;
        synchronized (this.f28507c) {
            U12 = this.f28506b.U1(jArr);
        }
        return U12;
    }

    @Override
    public boolean X0(long j10) {
        boolean X02;
        synchronized (this.f28507c) {
            X02 = this.f28506b.X0(j10);
        }
        return X02;
    }

    @Override
    public boolean addAll(Collection<? extends Long> collection) {
        boolean addAll;
        synchronized (this.f28507c) {
            addAll = this.f28506b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public void clear() {
        synchronized (this.f28507c) {
            this.f28506b.clear();
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28507c) {
            containsAll = this.f28506b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean e(long j10) {
        boolean e10;
        synchronized (this.f28507c) {
            e10 = this.f28506b.e(j10);
        }
        return e10;
    }

    @Override
    public boolean f2(Sd.h hVar) {
        boolean f22;
        synchronized (this.f28507c) {
            f22 = this.f28506b.f2(hVar);
        }
        return f22;
    }

    @Override
    public long i() {
        return this.f28506b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28507c) {
            isEmpty = this.f28506b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.b0 iterator() {
        return this.f28506b.iterator();
    }

    @Override
    public boolean j1(he.b0 b0Var) {
        boolean j12;
        synchronized (this.f28507c) {
            j12 = this.f28506b.j1(b0Var);
        }
        return j12;
    }

    @Override
    public boolean q1(Sd.h hVar) {
        boolean q12;
        synchronized (this.f28507c) {
            q12 = this.f28506b.q1(hVar);
        }
        return q12;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28507c) {
            removeAll = this.f28506b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28507c) {
            retainAll = this.f28506b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28507c) {
            size = this.f28506b.size();
        }
        return size;
    }

    @Override
    public long[] toArray() {
        long[] array;
        synchronized (this.f28507c) {
            array = this.f28506b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28507c) {
            obj = this.f28506b.toString();
        }
        return obj;
    }

    @Override
    public boolean y2(long[] jArr) {
        boolean y22;
        synchronized (this.f28507c) {
            y22 = this.f28506b.y2(jArr);
        }
        return y22;
    }

    public C3276i0(Sd.h hVar, Object obj) {
        this.f28506b = hVar;
        this.f28507c = obj;
    }
}
