package com.google.common.collect;

import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;

@X
@v2.b(emulated = true, serializable = true)
public final class E2<E> extends AbstractC12564r1<E> {

    public final transient E f65750g;

    public E2(E e10) {
        this.f65750g = (E) w2.H.E(e10);
    }

    @Override
    public AbstractC12521g1<E> a() {
        return AbstractC12521g1.y(this.f65750g);
    }

    @Override
    public int b(Object[] objArr, int i10) {
        objArr[i10] = this.f65750g;
        return i10 + 1;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return this.f65750g.equals(obj);
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f65750g.hashCode();
    }

    @Override
    public e3<E> iterator() {
        return E1.Y(this.f65750g);
    }

    @Override
    public int size() {
        return 1;
    }

    @Override
    public String toString() {
        String obj = this.f65750g.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2);
        sb2.append('[');
        sb2.append(obj);
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }
}
