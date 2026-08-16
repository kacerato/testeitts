package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C8725oE extends AbstractC10377y80 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8725oE(I50 i50) {
        super(new E50(i50, "instance-of"));
        i50.getClass();
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        CO co;
        CO co2;
        int ordinal = ((EnumC8558nE) obj).ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                C8415mP.a();
                C8415mP a10 = C8415mP.a((String) obj2);
                if (!a10.c()) {
                    co = new CO(a10, false);
                } else {
                    throw new FN("Invalid instance-of pattern matching any class exclusive. This pattern matches nothing.");
                }
            } else if (ordinal == 2) {
                C8415mP.a();
                C8415mP a11 = C8415mP.a(((C9663tt0) obj2).a());
                if (a11.c()) {
                    co2 = CO.f39210c;
                } else {
                    co = new CO(a11, true);
                }
            } else if (ordinal != 3) {
                co2 = null;
            } else {
                C8415mP.a();
                C8415mP a12 = C8415mP.a(((C9663tt0) obj2).a());
                if (!a12.c()) {
                    co = new CO(a12, false);
                } else {
                    throw new FN("Invalid instance-of pattern matching any class exclusive. This pattern matches nothing.");
                }
            }
            co2 = co;
        } else {
            C8415mP.a();
            C8415mP a13 = C8415mP.a((String) obj2);
            if (a13.c()) {
                co2 = CO.f39210c;
            } else {
                co = new CO(a13, true);
                co2 = co;
            }
        }
        if (co2 == null) {
            return false;
        }
        consumer.accept(co2);
        return true;
    }

    public static void a(Consumer consumer, C7869j7 c7869j7, C4855Ad c4855Ad) {
        CO co;
        C8415mP.a();
        boolean booleanValue = ((Boolean) c7869j7.a(Boolean.TRUE)).booleanValue();
        C8415mP c8415mP = (C8415mP) c4855Ad.a(C8415mP.a());
        if (!c8415mP.c()) {
            co = new CO(c8415mP, booleanValue);
        } else if (booleanValue) {
            co = CO.f39210c;
        } else {
            throw new FN("Invalid instance-of pattern matching any class exclusive. This pattern matches nothing.");
        }
        consumer.accept(co);
    }

    @Override
    public final A50 a(EnumC8558nE enumC8558nE, String str, String str2, final Consumer consumer) {
        if (!enumC8558nE.equals(EnumC8558nE.f50567f)) {
            return null;
        }
        B50 b50 = new B50(this.f53951a.b(str), str2);
        final C7869j7 c7869j7 = new C7869j7(b50);
        c7869j7.a("inclusive", EnumC7704i7.f48844b);
        final C4855Ad c4855Ad = new C4855Ad(b50);
        c4855Ad.a("classNamePattern", EnumC10616zd.f54415b);
        return new A50(b50, AbstractC7552hC.a(c7869j7, c4855Ad), new Runnable() {
            @Override
            public final void run() {
                C8725oE.a(Consumer.this, c7869j7, c4855Ad);
            }
        });
    }
}
