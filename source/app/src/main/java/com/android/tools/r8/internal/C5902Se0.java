package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.function.Consumer;

public class C5902Se0 extends TB {

    public final XB f44260d;

    public final AbstractC7552hC f44261e;

    public C5902Se0(JC jc2, AbstractC7552hC abstractC7552hC) {
        this.f44260d = jc2;
        this.f44261e = abstractC7552hC;
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        return this.f44261e.a(i10, objArr);
    }

    @Override
    public final Object[] b() {
        return this.f44261e.b();
    }

    @Override
    public final int c() {
        return this.f44261e.c();
    }

    @Override
    public final int d() {
        return this.f44261e.d();
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f44261e.forEach(consumer);
    }

    @Override
    public final Object get(int i10) {
        return this.f44261e.get(i10);
    }

    @Override
    public XB j() {
        return this.f44260d;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return this.f44261e.listIterator(i10);
    }

    @Override
    public final G listIterator(int i10) {
        return this.f44261e.listIterator(i10);
    }

    public C5902Se0(XB xb2, Object[] objArr) {
        AbstractC7552hC b10 = AbstractC7552hC.b(objArr.length, objArr);
        this.f44260d = xb2;
        this.f44261e = b10;
    }
}
