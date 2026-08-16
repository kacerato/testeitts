package com.android.tools.r8.naming;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.graph.Uc;
import com.android.tools.r8.internal.AbstractC10552zB;
import com.android.tools.r8.internal.AbstractC5384Jf0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5268Hf0;
import com.android.tools.r8.internal.C5326If0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.C7741iL;
import com.android.tools.r8.internal.C8407mL;
import com.android.tools.r8.internal.C9502sv0;
import com.android.tools.r8.internal.L50;
import com.android.tools.r8.internal.U6;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.naming.mappinginformation.MappingInformationDiagnostics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import u.C15498a1;

public final class G0 implements AutoCloseable {

    public static final boolean f55617o = true;

    public final P f55618a;

    public final DiagnosticsHandler f55619b;

    public final boolean f55620c;

    public final boolean f55621d;

    public String f55627j;

    public MapVersion f55628k;

    public boolean f55622e = false;

    public final C10997s0 f55623f = new C10997s0();

    public final C11002t0 f55624g = new C11002t0();

    public int f55625h = 0;

    public int f55626i = 0;

    public final String[] f55629l = new String[64];

    public final HashMap f55630m = new HashMap();

    public final HashMap f55631n = new HashMap();

    public G0(P p10, DiagnosticsHandler diagnosticsHandler, boolean z10, boolean z11, MapVersion mapVersion) {
        this.f55618a = p10;
        this.f55619b = diagnosticsHandler;
        this.f55620c = z10;
        this.f55621d = z11;
        this.f55628k = mapVersion;
        if (!f55617o && diagnosticsHandler == null) {
            throw new AssertionError();
        }
    }

    public final char a(int i10) {
        if (this.f55626i + i10 < this.f55627j.length()) {
            return this.f55627j.charAt(this.f55626i + i10);
        }
        return '\n';
    }

    public final int b(int i10) {
        if (this.f55626i + i10 < this.f55627j.length()) {
            return this.f55627j.codePointAt(this.f55626i + i10);
        }
        return 10;
    }

    public final boolean c() {
        char charAt;
        if (this.f55627j == null) {
            return false;
        }
        int i10 = 0;
        while (i10 < this.f55627j.length()) {
            char charAt2 = this.f55627j.charAt(i10);
            if (charAt2 == '#') {
                String str = this.f55627j;
                do {
                    i10++;
                    if (i10 >= str.length()) {
                        break;
                    }
                    charAt = str.charAt(i10);
                    if (charAt == '{') {
                        return true;
                    }
                } while (Character.isWhitespace(charAt));
                return false;
            }
            if (!Character.isWhitespace(charAt2)) {
                return false;
            }
            i10++;
        }
        return false;
    }

    @Override
    public final void close() {
        this.f55618a.close();
    }

    public final char d() {
        if (!f55617o && this.f55626i >= this.f55627j.length()) {
            throw new AssertionError();
        }
        try {
            String str = this.f55627j;
            int i10 = this.f55626i;
            this.f55626i = i10 + 1;
            return str.charAt(i10);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new F0(this, "Unexpected end of line", false);
        }
    }

    public final void e() {
        try {
            this.f55626i += Character.charCount(this.f55627j.codePointAt(this.f55626i));
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new F0(this, "Unexpected end of line", false);
        }
    }

    public final void f() {
        while (this.f55626i < this.f55627j.length() && C10656zq0.a(b(0))) {
            e();
        }
    }

    public final boolean b(AbstractC11017w0 abstractC11017w0) {
        boolean z10;
        String str;
        boolean z11;
        char charAt;
        this.f55626i = 0;
        do {
            String a10 = this.f55618a.a();
            this.f55627j = a10;
            this.f55625h++;
            if (a10 != null) {
                int i10 = 0;
                while (i10 < a10.length()) {
                    char charAt2 = a10.charAt(i10);
                    if (charAt2 == '#') {
                        do {
                            i10++;
                            if (i10 >= a10.length()) {
                                break;
                            }
                            charAt = a10.charAt(i10);
                            if (charAt == '{') {
                                z11 = true;
                                break;
                            }
                        } while (Character.isWhitespace(charAt));
                        z11 = false;
                        z10 = !z11;
                    } else {
                        if (!C10656zq0.a(charAt2)) {
                            z10 = false;
                            break;
                        }
                        i10++;
                    }
                }
            }
            z10 = true;
            if (!this.f55622e && z10) {
                abstractC11017w0.a(this.f55627j);
            }
            str = this.f55627j;
            if (str == null) {
                break;
            }
        } while (z10);
        return str != null;
    }

