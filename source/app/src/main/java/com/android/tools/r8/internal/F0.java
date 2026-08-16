package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.ObjIntConsumer;

public abstract class F0 extends V0 implements Serializable {

    public final transient HashMap f40062d;

    public transient long f40063e;

    public F0(HashMap hashMap) {
        if (!hashMap.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f40062d = hashMap;
    }

    public static void a(ObjIntConsumer objIntConsumer, Object obj, C8127ki c8127ki) {
        objIntConsumer.accept(obj, c8127ki.f49730b);
    }

    @Override
    public final int b(Object obj) {
        C8127ki c8127ki = (C8127ki) AbstractC9595tV.a(this.f40062d, obj);
        if (c8127ki == null) {
            return 0;
        }
        return c8127ki.f49730b;
    }

    @Override
    public final int c() {
        return this.f40062d.size();
    }

    @Override
    public final void clear() {
        Iterator it = this.f40062d.values().iterator();
        while (it.hasNext()) {
            ((C8127ki) it.next()).f49730b = 0;
        }
        this.f40062d.clear();
        this.f40063e = 0L;
    }

    @Override
    public final Iterator d() {
        return new B0(this, this.f40062d.entrySet().iterator());
    }

    @Override
    public final Iterator g() {
        return new D0(this, this.f40062d.entrySet().iterator());
    }

    @Override
    public final Iterator iterator() {
        return new E0(this);
    }

    @Override
    public final int size() {
        return HJ.a(this.f40063e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int a(Object obj, int i10) {
        if (i10 == 0) {
            return b(obj);
        }
        int i11 = 0;
        if (i10 > 0) {
            C8127ki c8127ki = (C8127ki) this.f40062d.get(obj);
            if (c8127ki == null) {
                this.f40062d.put(obj, new C8127ki(i10));
            } else {
                int i12 = c8127ki.f49730b;
                long j10 = i12 + i10;
                if (j10 <= 2147483647L) {
                    c8127ki.f49730b = i12 + i10;
                    i11 = i12;
                } else {
                    throw new IllegalArgumentException(AbstractC4885Aq0.a("too many occurrences: %s", Long.valueOf(j10)));
                }
            }
            this.f40063e += i10;
            return i11;
        }
        throw new IllegalArgumentException(AbstractC4885Aq0.a("occurrences cannot be negative: %s", Integer.valueOf(i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int b(int i10, Object obj) {
        if (i10 == 0) {
            return b(obj);
        }
        if (i10 > 0) {
            C8127ki c8127ki = (C8127ki) this.f40062d.get(obj);
            if (c8127ki == null) {
                return 0;
            }
            int i11 = c8127ki.f49730b;
            if (i11 <= i10) {
                this.f40062d.remove(obj);
                i10 = i11;
            }
            c8127ki.f49730b += -i10;
            this.f40063e -= i10;
            return i11;
        }
        throw new IllegalArgumentException(AbstractC4885Aq0.a("occurrences cannot be negative: %s", Integer.valueOf(i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int a(Object obj) {
        int i10 = 0;
        AbstractC5496Le.a(0, oc.c.f98682m);
        C8127ki c8127ki = (C8127ki) this.f40062d.remove(obj);
        if (c8127ki != null) {
            int i11 = c8127ki.f49730b;
            c8127ki.f49730b = 0;
            i10 = i11;
        }
        this.f40063e += 0 - i10;
        return i10;
    }

    @Override
    public final void a(final ObjIntConsumer objIntConsumer) {
        objIntConsumer.getClass();
        this.f40062d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                F0.a(ObjIntConsumer.this, obj, (C8127ki) obj2);
            }
        });
    }
}
