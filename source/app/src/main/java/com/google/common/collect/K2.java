package com.google.common.collect;

import com.google.common.collect.V1;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public interface K2<E> extends L2<E>, G2<E> {
    K2<E> B7(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x);

    K2<E> Jd(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x);

    K2<E> P6();

    @Override
    NavigableSet<E> S1();

    @Override
    Comparator<? super E> comparator();

    K2<E> dc(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x, @InterfaceC12518f2 E e11, EnumC12586x enumC12586x2);

    @Override
    Set<V1.a<E>> entrySet();

    @CheckForNull
    V1.a<E> firstEntry();

    @Override
    Iterator<E> iterator();

    @CheckForNull
    V1.a<E> lastEntry();

    @CheckForNull
    V1.a<E> pollFirstEntry();

    @CheckForNull
    V1.a<E> pollLastEntry();
}
