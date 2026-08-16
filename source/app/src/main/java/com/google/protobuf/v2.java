package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
public class v2 extends AbstractList<String> implements K0, RandomAccess {

    public final K0 f69618b;

    public class a implements ListIterator<String> {

        public ListIterator<String> f69619b;

        public final int f69620c;

        public a(final int val$index) {
            this.f69620c = val$index;
            this.f69619b = v2.this.f69618b.listIterator(val$index);
        }

        @Override
        public void add(String o10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String next() {
            return this.f69619b.next();
        }

        @Override
        public String previous() {
            return this.f69619b.previous();
        }

        @Override
        public void set(String o10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasNext() {
            return this.f69619b.hasNext();
        }

        @Override
        public boolean hasPrevious() {
            return this.f69619b.hasPrevious();
        }

        @Override
        public int nextIndex() {
            return this.f69619b.nextIndex();
        }

        @Override
        public int previousIndex() {
            return this.f69619b.previousIndex();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class b implements Iterator<String> {

        public Iterator<String> f69622b;

        public b() {
            this.f69622b = v2.this.f69618b.iterator();
        }

        @Override
        public String next() {
            return this.f69622b.next();
        }

        @Override
        public boolean hasNext() {
            return this.f69622b.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public v2(K0 list) {
        this.f69618b = list;
    }

    @Override
    public boolean E7(Collection<? extends AbstractC12724x> element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public List<?> Ea() {
        return this.f69618b.Ea();
    }

    @Override
    public Object Ee(int index) {
        return this.f69618b.Ee(index);
    }

    @Override
    public List<AbstractC12724x> Hb() {
        return Collections.unmodifiableList(this.f69618b.Hb());
    }

    @Override
    public byte[] M3(int index) {
        return this.f69618b.M3(index);
    }

    @Override
    public void Re(int index, AbstractC12724x element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean T3(Collection<byte[]> element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void b3(AbstractC12724x element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void d4(K0 other) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Iterator<String> iterator() {
        return new b();
    }

    @Override
    public void l1(byte[] element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ListIterator<String> listIterator(final int index) {
        return new a(index);
    }

    @Override
    public void r2(int index, byte[] element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f69618b.size();
    }

    @Override
    public K0 t8() {
        return this;
    }

    @Override
    public AbstractC12724x ub(int index) {
        return this.f69618b.ub(index);
    }

    @Override
    public List<byte[]> y4() {
        return Collections.unmodifiableList(this.f69618b.y4());
    }

    @Override
    public String get(int index) {
        return this.f69618b.get(index);
    }
}
