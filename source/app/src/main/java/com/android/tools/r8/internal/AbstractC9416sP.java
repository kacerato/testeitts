package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;

public abstract class AbstractC9416sP {
    public static void a(AbstractC10198x40 abstractC10198x40, Consumer consumer) {
        if (abstractC10198x40.b()) {
            return;
        }
        final KeepSpecProtos.AnnotatedByPattern.Builder newBuilder = KeepSpecProtos.AnnotatedByPattern.newBuilder();
        C8415mP c8415mP = (C8415mP) abstractC10198x40.a();
        Objects.requireNonNull(newBuilder);
        c8415mP.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.AnnotatedByPattern.Builder.this.setName((KeepSpecProtos.ClassNamePattern.Builder) obj);
            }
        });
        consumer.accept(newBuilder);
    }
}
