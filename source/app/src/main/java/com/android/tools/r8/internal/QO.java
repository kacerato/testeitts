package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public final class QO extends IO {

    public static final QO f43567k;

    public final LX f43568f;

    public final LX f43569g;

    public final LX f43570h;

    public final LX f43571i;

    public final LX f43572j;

    static {
        C7286ff0 c7286ff0 = EnumC6355a2.f46400f;
        IX ix = LX.f41973a;
        f43567k = new QO(c7286ff0, ix, ix, ix, ix, ix, ix, ix, ix);
    }

    public QO(Set set, LX lx, LX lx2, LX lx3, LX lx4, LX lx5, LX lx6, LX lx7, LX lx8) {
        super(set, lx, lx2, lx7);
        this.f43568f = lx3;
        this.f43569g = lx4;
        this.f43570h = lx5;
        this.f43571i = lx6;
        this.f43572j = lx8;
    }

    @Override
    public final boolean a() {
        if (!super.a()) {
            return false;
        }
        LX lx = this.f43568f;
        lx.getClass();
        if (!(lx instanceof IX)) {
            return false;
        }
        LX lx2 = this.f43569g;
        lx2.getClass();
        if (!(lx2 instanceof IX)) {
            return false;
        }
        LX lx3 = this.f43570h;
        lx3.getClass();
        if (!(lx3 instanceof IX)) {
            return false;
        }
        LX lx4 = this.f43571i;
        lx4.getClass();
        if (!(lx4 instanceof IX)) {
            return false;
        }
        LX lx5 = this.f43572j;
        lx5.getClass();
        return lx5 instanceof IX;
    }

    public final void b(Consumer consumer) {
        if (a()) {
            return;
        }
        final KeepSpecProtos.MemberAccessMethod.Builder newBuilder = KeepSpecProtos.MemberAccessMethod.newBuilder();
        Objects.requireNonNull(newBuilder);
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessMethod.Builder.this.setGeneralAccess((KeepSpecProtos.MemberAccessGeneral.Builder) obj);
            }
        });
        this.f43568f.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessMethod.Builder.this.setSynchronizedPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f43569g.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessMethod.Builder.this.setBridgePattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f43570h.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessMethod.Builder.this.setNativePattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f43571i.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessMethod.Builder.this.setAbstractPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f43572j.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessMethod.Builder.this.setStrictFpPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        consumer.accept(newBuilder);
    }

    @Override
    public final String toString() {
        if (a()) {
            return "*";
        }
        StringBuilder sb2 = new StringBuilder();
        C5568Mk0 c5568Mk0 = new C5568Mk0(sb2);
        AbstractC5626Nk0.a(c5568Mk0, this);
        AbstractC5626Nk0.a(c5568Mk0, this.f43568f, "synchronized");
        AbstractC5626Nk0.a(c5568Mk0, this.f43569g, "bridge");
        AbstractC5626Nk0.a(c5568Mk0, this.f43570h, "native");
        AbstractC5626Nk0.a(c5568Mk0, this.f43571i, "abstract");
        AbstractC5626Nk0.a(c5568Mk0, this.f43572j, "strictfp");
        return sb2.toString();
    }
}
