package com.android.tools.r8.internal;

import android.provider.ContactsContract;
import android.provider.Telephony;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public final class C4855Ad extends AbstractC10377y80 {
    public C4855Ad(I50 i50) {
        super(i50);
    }

    public final void b(Consumer consumer, String str, DP dp) {
        consumer.accept(a(dp, this.f53951a.b(str)));
    }

    public final void a(Consumer consumer, String str, DP dp) {
        consumer.accept(a(dp, this.f53951a.b(str)));
    }

    @Override
    public final boolean a(EnumC10616zd enumC10616zd, final String str, Object obj, final Consumer consumer) {
        int ordinal = enumC10616zd.ordinal();
        if (ordinal == 1) {
            return new C9499su0(this.f53951a).a(EnumC9332ru0.f52218c, str, obj, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C4855Ad.this.a(consumer, str, (DP) obj2);
                }
            });
        }
        if (ordinal != 2) {
            return false;
        }
        return new C9499su0(this.f53951a).a(EnumC9332ru0.f52219d, str, obj, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C4855Ad.this.b(consumer, str, (DP) obj2);
            }
        });
    }

    public static C8415mP a(DP dp, final H50 h50) {
        return (C8415mP) dp.a(new Supplier() {
            @Override
            public final Object get() {
                return C8415mP.a();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4855Ad.a(H50.this, (C8081kP) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4855Ad.a(H50.this, (JM) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((YM) obj).b();
            }
        });
    }

    public static C8415mP a(H50 h50, C8081kP c8081kP) {
        h50.getClass();
        throw new FM(h50, "Invalid use of primitive type where class type was expected");
    }

    public static C8415mP a(H50 h50, JM jm2) {
        h50.getClass();
        throw new FM(h50, "Invalid use of array type where class type was expected");
    }

    @Override
    public final A50 a(EnumC10616zd enumC10616zd, String str, String str2, final Consumer consumer) {
        if (enumC10616zd.ordinal() != 0) {
            return null;
        }
        final B50 b50 = new B50(this.f53951a.b(str), str2);
        final C4855Ad c4855Ad = new C4855Ad(b50);
        final C7864j50 c7864j50 = new C7864j50(b50);
        final C7282fe c7282fe = new C7282fe(b50);
        c4855Ad.a("name", EnumC10616zd.f54416c);
        c4855Ad.a("constant", EnumC10616zd.f54417d);
        c7864j50.a(ContactsContract.Directory.PACKAGE_NAME, EnumC7699i50.f48836b);
        c7282fe.a("unqualifiedName", EnumC7115ee.f47734b);
        c7282fe.a("unqualifiedNamePattern", EnumC7115ee.f47735c);
        return new A50(b50, AbstractC7552hC.a(c4855Ad, c7864j50, c7282fe), new Runnable() {
            @Override
            public final void run() {
                C4855Ad.a(C4855Ad.this, c7282fe, c7864j50, b50, consumer);
            }
        });
    }

    public static void a(C4855Ad c4855Ad, C7282fe c7282fe, C7864j50 c7864j50, B50 b50, Consumer consumer) {
        String str;
        if (c4855Ad.a()) {
            if (!c7282fe.a() && !c7864j50.a()) {
                consumer.accept((C8415mP) c4855Ad.getValue());
                return;
            }
            if (c7282fe.a()) {
                str = "unqualified name";
            } else {
                str = Telephony.Sms.Intents.EXTRA_PACKAGE_NAME;
            }
            throw AbstractC10449yd.a(b50, b50, "Cannot specify both the full class name and its " + str);
        }
        consumer.accept(new C8415mP((C7248fP) c7864j50.a(C7248fP.f47961c), (FP) c7282fe.a(FP.f40190b)));
    }
}
