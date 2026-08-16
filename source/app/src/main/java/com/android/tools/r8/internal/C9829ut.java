package com.android.tools.r8.internal;

import com.android.tools.r8.ir.optimize.C10696a;
import java.util.List;
import java.util.function.Predicate;

public final class C9829ut implements InterfaceC6534b6 {

    public final C9202r60 f52977a;

    public final C9202r60 f52978b;

    public final C9202r60 f52979c;

    public final V50 f52980d;

    public C9829ut() {
        C9202r60 c9202r60 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9829ut.a((AbstractC10561zE) obj);
            }
        });
        this.f52977a = c9202r60;
        C9202r60 c9202r602 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9829ut.b((AbstractC10561zE) obj);
            }
        });
        this.f52978b = c9202r602;
        C9202r60 c9202r603 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9829ut.c((AbstractC10561zE) obj);
            }
        });
        this.f52979c = c9202r603;
        this.f52980d = new V50(true, c9202r60, c9202r602, c9202r603);
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9662tt) && !((C10340xw0) abstractC10561zE.f54321f.get(0)).u().A();
    }

    public static boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9662tt) && !((C10340xw0) abstractC10561zE.f54321f.get(0)).u().A();
    }

    public static boolean c(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9662tt) && !((C10340xw0) abstractC10561zE.f54321f.get(0)).u().A();
    }

    @Override
    public final boolean a(C7920jS c7920jS) {
        C10430yV a10 = this.f52980d.a(c7920jS);
        if (a10 == null) {
            return false;
        }
        C9202r60 c9202r60 = this.f52979c;
        c9202r60.getClass();
        C9662tt Q10 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).Q();
        C9202r60 c9202r602 = this.f52978b;
        c9202r602.getClass();
        C9662tt Q11 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r602.f51967b)).get(0)).Q();
        C9202r60 c9202r603 = this.f52977a;
        c9202r603.getClass();
        C9662tt Q12 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r603.f51967b)).get(0)).Q();
        int i10 = ((C8146ko0) Q10.f54321f.get(0)).f49762p;
        C8146ko0 u22 = Q10.u2();
        C8146ko0 c8146ko0 = new C8146ko0(u22.f49763q, u22.u(), i10);
        C8146ko0 u23 = Q11.u2();
        C8146ko0 c8146ko02 = new C8146ko0(u23.f49763q, u23.u(), i10 + 1);
        C8146ko0 u24 = Q12.u2();
        C8146ko0 c8146ko03 = new C8146ko0(u24.f49763q, u24.u(), i10 + 2);
        C8146ko0 c8146ko04 = ((C8313lo0) Q12.d()).f50108p[1];
        C8146ko0 c8146ko05 = new C8146ko0(c8146ko04.f49763q, c8146ko04.u(), i10 + 3);
        C8146ko0 c8146ko06 = (C8146ko0) Q11.f54321f.get(0);
        c8146ko06.f53887d.remove(Q11);
        c8146ko06.f53888e = null;
        C8146ko0 c8146ko07 = (C8146ko0) Q12.f54321f.get(0);
        c8146ko07.f53887d.remove(Q12);
        c8146ko07.f53888e = null;
        Q10.u2().f(c8146ko0);
        Q11.u2().f(c8146ko02);
        Q12.u2().f(c8146ko03);
        ((C8313lo0) Q12.d()).f50108p[1].f(c8146ko05);
        C9495st c9495st = new C9495st(c8146ko0, c8146ko02, c8146ko03, c8146ko05, Q10.u2(), ((C8313lo0) Q10.d()).f50108p[1]);
        c7920jS.i();
        c7920jS.previous();
        c7920jS.a(c9495st, (C10696a) null);
        c7920jS.next();
        return true;
    }
}
