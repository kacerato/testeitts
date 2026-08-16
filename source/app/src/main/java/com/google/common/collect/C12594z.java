package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class C12594z<E> extends AbstractList<List<E>> implements RandomAccess {

    public final transient AbstractC12521g1<List<E>> f66944b;

    public final transient int[] f66945c;

    public class a extends AbstractC12521g1<E> {

        public final int f66946d;

        public a(int i10) {
            this.f66946d = i10;
        }

        @Override
        public E get(int i10) {
            w2.H.C(i10, size());
            return (E) ((List) C12594z.this.f66944b.get(i10)).get(C12594z.this.k(this.f66946d, i10));
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return C12594z.this.f66944b.size();
        }
    }

    public C12594z(AbstractC12521g1<List<E>> abstractC12521g1) {
        this.f66944b = abstractC12521g1;
        int[] iArr = new int[abstractC12521g1.size() + 1];
        iArr[abstractC12521g1.size()] = 1;
        try {
            for (int size = abstractC12521g1.size() - 1; size >= 0; size--) {
                iArr[size] = E2.f.d(iArr[size + 1], abstractC12521g1.get(size).size());
            }
            this.f66945c = iArr;
        } catch (ArithmeticException unused) {
            throw new IllegalArgumentException("Cartesian product too large; must have size at most Integer.MAX_VALUE");
        }
    }

    public static <E> List<List<E>> c(List<? extends List<? extends E>> list) {
        AbstractC12521g1.a aVar = new AbstractC12521g1.a(list.size());
        Iterator<? extends List<? extends E>> it = list.iterator();
        while (it.hasNext()) {
            AbstractC12521g1 r10 = AbstractC12521g1.r(it.next());
            if (r10.isEmpty()) {
                return AbstractC12521g1.x();
            }
            aVar.a(r10);
        }
        return new C12594z(aVar.e());
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        if (list.size() != this.f66944b.size()) {
            return false;
        }
        Iterator<E> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!this.f66944b.get(i10).contains(it.next())) {
                return false;
            }
            i10++;
        }
        return true;
    }

    @Override
    public int indexOf(@CheckForNull Object obj) {
        if (!(obj instanceof List)) {
            return -1;
        }
        List list = (List) obj;
        if (list.size() != this.f66944b.size()) {
            return -1;
        }
        ListIterator<E> listIterator = list.listIterator();
        int i10 = 0;
        while (listIterator.hasNext()) {
            int nextIndex = listIterator.nextIndex();
            int indexOf = this.f66944b.get(nextIndex).indexOf(listIterator.next());
            if (indexOf == -1) {
                return -1;
            }
            i10 += indexOf * this.f66945c[nextIndex + 1];
        }
        return i10;
    }

    @Override
    public AbstractC12521g1<E> get(int i10) {
        w2.H.C(i10, size());
        return new a(i10);
    }

    public final int k(int i10, int i11) {
        return (i10 / this.f66945c[i11 + 1]) % this.f66944b.get(i11).size();
    }

    @Override
    public int lastIndexOf(@CheckForNull Object obj) {
        if (!(obj instanceof List)) {
            return -1;
        }
        List list = (List) obj;
        if (list.size() != this.f66944b.size()) {
            return -1;
        }
        ListIterator<E> listIterator = list.listIterator();
        int i10 = 0;
        while (listIterator.hasNext()) {
            int nextIndex = listIterator.nextIndex();
            int lastIndexOf = this.f66944b.get(nextIndex).lastIndexOf(listIterator.next());
            if (lastIndexOf == -1) {
                return -1;
            }
            i10 += lastIndexOf * this.f66945c[nextIndex + 1];
        }
        return i10;
    }

    @Override
    public int size() {
        return this.f66945c[0];
    }
}
