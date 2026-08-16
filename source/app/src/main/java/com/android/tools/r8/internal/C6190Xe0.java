package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.Spliterator;
import java.util.Spliterators;

public final class C6190Xe0 extends AbstractC7552hC {

    public static final C6190Xe0 f45779e = new C6190Xe0(new Object[0]);

    public final transient Object[] f45780d;

    public C6190Xe0(Object[] objArr) {
        this.f45780d = objArr;
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        Object[] objArr2 = this.f45780d;
        System.arraycopy(objArr2, 0, objArr, i10, objArr2.length);
        return i10 + this.f45780d.length;
    }

    @Override
    public final Object[] b() {
        return this.f45780d;
    }

    @Override
    public final int c() {
        return this.f45780d.length;
    }

    @Override
    public final int d() {
        return 0;
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final Object get(int i10) {
        return this.f45780d[i10];
    }

    @Override
    public final G listIterator(int i10) {
        Object[] objArr = this.f45780d;
        return JK.a(objArr.length, i10, objArr);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        Object[] objArr = this.f45780d;
        return JK.a(objArr.length, i10, objArr);
    }

    @Override
    public final int size() {
        return this.f45780d.length;
    }

    @Override
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.f45780d, 1296);
    }
}
