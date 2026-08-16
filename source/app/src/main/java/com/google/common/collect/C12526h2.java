package com.google.common.collect;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

@X
@v2.b(emulated = true)
public final class C12526h2 {
    public static void a() {
    }

    public static <T> T[] b(Object[] objArr, int i10, int i11, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i10, i11, tArr.getClass());
    }

    public static <T> T[] c(T[] tArr, int i10) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i10));
    }

    public static <K, V> Map<K, V> d(int i10) {
        return D.y(i10);
    }

    public static <E> Set<E> e(int i10) {
        return E.m(i10);
    }

    public static <K, V> Map<K, V> f(int i10) {
        return G.h0(i10);
    }

    public static <E> Set<E> g(int i10) {
        return H.Q(i10);
    }

    public static <E> Set<E> h() {
        return E.i();
    }

    public static <K, V> Map<K, V> i() {
        return D.s();
    }

    public static int j(int i10) {
        return i10;
    }

    public static int k(int i10) {
        return i10;
    }

    public static O1 l(O1 o12) {
        return o12.l();
    }
}
