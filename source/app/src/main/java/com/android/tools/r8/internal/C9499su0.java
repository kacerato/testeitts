package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C9499su0 extends AbstractC10377y80 {
    public C9499su0(I50 i50) {
        super(i50);
    }

    @Override
    public final boolean a(EnumC9332ru0 enumC9332ru0, String str, Object obj, Consumer consumer) {
        int ordinal = enumC9332ru0.ordinal();
        if (ordinal == 1) {
            consumer.accept(AbstractC9414sO.a((String) obj, this.f53951a.b(str)));
            return true;
        }
        if (ordinal != 2) {
            return false;
        }
        consumer.accept(DP.a(((C9663tt0) obj).b()));
        return true;
    }

    @Override
    public final Q2 a(EnumC9332ru0 enumC9332ru0, String str, String str2, final Consumer consumer) {
        int ordinal = enumC9332ru0.ordinal();
        if (ordinal != 0) {
            if (ordinal == 3) {
                return new C4855Ad(this.f53951a).a(EnumC10616zd.f54415b, str, str2, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C9499su0.a(Consumer.this, (C8415mP) obj);
                    }
                });
            }
            if (ordinal != 4) {
                return null;
            }
            return new C8725oE(this.f53951a).a(EnumC8558nE.f50567f, str, str2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9499su0.a(Consumer.this, (DO) obj);
                }
            });
        }
        B50 b50 = new B50(this.f53951a.b(str), str2);
        final C9499su0 c9499su0 = new C9499su0(b50);
        c9499su0.a("name", EnumC9332ru0.f52218c);
        c9499su0.a("constant", EnumC9332ru0.f52219d);
        c9499su0.a("classNamePattern", EnumC9332ru0.f52220e);
        c9499su0.a("instanceOfPattern", EnumC9332ru0.f52221f);
        return new A50(b50, c9499su0, new Runnable() {
            @Override
            public final void run() {
                Consumer.this.accept((DP) c9499su0.a(C10585zP.f54372a));
            }
        });
    }

    public static void a(Consumer consumer, C8415mP c8415mP) {
        YM ym2 = YM.f45975c;
        C8415mP.a();
        CO co = CO.f39210c;
        if (!c8415mP.c() || !co.f39212a.c()) {
            ym2 = new YM(c8415mP, co);
        }
        consumer.accept(new BP(ym2));
    }

    public static void a(Consumer consumer, DO r42) {
        YM ym2 = YM.f45975c;
        C8415mP a10 = C8415mP.a();
        CO co = CO.f39210c;
        if (!a10.c() || !((CO) r42).f39212a.c()) {
            ym2 = new YM(a10, r42);
        }
        consumer.accept(new BP(ym2));
    }
}
