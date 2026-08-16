package com.android.tools.r8.internal;

import java.util.function.ObjIntConsumer;

public final class BC extends WB {

    public final C8588nS f38854a = new C8588nS();

    @Override
    public final WB a(Object obj) {
        C8588nS c8588nS = this.f38854a;
        obj.getClass();
        c8588nS.a(obj, 1);
        return this;
    }

    public final BC b(Iterable iterable) {
        if (iterable instanceof LY) {
            ((LY) iterable).a(new ObjIntConsumer() {
                @Override
                public final void accept(Object obj, int i10) {
                    BC.this.a(obj, i10);
                }
            });
            return this;
        }
        a(iterable);
        return this;
    }

    public final void a(Object obj, int i10) {
        C8588nS c8588nS = this.f38854a;
        obj.getClass();
        c8588nS.a(obj, i10);
    }
}
