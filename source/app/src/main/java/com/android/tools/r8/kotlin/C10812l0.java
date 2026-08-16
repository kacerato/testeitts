package com.android.tools.r8.kotlin;

import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C8137kl0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;
import yd.C16181m;

public class C10812l0 {

    public static final boolean f55359a = true;

    public static class a {

        public final c f55360a;

        public final com.android.tools.r8.naming.M0 f55361b;

        public a(c cVar, com.android.tools.r8.naming.M0 m02) {
            this.f55360a = cVar;
            this.f55361b = m02;
        }

        public com.android.tools.r8.naming.M0 a() {
            return this.f55361b;
        }

        public c b() {
            return this.f55360a;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f55361b.f55702a);
            sb2.append(C16181m.f130230g);
            sb2.append((Object) this.f55360a);
            com.android.tools.r8.naming.M0 m02 = this.f55361b;
            if (m02.f55703b != m02.f55702a) {
                sb2.append(DocLint.SEPARATOR);
                sb2.append(this.f55361b.f55703b);
            }
            sb2.append(b3.s.f32937c);
            return sb2.toString();
        }
    }

    public static class b {

        public final C8137kl0 f55362a;

        public final C8137kl0 f55363b;

        public b(C8137kl0 c8137kl0, C8137kl0 c8137kl02) {
            this.f55362a = c8137kl0;
            this.f55363b = c8137kl02;
        }

        public Map.Entry<Integer, a> a(int i10) {
            return this.f55362a.a(Integer.valueOf(i10));
        }

        public int a() {
            return this.f55362a.a();
        }
    }

    public static class c {

        public final String f55364a;

        public final String f55365b;

        public c(String str, String str2) {
            this.f55364a = str;
            this.f55365b = str2;
        }

        public String a() {
            return this.f55364a;
        }

        public String b() {
            return this.f55365b;
        }

        public final String toString() {
            return this.f55365b + "(" + this.f55364a + ")";
        }
    }

    public static String a(C10800j0 c10800j0, final C10818m0 c10818m0) {
        c10800j0.d();
        c10800j0.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10812l0.a((String) r2.get(0), (String) ((List) obj).get(1), C10818m0.this);
            }
        });
        if (!c10800j0.c()) {
            return c10800j0.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10812l0.b((String) obj);
                }
            }, 1, new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj) {
                    C10812l0.a((String) ((List) obj).get(0), C10818m0.this);
                }
            });
        }
        throw new C10806k0("Unexpected EOF - no debug line positions");
    }

    public static boolean b(String str) {
        return str.equals("*E") || str.startsWith("*S");
    }

    public static b c(String str) {
        BufferedReader bufferedReader;
        b bVar;
        BufferedReader bufferedReader2;
        if (str != null && !str.isEmpty()) {
            try {
                C10800j0 c10800j0 = new C10800j0(str);
                try {
                    String readLine = c10800j0.f55345a.readLine();
                    c10800j0.f55346b = readLine;
                    if (readLine.equals("SMAP")) {
                        while (!"*S Kotlin".equals(c10800j0.f55346b) && !c10800j0.c()) {
                            c10800j0.f55346b = c10800j0.f55345a.readLine();
                        }
                        if (!c10800j0.c()) {
                            C10818m0 c10818m0 = new C10818m0();
                            C10818m0 c10818m02 = new C10818m0();
                            String a10 = a(c10800j0, c10818m0);
                            if (a10.equals("*E")) {
                                String readLine2 = c10800j0.f55345a.readLine();
                                c10800j0.f55346b = readLine2;
                                if (c10800j0.c()) {
                                    if (!f55359a && readLine2 != null) {
                                        throw new AssertionError();
                                    }
                                    bVar = new b(c10818m0.f55373a, c10818m02.f55373a);
                                    bufferedReader2 = c10800j0.f55345a;
                                } else {
                                    if (!readLine2.equals("*S KotlinDebug")) {
                                        bufferedReader = c10800j0.f55345a;
                                    }
                                    a(c10800j0, c10818m02);
                                    if (c10800j0.c() && !c10800j0.f55346b.equals("*E")) {
                                        throw new C10806k0("Unexpected EOF when parsing SMAP debug entries");
                                    }
                                    bVar = new b(c10818m0.f55373a, c10818m02.f55373a);
                                    bufferedReader2 = c10800j0.f55345a;
                                }
                            } else {
                                if (!a10.equals("*S KotlinDebug")) {
                                    bufferedReader = c10800j0.f55345a;
                                }
                                a(c10800j0, c10818m02);
                                if (c10800j0.c()) {
                                    throw new C10806k0("Unexpected EOF when parsing SMAP debug entries");
                                }
                                bVar = new b(c10818m0.f55373a, c10818m02.f55373a);
                                bufferedReader2 = c10800j0.f55345a;
                            }
                            bufferedReader2.close();
                            return bVar;
                        }
                        bufferedReader = c10800j0.f55345a;
                    } else {
                        bufferedReader = c10800j0.f55345a;
                    }
                    bufferedReader.close();
                    return null;
                } catch (Throwable th2) {
                    try {
                        c10800j0.f55345a.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (C10806k0 | IOException unused) {
            }
        }
        return null;
    }

    public static void a(String str, String str2, C10818m0 c10818m0) {
        String[] a10 = C10656zq0.a(str.trim(), C15883c.f126249O, 3);
        if (a10 != null && a10[0].equals("+")) {
            String str3 = a10[2];
            if (!str3.isEmpty()) {
                if (str2 != null && !str2.isEmpty()) {
                    int a11 = a(a10[1]);
                    c cVar = new c(str3, str2);
                    if (((c) c10818m0.f55374b.put(Integer.valueOf(a11), cVar)) == null) {
                        return;
                    }
                    throw new C10806k0("File index " + a11 + " was already mapped to an existing source: " + ((Object) cVar));
                }
                throw new C10806k0("Did not expect file path to be null or empty for " + str);
            }
            throw new C10806k0("Did not expect file name to be empty for line " + str);
        }
        throw new C10806k0("Wrong number of entries on line " + str);
    }

    public static int a(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new C10806k0("Could not parse number " + str);
        }
    }

    public static void a(String str, C10818m0 c10818m0) {
        int parseInt;
        int i10;
        try {
            int indexOf = str.indexOf(58);
            int i11 = indexOf + 1;
            int indexOf2 = str.indexOf(44, indexOf);
            if (indexOf2 > -1) {
                parseInt = Integer.parseInt(str.substring(i11, indexOf2));
                i10 = Integer.parseInt(str.substring(indexOf2 + 1));
            } else {
                parseInt = Integer.parseInt(str.substring(i11));
                i10 = 1;
            }
            String substring = str.substring(0, indexOf);
            int indexOf3 = substring.indexOf(35);
            int parseInt2 = Integer.parseInt(substring.substring(0, indexOf3));
            String substring2 = substring.substring(indexOf3 + 1);
            int indexOf4 = substring2.indexOf(44);
            if (indexOf4 > -1) {
                if (!f55359a && indexOf4 <= 0) {
                    throw new AssertionError();
                }
                i10 = Integer.parseInt(substring2.substring(indexOf4 + 1));
            } else {
                indexOf4 = substring2.length();
            }
            int parseInt3 = Integer.parseInt(substring2.substring(0, indexOf4));
            c cVar = (c) c10818m0.f55374b.get(Integer.valueOf(parseInt3));
            if (cVar != null) {
                int i12 = i10 - 1;
                c10818m0.f55373a.a(parseInt, i12 + parseInt, new a(cVar, new com.android.tools.r8.naming.M0(parseInt2, parseInt2 + i12, false)));
            } else {
                throw new C10806k0("Could not find file with index " + parseInt3);
            }
        } catch (NumberFormatException unused) {
            throw new C10806k0("Could not convert position to number");
        }
    }
}
