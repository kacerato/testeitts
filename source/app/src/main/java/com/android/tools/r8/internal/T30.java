package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class T30 extends AbstractC9997vt0 {

    public static final S30 f44381c = new S30(EnumC9493ss0.f52474b);

    public final C5713Oz f44382a;

    public final EnumC9493ss0 f44383b;

    public T30(C5713Oz c5713Oz, EnumC9493ss0 enumC9493ss0) {
        this.f44382a = c5713Oz;
        this.f44383b = enumC9493ss0;
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        Object arrayList;
        Object arrayList2;
        Object obj;
        int u10 = c8240lL.u();
        int b10 = AbstractC4291c.b(u10);
        if (b10 == 0) {
            c8240lL.c();
            arrayList = new ArrayList();
        } else if (b10 != 2) {
            arrayList = null;
        } else {
            c8240lL.d();
            arrayList = new FS(true);
        }
        if (arrayList == null) {
            int b11 = AbstractC4291c.b(u10);
            if (b11 == 5) {
                return c8240lL.s();
            }
            if (b11 == 6) {
                return this.f44383b.a(c8240lL);
            }
            if (b11 == 7) {
                return Boolean.valueOf(c8240lL.m());
            }
            if (b11 == 8) {
                c8240lL.r();
                return null;
            }
            throw new IllegalStateException("Unexpected token: ".concat(AbstractC8574nL.a(u10)));
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (c8240lL.k()) {
                String q10 = arrayList instanceof Map ? c8240lL.q() : null;
                int u11 = c8240lL.u();
                int b12 = AbstractC4291c.b(u11);
                if (b12 == 0) {
                    c8240lL.c();
                    arrayList2 = new ArrayList();
                } else if (b12 != 2) {
                    arrayList2 = null;
                } else {
                    c8240lL.d();
                    arrayList2 = new FS(true);
                }
                boolean z10 = arrayList2 != null;
                if (arrayList2 == null) {
                    int b13 = AbstractC4291c.b(u11);
                    if (b13 == 5) {
                        obj = c8240lL.s();
                    } else if (b13 == 6) {
                        obj = this.f44383b.a(c8240lL);
                    } else if (b13 == 7) {
                        obj = Boolean.valueOf(c8240lL.m());
                    } else if (b13 == 8) {
                        c8240lL.r();
                        obj = null;
                    } else {
                        throw new IllegalStateException("Unexpected token: ".concat(AbstractC8574nL.a(u11)));
                    }
                } else {
                    obj = arrayList2;
                }
                if (arrayList instanceof List) {
                    ((List) arrayList).add(obj);
                } else {
                    ((Map) arrayList).put(q10, obj);
                }
                if (z10) {
                    arrayDeque.addLast(arrayList);
                    arrayList = obj;
                }
            } else {
                if (arrayList instanceof List) {
                    c8240lL.g();
                } else {
                    c8240lL.h();
                }
                if (arrayDeque.isEmpty()) {
                    return arrayList;
                }
                arrayList = arrayDeque.removeLast();
            }
        }
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (obj == null) {
            c9075qL.i();
            return;
        }
        C5713Oz c5713Oz = this.f44382a;
        Class<?> cls = obj.getClass();
        c5713Oz.getClass();
        AbstractC9997vt0 a10 = c5713Oz.a(new C5009Cu0(cls));
        if (a10 instanceof T30) {
            c9075qL.e();
            c9075qL.g();
        } else {
            a10.a(c9075qL, obj);
        }
    }
}
