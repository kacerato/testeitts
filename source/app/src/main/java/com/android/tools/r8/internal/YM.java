package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;

public final class YM {

    public static final YM f45975c = new YM(C8415mP.a(), CO.f39210c);

    public final C8415mP f45976a;

    public final DO f45977b;

    public YM(C8415mP c8415mP, DO r22) {
        this.f45976a = c8415mP;
        this.f45977b = r22;
    }

    public final void a(Consumer consumer) {
        if (this.f45976a.c() && ((CO) this.f45977b).f39212a.c()) {
            return;
        }
        consumer.accept(a());
    }

    public final C8415mP b() {
        return this.f45976a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof YM)) {
            return false;
        }
        YM ym2 = (YM) obj;
        return this.f45976a.equals(ym2.f45976a) && this.f45977b.equals(ym2.f45977b);
    }

    public final int hashCode() {
        return Objects.hash(this.f45976a, this.f45977b);
    }

    public final KeepSpecProtos.ClassPattern.Builder a() {
        final KeepSpecProtos.ClassPattern.Builder newBuilder = KeepSpecProtos.ClassPattern.newBuilder();
        C8415mP c8415mP = this.f45976a;
        Objects.requireNonNull(newBuilder);
        c8415mP.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.ClassPattern.Builder.this.setClassName((KeepSpecProtos.ClassNamePattern.Builder) obj);
            }
        });
        this.f45977b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.ClassPattern.Builder.this.setInstanceOf((KeepSpecProtos.InstanceOfPattern.Builder) obj);
            }
        });
        return newBuilder;
    }

    public static YM a(KeepSpecProtos.ClassPattern classPattern) {
        C8415mP a10 = C8415mP.a();
        CO co = CO.f39210c;
        boolean z10 = XM.f45670c;
        if (!z10 && !a10.c()) {
            throw new AssertionError();
        }
        if (classPattern.hasClassName()) {
            a10 = C8415mP.a(classPattern.getClassName());
        }
        if (!z10 && !co.f39212a.c()) {
            throw new AssertionError();
        }
        if (classPattern.hasInstanceOf()) {
            KeepSpecProtos.InstanceOfPattern instanceOf = classPattern.getInstanceOf();
            C8415mP a11 = C8415mP.a();
            if (!BO.f38890a && !a11.c()) {
                throw new AssertionError();
            }
            if (instanceOf.hasClassName()) {
                a11 = C8415mP.a(instanceOf.getClassName());
            }
            boolean inclusive = instanceOf.hasInclusive() ? instanceOf.getInclusive() : true;
            if (!a11.c()) {
                co = new CO(a11, inclusive);
            } else if (!inclusive) {
                throw new FN("Invalid instance-of pattern matching any class exclusive. This pattern matches nothing.");
            }
        }
        if (a10.c() && co.f39212a.c()) {
            return f45975c;
        }
        return new YM(a10, co);
    }
}
