package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public final class C5808Qo0 implements InterfaceC6534b6 {

    public static final boolean f43731e = true;

    public final C9202r60 f43732a;

    public final C9202r60 f43733b;

    public final C5421Jx0 f43734c;

    public final V50 f43735d;

    public C5808Qo0() {
        C9202r60 c9202r60 = new C9202r60(U50.a(new FR0()));
        this.f43732a = c9202r60;
        C9202r60 c9202r602 = new C9202r60(new C9741uK0());
        this.f43733b = c9202r602;
        C5421Jx0 c5421Jx0 = new C5421Jx0(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5808Qo0.a((AbstractC10561zE) obj);
            }
        });
        this.f43734c = c5421Jx0;
        this.f43735d = new V50(false, c9202r60, c9202r602, c5421Jx0);
    }

    public static boolean a(JT jt, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == jt;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9662tt) || (abstractC10561zE instanceof C9495st);
    }

    @Override
    public final boolean a(C7920jS c7920jS) {
        C8146ko0 c8146ko0;
        C10430yV a10 = this.f43735d.a(c7920jS);
        if (a10 == null) {
            return false;
        }
        C9202r60 c9202r60 = this.f43732a;
        c9202r60.getClass();
        C5692Oo0 M02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).M0();
        C9202r60 c9202r602 = this.f43733b;
        c9202r602.getClass();
        final JT m02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r602.f51967b)).get(0)).m0();
        if (((C10340xw0) m02.f54321f.get(0)) != M02.d() || M02.d().U() <= 1) {
            return false;
        }
        C5421Jx0 c5421Jx0 = this.f43734c;
        c5421Jx0.getClass();
        List<AbstractC10561zE> list = (List) a10.f54035a.get(c5421Jx0.f41537b);
        C8146ko0 c8146ko02 = (C8146ko0) ((C10340xw0) M02.f54321f.get(0));
        if (list.isEmpty()) {
            c8146ko0 = (C8146ko0) m02.d();
        } else {
            if (!f43731e) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) list.get(0);
                abstractC10561zE.getClass();
                if (!(abstractC10561zE instanceof C9662tt) || ((AbstractC10561zE) list.get(0)).f54321f.get(0) != m02.d()) {
                    throw new AssertionError();
                }
            }
            ((AbstractC10561zE) list.get(0)).a(0, c8146ko02);
            if (!U50.f44670a && list.isEmpty()) {
                throw new AssertionError();
            }
            for (AbstractC10561zE abstractC10561zE2 : list) {
                ArrayList arrayList = abstractC10561zE2.f54321f;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    C10340xw0 c10340xw0 = (C10340xw0) obj;
                    c10340xw0.f53887d.add(abstractC10561zE2);
                    c10340xw0.f53888e = null;
                }
                abstractC10561zE2.f54317b.l().c(abstractC10561zE2);
                c7920jS.add(abstractC10561zE2);
            }
            C8146ko0[] c8146ko0Arr = ((C8313lo0) ((AbstractC10561zE) list.get(list.size() - 1)).d()).f50108p;
            c8146ko02 = c8146ko0Arr[c8146ko0Arr.length - 1];
            c8146ko0 = c8146ko02;
        }
        C8146ko0 c8146ko03 = new C8146ko0(c8146ko0.f49763q, c8146ko0.u(), c8146ko0.f49762p);
        C8146ko0 c8146ko04 = new C8146ko0(c8146ko0.f49763q, c8146ko0.u(), c8146ko0.f49762p + 1);
        c8146ko0.f(c8146ko03);
        if (!f43731e && m02.d().P()) {
            throw new AssertionError();
        }
        C9662tt c9662tt = new C9662tt(c8146ko03, c8146ko04, c8146ko02);
        c9662tt.b(M02.getPosition());
        c7920jS.add(c9662tt);
        M02.a(0, c8146ko04);
        c7920jS.a(new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return C5808Qo0.a(JT.this, (AbstractC10561zE) obj2);
            }
        });
        c7920jS.i();
        U50.a(c7920jS, list.size() + 1);
        return true;
    }
}
