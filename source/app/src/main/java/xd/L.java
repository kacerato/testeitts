package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class L implements Sd.f, Serializable {

    public static final long f28361d = 3053995032091335093L;

    public final Sd.f f28362b;

    public final Object f28363c;

    public L(Sd.f fVar) {
        fVar.getClass();
        this.f28362b = fVar;
        this.f28363c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28363c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean C2(Sd.f fVar) {
        boolean C22;
        synchronized (this.f28363c) {
            C22 = this.f28362b.C2(fVar);
        }
        return C22;
    }

    @Override
    public boolean D1(Sd.f fVar) {
        boolean D12;
        synchronized (this.f28363c) {
            D12 = this.f28362b.D1(fVar);
        }
        return D12;
    }

    @Override
    public boolean L1(float[] fArr) {
        boolean L12;
        synchronized (this.f28363c) {
            L12 = this.f28362b.L1(fArr);
        }
        return L12;
    }

    @Override
    public boolean V1(float[] fArr) {
        boolean V12;
        synchronized (this.f28363c) {
            V12 = this.f28362b.V1(fArr);
        }
        return V12;
    }

    @Override
    public boolean Z0(float f10) {
        boolean Z02;
        synchronized (this.f28363c) {
            Z02 = this.f28362b.Z0(f10);
        }
        return Z02;
    }

    @Override
    public boolean addAll(Collection<? extends Float> collection) {
        boolean addAll;
        synchronized (this.f28363c) {
            addAll = this.f28362b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public boolean c(float f10) {
        boolean c10;
        synchronized (this.f28363c) {
            c10 = this.f28362b.c(f10);
        }
        return c10;
    }

    @Override
    public boolean c2(Sd.f fVar) {
        boolean c22;
        synchronized (this.f28363c) {
            c22 = this.f28362b.c2(fVar);
        }
        return c22;
    }

    @Override
    public void clear() {
        synchronized (this.f28363c) {
            this.f28362b.clear();
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28363c) {
            containsAll = this.f28362b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean f1(float f10) {
        boolean f12;
        synchronized (this.f28363c) {
            f12 = this.f28362b.f1(f10);
        }
        return f12;
    }

    @Override
    public boolean g2(Sd.f fVar) {
        boolean g22;
        synchronized (this.f28363c) {
            g22 = this.f28362b.g2(fVar);
        }
        return g22;
    }

    @Override
    public float i() {
        return this.f28362b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28363c) {
            isEmpty = this.f28362b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.H iterator() {
        return this.f28362b.iterator();
    }

    @Override
    public boolean k1(he.I i10) {
        boolean k12;
        synchronized (this.f28363c) {
            k12 = this.f28362b.k1(i10);
        }
        return k12;
    }

    @Override
    public boolean l2(float[] fArr) {
        boolean l22;
        synchronized (this.f28363c) {
            l22 = this.f28362b.l2(fArr);
        }
        return l22;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28363c) {
            removeAll = this.f28362b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28363c) {
            retainAll = this.f28362b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28363c) {
            size = this.f28362b.size();
        }
        return size;
    }

    @Override
    public float[] toArray() {
        float[] array;
        synchronized (this.f28363c) {
            array = this.f28362b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28363c) {
            obj = this.f28362b.toString();
        }
        return obj;
    }

    @Override
    public boolean x1(float[] fArr) {
        boolean x12;
        synchronized (this.f28363c) {
            x12 = this.f28362b.x1(fArr);
        }
        return x12;
    }

    @Override
    public float[] toArray(float[] fArr) {
        float[] array;
        synchronized (this.f28363c) {
            array = this.f28362b.toArray(fArr);
        }
        return array;
    }

    public L(Sd.f fVar, Object obj) {
        this.f28362b = fVar;
        this.f28363c = obj;
    }
}
