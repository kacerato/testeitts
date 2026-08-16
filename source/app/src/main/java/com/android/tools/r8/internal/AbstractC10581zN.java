package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC10581zN {

    public static final boolean f54367a = true;

    public static void b(C10080wN c10080wN, KeepSpecProtos.Constraint constraint) {
        Objects.requireNonNull(c10080wN);
        AbstractC9245rN.a(constraint, new TE1(c10080wN));
    }

    public abstract QC a();

    public abstract C6748cP a(C6748cP c6748cP);

    public final void a(final C10412yM c10412yM) {
        a().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC9245rN) obj).a(AbstractC9579tN.this);
            }
        });
    }

    public abstract void a(Consumer consumer, Consumer consumer2);

    public abstract Set b();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.tools.r8.internal.uN] */
    public static void a(KeepSpecProtos.Constraints constraints, List list, Consumer consumer) {
        if (constraints == null && list.isEmpty()) {
            return;
        }
        final C10080wN c10080wN = new C10080wN();
        if (constraints == null) {
            c10080wN.a(C10414yN.f54000c);
        } else {
            constraints.getConstraintsList().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC10581zN.a(C10080wN.this, (KeepSpecProtos.Constraint) obj);
                }
            });
        }
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10581zN.b(C10080wN.this, (KeepSpecProtos.Constraint) obj);
            }
        });
        C10247xN c10247xN = new C10247xN(c10080wN.f53485b);
        if (c10080wN.f53484a) {
            c10247xN = new C9746uN(c10247xN);
        }
        consumer.accept(c10247xN);
    }

    public static void a(C10080wN c10080wN, KeepSpecProtos.Constraint constraint) {
        Objects.requireNonNull(c10080wN);
        AbstractC9245rN.a(constraint, new TE1(c10080wN));
    }
}
