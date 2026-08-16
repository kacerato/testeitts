package Yd;

import java.io.Serializable;
import java.util.Collection;

public class C3415g0 implements Sd.h, Serializable {

    public static final long f30228c = 1820017752578914078L;

    public final Sd.h f30229b;

    public class a implements Zd.b0 {

        public Zd.b0 f30230b;

        public a() {
            this.f30230b = C3415g0.this.f30229b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30230b.hasNext();
        }

        @Override
        public long next() {
            return this.f30230b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C3415g0(Sd.h hVar) {
        hVar.getClass();
        this.f30229b = hVar;
    }

    @Override
    public boolean B1(long[] jArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean B2(Sd.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H1(Sd.h hVar) {
        return this.f30229b.H1(hVar);
    }

    @Override
    public boolean M0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long[] O0(long[] jArr) {
        return this.f30229b.O0(jArr);
    }

    @Override
    public boolean Q1(long[] jArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U1(long[] jArr) {
        return this.f30229b.U1(jArr);
    }

    @Override
    public boolean X0(long j10) {
        return this.f30229b.X0(j10);
    }

    @Override
    public boolean addAll(Collection<? extends Long> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30229b.containsAll(collection);
    }

    @Override
    public boolean e(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean f2(Sd.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long i() {
        return this.f30229b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30229b.isEmpty();
    }

    @Override
    public Zd.b0 iterator() {
        return new a();
    }

    @Override
    public boolean j1(he.b0 b0Var) {
        return this.f30229b.j1(b0Var);
    }

    @Override
    public boolean q1(Sd.h hVar) {
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
        return this.f30229b.size();
    }

    @Override
    public long[] toArray() {
        return this.f30229b.toArray();
    }

    public String toString() {
        return this.f30229b.toString();
    }

    @Override
    public boolean y2(long[] jArr) {
        throw new UnsupportedOperationException();
    }
}
