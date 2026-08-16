package Yd;

import java.io.Serializable;
import java.util.Collection;

public class J implements Sd.f, Serializable {

    public static final long f30061c = 1820017752578914078L;

    public final Sd.f f30062b;

    public class a implements Zd.H {

        public Zd.H f30063b;

        public a() {
            this.f30063b = J.this.f30062b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30063b.hasNext();
        }

        @Override
        public float next() {
            return this.f30063b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public J(Sd.f fVar) {
        fVar.getClass();
        this.f30062b = fVar;
    }

    @Override
    public boolean C2(Sd.f fVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean D1(Sd.f fVar) {
        return this.f30062b.D1(fVar);
    }

    @Override
    public boolean L1(float[] fArr) {
        return this.f30062b.L1(fArr);
    }

    @Override
    public boolean V1(float[] fArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Z0(float f10) {
        return this.f30062b.Z0(f10);
    }

    @Override
    public boolean addAll(Collection<? extends Float> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c2(Sd.f fVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30062b.containsAll(collection);
    }

    @Override
    public boolean f1(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean g2(Sd.f fVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float i() {
        return this.f30062b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30062b.isEmpty();
    }

    @Override
    public Zd.H iterator() {
        return new a();
    }

    @Override
    public boolean k1(he.I i10) {
        return this.f30062b.k1(i10);
    }

    @Override
    public boolean l2(float[] fArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30062b.size();
    }

    @Override
    public float[] toArray() {
        return this.f30062b.toArray();
    }

    public String toString() {
        return this.f30062b.toString();
    }

    @Override
    public boolean x1(float[] fArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] toArray(float[] fArr) {
        return this.f30062b.toArray(fArr);
    }
}
