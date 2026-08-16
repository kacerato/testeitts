package Yd;

import java.io.Serializable;
import java.util.Collection;

public class F0 implements Sd.i, Serializable {

    public static final long f30021c = 1820017752578914078L;

    public final Sd.i f30022b;

    public class a implements Zd.s0 {

        public Zd.s0 f30023b;

        public a() {
            this.f30023b = F0.this.f30022b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30023b.hasNext();
        }

        @Override
        public short next() {
            return this.f30023b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public F0(Sd.i iVar) {
        iVar.getClass();
        this.f30022b = iVar;
    }

    @Override
    public boolean A2(short[] sArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean F1(Sd.i iVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short[] N0(short[] sArr) {
        return this.f30022b.N0(sArr);
    }

    @Override
    public boolean W0(short s10) {
        return this.f30022b.W0(s10);
    }

    @Override
    public boolean Z1(short[] sArr) {
        return this.f30022b.Z1(sArr);
    }

    @Override
    public boolean addAll(Collection<? extends Short> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c1(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30022b.containsAll(collection);
    }

    @Override
    public boolean d(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean h1(he.t0 t0Var) {
        return this.f30022b.h1(t0Var);
    }

    @Override
    public short i() {
        return this.f30022b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30022b.isEmpty();
    }

    @Override
    public Zd.s0 iterator() {
        return new a();
    }

    @Override
    public boolean n1(short[] sArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean o1(Sd.i iVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean q2(Sd.i iVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean r1(short[] sArr) {
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
        return this.f30022b.size();
    }

    @Override
    public short[] toArray() {
        return this.f30022b.toArray();
    }

    public String toString() {
        return this.f30022b.toString();
    }

    @Override
    public boolean v2(Sd.i iVar) {
        return this.f30022b.v2(iVar);
    }
}
