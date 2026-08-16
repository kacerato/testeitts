package ag;

import ei.C13155a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,129:1\n119#1,2:131\n121#1,4:137\n126#1,2:150\n119#1,2:159\n121#1,4:165\n126#1,2:172\n1#2:130\n1#2:147\n1#2:169\n1#2:184\n1606#3:133\n1617#3:134\n1924#3,2:135\n1926#3:148\n1618#3:149\n777#3:152\n873#3,2:153\n1586#3:155\n1661#3,3:156\n1606#3:161\n1617#3:162\n1924#3,2:163\n1926#3:170\n1618#3:171\n1606#3:180\n1617#3:181\n1924#3,2:182\n1926#3:185\n1618#3:186\n161#4,6:141\n161#4,6:174\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n42#1:131,2\n42#1:137,4\n42#1:150,2\n83#1:159,2\n83#1:165,4\n83#1:172,2\n42#1:147\n83#1:169\n120#1:184\n42#1:133\n42#1:134\n42#1:135,2\n42#1:148\n42#1:149\n79#1:152\n79#1:153,2\n80#1:155\n80#1:156,3\n83#1:161\n83#1:162\n83#1:163,2\n83#1:170\n83#1:171\n120#1:180\n120#1:181\n120#1:182,2\n120#1:185\n120#1:186\n43#1:141,6\n107#1:174,6\n*E\n"})
public class C3610D extends C3643z {
    public static final Mf.l<String, String> j(final String str) {
        return str.length() == 0 ? new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String k10;
                k10 = C3610D.k((String) obj);
                return k10;
            }
        } : new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String l10;
                l10 = C3610D.l(String.this, (String) obj);
                return l10;
            }
        };
    }

    public static final String k(String line) {
        kotlin.jvm.internal.M.p(line, "line");
        return line;
    }

    public static final String l(String str, String line) {
        kotlin.jvm.internal.M.p(line, "line");
        return str + line;
    }

    public static final int m(String str) {
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            if (!C3623e.r(str.charAt(i10))) {
                break;
            }
            i10++;
        }
        return i10 == -1 ? str.length() : i10;
    }

    @NotNull
    public static final String n(@NotNull String str, @NotNull final String indent) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(indent, "indent");
        return Xf.K.H1(Xf.K.N1(P.f4(str), new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String p10;
                p10 = C3610D.p(String.this, (String) obj);
                return p10;
            }
        }), "\n", null, null, 0, null, null, 62, null);
    }

    public static String o(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = C13155a.f85806a;
        }
        return n(str, str2);
    }

    public static final String p(String str, String it) {
        kotlin.jvm.internal.M.p(it, "it");
        if (P.Q3(it)) {
            return it.length() < str.length() ? str : it;
        }
        return str + it;
    }

    public static final String q(List<String> list, int i10, Mf.l<? super String, String> lVar, Mf.l<? super String, String> lVar2) {
        Appendable o32;
        String invoke;
        int L10 = pf.H.L(list);
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (String str : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                pf.H.b0();
            }
            String str2 = str;
            if ((i11 == 0 || i11 == L10) && P.Q3(str2)) {
                str2 = null;
            } else {
                String invoke2 = lVar2.invoke(str2);
                if (invoke2 != null && (invoke = lVar.invoke(invoke2)) != null) {
                    str2 = invoke;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i11 = i12;
        }
        o32 = pf.S.o3(arrayList, new StringBuilder(i10), (r14 & 2) != 0 ? ", " : "\n", (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        return ((StringBuilder) o32).toString();
    }

    @NotNull
    public static final String r(@NotNull String str, @NotNull String newIndent) {
        Appendable o32;
        String invoke;
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(newIndent, "newIndent");
        List<String> g42 = P.g4(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : g42) {
            if (!P.Q3(str2)) {
                arrayList.add(str2);
            }
        }
        ArrayList arrayList2 = new ArrayList(pf.I.d0(arrayList, 10));
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(m((String) it.next())));
        }
        Integer num = (Integer) pf.S.m4(arrayList2);
        int i10 = 0;
        int intValue = num != null ? num.intValue() : 0;
        int length = str.length() + (newIndent.length() * g42.size());
        Mf.l<String, String> j10 = j(newIndent);
        int L10 = pf.H.L(g42);
        ArrayList arrayList3 = new ArrayList();
        for (String str3 : g42) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                pf.H.b0();
            }
            String str4 = str3;
            if ((i10 == 0 || i10 == L10) && P.Q3(str4)) {
                str4 = null;
            } else {
                String g72 = X.g7(str4, intValue);
                if (g72 != null && (invoke = j10.invoke(g72)) != null) {
                    str4 = invoke;
                }
            }
            if (str4 != null) {
                arrayList3.add(str4);
            }
            i10 = i11;
        }
        o32 = pf.S.o3(arrayList3, new StringBuilder(length), (r14 & 2) != 0 ? ", " : "\n", (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        return ((StringBuilder) o32).toString();
    }

    public static String s(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "";
        }
        return r(str, str2);
    }

    @NotNull
    public static final String t(@NotNull String str, @NotNull String newIndent, @NotNull String marginPrefix) {
        Appendable o32;
        int i10;
        String invoke;
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(newIndent, "newIndent");
        kotlin.jvm.internal.M.p(marginPrefix, "marginPrefix");
        if (P.Q3(marginPrefix)) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List<String> g42 = P.g4(str);
        int length = str.length() + (newIndent.length() * g42.size());
        Mf.l<String, String> j10 = j(newIndent);
        int L10 = pf.H.L(g42);
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (String str2 : g42) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                pf.H.b0();
            }
            String str3 = str2;
            String str4 = null;
            if ((i11 == 0 || i11 == L10) && P.Q3(str3)) {
                str3 = null;
            } else {
                int length2 = str3.length();
                int i13 = 0;
                while (true) {
                    if (i13 >= length2) {
                        i10 = -1;
                        break;
                    }
                    if (!C3623e.r(str3.charAt(i13))) {
                        i10 = i13;
                        break;
                    }
                    i13++;
                }
                if (i10 != -1) {
                    int i14 = i10;
                    if (C3617K.K2(str3, marginPrefix, i10, false, 4, null)) {
                        int length3 = i14 + marginPrefix.length();
                        kotlin.jvm.internal.M.n(str3, "null cannot be cast to non-null type java.lang.String");
                        str4 = str3.substring(length3);
                        kotlin.jvm.internal.M.o(str4, "substring(...)");
                    }
                }
                if (str4 != null && (invoke = j10.invoke(str4)) != null) {
                    str3 = invoke;
                }
            }
            if (str3 != null) {
                arrayList.add(str3);
            }
            i11 = i12;
        }
        o32 = pf.S.o3(arrayList, new StringBuilder(length), (r14 & 2) != 0 ? ", " : "\n", (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        return ((StringBuilder) o32).toString();
    }

    public static String u(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "";
        }
        if ((i10 & 2) != 0) {
            str3 = "|";
        }
        return t(str, str2, str3);
    }

    @Ef.g
    @NotNull
    public static String v(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return r(str, "");
    }

    @Ef.g
    @NotNull
    public static final String w(@NotNull String str, @NotNull String marginPrefix) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(marginPrefix, "marginPrefix");
        return t(str, "", marginPrefix);
    }

    public static String x(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "|";
        }
        return w(str, str2);
    }
}