    public final void a(char c10) {
        if (this.f55626i < this.f55627j.length()) {
            if (d() == c10) {
                return;
            }
            throw new F0(this, "Expected '" + c10 + "'", false);
        }
        throw new F0(this, "Expected '" + c10 + "'", true);
    }

    public final void a(final AbstractC11017w0 abstractC11017w0) {
        while (this.f55627j != null) {
            f();
            if (c()) {
                if (!a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        G0.this.a(abstractC11017w0, (com.android.tools.r8.naming.mappinginformation.e) obj);
                    }
                }) && !this.f55622e) {
                    abstractC11017w0.a(this.f55627j);
                }
                this.f55626i = this.f55627j.length();
                if (this.f55627j.length() == this.f55626i) {
                    b(abstractC11017w0);
                } else {
                    throw new F0(this, "Expected end of line", false);
                }
            } else {
                String b10 = b(false);
                f();
                if (!f55617o && !AbstractC10552zB.a(45)) {
                    throw new AssertionError();
                }
                if (b10.endsWith("-") && a(0) == ">".charAt(0)) {
                    d();
                    b10 = b10.substring(0, b10.length() - 1);
                } else {
                    f();
                    if (a(0) == '-' && a(1) == '>') {
                        d();
                        d();
                    }
                }
                f();
                String b11 = b(false);
                f();
                a(':');
                this.f55622e = true;
                AbstractC10937g a10 = abstractC11017w0.a(b11, b10, new E0(this.f55625h));
                f();
                if (this.f55627j.length() == this.f55626i) {
                    if (b(abstractC11017w0)) {
                        a(abstractC11017w0, a10);
                    }
                } else {
                    throw new F0(this, "Expected end of line", false);
                }
            }
        }
    }

    public final void c(com.android.tools.r8.naming.mappinginformation.e eVar, com.android.tools.r8.naming.mappinginformation.e eVar2) {
        this.f55619b.warning(MappingInformationDiagnostics.notAllowedCombination(eVar, eVar2, this.f55625h));
    }

    public final void c(boolean z10) {
        boolean z11;
        if (z10 && a(0) == '<') {
            d();
            z11 = true;
        } else {
            z11 = false;
        }
        int b10 = b(0);
        if (AbstractC10552zB.a(b10) || b10 == 63 || b10 == 46) {
            e();
            while (true) {
                if (!AbstractC10552zB.a(b(0)) && b(0) != 63) {
                    break;
                } else {
                    e();
                }
            }
            if (z11) {
                a('>');
                while (AbstractC10552zB.a(b(0))) {
                    e();
                }
            }
            if (AbstractC10552zB.a(b(0))) {
                throw new F0(this, "End of identifier expected (was 0x" + Integer.toHexString(b(0)) + ")", false);
            }
            return;
        }
        throw new F0(this, "Identifier expected", false);
    }

    public final void b(com.android.tools.r8.naming.mappinginformation.e eVar, com.android.tools.r8.naming.mappinginformation.e eVar2) {
        this.f55619b.warning(MappingInformationDiagnostics.notAllowedCombination(eVar, eVar2, this.f55625h));
    }

    public final String b(boolean z10) {
        int i10 = this.f55626i;
        c(false);
        while (a(0) == '.') {
            d();
            c(false);
        }
        if (z10) {
            while (a(0) == '[') {
                d();
                a(JavaElement.JEM_TYPE_PARAMETER);
            }
        }
        int i11 = this.f55626i - i10;
        int i12 = i11 % 64;
        String str = this.f55629l[i12];
        if (str != null && str.length() == i11 && this.f55627j.regionMatches(i10, str, 0, i11)) {
            return str;
        }
        String substring = this.f55627j.substring(i10, this.f55626i);
        String[] strArr = this.f55629l;
        String str2 = (String) this.f55630m.computeIfAbsent(substring, Function.identity());
        strArr[i12] = str2;
        return str2;
    }

    public final void a(final AbstractC11017w0 abstractC11017w0, com.android.tools.r8.naming.mappinginformation.e eVar) {
        if (!f55617o) {
            eVar.getClass();
            if (!(eVar instanceof com.android.tools.r8.naming.mappinginformation.b) && !(eVar instanceof C9502sv0) && !(eVar instanceof L50)) {
                throw new AssertionError();
            }
        }
        eVar.getClass();
        if (eVar instanceof com.android.tools.r8.naming.mappinginformation.b) {
            abstractC11017w0.a(eVar.b());
            return;
        }
        if (eVar instanceof L50) {
            HashMap hashMap = eVar.e().f41859a;
            Objects.requireNonNull(abstractC11017w0);
            hashMap.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    AbstractC11017w0.this.a((String) obj, (String) obj2);
                }
            });
        } else {
            if (this.f55622e) {
                return;
            }
            abstractC11017w0.a(this.f55627j);
        }
    }

    public final void a(Consumer consumer, com.android.tools.r8.naming.mappinginformation.e eVar) {
        com.android.tools.r8.naming.mappinginformation.b b10 = eVar.b();
        if (b10 != null) {
            MapVersion s10 = b10.s();
            MapVersion mapVersion = MapVersion.MAP_VERSION_EXPERIMENTAL;
            if (s10.equals(mapVersion)) {
                if (!this.f55621d) {
                    mapVersion = MapVersion.MAP_VERSION_NONE;
                }
                this.f55628k = mapVersion;
            } else {
                this.f55628k = b10.s();
            }
        }
        consumer.accept(eVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        r1 = r13;
        r2 = r14;
        r4 = r16;
        r3 = r18;
        r7 = r20;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x02f7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x02da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(AbstractC11017w0 abstractC11017w0, final AbstractC10937g abstractC10937g) {
        M0 m02;
        String str;
        boolean z10;
        V.c aVar;
        M0 m03;
        C10957k.b bVar;
        String str2;
        V.c cVar;
        String[] strArr;
        V v10;
        V.c cVar2;
        int i10;
        String str3;
        M0 m04;
        final C7 c72 = new C7();
        final C7 c73 = new C7();
        int i11 = -1;
        C10957k.b bVar2 = null;
        M0 m05 = null;
        V v11 = null;
        V.c cVar3 = null;
        String str4 = null;
        while (true) {
            if (c()) {
                final U6 u62 = new U6(false);
                final String str5 = str4;
                final C10957k.b bVar3 = bVar2;
                str = str4;
                z10 = false;
                C10957k.b bVar4 = bVar2;
                m02 = m05;
                final V v12 = v11;
                a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        G0.this.a(u62, str5, abstractC10937g, bVar3, c73, c72, v12, (com.android.tools.r8.naming.mappinginformation.e) obj);
                    }
                });
                if (u62.d()) {
                    break;
                }
                this.f55626i = this.f55627j.length();
                bVar2 = bVar4;
                m05 = m02;
                if (this.f55627j.length() == this.f55626i) {
                    if (!b(abstractC11017w0)) {
                        m04 = m05;
                        v10 = v11;
                        cVar2 = cVar3;
                        i10 = i11;
                        str3 = str;
                        break;
                    }
                    str4 = str;
                } else {
                    throw new F0(this, "Expected end of line", z10);
                }
            } else {
                C10957k.b bVar5 = bVar2;
                m02 = m05;
                str = str4;
                z10 = false;
                if (!C10656zq0.a(b(0))) {
                    break;
                }
                f();
                boolean z11 = true;
                M0 a10 = a(true);
                if (a10 != null) {
                    if (!a10.f55704c) {
                        f();
                        a(':');
                    } else {
                        throw new F0(this, String.format("Invalid obfuscated line number range (%s).", a10), false);
                    }
                }
                f();
                String b10 = b(true);
                boolean z12 = false;
                while (this.f55626i < this.f55627j.length() && C10656zq0.a(b(0))) {
                    z12 = z12 || b(0) != 65279;
                    e();
                }
                if (z12) {
                    int i12 = this.f55626i;
                    c(true);
                    while (a(0) == '.') {
                        d();
                        c(true);
                    }
                    int i13 = this.f55626i - i12;
                    int i14 = i13 % 64;
                    String str6 = this.f55629l[i14];
                    if (str6 == null || str6.length() != i13 || !this.f55627j.regionMatches(i12, str6, 0, i13)) {
                        String substring = this.f55627j.substring(i12, this.f55626i);
                        String[] strArr2 = this.f55629l;
                        str6 = (String) this.f55630m.computeIfAbsent(substring, Function.identity());
                        strArr2[i14] = str6;
                    }
                    f();
                    if (a(0) == '(') {
                        d();
                        f();
                        if (a(0) == ')') {
                            strArr = C10656zq0.f54546b;
                        } else {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(b(true));
                            f();
                            while (a(0) != ')') {
                                f();
                                a(IIndexConstants.PARAMETER_SEPARATOR);
                                f();
                                arrayList.add(b(true));
                            }
                            strArr = (String[]) arrayList.toArray(C10656zq0.f54546b);
                        }
                        a(')');
                        aVar = new V.b(str6, b10, strArr);
                    } else {
                        aVar = new V.a(str6, b10);
                    }
                    V.c cVar4 = (V.c) this.f55631n.computeIfAbsent(aVar, Function.identity());
                    f();
                    if (a(0) == ':') {
                        d();
                        f();
                        m03 = a(false);
                        if (m03 == null) {
                            throw new F0(this, "No number follows the colon after the method signature.", false);
                        }
                    } else {
                        m03 = null;
                    }
                    if (!this.f55620c && a10 == null && m03 != null) {
                        throw new F0(this, "No mapping for original range " + ((Object) m03) + ".", false);
                    }
                    f();
                    a('-');
                    a('>');
                    f();
                    int i15 = this.f55626i;
                    c(true);
                    while (a(0) == '.') {
                        d();
                        c(true);
                    }
                    int i16 = this.f55626i - i15;
                    int i17 = i16 % 64;
                    String str7 = this.f55629l[i17];
                    if (str7 == null || str7.length() != i16 || !this.f55627j.regionMatches(i15, str7, 0, i16)) {
                        String substring2 = this.f55627j.substring(i15, this.f55626i);
                        String[] strArr3 = this.f55629l;
                        str7 = (String) this.f55630m.computeIfAbsent(substring2, Function.identity());
                        strArr3[i17] = str7;
                    }
                    String str8 = str7;
                    cVar4.getClass();
                    boolean z13 = cVar4 instanceof V.b;
                    if (z13) {
                        V.b b11 = (bVar5 != null && bVar5.f55970c == cVar4 && bVar5.f55972e.equals(str8)) ? bVar5.b() : null;
                        C10957k.b a11 = abstractC10937g.a(a10, cVar4.b(), m03, str8);
                        if (a11 != null) {
                            if (b11 != null) {
                                if (!C10957k.b.f55968k && a11.f55974g) {
                                    throw new AssertionError();
                                }
                                a11.f55973f = b11;
                            } else if (v11 != null && v11.a().equals(a11.f55970c)) {
                                V.b b12 = v11.b().b();
                                if (!C10957k.b.f55968k && a11.f55974g) {
                                    throw new AssertionError();
                                }
                                a11.f55973f = b12;
                            }
                        }
                        bVar = a11;
                    } else {
                        bVar = bVar5;
                    }
                    if (!f55617o && a10 != null && !z13) {
                        throw new AssertionError();
                    }
                    if (cVar3 != null) {
                        boolean equals = str.equals(str8);
                        boolean z14 = m02 == null || !m02.equals(a10);
                        if (m03 != null && m03.f55704c) {
                            z11 = false;
                        }
                        if (!equals || z14 || z11) {
                            V.c cVar5 = cVar3;
                            int i18 = i11;
                            str2 = str8;
                            cVar = cVar4;
                            v11 = a(v11, cVar5, str, i18, c72, c73, m02, abstractC10937g);
                            m05 = a10;
                            str = str2;
                            cVar3 = cVar;
                            bVar2 = bVar;
                            i11 = this.f55625h;
                            if (this.f55627j.length() == this.f55626i) {
                            }
                        }
                    }
                    str2 = str8;
                    cVar = cVar4;
                    m05 = a10;
                    str = str2;
                    cVar3 = cVar;
                    bVar2 = bVar;
                    i11 = this.f55625h;
                    if (this.f55627j.length() == this.f55626i) {
                    }
                } else {
                    throw new F0(this, "Expected whitespace", true);
                }
            }
        }
        if (cVar2 != null) {
            a(v10, cVar2, str3, i10, c72, c73, m04, abstractC10937g);
        }
    }

    public final void a(U6 u62, String str, AbstractC10937g abstractC10937g, C10957k.b bVar, C7 c72, C7 c73, V v10, final com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        u62.c(eVar instanceof com.android.tools.r8.naming.mappinginformation.b);
        if (str == null) {
            abstractC10937g.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    G0.this.a(eVar, (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            }, eVar);
            return;
        }
        if (bVar != null) {
            bVar.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    G0.this.b(eVar, (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            }, eVar);
        }
        if (eVar.o()) {
            com.android.tools.r8.naming.mappinginformation.e.a((List) c72.a((Supplier) new Uc()), eVar.f(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    G0.this.c(eVar, (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            });
            if (eVar.p()) {
                AbstractC5384Jf0 i10 = eVar.i();
                if (!i10.s()) {
                    this.f55619b.warning(MappingInformationDiagnostics.invalidResidualSignature(this.f55627j.trim(), this.f55625h));
                    return;
                }
                V.c a10 = a(eVar.i(), str);
                c73.a((C7) a10);
                if (bVar != null) {
                    if (!(i10 instanceof C5326If0)) {
                        this.f55619b.warning(MappingInformationDiagnostics.invalidResidualSignatureType(eVar.r(), this.f55625h));
                        c73.a((C7) null);
                    } else if (v10 == null || !v10.a().equals(bVar.f55970c)) {
                        V.b b10 = a10.b();
                        if (!C10957k.b.f55968k && bVar.f55974g) {
                            throw new AssertionError();
                        }
                        bVar.f55973f = b10;
                    }
                }
            }
        }
    }

    public final void a(com.android.tools.r8.naming.mappinginformation.e eVar, com.android.tools.r8.naming.mappinginformation.e eVar2) {
        this.f55619b.warning(MappingInformationDiagnostics.notAllowedCombination(eVar, eVar2, this.f55625h));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final V a(V v10, V.c cVar, String str, int i10, C7 c72, C7 c73, M0 m02, AbstractC10937g abstractC10937g) {
        V.c cVar2;
        V a10;
        if (m02 != null && v10 != null && v10.c().equals(str) && v10.a().equals(cVar)) {
            if (c73.b()) {
                List<com.android.tools.r8.naming.mappinginformation.d> list = (List) c73.a();
                Consumer b10 = C6628bi.b();
                for (com.android.tools.r8.naming.mappinginformation.d dVar : list) {
                    if (v10.f55770e == V.f55766f) {
                        v10.f55770e = new ArrayList();
                    }
                    com.android.tools.r8.naming.mappinginformation.e.a(v10.f55770e, dVar, b10);
                }
                c73.a((C7) null);
            }
            c72.a((C7) null);
            return v10;
        }
        if (c72.b()) {
            if (((V.c) c72.a()).e() != cVar.e()) {
                this.f55619b.warning(MappingInformationDiagnostics.invalidResidualSignatureType(((V.c) c72.a()).toString(), this.f55625h));
            } else {
                cVar2 = (V.c) c72.a();
                a10 = abstractC10937g.a(cVar2);
                if (a10 == null) {
                    a10 = new V(cVar, cVar2, new E0(i10));
                }
                if (c73.b()) {
                    List<com.android.tools.r8.naming.mappinginformation.d> list2 = (List) c73.a();
                    Consumer b11 = C6628bi.b();
                    for (com.android.tools.r8.naming.mappinginformation.d dVar2 : list2) {
                        if (a10.f55770e == V.f55766f) {
                            a10.f55770e = new ArrayList();
                        }
                        com.android.tools.r8.naming.mappinginformation.e.a(a10.f55770e, dVar2, b11);
                    }
                }
                abstractC10937g.a(a10);
                c72.a((C7) null);
                c73.a((C7) null);
                return a10;
            }
        }
        cVar2 = (V.c) this.f55631n.computeIfAbsent(cVar.a(str), Function.identity());
        a10 = abstractC10937g.a(cVar2);
        if (a10 == null) {
        }
        if (c73.b()) {
        }
        abstractC10937g.a(a10);
        c72.a((C7) null);
        c73.a((C7) null);
        return a10;
    }

    public final V.c a(AbstractC5384Jf0 abstractC5384Jf0, String str) {
        abstractC5384Jf0.getClass();
        if (abstractC5384Jf0 instanceof C5326If0) {
            C5326If0 h10 = abstractC5384Jf0.h();
            return ((V.c) this.f55631n.computeIfAbsent(new V.b(str, C4932Bl.b(h10.f41163b), com.android.tools.r8.internal.X3.a((Object[]) h10.f41164c, (Function) new C15498a1())), Function.identity())).b();
        }
        if (!f55617o && !(abstractC5384Jf0 instanceof C5268Hf0)) {
            throw new AssertionError();
        }
        return ((V.c) this.f55631n.computeIfAbsent(new V.a(str, C4932Bl.b(abstractC5384Jf0.g().f40828b)), Function.identity())).a();
    }

    public final M0 a(boolean z10) {
        char a10;
        char a11;
        char a12 = a(0);
        if ('0' > a12 || a12 > '9') {
            return null;
        }
        if (z10) {
            int i10 = 1;
            while (true) {
                char a13 = a(i10);
                if ('0' > a13 || a13 > '9') {
                    break;
                }
                i10++;
            }
            while (C10656zq0.a(b(i10))) {
                i10++;
            }
            if (a(i10) != ':') {
                return null;
            }
        }
        char a14 = a(0);
        if ('0' <= a14 && a14 <= '9') {
            int i11 = 0;
            do {
                i11 = (i11 * 10) + Character.getNumericValue(d());
                a10 = a(0);
                if ('0' > a10) {
                    break;
                }
            } while (a10 <= '9');
            f();
            if (a(0) != ':') {
                C10997s0 c10997s0 = this.f55623f;
                c10997s0.getClass();
                if (i11 >= 0 && i11 < 256) {
                    return c10997s0.f56085a[i11];
                }
                return new M0(i11, i11, true);
            }
            a(':');
            f();
            char a15 = a(0);
            if ('0' <= a15 && a15 <= '9') {
                int i12 = 0;
                do {
                    i12 = (i12 * 10) + Character.getNumericValue(d());
                    a11 = a(0);
                    if ('0' > a11) {
                        break;
                    }
                } while (a11 <= '9');
                if (i11 > i12) {
                    if (i12 == 0) {
                        i12 = i11;
                    } else {
                        i12 = i11;
                        i11 = i12;
                    }
                }
                return this.f55624g.a(i11, i12);
            }
            throw new F0(this, "Number expected", false);
        }
        throw new F0(this, "Number expected", false);
    }

    public final boolean a(final Consumer consumer) {
        C7407gL c7407gL;
        if (!f55617o && !c()) {
            throw new AssertionError();
        }
        int i10 = 0;
        while (this.f55627j.charAt(i10) != '{') {
            try {
                i10++;
            } catch (C8407mL unused) {
                c7407gL = null;
            }
        }
        c7407gL = C7741iL.a(this.f55627j.substring(i10)).d();
        if (c7407gL == null) {
            return false;
        }
        com.android.tools.r8.naming.mappinginformation.e.a(this.f55628k, c7407gL, this.f55619b, this.f55625h, new Consumer() {
            @Override
            public final void accept(Object obj) {
                G0.this.a(consumer, (com.android.tools.r8.naming.mappinginformation.e) obj);
            }
        });
        return true;
    }
}
