package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C10247xN extends AbstractC10581zN {

    public final QC f53744b;

    public C10247xN(HashSet hashSet) {
        this.f53744b = QC.a(hashSet);
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2) {
        final KeepSpecProtos.Constraints.Builder newBuilder = KeepSpecProtos.Constraints.newBuilder();
        this.f53744b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.Constraints.Builder.this.addConstraints(((AbstractC9245rN) obj).b());
            }
        });
        consumer.accept(newBuilder.build());
    }

    @Override
    public final Set b() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f53744b.iterator();
        while (it.hasNext()) {
            ((AbstractC9245rN) it.next()).a(hashSet);
        }
        return hashSet;
    }

    public final String toString() {
        return "KeepConstraints{" + ((String) this.f53744b.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Objects.toString((AbstractC9245rN) obj);
            }
        }).collect(Collectors.joining(", "))) + VectorFormat.DEFAULT_SUFFIX;
    }

    @Override
    public final QC a() {
        return this.f53744b;
    }

    @Override
    public final C6748cP a(C6748cP c6748cP) {
        C6748cP c6748cP2 = C6748cP.f47035b;
        C6415aP c6415aP = new C6415aP(false);
        Iterator it = this.f53744b.iterator();
        while (it.hasNext()) {
            ((AbstractC9245rN) it.next()).a(c6415aP);
        }
        return c6415aP.a();
    }
}
