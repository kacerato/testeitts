package com.android.tools.r8.internal;

import java.util.List;
import java.util.function.Predicate;

public final class C7952jf0 implements InterfaceC6534b6 {

    public static final boolean f49283d = true;

    public final C9202r60 f49284a;

    public final C9202r60 f49285b;

    public final V50 f49286c;

    public C7952jf0() {
        C9202r60 c9202r60 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10561zE) obj).C1();
            }
        });
        this.f49284a = c9202r60;
        C9202r60 c9202r602 = new C9202r60(new C5732Pf1());
        this.f49285b = c9202r602;
        this.f49286c = new V50(false, c9202r60, c9202r602);
    }

    public static boolean a(C7631hj c7631hj, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == c7631hj;
    }

    @Override
    public final boolean a(C7920jS c7920jS) {
        C10430yV a10 = this.f49286c.a(c7920jS);
        if (a10 == null) {
            return false;
        }
        C9202r60 c9202r60 = this.f49284a;
        c9202r60.getClass();
        final C7631hj N10 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).N();
        C9202r60 c9202r602 = this.f49285b;
        c9202r602.getClass();
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) ((List) a10.f54035a.get(c9202r602.f51967b)).get(0);
        B60 position = N10.getPosition();
        B60 position2 = abstractC10561zE.getPosition();
        position.getClass();
        if (InterfaceC7166ev.a(position, position2)) {
            c7920jS.i();
            return true;
        }
        c7920jS.next();
        AbstractC10561zE next = c7920jS.next();
        if (!f49283d && next != abstractC10561zE) {
            throw new AssertionError();
        }
        boolean z10 = false;
        while (next.v1() && c7920jS.hasNext()) {
            AbstractC10561zE next2 = c7920jS.next();
            B60 position3 = next2.getPosition();
            B60 position4 = next.getPosition();
            position3.getClass();
            if (!InterfaceC7166ev.a(position3, position4)) {
                break;
            }
            next.a(position);
            z10 = true;
            next = next2;
        }
        c7920jS.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7952jf0.a(C7631hj.this, (AbstractC10561zE) obj);
            }
        });
        if (!z10) {
            return false;
        }
        c7920jS.next();
        c7920jS.i();
        return true;
    }
}
