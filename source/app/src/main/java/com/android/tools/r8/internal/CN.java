package com.android.tools.r8.internal;

import java.util.function.BiFunction;
import java.util.function.Consumer;

public final class CN {

    public MN f39203a = MN.f42283d;

    public QM f39204b = QM.f43556b;

    public AbstractC7914jP f39205c = C7415gP.f48257a;

    public C6744cN f39206d;

    public static C10251xP a(MM mm2, C10251xP c10251xP) {
        C10414yN c10414yN = C10414yN.f54000c;
        AbstractC10581zN abstractC10581zN = c10251xP.f53756b;
        if (mm2 != null) {
            return new C10251xP(mm2, abstractC10581zN);
        }
        throw new FN("Target must define an item pattern");
    }

    public static ZM a(MM mm2, ZM zm2) {
        return new ZM(mm2);
    }

    public static void a(C7582hP c7582hP, RM rm2, ZM zm2) {
        c7582hP.f48548a.add((ZM) rm2.a(zm2.f46230a, zm2, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return CN.a((MM) obj, (ZM) obj2);
            }
        }));
    }

    public static void a(C6578bN c6578bN, RM rm2, C10251xP c10251xP) {
        c6578bN.f46750a.add((C10251xP) rm2.a(c10251xP.f53755a, c10251xP, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return CN.a((MM) obj, (C10251xP) obj2);
            }
        }));
    }

    public final CN a(AbstractC7914jP abstractC7914jP) {
        this.f39205c = abstractC7914jP;
        return this;
    }

    public final CN a(C6744cN c6744cN) {
        this.f39206d = c6744cN;
        return this;
    }

    public final DN a() {
        AbstractC7914jP abstractC7914jP;
        if (!this.f39206d.f47027a.isEmpty()) {
            final RM rm2 = new RM(this.f39204b);
            final C7582hP c7582hP = new C7582hP();
            this.f39205c.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    CN.a(C7582hP.this, rm2, (ZM) obj);
                }
            });
            final C6578bN c6578bN = new C6578bN();
            this.f39206d.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    CN.a(C6578bN.this, rm2, (C10251xP) obj);
                }
            });
            MN mn2 = this.f39203a;
            QM a10 = rm2.a();
            if (rm2.f43882c) {
                if (c7582hP.f48548a.isEmpty()) {
                    abstractC7914jP = C7415gP.f48257a;
                } else {
                    abstractC7914jP = new C7749iP(c7582hP.f48548a);
                }
            } else {
                abstractC7914jP = this.f39205c;
            }
            return new DN(mn2, a10, abstractC7914jP, rm2.f43882c ? c6578bN.a() : this.f39206d);
        }
        throw new FN("KeepEdge must have non-empty set of consequences.");
    }
}
