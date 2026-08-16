package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C10251xP {

    public static final boolean f53754c = true;

    public final MM f53755a;

    public final AbstractC10581zN f53756b;

    public C10251xP(MM mm2, AbstractC10581zN abstractC10581zN) {
        boolean z10 = f53754c;
        if (!z10 && mm2 == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC10581zN == null) {
            throw new AssertionError();
        }
        this.f53755a = mm2;
        this.f53756b = abstractC10581zN;
    }

    public final KeepSpecProtos.Target.Builder a() {
        final KeepSpecProtos.Target.Builder newBuilder = KeepSpecProtos.Target.newBuilder();
        AbstractC10581zN abstractC10581zN = this.f53756b;
        Objects.requireNonNull(newBuilder);
        abstractC10581zN.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.Target.Builder.this.setConstraints((KeepSpecProtos.Constraints) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.Target.Builder.this.addConstraintAdditions((KeepSpecProtos.Constraint) obj);
            }
        });
        MM mm2 = this.f53755a;
        mm2.getClass();
        return newBuilder.setItem(KeepSpecProtos.BindingReference.newBuilder().setName(mm2.f42280a.toString()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10251xP)) {
            return false;
        }
        C10251xP c10251xP = (C10251xP) obj;
        return this.f53755a.equals(c10251xP.f53755a) && this.f53756b.equals(c10251xP.f53756b);
    }

    public final int hashCode() {
        return Objects.hash(this.f53755a, this.f53756b);
    }

    public final String toString() {
        return "KeepTarget{item=" + ((Object) this.f53755a) + ", constraints=" + ((Object) this.f53756b) + VectorFormat.DEFAULT_SUFFIX;
    }
}
