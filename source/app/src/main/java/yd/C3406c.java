package Yd;

import Zd.InterfaceC3449g;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Collection;

public class C3406c implements Sd.a, Serializable {

    public static final long f30185c = 1820017752578914078L;

    public final Sd.a f30186b;

    public class a implements InterfaceC3449g {

        public InterfaceC3449g f30187b;

        public a() {
            this.f30187b = C3406c.this.f30186b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f30187b.hasNext();
        }

        @Override
        public byte next() {
            return this.f30187b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C3406c(Sd.a aVar) {
        aVar.getClass();
        this.f30186b = aVar;
    }

    @Override
    public boolean E1(Sd.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] R0(byte[] bArr) {
        return this.f30186b.R0(bArr);
    }

    @Override
    public boolean V0(InterfaceC13453h interfaceC13453h) {
        return this.f30186b.V0(interfaceC13453h);
    }

    @Override
    public boolean W1(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean a1(byte b10) {
        return this.f30186b.a1(b10);
    }

    @Override
    public boolean addAll(Collection<? extends Byte> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f30186b.containsAll(collection);
    }

    @Override
    public boolean d1(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte i() {
        return this.f30186b.i();
    }

    @Override
    public boolean i2(Sd.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30186b.isEmpty();
    }

    @Override
    public InterfaceC3449g iterator() {
        return new a();
    }

    @Override
    public boolean m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean o2(byte[] bArr) {
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
    public boolean s2(Sd.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30186b.size();
    }

    @Override
    public boolean t1(byte[] bArr) {
        return this.f30186b.t1(bArr);
    }

    @Override
    public byte[] toArray() {
        return this.f30186b.toArray();
    }

    public String toString() {
        return this.f30186b.toString();
    }

    @Override
    public boolean w2(Sd.a aVar) {
        return this.f30186b.w2(aVar);
    }

    @Override
    public boolean y1(byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
