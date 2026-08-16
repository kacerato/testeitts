package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C8152kq0 extends AbstractC10377y80 {
    public C8152kq0(I50 i50) {
        super(i50);
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        if (((EnumC7985jq0) obj).ordinal() != 0) {
            return false;
        }
        consumer.accept(C9917vP.a((String) obj2));
        return true;
    }

    public static boolean a(EnumC7985jq0 enumC7985jq0, Object obj, Consumer consumer) {
        if (enumC7985jq0.ordinal() != 0) {
            return false;
        }
        consumer.accept(C9917vP.a((String) obj));
        return true;
    }

    @Override
    public final A50 a(EnumC7985jq0 enumC7985jq0, String str, String str2, final Consumer consumer) {
        if (enumC7985jq0.ordinal() != 1) {
            return null;
        }
        final B50 b50 = new B50(this.f53951a.b(str), str2);
        final C8152kq0 c8152kq0 = new C8152kq0(b50);
        final C7819iq0 c7819iq0 = new C7819iq0(b50);
        final C7819iq0 c7819iq02 = new C7819iq0(b50);
        c8152kq0.a("exact", EnumC7985jq0.f49367b);
        EnumC7653hq0 enumC7653hq0 = EnumC7653hq0.f48721b;
        c7819iq0.a("startsWith", enumC7653hq0);
        c7819iq02.a("endsWith", enumC7653hq0);
        return new A50(b50, AbstractC7552hC.a(c8152kq0, c7819iq0, c7819iq02), new Runnable() {
            @Override
            public final void run() {
                C8152kq0.a(C8152kq0.this, c7819iq0, b50, c7819iq02, consumer);
            }
        });
    }

    public static void a(C8152kq0 c8152kq0, C7819iq0 c7819iq0, B50 b50, C7819iq0 c7819iq02, Consumer consumer) {
        C9917vP c9917vP;
        if (c8152kq0.a()) {
            if (!c7819iq0.a()) {
                if (!c7819iq02.a()) {
                    consumer.accept((C9917vP) c8152kq0.getValue());
                    return;
                }
                throw AbstractC10449yd.a(b50, b50, "Cannot specify both the exact string and a suffix");
            }
            throw AbstractC10449yd.a(b50, b50, "Cannot specify both the exact string and a prefix");
        }
        String str = (String) c7819iq0.a((Object) null);
        String str2 = (String) c7819iq02.a((Object) null);
        if (str == null && str2 == null) {
            c9917vP = C9917vP.f53090d;
        } else {
            c9917vP = new C9917vP(null, str, str2);
        }
        consumer.accept(c9917vP);
    }
}
