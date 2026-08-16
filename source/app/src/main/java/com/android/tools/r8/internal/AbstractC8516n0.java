package com.android.tools.r8.internal;

import java.util.ListIterator;

public abstract class AbstractC8516n0 implements ListIterator, InterfaceC8258lU, InterfaceC9861v30 {
    public abstract long a();

    public abstract void a(long j10);

    @Override
    public final void add(Object obj) {
        a(((Long) obj).longValue());
    }

    public abstract void b(long j10);

    @Override
    public final Object next() {
        return Long.valueOf(l());
    }

    @Override
    public final Object previous() {
        return Long.valueOf(a());
    }

    @Override
    public final void set(Object obj) {
        b(((Long) obj).longValue());
    }
}
