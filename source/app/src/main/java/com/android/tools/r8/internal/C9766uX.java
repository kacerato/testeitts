package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C9766uX extends AbstractC10377y80 {

    public final C9499su0 f52873g;

    public C9766uX(E50 e50) {
        super(e50);
        this.f52873g = new C9499su0(e50);
    }

    public static void a(Consumer consumer, DP dp) {
        XO xo;
        dp.getClass();
        if (dp instanceof C10585zP) {
            xo = XO.f45678b;
        } else {
            xo = new XO(dp);
        }
        consumer.accept(xo);
    }

    @Override
    public final boolean b(Object obj, String str, String str2, Consumer consumer) {
        C9499su0 c9499su0 = this.f52873g;
        a(consumer);
        c9499su0.getClass();
        return false;
    }

    @Override
    public final Q2 c(String str, Consumer consumer, Object obj) {
        C9499su0 c9499su0 = this.f52873g;
        a(consumer);
        c9499su0.getClass();
        return null;
    }

    @Override
    public final Object getValue() {
        return (ZO) super.getValue();
    }

    public final ZO b() {
        return (ZO) super.getValue();
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        EnumC9332ru0 enumC9332ru0 = (EnumC9332ru0) obj;
        if (enumC9332ru0 == EnumC9332ru0.f52218c && "void".equals(obj2)) {
            consumer.accept(YO.f45982a);
            return true;
        }
        if (enumC9332ru0 == EnumC9332ru0.f52219d && C9663tt0.a("V", 0, 1).equals(obj2)) {
            consumer.accept(YO.f45982a);
            return true;
        }
        return this.f52873g.a(enumC9332ru0, str, obj2, a(consumer));
    }

    @Override
    public final Q2 a(Object obj, String str, String str2, Consumer consumer) {
        return this.f52873g.a((EnumC9332ru0) obj, str, str2, a(consumer));
    }

    public static Consumer a(final Consumer consumer) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9766uX.a(Consumer.this, (DP) obj);
            }
        };
    }
}
