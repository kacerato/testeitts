package com.android.tools.r8.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public final class C10351y extends AbstractC9516t {

    public final AtomicReferenceFieldUpdater f53915a;

    public final AtomicReferenceFieldUpdater f53916b;

    public final AtomicReferenceFieldUpdater f53917c;

    public final AtomicReferenceFieldUpdater f53918d;

    public final AtomicReferenceFieldUpdater f53919e;

    public C10351y(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f53915a = atomicReferenceFieldUpdater;
        this.f53916b = atomicReferenceFieldUpdater2;
        this.f53917c = atomicReferenceFieldUpdater3;
        this.f53918d = atomicReferenceFieldUpdater4;
        this.f53919e = atomicReferenceFieldUpdater5;
    }

    @Override
    public final void a(C c10, Thread thread) {
        this.f53915a.lazySet(c10, thread);
    }

    @Override
    public final C b(D d10) {
        return (C) this.f53917c.getAndSet(d10, C.f39054c);
    }

    @Override
    public final void a(C c10, C c11) {
        this.f53916b.lazySet(c10, c11);
    }

    @Override
    public final boolean a(D d10, C c10, C c11) {
        return androidx.concurrent.futures.a.a(this.f53917c, d10, c10, c11);
    }

    @Override
    public final C10184x a(D d10) {
        return (C10184x) this.f53918d.getAndSet(d10, C10184x.f53655b);
    }

    @Override
    public final boolean a(D d10, Object obj, Object obj2) {
        return androidx.concurrent.futures.a.a(this.f53919e, d10, obj, obj2);
    }
}
