package com.google.common.collect;

import com.google.common.collect.AbstractC12549n1;
import com.google.common.collect.V1;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public class C12569s2<E> extends AbstractC12549n1<E> {

    public static final C12569s2<Object> f66859h = new C12569s2<>(C12510d2.c());

    public final transient C12510d2<E> f66860e;

    public final transient int f66861f;

    @CheckForNull
    @J2.b
    public transient AbstractC12564r1<E> f66862g;

    public final class b extends A1<E> {
        public b() {
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return C12569s2.this.contains(obj);
        }

        @Override
        public E get(int i10) {
            return C12569s2.this.f66860e.j(i10);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return C12569s2.this.f66860e.D();
        }
    }

    @v2.c
    public static class c implements Serializable {

        public static final long f66864d = 0;

        public final Object[] f66865b;

        public final int[] f66866c;

        public c(V1<? extends Object> v12) {
            int size = v12.entrySet().size();
            this.f66865b = new Object[size];
            this.f66866c = new int[size];
            int i10 = 0;
            for (V1.a<? extends Object> aVar : v12.entrySet()) {
                this.f66865b[i10] = aVar.getElement();
                this.f66866c[i10] = aVar.getCount();
                i10++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object a() {
            AbstractC12549n1.b bVar = new AbstractC12549n1.b(this.f66865b.length);
            int i10 = 0;
            while (true) {
                Object[] objArr = this.f66865b;
                if (i10 >= objArr.length) {
                    return bVar.e();
                }
                bVar.k(objArr[i10], this.f66866c[i10]);
                i10++;
            }
        }
    }

    public C12569s2(C12510d2<E> c12510d2) {
        this.f66860e = c12510d2;
        long j10 = 0;
        for (int i10 = 0; i10 < c12510d2.D(); i10++) {
            j10 += c12510d2.l(i10);
        }
        this.f66861f = com.google.common.primitives.l.x(j10);
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        return this.f66860e.g(obj);
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    @v2.c
    public Object j() {
        return new c(this);
    }

    @Override
    public AbstractC12564r1<E> S1() {
        AbstractC12564r1<E> abstractC12564r1 = this.f66862g;
        if (abstractC12564r1 != null) {
            return abstractC12564r1;
        }
        b bVar = new b();
        this.f66862g = bVar;
        return bVar;
    }

    @Override
    public int size() {
        return this.f66861f;
    }

    @Override
    public V1.a<E> v(int i10) {
        return this.f66860e.h(i10);
    }
}
