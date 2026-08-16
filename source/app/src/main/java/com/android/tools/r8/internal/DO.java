package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;

public abstract class DO {
    public final void a(Consumer consumer) {
        CO co = (CO) this;
        if (co.f39212a.c()) {
            return;
        }
        final KeepSpecProtos.InstanceOfPattern.Builder newBuilder = KeepSpecProtos.InstanceOfPattern.newBuilder();
        C8415mP c8415mP = co.f39212a;
        Objects.requireNonNull(newBuilder);
        c8415mP.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.InstanceOfPattern.Builder.this.setClassName((KeepSpecProtos.ClassNamePattern.Builder) obj);
            }
        });
        consumer.accept(newBuilder.setInclusive(co.f39213b));
    }
}
