package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.List;

public class C8679nz implements InterfaceC8011jz {

    public final Class f51126a;

    public final C8512mz f51127b;

    public C8679nz(String str, Class cls, Class cls2) {
        C8512mz c8512mz = new C8512mz(str, cls, cls2);
        this.f51126a = c8512mz.f50473c.getReturnType();
        this.f51127b = c8512mz;
    }

    @Override
    public final Object a(AbstractC10181wz abstractC10181wz) {
        return d(abstractC10181wz);
    }

    @Override
    public Object b(AbstractC7345fz abstractC7345fz, int i10) {
        return AbstractC10181wz.access$1100(this.f51127b.f50474d, abstractC7345fz, new Object[]{Integer.valueOf(i10)});
    }

    @Override
    public Object c(AbstractC7345fz abstractC7345fz) {
        return AbstractC10181wz.access$1100(this.f51127b.f50472b, abstractC7345fz, new Object[0]);
    }

    @Override
    public Object d(AbstractC10181wz abstractC10181wz) {
        return AbstractC10181wz.access$1100(this.f51127b.f50471a, abstractC10181wz, new Object[0]);
    }

    @Override
    public final InterfaceC7095eW e(AbstractC7345fz abstractC7345fz) {
        throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, Object obj) {
        d(abstractC7345fz);
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            b(abstractC7345fz, it.next());
        }
    }

    @Override
    public void b(AbstractC7345fz abstractC7345fz, Object obj) {
        AbstractC10181wz.access$1100(this.f51127b.f50476f, abstractC7345fz, new Object[]{obj});
    }

    @Override
    public final int c(AbstractC10181wz abstractC10181wz) {
        return ((Integer) AbstractC10181wz.access$1100(this.f51127b.f50477g, abstractC10181wz, new Object[0])).intValue();
    }

    @Override
    public final void d(AbstractC7345fz abstractC7345fz) {
        AbstractC10181wz.access$1100(this.f51127b.f50479i, abstractC7345fz, new Object[0]);
    }

    @Override
    public Object a(int i10, AbstractC10181wz abstractC10181wz) {
        return AbstractC10181wz.access$1100(this.f51127b.f50473c, abstractC10181wz, new Object[]{Integer.valueOf(i10)});
    }

    @Override
    public final boolean b(AbstractC10181wz abstractC10181wz) {
        throw new UnsupportedOperationException("hasField() called on a repeated field.");
    }

    @Override
    public void a(AbstractC7345fz abstractC7345fz, int i10, Object obj) {
        AbstractC10181wz.access$1100(this.f51127b.f50475e, abstractC7345fz, new Object[]{Integer.valueOf(i10), obj});
    }

    @Override
    public final int b(AbstractC7345fz abstractC7345fz) {
        return ((Integer) AbstractC10181wz.access$1100(this.f51127b.f50478h, abstractC7345fz, new Object[0])).intValue();
    }

    @Override
    public final boolean a(AbstractC7345fz abstractC7345fz) {
        throw new UnsupportedOperationException("hasField() called on a repeated field.");
    }

    @Override
    public InterfaceC7095eW a() {
        throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
    }

    @Override
    public InterfaceC7095eW a(AbstractC7345fz abstractC7345fz, int i10) {
        throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
    }
}
