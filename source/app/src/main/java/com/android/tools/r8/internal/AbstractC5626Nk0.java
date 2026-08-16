package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;

public abstract class AbstractC5626Nk0 {

    public static final boolean f42679a = true;

    public static C5568Mk0 a(C5568Mk0 c5568Mk0, YM ym2) {
        if (((CO) ym2.f45977b).f39212a.c()) {
            return a(ym2.f45976a, c5568Mk0);
        }
        throw new FN("Type patterns with instance-of are not supported in rule extraction");
    }

    public static String b(String str) {
        int length = str.length() - 1;
        if (str.charAt(0) == 'L' && str.charAt(length) == ';') {
            return str.substring(1, length).replace('/', '.');
        }
        throw new FN("Invalid class descriptor: " + str);
    }

    public static String c(String str) {
        char[] charArray = str.toCharArray();
        int i10 = 0;
        while (i10 < charArray.length) {
            char c10 = charArray[i10];
            if ((c10 == '\n' ? "\\n" : c10 == '\r' ? "\\r" : null) != null) {
                StringBuilder sb2 = new StringBuilder(str.substring(0, i10));
                while (i10 < charArray.length) {
                    char c11 = charArray[i10];
                    String str2 = c11 == '\n' ? "\\n" : c11 == '\r' ? "\\r" : null;
                    if (str2 != null) {
                        sb2.append(str2);
                    } else {
                        sb2.append(c11);
                    }
                    i10++;
                }
                return sb2.toString();
            }
            i10++;
        }
        return str;
    }

    public static void a(StringBuilder sb2, WM wm2, BiConsumer biConsumer) {
        AbstractC10198x40 abstractC10198x40 = wm2.f45374c;
        if (!abstractC10198x40.b()) {
            sb2.append("@");
            a((C8415mP) abstractC10198x40.a(), new C5568Mk0(sb2));
            sb2.append(" ");
        }
        sb2.append(ExternalAnnotationProvider.CLASS_PREFIX);
        biConsumer.accept(sb2, wm2.f45373b.f45976a);
        CO co = (CO) wm2.f45373b.f45977b;
        if (co.f39212a.c()) {
            return;
        }
        sb2.append(" extends ");
        a(co.f39212a, new C5568Mk0(sb2));
    }

    public static void a(OO oo, C5568Mk0 c5568Mk0) {
        oo.getClass();
        if (oo == NO.f42575d) {
            c5568Mk0.b("*").a(";");
            return;
        }
        if (!oo.e().b()) {
            c5568Mk0.a("@");
            a((C8415mP) oo.e().a(), c5568Mk0);
            c5568Mk0.a(" ");
        }
        if (oo.h()) {
            WO b10 = oo.b();
            QO qo = b10.f45385c;
            a(c5568Mk0, qo);
            a(c5568Mk0, qo.f43568f, "synchronized");
            a(c5568Mk0, qo.f43569g, "bridge");
            a(c5568Mk0, qo.f43570h, "native");
            a(c5568Mk0, qo.f43571i, "abstract");
            a(c5568Mk0, qo.f43572j, "strictfp");
            C5568Mk0 a10 = c5568Mk0.a(true);
            ZO zo = b10.f45387e;
            zo.getClass();
            if (zo instanceof YO) {
                a10.a("void");
            } else {
                a(a10, zo.a());
            }
            c5568Mk0.a(" ");
            a(c5568Mk0, b10.f45386d.f43890a);
            UO uo = b10.f45388f;
            uo.getClass();
            if (uo instanceof SO) {
                c5568Mk0.a(false).a();
            } else {
                c5568Mk0.a("(");
                List a11 = uo.a();
                for (int i10 = 0; i10 < a11.size(); i10++) {
                    if (i10 > 0) {
                        c5568Mk0.a(", ");
                    }
                    a(c5568Mk0.a(true), (DP) a11.get(i10));
                }
                c5568Mk0.a(")");
            }
            c5568Mk0.a(";");
            return;
        }
        if (oo.f()) {
            C10249xO a12 = oo.a();
            C9748uO c9748uO = a12.f53750c;
            a(c5568Mk0, c9748uO);
            a(c5568Mk0, c9748uO.f52843f, "volatile");
            a(c5568Mk0, c9748uO.f52844g, "transient");
            a(c5568Mk0.a(true), ((C10416yO) a12.f53752e).f54006a);
            c5568Mk0.a(" ");
            a(c5568Mk0, a12.f53751d.f53088a);
            c5568Mk0.a(";");
            return;
        }
        if (!f42679a && oo.d().a() && oo.e().b()) {
            throw new AssertionError();
        }
        a(c5568Mk0, oo.d());
        c5568Mk0.b("*").a(";");
    }

    public static C5568Mk0 a(C5568Mk0 c5568Mk0, C9917vP c9917vP) {
        if (c9917vP.c()) {
            return c5568Mk0.a(c9917vP.f53091a);
        }
        String str = c9917vP.f53092b;
        if (str != null) {
            c5568Mk0.a(str);
        }
        c5568Mk0.d();
        String str2 = c9917vP.f53093c;
        if (str2 != null) {
            c5568Mk0.a(str2);
        }
        return c5568Mk0;
    }

