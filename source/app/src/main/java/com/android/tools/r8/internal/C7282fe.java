package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C7282fe extends AbstractC10377y80 {

    public final C8152kq0 f48033g;

    public C7282fe(B50 b50) {
        super(b50);
        this.f48033g = new C8152kq0(b50);
    }

    public static void b(Consumer consumer, C9917vP c9917vP) {
        FP fp = FP.f40190b;
        if (c9917vP == null) {
            throw new FN("Invalid class name pattern: null");
        }
        if (!c9917vP.b()) {
            fp = new FP(c9917vP);
        }
        consumer.accept(fp);
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        return a((EnumC7115ee) obj, obj2, consumer);
    }

    public final boolean a(EnumC7115ee enumC7115ee, Object obj, final Consumer consumer) {
        if (enumC7115ee.ordinal() != 0) {
            return false;
        }
        C8152kq0 c8152kq0 = this.f48033g;
        EnumC7985jq0 enumC7985jq0 = EnumC7985jq0.f49367b;
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C7282fe.a(Consumer.this, (C9917vP) obj2);
            }
        };
        c8152kq0.getClass();
        return C8152kq0.a(enumC7985jq0, obj, consumer2);
    }

    public static void a(Consumer consumer, C9917vP c9917vP) {
        FP fp = FP.f40190b;
        if (c9917vP != null) {
            if (!c9917vP.b()) {
                fp = new FP(c9917vP);
            }
            consumer.accept(fp);
            return;
        }
        throw new FN("Invalid class name pattern: null");
    }

    @Override
    public final A50 a(EnumC7115ee enumC7115ee, String str, String str2, final Consumer consumer) {
        if (enumC7115ee.ordinal() != 1) {
            return null;
        }
        return this.f48033g.a(EnumC7985jq0.f49368c, str, str2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7282fe.b(Consumer.this, (C9917vP) obj);
            }
        });
    }
}
