package Yd;

import Zd.InterfaceC3466y;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Collection;

public class C3439y implements Sd.e, Serializable {

    public static final long f30401c = 1820017752578914078L;

    public final Sd.e f30402b;

    public class a implements InterfaceC3466y {

        public InterfaceC3466y f30403b;

        public a() {
            this.f30403b = C3439y.this.f30402b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30403b.hasNext();
        }

        @Override
        public double next() {
            return this.f30403b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C3439y(Sd.e eVar) {
        eVar.getClass();
        this.f30402b = eVar;
    }

    @Override
    public boolean C1(Sd.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G1(Sd.e eVar) {
        return this.f30402b.G1(eVar);
    }

    @Override
    public boolean J1(Sd.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Y0(double d10) {
        return this.f30402b.Y0(d10);
    }

    @Override
    public boolean Y1(double[] dArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean add(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection<? extends Double> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30402b.containsAll(collection);
    }

    @Override
    public double i() {
        return this.f30402b.i();
    }

    @Override
    public boolean i1(InterfaceC13470z interfaceC13470z) {
        return this.f30402b.i1(interfaceC13470z);
    }

    @Override
    public boolean isEmpty() {
        return this.f30402b.isEmpty();
    }

    @Override
    public InterfaceC3466y iterator() {
        return new a();
    }

    @Override
    public boolean m2(double[] dArr) {
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
    public boolean s1(double[] dArr) {
        return this.f30402b.s1(dArr);
    }

    @Override
    public int size() {
        return this.f30402b.size();
    }

    @Override
    public double[] toArray() {
        return this.f30402b.toArray();
    }

    public String toString() {
        return this.f30402b.toString();
    }

    @Override
    public boolean w1(double[] dArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean x2(Sd.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] toArray(double[] dArr) {
        return this.f30402b.toArray(dArr);
    }
}
