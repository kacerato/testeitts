package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import org.apache.commons.math3.geometry.VectorFormat;

public final class NO extends OO {

    public static final NO f42575d = new NO(C9864v40.f53012b, IO.f41072e);

    public final AbstractC10198x40 f42576b;

    public final IO f42577c;

    public NO(AbstractC10198x40 abstractC10198x40, IO io2) {
        this.f42576b = abstractC10198x40;
        this.f42577c = io2;
    }

    public static String a(C8415mP c8415mP) {
        return "@" + ((Object) c8415mP) + ", ";
    }

    @Override
    public final IO d() {
        return this.f42577c;
    }

    @Override
    public final AbstractC10198x40 e() {
        return this.f42576b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NO)) {
            return false;
        }
        NO no = (NO) obj;
        return this.f42576b.equals(no.f42576b) && this.f42577c.equals(no.f42577c);
    }

    public final int hashCode() {
        return Objects.hash(this.f42576b, this.f42577c);
    }

    public final KeepSpecProtos.MemberPatternGeneral.Builder i() {
        final KeepSpecProtos.MemberPatternGeneral.Builder newBuilder = KeepSpecProtos.MemberPatternGeneral.newBuilder();
        IO io2 = this.f42577c;
        Objects.requireNonNull(newBuilder);
        io2.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPatternGeneral.Builder.this.setAccess((KeepSpecProtos.MemberAccessGeneral.Builder) obj);
            }
        });
        AbstractC9416sP.a(this.f42576b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPatternGeneral.Builder.this.setAnnotatedBy((KeepSpecProtos.AnnotatedByPattern.Builder) obj);
            }
        });
        return newBuilder;
    }

    public final String toString() {
        return "Member{" + ((String) this.f42576b.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return NO.a((C8415mP) obj);
            }
        })) + "access=" + ((Object) this.f42577c) + VectorFormat.DEFAULT_SUFFIX;
    }
}
