package com.google.common.collect;

import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public class C12554o2<E> extends Z0<E> {

    public final AbstractC12505c1<E> f66761d;

    public final AbstractC12521g1<? extends E> f66762e;

    public C12554o2(AbstractC12505c1<E> abstractC12505c1, AbstractC12521g1<? extends E> abstractC12521g1) {
        this.f66761d = abstractC12505c1;
        this.f66762e = abstractC12521g1;
    }

    @Override
    public AbstractC12505c1<E> Q() {
        return this.f66761d;
    }

    public AbstractC12521g1<? extends E> R() {
        return this.f66762e;
    }

    @Override
    @v2.c
    public int b(Object[] objArr, int i10) {
        return this.f66762e.b(objArr, i10);
    }

    @Override
    @CheckForNull
    public Object[] c() {
        return this.f66762e.c();
    }

    @Override
    public int d() {
        return this.f66762e.d();
    }

    @Override
    public int g() {
        return this.f66762e.g();
    }

    @Override
    public E get(int i10) {
        return this.f66762e.get(i10);
    }

    @Override
    public f3<E> listIterator(int i10) {
        return this.f66762e.listIterator(i10);
    }

    public C12554o2(AbstractC12505c1<E> abstractC12505c1, Object[] objArr) {
        this(abstractC12505c1, AbstractC12521g1.k(objArr));
    }

    public C12554o2(AbstractC12505c1<E> abstractC12505c1, Object[] objArr, int i10) {
        this(abstractC12505c1, AbstractC12521g1.l(objArr, i10));
    }
}
