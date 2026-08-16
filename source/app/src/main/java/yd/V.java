package Yd;

import java.io.Serializable;
import java.util.Collection;

public class V implements Sd.g, Serializable {

    public static final long f30137c = 1820017752578914078L;

    public final Sd.g f30138b;

    public class a implements Zd.Q {

        public Zd.Q f30139b;

        public a() {
            this.f30139b = V.this.f30138b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30139b.hasNext();
        }

        @Override
        public int next() {
            return this.f30139b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public V(Sd.g gVar) {
        gVar.getClass();
        this.f30138b = gVar;
    }

    @Override
    public boolean A1(int[] iArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K1(int[] iArr) {
        return this.f30138b.K1(iArr);
    }

    @Override
    public boolean M1(int[] iArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] P0(int[] iArr) {
        return this.f30138b.P0(iArr);
    }

    @Override
    public boolean U0(he.S s10) {
        return this.f30138b.U0(s10);
    }

    @Override
    public boolean add(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection<? extends Integer> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean b2(Sd.g gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean contains(int i10) {
        return this.f30138b.contains(i10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30138b.containsAll(collection);
    }

    @Override
    public boolean d2(Sd.g gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean h2(Sd.g gVar) {
        return this.f30138b.h2(gVar);
    }

    @Override
    public int i() {
        return this.f30138b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30138b.isEmpty();
    }

    @Override
    public Zd.Q iterator() {
        return new a();
    }

    @Override
    public boolean j2(Sd.g gVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean remove(int i10) {
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
        return this.f30138b.size();
    }

    @Override
    public int[] toArray() {
        return this.f30138b.toArray();
    }

    public String toString() {
        return this.f30138b.toString();
    }

    @Override
    public boolean z2(int[] iArr) {
        throw new UnsupportedOperationException();
    }
}
