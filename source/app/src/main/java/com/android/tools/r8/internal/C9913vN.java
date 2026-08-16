package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;

public final class C9913vN extends AbstractC10581zN {

    public static final C9913vN f53081c = new C9913vN();

    public final QC f53082b = QC.a(C8077kN.f49603b, C8578nN.f50939b, C8912pN.f51508b, C9079qN.f51766b, C8745oN.f51227b, C7077eN.f47662b, C7244fN.f47949b, C8244lN.f49960b, C8411mN.f50280b, C7411gN.f48248b, C7745iN.f48927b, C7578hN.f48540b, C7910jN.f49217b, C6911dN.f47384c);

    @Override
    public final C6748cP a(C6748cP c6748cP) {
        return C6748cP.f47035b;
    }

    @Override
    public final Set b() {
        final HashSet hashSet = new HashSet();
        this.f53082b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC9245rN) obj).a(Set.this);
            }
        });
        return hashSet;
    }

    public final String toString() {
        return "KeepConstraints.All{}";
    }

    @Override
    public final QC a() {
        return this.f53082b;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2) {
        final KeepSpecProtos.Constraints.Builder newBuilder = KeepSpecProtos.Constraints.newBuilder();
        this.f53082b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.Constraints.Builder.this.addConstraints(((AbstractC9245rN) obj).b());
            }
        });
        consumer.accept(newBuilder.build());
    }
}
