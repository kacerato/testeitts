package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class FO {

    public static final boolean f40188a = true;

    public WM a() {
        return null;
    }

    public LO b() {
        return null;
    }

    public final KeepSpecProtos.ItemPattern.Builder c() {
        final KeepSpecProtos.ItemPattern.Builder newBuilder = KeepSpecProtos.ItemPattern.newBuilder();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.ItemPattern.Builder.this.setClassItem(((WM) obj).f());
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                FO.a(KeepSpecProtos.ItemPattern.Builder.this, (LO) obj);
            }
        };
        Function a10 = H4.a(consumer);
        Function a11 = H4.a(consumer2);
        if (e()) {
            a10.apply(a());
            return newBuilder;
        }
        if (!f40188a && b() == null) {
            throw new AssertionError();
        }
        a11.apply(b());
        return newBuilder;
    }

    public abstract List d();

    public final boolean e() {
        return a() != null;
    }

    public static void a(KeepSpecProtos.ItemPattern.Builder builder, LO lo) {
        lo.getClass();
        KeepSpecProtos.MemberItemPattern.Builder newBuilder = KeepSpecProtos.MemberItemPattern.newBuilder();
        UM um2 = lo.f41952b;
        um2.getClass();
        builder.setMemberItem(newBuilder.setClassReference(KeepSpecProtos.BindingReference.newBuilder().setName(um2.f42280a.toString())).setMemberPattern(lo.f41953c.c()));
    }
}
