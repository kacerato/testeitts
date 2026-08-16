package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;

public final class IM {

    public static final IM f41061c = new IM(C8415mP.a(), 3);

    public static final IM f41062d = new IM(C8415mP.a(), 1);

    public static final IM f41063e = new IM(C8415mP.a(), 2);

    public static final boolean f41064f = true;

    public final C8415mP f41065a;

    public final int f41066b;

    public IM(C8415mP c8415mP, int i10) {
        if (!f41064f && c8415mP == null) {
            throw new AssertionError();
        }
        this.f41065a = c8415mP;
        this.f41066b = i10;
    }

    public final KeepSpecProtos.AnnotationPattern.Builder a() {
        final KeepSpecProtos.AnnotationPattern.Builder newBuilder = KeepSpecProtos.AnnotationPattern.newBuilder();
        C8415mP c8415mP = this.f41065a;
        Objects.requireNonNull(newBuilder);
        c8415mP.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.AnnotationPattern.Builder.this.setName((KeepSpecProtos.ClassNamePattern.Builder) obj);
            }
        });
        int i10 = this.f41066b;
        if (i10 == 1) {
            newBuilder.setRetention(KeepSpecProtos.AnnotationRetention.RETENTION_RUNTIME);
            return newBuilder;
        }
        if (i10 == 2) {
            newBuilder.setRetention(KeepSpecProtos.AnnotationRetention.RETENTION_CLASS);
        }
        return newBuilder;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IM)) {
            return false;
        }
        IM im2 = (IM) obj;
        return this.f41066b == im2.f41066b && this.f41065a.equals(im2.f41065a);
    }

    public final int hashCode() {
        return Objects.hash(this.f41065a, Integer.valueOf(this.f41066b));
    }
}
