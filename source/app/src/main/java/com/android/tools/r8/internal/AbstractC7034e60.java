package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;
import w2.C15883c;

public abstract class AbstractC7034e60 {

    public static final boolean f47605c = true;

    public final MN f47606a;

    public final C6748cP f47607b;

    public AbstractC7034e60(MN mn2, C6748cP c6748cP) {
        this.f47606a = mn2;
        this.f47607b = c6748cP;
    }

    public static void a(List list) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                r0.put((AbstractC7034e60) obj, Integer.valueOf(IdentityHashMap.this.size()));
            }
        });
        list.sort(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return AbstractC7034e60.a((AbstractC7034e60) obj);
            }
        }).thenComparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return AbstractC7034e60.b((AbstractC7034e60) obj);
            }
        }).thenComparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((Integer) IdentityHashMap.this.get((AbstractC7034e60) obj)).intValue();
            }
        }));
    }

    public static int b(AbstractC7034e60 abstractC7034e60) {
        String b10 = abstractC7034e60.b();
        b10.getClass();
        char c10 = '\uffff';
        switch (b10.hashCode()) {
            case -2065807777:
                if (b10.equals("-keepclasseswithmembers")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1840734199:
                if (b10.equals("-keepattributes")) {
                    c10 = 1;
                    break;
                }
                break;
            case -372175037:
                if (b10.equals("-checkdiscard")) {
                    c10 = 2;
                    break;
                }
                break;
            case 44846386:
                if (b10.equals("-keep")) {
                    c10 = 3;
                    break;
                }
                break;
            case 917379795:
                if (b10.equals("-keepclassmembers")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 0;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 3;
            default:
                throw new FN("Unexpected consequence keep type: " + abstractC7034e60.b());
        }
    }

    public abstract String b();

    public abstract void b(StringBuilder sb2, PM pm2);

    public abstract List c();

    public abstract void c(StringBuilder sb2);

    public boolean d() {
        return this instanceof Z50;
    }

    public void b(StringBuilder sb2) {
        int ordinal;
        String str;
        MN mn2 = this.f47606a;
        if (IN.f41068a != mn2.f42285b) {
            sb2.append("# context: ");
            sb2.append(mn2.f42285b.a());
            sb2.append('\n');
        }
        if (!JN.f41385b.equals(mn2.f42286c)) {
            String c10 = AbstractC5626Nk0.c(mn2.f42286c.f41387a);
            sb2.append("# description: ");
            sb2.append(c10);
            sb2.append('\n');
        }
        if (d()) {
            sb2.append("-if");
            sb2.append(C15883c.f126249O);
            a(sb2);
            List<PM> a10 = a();
            if (!a10.isEmpty()) {
                sb2.append(" {");
                for (PM pm2 : a10) {
                    sb2.append(C15883c.f126249O);
                    a(sb2, pm2);
                }
                sb2.append(" }");
            }
            sb2.append(C15883c.f126249O);
        }
        sb2.append(b());
        C6748cP c6748cP = this.f47607b;
        for (EnumC6582bP enumC6582bP : (EnumC6582bP[]) EnumC6582bP.f46761h.clone()) {
            if (c6748cP.f47036a.contains(enumC6582bP) && ((ordinal = enumC6582bP.ordinal()) == 3 || (ordinal != 4 && ordinal != 5))) {
                sb2.append(",allow");
                int ordinal2 = enumC6582bP.ordinal();
                if (ordinal2 == 0) {
                    str = "shrinking";
                } else if (ordinal2 == 1) {
                    str = "optimization";
                } else if (ordinal2 == 2) {
                    str = "obfuscation";
                } else if (ordinal2 == 3) {
                    str = "accessmodification";
                } else if (ordinal2 == 4) {
                    str = "annotationremoval";
                } else if (ordinal2 == 5) {
                    str = "signatureremoval";
                } else {
                    throw new C6337Zu0();
                }
                sb2.append(str);
            }
        }
        sb2.append(C15883c.f126249O);
        c(sb2);
        List<PM> c11 = c();
        if (c11.isEmpty()) {
            return;
        }
        sb2.append(" {");
        for (PM pm3 : c11) {
            sb2.append(C15883c.f126249O);
            b(sb2, pm3);
        }
        sb2.append(" }");
    }

    public static int a(AbstractC7034e60 abstractC7034e60) {
        return abstractC7034e60.d() ? 1 : 0;
    }

    public static BiConsumer a(final C8415mP c8415mP) {
        return new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7034e60.a(C8415mP.this, (StringBuilder) obj, (C8415mP) obj2);
            }
        };
    }

    public static void a(C8415mP c8415mP, StringBuilder sb2, C8415mP c8415mP2) {
        if (!f47605c && !c8415mP2.equals(c8415mP)) {
            throw new AssertionError();
        }
        AbstractC5626Nk0.a(c8415mP, new C5568Mk0(sb2));
    }

    public List a() {
        throw new FN("Unreachable");
    }

    public void a(StringBuilder sb2) {
        throw new FN("Unreachable");
    }

    public void a(StringBuilder sb2, PM pm2) {
        throw new FN("Unreachable");
    }
}
