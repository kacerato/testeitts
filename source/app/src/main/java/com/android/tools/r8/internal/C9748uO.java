package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public final class C9748uO extends IO {

    public static final C9748uO f52842h;

    public final LX f52843f;

    public final LX f52844g;

    static {
        C7286ff0 c7286ff0 = EnumC6355a2.f46400f;
        IX ix = LX.f41973a;
        f52842h = new C9748uO(c7286ff0, ix, ix, ix, ix, ix);
    }

    public C9748uO(Set set, LX lx, LX lx2, LX lx3, LX lx4, LX lx5) {
        super(set, lx, lx2, lx5);
        this.f52843f = lx3;
        this.f52844g = lx4;
    }

    @Override
    public final boolean a() {
        if (!super.a()) {
            return false;
        }
        LX lx = this.f52843f;
        lx.getClass();
        if (!(lx instanceof IX)) {
            return false;
        }
        LX lx2 = this.f52844g;
        lx2.getClass();
        return lx2 instanceof IX;
    }

    public final void b(Consumer consumer) {
        if (a()) {
            return;
        }
        final KeepSpecProtos.MemberAccessField.Builder newBuilder = KeepSpecProtos.MemberAccessField.newBuilder();
        Objects.requireNonNull(newBuilder);
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessField.Builder.this.setGeneralAccess((KeepSpecProtos.MemberAccessGeneral.Builder) obj);
            }
        });
        this.f52843f.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessField.Builder.this.setVolatilePattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f52844g.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessField.Builder.this.setTransientPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
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
        AbstractC5626Nk0.a(c5568Mk0, this.f52843f, "volatile");
        AbstractC5626Nk0.a(c5568Mk0, this.f52844g, "transient");
        return sb2.toString();
    }
}