    public static C5568Mk0 a(final C5568Mk0 c5568Mk0, DP dp) {
        Objects.requireNonNull(c5568Mk0);
        return (C5568Mk0) dp.a(new Supplier() {
            @Override
            public final Object get() {
                return C5568Mk0.this.e();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5626Nk0.a(C5568Mk0.this, (C8081kP) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5626Nk0.a(C5568Mk0.this, (JM) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5626Nk0.a(C5568Mk0.this, (YM) obj);
            }
        });
    }

    public static C5568Mk0 a(C5568Mk0 c5568Mk0, C8081kP c8081kP) {
        String b10;
        c8081kP.getClass();
        if (c8081kP == C8081kP.f49607b) {
            return c5568Mk0.c();
        }
        String ch2 = Character.toString(c8081kP.a());
        if (!ch2.isEmpty()) {
            if (ch2.length() == 1) {
                b10 = a(ch2.charAt(0));
            } else if (ch2.charAt(0) == '[') {
                b10 = a(ch2);
            } else {
                b10 = b(ch2);
            }
            return c5568Mk0.a(b10);
        }
        throw new FN("Invalid empty type descriptor");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if ((r0 instanceof com.android.tools.r8.internal.C10585zP) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C5568Mk0 a(C5568Mk0 c5568Mk0, JM jm2) {
        if (!f42679a) {
            jm2.getClass();
            if (JM.f41381c.equals(jm2)) {
                if (jm2.f41384b == 1) {
                    DP dp = jm2.f41383a;
                    dp.getClass();
                }
                throw new AssertionError();
            }
        }
        a(c5568Mk0, jm2.f41383a);
        for (int i10 = 0; i10 < jm2.f41384b; i10++) {
            c5568Mk0.a(okhttp3.v.f99450n);
        }
        return c5568Mk0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.AbstractCollection, java.util.Set] */
    public static void a(C5568Mk0 c5568Mk0, IO io2) {
        if (io2.a()) {
            return;
        }
        if (!EnumC6355a2.a(io2.f41073a)) {
            ?? r02 = io2.f41073a;
            boolean contains = r02.contains(EnumC6355a2.f46398d);
            for (EnumC6355a2 enumC6355a2 : (EnumC6355a2[]) EnumC6355a2.f46401g.clone()) {
                if (!enumC6355a2.equals(EnumC6355a2.f46398d) && (!contains) == r02.contains(enumC6355a2)) {
                    if (contains) {
                        c5568Mk0.a("!");
                    }
                    c5568Mk0.a(enumC6355a2.a()).a(" ");
                }
            }
        }
        a(c5568Mk0, io2.f41074b, "static");
        a(c5568Mk0, io2.f41075c, "final");
        a(c5568Mk0, io2.f41076d, "synthetic");
    }

    public static void a(C5568Mk0 c5568Mk0, LX lx, String str) {
        lx.getClass();
        if (lx instanceof IX) {
            return;
        }
        if (lx instanceof KX) {
            c5568Mk0.a("!");
        }
        c5568Mk0.a(str).a(" ");
    }

    public static C5568Mk0 a(C8415mP c8415mP, C5568Mk0 c5568Mk0) {
        if (c8415mP.c()) {
            return c5568Mk0.b();
        }
        C7248fP c7248fP = c8415mP.f50283a;
        if (c7248fP.b()) {
            c5568Mk0.b().a(".");
        } else if (!c7248fP.c()) {
            for (C6915dP c6915dP : c7248fP.f47965b) {
                if (c6915dP.c()) {
                    a(c5568Mk0, c6915dP.a());
                    c5568Mk0.a(".");
                } else {
                    throw new FN("Unsupported use of zero-or-more package pattern");
                }
            }
        }
        return a(c5568Mk0, c8415mP.f50284b.f40191a);
    }

    public static String a(char c10) {
        if (c10 == 'B') {
            return "byte";
        }
        if (c10 == 'D') {
            return "double";
        }
        if (c10 == 'F') {
            return TypedValues.Custom.S_FLOAT;
        }
        if (c10 == 'S') {
            return "short";
        }
        if (c10 == 'Z') {
            return TypedValues.Custom.S_BOOLEAN;
        }
        if (c10 == 'I') {
            return "int";
        }
        if (c10 == 'J') {
            return "long";
        }
        throw new FN("Invalid primitive descriptor: " + c10);
    }

    public static String a(String str) {
        String b10;
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (str.charAt(i10) != '[') {
                StringBuilder sb2 = new StringBuilder();
                String substring = str.substring(i10);
                if (!substring.isEmpty()) {
                    if (substring.length() == 1) {
                        b10 = a(substring.charAt(0));
                    } else if (substring.charAt(0) == '[') {
                        b10 = a(substring);
                    } else {
                        b10 = b(substring);
                    }
                    sb2.append(b10);
                    for (int i11 = 0; i11 < i10; i11++) {
                        sb2.append(okhttp3.v.f99450n);
                    }
                    return sb2.toString();
                }
                throw new FN("Invalid empty type descriptor");
            }
        }
        throw new FN("Invalid array descriptor: " + str);
    }
}
