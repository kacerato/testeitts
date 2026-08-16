package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class C5038Dg extends V0 implements Serializable {

    public final transient ConcurrentHashMap f39589d;

    public C5038Dg(ConcurrentHashMap concurrentHashMap) {
        U60.a(concurrentHashMap.isEmpty(), "the backing map (%s) must be empty", concurrentHashMap);
        this.f39589d = concurrentHashMap;
    }

    @Override
    public final Set a() {
        return new C10625zg(this.f39589d.o());
    }

    @Override
    public final int b(Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) AbstractC9595tV.a(this.f39589d, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override
    public final int c() {
        return this.f39589d.size();
    }

    @Override
    public final void clear() {
        this.f39589d.clear();
    }

    @Override
    public final Iterator d() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public final Iterator g() {
        return new C4922Bg(this, new C4864Ag(this));
    }

    @Override
    public final boolean isEmpty() {
        return this.f39589d.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return new PY(this, entrySet().iterator());
    }

    @Override
    public final int size() {
        long j10 = 0;
        while (this.f39589d.values().iterator().hasNext()) {
            j10 += ((AtomicInteger) r0.next()).get();
        }
        return HJ.a(j10);
    }

    @Override
    public final Object[] toArray() {
        ArrayList arrayList = new ArrayList(CT.a(size()));
        for (MY my : entrySet()) {
            Object b10 = my.b();
            for (int a10 = my.a(); a10 > 0; a10--) {
                arrayList.add(b10);
            }
        }
        return arrayList.toArray();
    }

    @Override
    public final int a(Object obj, int i10) {
        AtomicInteger atomicInteger;
        int i11;
        AtomicInteger atomicInteger2;
        int i12;
        obj.getClass();
        if (i10 == 0) {
            return b(obj);
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException(T60.a(i10, "occurrences must be positive but was: "));
        }
        do {
            atomicInteger = (AtomicInteger) AbstractC9595tV.a(this.f39589d, obj);
            if (atomicInteger == null && (atomicInteger = (AtomicInteger) this.f39589d.putIfAbsent(obj, new AtomicInteger(i10))) == null) {
                return 0;
            }
            do {
                i11 = atomicInteger.get();
                if (i11 != 0) {
                    long j10 = i11 + i10;
                    i12 = (int) j10;
                    if (j10 != i12) {
                        throw new ArithmeticException("overflow: checkedAdd(" + i11 + ", " + i10 + ")");
                    }
                    try {
                    } catch (ArithmeticException unused) {
                        throw new IllegalArgumentException("Overflow adding " + i10 + " occurrences to a count of " + i11);
                    }
                    throw new IllegalArgumentException("Overflow adding " + i10 + " occurrences to a count of " + i11);
                }
                atomicInteger2 = new AtomicInteger(i10);
                if (this.f39589d.putIfAbsent(obj, atomicInteger2) == null) {
                    break;
                }
            } while (!atomicInteger.compareAndSet(i11, i12));
            return i11;
        } while (!this.f39589d.replace(obj, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override
    public final int b(int i10, Object obj) {
        int i11;
        int max;
        if (i10 == 0) {
            return b(obj);
        }
        if (i10 > 0) {
            AtomicInteger atomicInteger = (AtomicInteger) AbstractC9595tV.a(this.f39589d, obj);
            if (atomicInteger == null) {
                return 0;
            }
            do {
                i11 = atomicInteger.get();
                if (i11 == 0) {
                    return 0;
                }
                max = Math.max(0, i11 - i10);
            } while (!atomicInteger.compareAndSet(i11, max));
            if (max == 0) {
                this.f39589d.remove(obj, atomicInteger);
            }
            return i11;
        }
        throw new IllegalArgumentException(T60.a(i10, "occurrences must be positive but was: "));
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        ArrayList arrayList = new ArrayList(CT.a(size()));
        for (MY my : entrySet()) {
            Object b10 = my.b();
            for (int a10 = my.a(); a10 > 0; a10--) {
                arrayList.add(b10);
            }
        }
        return arrayList.toArray(objArr);
    }

    @Override
    public final Set b() {
        return new C4980Cg(this);
    }

    @Override
    public final int a(Object obj) {
        int i10;
        obj.getClass();
        AbstractC5496Le.a(0, oc.c.f98682m);
        AtomicInteger atomicInteger = (AtomicInteger) AbstractC9595tV.a(this.f39589d, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i10 = atomicInteger.get();
            if (i10 == 0) {
                return 0;
            }
        } while (!atomicInteger.compareAndSet(i10, 0));
        this.f39589d.remove(obj, atomicInteger);
        return i10;
    }

    @Override
    public final boolean a(int i10, Object obj) {
        obj.getClass();
        AbstractC5496Le.a(i10, "oldCount");
        AbstractC5496Le.a(0, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) AbstractC9595tV.a(this.f39589d, obj);
        if (atomicInteger == null) {
            return i10 == 0;
        }
        int i11 = atomicInteger.get();
        if (i11 == i10) {
            if (i11 == 0) {
                this.f39589d.remove(obj, atomicInteger);
                return true;
            }
            if (atomicInteger.compareAndSet(i11, 0)) {
                this.f39589d.remove(obj, atomicInteger);
                return true;
            }
        }
        return false;
    }
}
