package com.android.tools.r8.internal;

import java.util.function.BiFunction;

public final class SM {

    public static final boolean f44192e = true;

    public MN f44193a = MN.f42283d;

    public int f44194b = 1;

    public QM f44195c = QM.f43556b;

    public MM f44196d;

    public static MM a(MM mm2, MM mm3) {
        return mm2;
    }

    public final TM a() {
        if (this.f44196d != null) {
            RM rm2 = new RM(this.f44195c);
            MM mm2 = this.f44196d;
            this.f44196d = (MM) rm2.a(mm2, mm2, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return SM.a((MM) obj, (MM) obj2);
                }
            });
            return new TM(this.f44193a, this.f44194b, rm2.a(), this.f44196d);
        }
        throw new FN("KeepCheck must have an item pattern.");
    }
}
