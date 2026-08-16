package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.apache.commons.math3.geometry.VectorFormat;

public final class WM extends FO {

    public static final boolean f45372d = true;

    public final YM f45373b;

    public final AbstractC10198x40 f45374c;

    public WM(YM ym2, AbstractC10198x40 abstractC10198x40) {
        boolean z10 = f45372d;
        if (!z10 && ym2 == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC10198x40 == null) {
            throw new AssertionError();
        }
        this.f45373b = ym2;
        this.f45374c = abstractC10198x40;
    }

    @Override
    public final WM a() {
        return this;
    }

    @Override
    public final List d() {
        return Collections.EMPTY_LIST;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WM)) {
            return false;
        }
        WM wm2 = (WM) obj;
        return this.f45373b.equals(wm2.f45373b) && this.f45374c.equals(wm2.f45374c);
    }

    public final KeepSpecProtos.ClassItemPattern.Builder f() {
        final KeepSpecProtos.ClassItemPattern.Builder newBuilder = KeepSpecProtos.ClassItemPattern.newBuilder();
        YM ym2 = this.f45373b;
        Objects.requireNonNull(newBuilder);
        ym2.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.ClassItemPattern.Builder.this.setClassPattern((KeepSpecProtos.ClassPattern.Builder) obj);
            }
        });
        AbstractC9416sP.a(this.f45374c, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.ClassItemPattern.Builder.this.setAnnotatedBy((KeepSpecProtos.AnnotatedByPattern.Builder) obj);
            }
        });
        return newBuilder;
    }

    public final int hashCode() {
        return Objects.hash(this.f45373b, this.f45374c);
    }

    public final String toString() {
        return "KeepClassItemPattern{ class=" + ((Object) this.f45373b) + ", annotated-by=" + ((Object) this.f45374c) + VectorFormat.DEFAULT_SUFFIX;
    }
}
