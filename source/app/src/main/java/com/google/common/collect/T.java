package com.google.common.collect;

import com.google.common.collect.V1;
import javax.annotation.CheckForNull;

@X
@v2.c
public final class T<E> extends AbstractC12580v1<E> {

    public final transient AbstractC12580v1<E> f66198f;

    public T(AbstractC12580v1<E> abstractC12580v1) {
        this.f66198f = abstractC12580v1;
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        return this.f66198f.Ad(obj);
    }

    @Override
    public AbstractC12580v1<E> P6() {
        return this.f66198f;
    }

    @Override
    public AbstractC12588x1<E> S1() {
        return this.f66198f.S1().descendingSet();
    }

    @Override
    public AbstractC12580v1<E> B7(E e10, EnumC12586x enumC12586x) {
        return this.f66198f.Jd(e10, enumC12586x).P6();
    }

    @Override
    @CheckForNull
    public V1.a<E> firstEntry() {
        return this.f66198f.lastEntry();
    }

    @Override
    public boolean h() {
        return this.f66198f.h();
    }

    @Override
    public AbstractC12580v1<E> Jd(E e10, EnumC12586x enumC12586x) {
        return this.f66198f.B7(e10, enumC12586x).P6();
    }

    @Override
    @CheckForNull
    public V1.a<E> lastEntry() {
        return this.f66198f.firstEntry();
    }

    @Override
    public int size() {
        return this.f66198f.size();
    }

    @Override
    public V1.a<E> v(int i10) {
        return this.f66198f.entrySet().a().L().get(i10);
    }
}
