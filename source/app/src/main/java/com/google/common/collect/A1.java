package com.google.common.collect;

@X
@v2.b(emulated = true)
public abstract class A1<E> extends AbstractC12564r1<E> {

    public class a extends AbstractC12521g1<E> {
        public a() {
        }

        @Override
        public E get(int i10) {
            return (E) A1.this.get(i10);
        }

        @Override
        public boolean h() {
            return A1.this.h();
        }

        @Override
        public int size() {
            return A1.this.size();
        }
    }

    @Override
    @v2.c
    public int b(Object[] objArr, int i10) {
        return a().b(objArr, i10);
    }

    public abstract E get(int i10);

    @Override
    public e3<E> iterator() {
        return a().iterator();
    }

    @Override
    public AbstractC12521g1<E> x() {
        return new a();
    }
}
