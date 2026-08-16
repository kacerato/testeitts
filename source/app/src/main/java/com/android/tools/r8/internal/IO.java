package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public class IO {

    public static final IO f41072e;

    public final AbstractCollection f41073a;

    public final LX f41074b;

    public final LX f41075c;

    public final LX f41076d;

    static {
        C7286ff0 c7286ff0 = EnumC6355a2.f46400f;
        IX ix = LX.f41973a;
        f41072e = new IO(c7286ff0, ix, ix, ix);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IO(Set set, LX lx, LX lx2, LX lx3) {
        this.f41073a = (AbstractCollection) set;
        this.f41074b = lx;
        this.f41075c = lx2;
        this.f41076d = lx3;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.Set] */
    public boolean a() {
        if (!EnumC6355a2.a(this.f41073a)) {
            return false;
        }
        LX lx = this.f41074b;
        lx.getClass();
        if (!(lx instanceof IX)) {
            return false;
        }
        LX lx2 = this.f41075c;
        lx2.getClass();
        if (!(lx2 instanceof IX)) {
            return false;
        }
        LX lx3 = this.f41076d;
        lx3.getClass();
        return lx3 instanceof IX;
    }

    public String toString() {
        if (a()) {
            return "*";
        }
        StringBuilder sb2 = new StringBuilder();
        AbstractC5626Nk0.a(new C5568Mk0(sb2), this);
        return sb2.toString();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractCollection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.AbstractCollection, java.util.Set] */
    public final void a(Consumer consumer) {
        KeepSpecProtos.AccessVisibility accessVisibility;
        if (a()) {
            return;
        }
        final KeepSpecProtos.MemberAccessGeneral.Builder newBuilder = KeepSpecProtos.MemberAccessGeneral.newBuilder();
        if (!EnumC6355a2.a(this.f41073a)) {
            KeepSpecProtos.AccessVisibilitySet.Builder newBuilder2 = KeepSpecProtos.AccessVisibilitySet.newBuilder();
            Iterator it = this.f41073a.iterator();
            while (it.hasNext()) {
                int ordinal = ((EnumC6355a2) it.next()).ordinal();
                if (ordinal == 0) {
                    accessVisibility = KeepSpecProtos.AccessVisibility.ACCESS_PUBLIC;
                } else if (ordinal == 1) {
                    accessVisibility = KeepSpecProtos.AccessVisibility.ACCESS_PROTECTED;
                } else if (ordinal == 2) {
                    accessVisibility = KeepSpecProtos.AccessVisibility.ACCESS_PACKAGE_PRIVATE;
                } else if (ordinal != 3) {
                    accessVisibility = KeepSpecProtos.AccessVisibility.ACCESS_UNSPECIFIED;
                } else {
                    accessVisibility = KeepSpecProtos.AccessVisibility.ACCESS_PRIVATE;
                }
                newBuilder2.addAccessVisibility(accessVisibility);
            }
            newBuilder.setAccessVisibility(newBuilder2.build());
        }
        LX lx = this.f41074b;
        Objects.requireNonNull(newBuilder);
        lx.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessGeneral.Builder.this.setStaticPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f41075c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessGeneral.Builder.this.setFinalPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        this.f41076d.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberAccessGeneral.Builder.this.setSyntheticPattern((KeepSpecProtos.ModifierPattern.Builder) obj);
            }
        });
        consumer.accept(newBuilder);
    }
}
