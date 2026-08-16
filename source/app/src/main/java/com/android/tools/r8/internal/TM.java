package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class TM extends BN {

    public final MN f44448a;

    public final int f44449b;

    public final QM f44450c;

    public final MM f44451d;

    public TM(MN mn2, int i10, QM qm2, MM mm2) {
        this.f44448a = mn2;
        this.f44449b = i10;
        this.f44450c = qm2;
        this.f44451d = mm2;
    }

    @Override
    public final TM a() {
        return this;
    }

    public final QM c() {
        return this.f44450c;
    }

    public final String toString() {
        KeepSpecProtos.Check.Builder newBuilder = KeepSpecProtos.Check.newBuilder();
        MN mn2 = this.f44448a;
        mn2.getClass();
        KeepSpecProtos.MetaInfo.Builder newBuilder2 = KeepSpecProtos.MetaInfo.newBuilder();
        newBuilder2.setContext(mn2.f42285b.a(KeepSpecProtos.Context.newBuilder()));
        if (!mn2.f42286c.a()) {
            newBuilder2.setDescription(mn2.f42286c.f41387a);
        }
        KeepSpecProtos.Check.Builder bindings = newBuilder.setMetaInfo(newBuilder2).setBindings(this.f44450c.a());
        MM mm2 = this.f44451d;
        mm2.getClass();
        return bindings.setItem(KeepSpecProtos.BindingReference.newBuilder().setName(mm2.f42280a.toString())).setKind(this.f44449b == 1 ? KeepSpecProtos.CheckKind.CHECK_REMOVED : KeepSpecProtos.CheckKind.CHECK_OPTIMIZED_OUT).toString();
    }
}
