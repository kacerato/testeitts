package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.List;
import java.util.function.Consumer;

public final class C10084wP {

    public static final boolean f53495c = true;

    public MM f53496a;

    public AbstractC10581zN f53497b = C10414yN.f54000c;

    public final C10084wP a(KeepSpecProtos.Target target, C9249rP c9249rP) {
        this.f53496a = c9249rP.a(target.getItem());
        if (!f53495c) {
            AbstractC10581zN abstractC10581zN = this.f53497b;
            abstractC10581zN.getClass();
            if (!(abstractC10581zN instanceof C10414yN)) {
                throw new AssertionError();
            }
        }
        AbstractC10581zN abstractC10581zN2 = this.f53497b;
        KeepSpecProtos.Constraints constraints = target.hasConstraints() ? target.getConstraints() : null;
        List<KeepSpecProtos.Constraint> constraintAdditionsList = target.getConstraintAdditionsList();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10084wP.this.a((AbstractC10581zN) obj);
            }
        };
        abstractC10581zN2.getClass();
        AbstractC10581zN.a(constraints, constraintAdditionsList, consumer);
        return this;
    }

    public final C10084wP a(AbstractC10581zN abstractC10581zN) {
        this.f53497b = abstractC10581zN;
        return this;
    }
}
