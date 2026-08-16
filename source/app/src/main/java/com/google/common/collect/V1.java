package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public interface V1<E> extends Collection<E> {

    public interface a<E> {
        boolean equals(@CheckForNull Object obj);

        int getCount();

        @InterfaceC12518f2
        E getElement();

        int hashCode();

        String toString();
    }

    int Ad(@CheckForNull @I2.c("E") Object obj);

    @I2.a
    int P9(@InterfaceC12518f2 E e10, int i10);

    Set<E> S1();

    @Override
    @I2.a
    boolean add(@InterfaceC12518f2 E e10);

    @Override
    boolean contains(@CheckForNull Object obj);

    @Override
    boolean containsAll(Collection<?> collection);

    @I2.a
    boolean e7(@InterfaceC12518f2 E e10, int i10, int i11);

    Set<a<E>> entrySet();

    @Override
    boolean equals(@CheckForNull Object obj);

    @Override
    int hashCode();

    @Override
    Iterator<E> iterator();

    @I2.a
    int pc(@CheckForNull @I2.c("E") Object obj, int i10);

    @Override
    @I2.a
    boolean remove(@CheckForNull Object obj);

    @Override
    @I2.a
    boolean removeAll(Collection<?> collection);

    @Override
    @I2.a
    boolean retainAll(Collection<?> collection);

    @Override
    int size();

    String toString();

    @I2.a
    int y6(@InterfaceC12518f2 E e10, int i10);
}
