package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collections;
import java.util.LinkedList;
import java.util.function.Consumer;

public abstract class AbstractC9860v3 {

    public static final boolean f53009a = true;

    public static void a(C4798y c4798y, C7215fB c7215fB, C7954jg c7954jg) {
        C8024k3 v10;
        C10696a c10696a = new C10696a();
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        final Y5 I10 = c7215fB.k().I();
        while (I10.hasNext() && (v10 = I10.next().v()) != null) {
            C10340xw0 d10 = v10.d();
            if (!d10.z()) {
                F1 a10 = c7954jg.a(v10.b(true));
                if (a10.r()) {
                    AbstractC5746Pm0 w10 = a10.w();
                    if (w10.b(c4798y, c7215fB.j())) {
                        AbstractC10561zE[] a11 = w10.a(c4798y, c7215fB.j(), c7215fB, v10);
                        d10.a(((AbstractC10561zE) X3.b(a11)).d(), c10696a);
                        Collections.addAll(linkedList2, a11);
                    }
                }
                if (d10.u().y()) {
                    AbstractC10330xt b10 = c7954jg.b(v10.b(true));
                    if (b10.l()) {
                        continue;
                    } else if (b10.g()) {
                        if (!f53009a) {
                            throw new AssertionError();
                        }
                    } else if (b10.d().e()) {
                        C9126qh a12 = c7215fB.a(0L, AbstractC8999pu0.m());
                        a12.b(v10.getPosition());
                        d10.a(a12.d(), c10696a);
                        linkedList2.add(a12);
                    } else if (!b10.j()) {
                        C10664zt a13 = b10.a();
                        AbstractC8999pu0 u10 = d10.u();
                        a13.getClass();
                        if (a13.b(c4798y, C10664zt.a((C4798y<? extends C4514j>) c4798y, u10))) {
                            C10340xw0 a14 = c7215fB.a(d10.u().d().a(b10.d().d() ? C8854p10.b() : d10.u().B()), (C4515j0) null);
                            d10.a(a14, c10696a);
                            C4 a15 = C4.a(a13, a14, d10, v10, c4798y, c7215fB.j());
                            a15.b(v10.getPosition());
                            linkedList.add(a15);
                        } else if (b10.d().d() && d10.u().v()) {
                            C10340xw0 a16 = c7215fB.a(d10.u().d().D(), (C4515j0) null);
                            d10.a(a16, c10696a);
                            boolean z10 = AbstractC10330xt.f53865a;
                            C4 a17 = C4.a(C7520h10.f48413b, a16, d10, v10, c4798y, c7215fB.j());
                            a17.b(v10.getPosition());
                            linkedList.add(a17);
                        }
                    } else if (!d10.u().t()) {
                        C10340xw0 a18 = c7215fB.a(d10.u().d().D(), (C4515j0) null);
                        d10.a(a18, c10696a);
                        boolean z11 = AbstractC10330xt.f53865a;
                        C4 a19 = C4.a(C7520h10.f48413b, a18, d10, v10, c4798y, c7215fB.j());
                        a19.b(v10.getPosition());
                        linkedList.add(a19);
                    }
                } else {
                    continue;
                }
            }
        }
        boolean z12 = f53009a;
        if (!z12 && I10.n().k1()) {
            throw new AssertionError();
        }
        I10.previous();
        if (!z12 && !I10.n().k1()) {
            throw new AssertionError();
        }
        linkedList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                EE.this.add((C4) obj);
            }
        });
        linkedList2.forEach(new Iv1(I10));
        c10696a.a(c4798y, c7215fB, C6628bi.b());
        if (!z12 && !c7215fB.b((C4798y<?>) c4798y)) {
            throw new AssertionError();
        }
    }
}
