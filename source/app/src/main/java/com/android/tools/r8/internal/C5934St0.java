package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

public final class C5934St0 extends AbstractC9997vt0 {
    public static void a(C9075qL c9075qL, AbstractC6907dL abstractC6907dL) {
        if (abstractC6907dL != null && !(abstractC6907dL instanceof C7240fL)) {
            boolean z10 = abstractC6907dL instanceof C7906jL;
            if (z10) {
                if (z10) {
                    C7906jL c7906jL = (C7906jL) abstractC6907dL;
                    Object obj = c7906jL.f49214b;
                    if (obj instanceof Number) {
                        c9075qL.a(c7906jL.i());
                        return;
                    } else if (obj instanceof Boolean) {
                        c9075qL.a(c7906jL.a());
                        return;
                    } else {
                        c9075qL.d(c7906jL.h());
                        return;
                    }
                }
                throw new IllegalStateException("Not a JSON Primitive: " + ((Object) abstractC6907dL));
            }
            if (abstractC6907dL instanceof C6574bL) {
                c9075qL.d();
                ArrayList arrayList = abstractC6907dL.c().f46749b;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    a(c9075qL, (AbstractC6907dL) obj2);
                }
                c9075qL.f();
                return;
            }
            if (abstractC6907dL instanceof C7407gL) {
                c9075qL.e();
                FS fs = ((AS) abstractC6907dL.d().f48234b.entrySet()).f38616b;
                ES es = fs.f40207g.f39867e;
                int i11 = fs.f40206f;
                while (true) {
                    ES es2 = fs.f40207g;
                    if (es == es2) {
                        c9075qL.g();
                        return;
                    }
                    if (es != es2) {
                        if (fs.f40206f == i11) {
                            ES es3 = es.f39867e;
                            c9075qL.b((String) es.f39869g);
                            a(c9075qL, (AbstractC6907dL) es.f39871i);
                            es = es3;
                        } else {
                            throw new ConcurrentModificationException();
                        }
                    } else {
                        throw new NoSuchElementException();
                    }
                }
            } else {
                throw new IllegalArgumentException("Couldn't write " + ((Object) abstractC6907dL.getClass()));
            }
        } else {
            c9075qL.i();
        }
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        a(c9075qL, (AbstractC6907dL) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013c  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(C8240lL c8240lL) {
        AbstractC6907dL c6574bL;
        AbstractC6907dL c6574bL2;
        AbstractC6907dL abstractC6907dL;
        if (c8240lL instanceof C8908pL) {
            C8908pL c8908pL = (C8908pL) c8240lL;
            int u10 = c8908pL.u();
            if (u10 != 5 && u10 != 2 && u10 != 4 && u10 != 10) {
                AbstractC6907dL abstractC6907dL2 = (AbstractC6907dL) c8908pL.A();
                c8908pL.y();
                return abstractC6907dL2;
            }
            throw new IllegalStateException("Unexpected " + AbstractC8574nL.a(u10) + " when reading a JsonElement.");
        }
        int u11 = c8240lL.u();
        int b10 = AbstractC4291c.b(u11);
        if (b10 == 0) {
            c8240lL.c();
            c6574bL = new C6574bL();
        } else if (b10 != 2) {
            c6574bL = null;
        } else {
            c8240lL.d();
            c6574bL = new C7407gL();
        }
        if (c6574bL == null) {
            int b11 = AbstractC4291c.b(u11);
            if (b11 == 5) {
                return new C7906jL(c8240lL.s());
            }
            if (b11 == 6) {
                return new C7906jL(new C9253rR(c8240lL.s()));
            }
            if (b11 == 7) {
                return new C7906jL(Boolean.valueOf(c8240lL.m()));
            }
            if (b11 == 8) {
                c8240lL.r();
                return C7240fL.f47942b;
            }
            throw new IllegalStateException("Unexpected token: ".concat(AbstractC8574nL.a(u11)));
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (c8240lL.k()) {
                String q10 = c6574bL instanceof C7407gL ? c8240lL.q() : null;
                int u12 = c8240lL.u();
                int b12 = AbstractC4291c.b(u12);
                if (b12 == 0) {
                    c8240lL.c();
                    c6574bL2 = new C6574bL();
                } else if (b12 != 2) {
                    c6574bL2 = null;
                } else {
                    c8240lL.d();
                    c6574bL2 = new C7407gL();
                }
                boolean z10 = c6574bL2 != null;
                if (c6574bL2 == null) {
                    int b13 = AbstractC4291c.b(u12);
                    if (b13 == 5) {
                        abstractC6907dL = new C7906jL(c8240lL.s());
                    } else if (b13 == 6) {
                        c6574bL2 = new C7906jL(new C9253rR(c8240lL.s()));
                    } else if (b13 == 7) {
                        abstractC6907dL = new C7906jL(Boolean.valueOf(c8240lL.m()));
                    } else if (b13 == 8) {
                        c8240lL.r();
                        abstractC6907dL = C7240fL.f47942b;
                    } else {
                        throw new IllegalStateException("Unexpected token: ".concat(AbstractC8574nL.a(u12)));
                    }
                    if (!(c6574bL instanceof C6574bL)) {
                        ((C6574bL) c6574bL).f46749b.add(abstractC6907dL);
                    } else {
                        ((C7407gL) c6574bL).a(q10, abstractC6907dL);
                    }
                    if (!z10) {
                        arrayDeque.addLast(c6574bL);
                        c6574bL = abstractC6907dL;
                    }
                }
                abstractC6907dL = c6574bL2;
                if (!(c6574bL instanceof C6574bL)) {
                }
                if (!z10) {
                }
            } else {
                if (c6574bL instanceof C6574bL) {
                    c8240lL.g();
                } else {
                    c8240lL.h();
                }
                if (arrayDeque.isEmpty()) {
                    return c6574bL;
                }
                c6574bL = (AbstractC6907dL) arrayDeque.removeLast();
            }
        }
    }
}
