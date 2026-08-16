package Yd;

import Zd.InterfaceC3458p;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Collection;

public class C3428n implements Sd.b, Serializable {

    public static final long f30295c = 1820017752578914078L;

    public final Sd.b f30296b;

    public class a implements InterfaceC3458p {

        public InterfaceC3458p f30297b;

        public a() {
            this.f30297b = C3428n.this.f30296b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30297b.hasNext();
        }

        @Override
        public char next() {
            return this.f30297b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C3428n(Sd.b bVar) {
        bVar.getClass();
        this.f30296b = bVar;
    }

    @Override
    public char[] Q0(char[] cArr) {
        return this.f30296b.Q0(cArr);
    }

    @Override
    public boolean X1(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection<? extends Character> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean b1(char c10) {
        return this.f30296b.b1(c10);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30296b.containsAll(collection);
    }

    @Override
    public boolean e1(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean g1(InterfaceC13462q interfaceC13462q) {
        return this.f30296b.g1(interfaceC13462q);
    }

    @Override
    public char i() {
        return this.f30296b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30296b.isEmpty();
    }

    @Override
    public InterfaceC3458p iterator() {
        return new a();
    }

    @Override
    public boolean n2(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean p2(Sd.b bVar) {
        return this.f30296b.p2(bVar);
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
        return this.f30296b.size();
    }

    @Override
    public boolean t2(Sd.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] toArray() {
        return this.f30296b.toArray();
    }

    public String toString() {
        return this.f30296b.toString();
    }

    @Override
    public boolean u1(char[] cArr) {
        return this.f30296b.u1(cArr);
    }

    @Override
    public boolean u2(Sd.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean v1(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean z1(Sd.b bVar) {
        throw new UnsupportedOperationException();
    }
}
