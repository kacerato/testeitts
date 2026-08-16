package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.function.Consumer;

public final class DN extends BN {

    public static final boolean f39504e = true;

    public final MN f39505a;

    public final QM f39506b;

    public final AbstractC7914jP f39507c;

    public final C6744cN f39508d;

    public DN(MN mn2, QM qm2, AbstractC7914jP abstractC7914jP, C6744cN c6744cN) {
        boolean z10 = f39504e;
        if (!z10 && mn2 == null) {
            throw new AssertionError();
        }
        if (!z10 && qm2 == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC7914jP == null) {
            throw new AssertionError();
        }
        if (!z10 && c6744cN == null) {
            throw new AssertionError();
        }
        this.f39505a = mn2;
        this.f39506b = qm2;
        this.f39507c = abstractC7914jP;
        this.f39508d = c6744cN;
    }

    public static void a(KeepSpecProtos.Edge.Builder builder, ZM zm2) {
        zm2.getClass();
        KeepSpecProtos.Condition.Builder newBuilder = KeepSpecProtos.Condition.newBuilder();
        MM mm2 = zm2.f46230a;
        mm2.getClass();
        builder.addPreconditions(newBuilder.setItem(KeepSpecProtos.BindingReference.newBuilder().setName(mm2.f42280a.toString())));
    }

    @Override
    public final DN b() {
        return this;
    }

    public final KeepSpecProtos.Edge.Builder c() {
        final KeepSpecProtos.Edge.Builder newBuilder = KeepSpecProtos.Edge.newBuilder();
        MN mn2 = this.f39505a;
        mn2.getClass();
        KeepSpecProtos.MetaInfo.Builder newBuilder2 = KeepSpecProtos.MetaInfo.newBuilder();
        newBuilder2.setContext(mn2.f42285b.a(KeepSpecProtos.Context.newBuilder()));
        if (!mn2.f42286c.a()) {
            newBuilder2.setDescription(mn2.f42286c.f41387a);
        }
        newBuilder.setMetaInfo(newBuilder2);
        newBuilder.setBindings(this.f39506b.a());
        this.f39507c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DN.a(KeepSpecProtos.Edge.Builder.this, (ZM) obj);
            }
        });
        this.f39508d.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.Edge.Builder.this.addConsequences(((C10251xP) obj).a());
            }
        });
        return newBuilder;
    }

    public final QM d() {
        return this.f39506b;
    }

    public final String toString() {
        return c().toString();
    }
}
