package ag;

import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import nf.P0;
import nf.T0;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.openjdk.tools.doclint.DocLint;

@T0(markerClass = {InterfaceC14441w.class})
@InterfaceC14422l0(version = "2.2")
public final class C3630l {

    @NotNull
    public static final c f32111d = new c(null);

    @NotNull
    public static final C3630l f32112e;

    @NotNull
    public static final C3630l f32113f;

    public final boolean f32114a;

    @NotNull
    public final b f32115b;

    @NotNull
    public final d f32116c;

    public static final class a {

        public boolean f32117a = C3630l.f32111d.a().e();

        @Nullable
        public b.a f32118b;

        @Nullable
        public d.a f32119c;

        @InterfaceC14410f0
        public a() {
        }

        @InterfaceC14410f0
        @NotNull
        public final C3630l a() {
            b a10;
            d a11;
            boolean z10 = this.f32117a;
            b.a aVar = this.f32118b;
            if (aVar == null || (a10 = aVar.a()) == null) {
                a10 = b.f32120j.a();
            }
            d.a aVar2 = this.f32119c;
            if (aVar2 == null || (a11 = aVar2.a()) == null) {
                a11 = d.f32137h.a();
            }
            return new C3630l(z10, a10, a11);
        }

        @Ef.f
        public final void b(Mf.l<? super b.a, P0> builderAction) {
            kotlin.jvm.internal.M.p(builderAction, "builderAction");
            builderAction.invoke(c());
        }

        @NotNull
        public final b.a c() {
            if (this.f32118b == null) {
                this.f32118b = new b.a();
            }
            b.a aVar = this.f32118b;
            kotlin.jvm.internal.M.m(aVar);
            return aVar;
        }

        @NotNull
        public final d.a d() {
            if (this.f32119c == null) {
                this.f32119c = new d.a();
            }
            d.a aVar = this.f32119c;
            kotlin.jvm.internal.M.m(aVar);
            return aVar;
        }

        public final boolean e() {
            return this.f32117a;
        }

        @Ef.f
        public final void f(Mf.l<? super d.a, P0> builderAction) {
            kotlin.jvm.internal.M.p(builderAction, "builderAction");
            builderAction.invoke(d());
        }

        public final void g(boolean z10) {
            this.f32117a = z10;
        }
    }

    public static final class b {

        @NotNull
        public static final C0860b f32120j = new C0860b(null);

        @NotNull
        public static final b f32121k = new b(Integer.MAX_VALUE, Integer.MAX_VALUE, GlideException.a.f59088e, "", "", "");

        public final int f32122a;

        public final int f32123b;

        @NotNull
        public final String f32124c;

        @NotNull
        public final String f32125d;

        @NotNull
        public final String f32126e;

        @NotNull
        public final String f32127f;

        public final boolean f32128g;

        public final boolean f32129h;

        public final boolean f32130i;

        public static final class a {

            public int f32131a;

            public int f32132b;

            @NotNull
            public String f32133c;

            @NotNull
            public String f32134d;

            @NotNull
            public String f32135e;

            @NotNull
            public String f32136f;

            public a() {
                C0860b c0860b = b.f32120j;
                this.f32131a = c0860b.a().g();
                this.f32132b = c0860b.a().f();
                this.f32133c = c0860b.a().h();
                this.f32134d = c0860b.a().d();
                this.f32135e = c0860b.a().c();
                this.f32136f = c0860b.a().e();
            }

            @NotNull
            public final b a() {
                return new b(this.f32131a, this.f32132b, this.f32133c, this.f32134d, this.f32135e, this.f32136f);
            }

            @NotNull
            public final String b() {
                return this.f32135e;
            }

            @NotNull
            public final String c() {
                return this.f32134d;
            }

            @NotNull
            public final String d() {
                return this.f32136f;
            }

            public final int e() {
                return this.f32132b;
            }

            public final int f() {
                return this.f32131a;
            }

            @NotNull
            public final String g() {
                return this.f32133c;
            }

            public final void h(@NotNull String value) {
                kotlin.jvm.internal.M.p(value, "value");
                if (!P.o3(value, '\n', false, 2, null) && !P.o3(value, CharUtils.CR, false, 2, null)) {
                    this.f32135e = value;
                    return;
                }
                throw new IllegalArgumentException("LF and CR characters are prohibited in bytePrefix, but was " + value);
            }

            public final void i(@NotNull String value) {
                kotlin.jvm.internal.M.p(value, "value");
                if (!P.o3(value, '\n', false, 2, null) && !P.o3(value, CharUtils.CR, false, 2, null)) {
                    this.f32134d = value;
                    return;
                }
                throw new IllegalArgumentException("LF and CR characters are prohibited in byteSeparator, but was " + value);
            }

            public final void j(@NotNull String value) {
                kotlin.jvm.internal.M.p(value, "value");
                if (!P.o3(value, '\n', false, 2, null) && !P.o3(value, CharUtils.CR, false, 2, null)) {
                    this.f32136f = value;
                    return;
                }
                throw new IllegalArgumentException("LF and CR characters are prohibited in byteSuffix, but was " + value);
            }

            public final void k(int i10) {
                if (i10 > 0) {
                    this.f32132b = i10;
                    return;
                }
                throw new IllegalArgumentException("Non-positive values are prohibited for bytesPerGroup, but was " + i10);
            }

            public final void l(int i10) {
                if (i10 > 0) {
                    this.f32131a = i10;
                    return;
                }
                throw new IllegalArgumentException("Non-positive values are prohibited for bytesPerLine, but was " + i10);
            }

            public final void m(@NotNull String str) {
                kotlin.jvm.internal.M.p(str, "<set-?>");
                this.f32133c = str;
            }
        }

        public static final class C0860b {
            public C0860b(C14026x c14026x) {
                this();
            }

            @NotNull
            public final b a() {
                return b.f32121k;
            }

            public C0860b() {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        
            if (r4 != false) goto L23;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(int i10, int i11, @NotNull String groupSeparator, @NotNull String byteSeparator, @NotNull String bytePrefix, @NotNull String byteSuffix) {
            boolean c10;
            boolean c11;
            boolean c12;
            boolean c13;
            kotlin.jvm.internal.M.p(groupSeparator, "groupSeparator");
            kotlin.jvm.internal.M.p(byteSeparator, "byteSeparator");
            kotlin.jvm.internal.M.p(bytePrefix, "bytePrefix");
            kotlin.jvm.internal.M.p(byteSuffix, "byteSuffix");
            this.f32122a = i10;
            this.f32123b = i11;
            this.f32124c = groupSeparator;
            this.f32125d = byteSeparator;
            this.f32126e = bytePrefix;
            this.f32127f = byteSuffix;
            boolean z10 = false;
            this.f32128g = i10 == Integer.MAX_VALUE && i11 == Integer.MAX_VALUE;
            this.f32129h = bytePrefix.length() == 0 && byteSuffix.length() == 0 && byteSeparator.length() <= 1;
            c10 = C3631m.c(groupSeparator);
            if (!c10) {
                c11 = C3631m.c(byteSeparator);
                if (!c11) {
                    c12 = C3631m.c(bytePrefix);
                    if (!c12) {
                        c13 = C3631m.c(byteSuffix);
                    }
                }
            }
            z10 = true;
            this.f32130i = z10;
        }

        @NotNull
        public final StringBuilder b(@NotNull StringBuilder sb2, @NotNull String indent) {
            kotlin.jvm.internal.M.p(sb2, "sb");
            kotlin.jvm.internal.M.p(indent, "indent");
            sb2.append(indent);
            sb2.append("bytesPerLine = ");
            sb2.append(this.f32122a);
            sb2.append(DocLint.SEPARATOR);
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("bytesPerGroup = ");
            sb2.append(this.f32123b);
            sb2.append(DocLint.SEPARATOR);
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("groupSeparator = \"");
            sb2.append(this.f32124c);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("byteSeparator = \"");
            sb2.append(this.f32125d);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("bytePrefix = \"");
            sb2.append(this.f32126e);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("byteSuffix = \"");
            sb2.append(this.f32127f);
            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
            return sb2;
        }

        @NotNull
        public final String c() {
            return this.f32126e;
        }

        @NotNull
        public final String d() {
            return this.f32125d;
        }

        @NotNull
        public final String e() {
            return this.f32127f;
        }

        public final int f() {
            return this.f32123b;
        }

        public final int g() {
            return this.f32122a;
        }

        @NotNull
        public final String h() {
            return this.f32124c;
        }

        public final boolean i() {
            return this.f32130i;
        }

        public final boolean j() {
            return this.f32128g;
        }

        public final boolean k() {
            return this.f32129h;
        }

        @NotNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("BytesHexFormat(");
            sb2.append('\n');
            b(sb2, C13155a.f85806a).append('\n');
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class c {
        public c(C14026x c14026x) {
            this();
        }

        @NotNull
        public final C3630l a() {
            return C3630l.f32112e;
        }

        @NotNull
        public final C3630l b() {
            return C3630l.f32113f;
        }

        public c() {
        }
    }

    public static final class d {

        @NotNull
        public static final b f32137h = new b(null);

        @NotNull
        public static final d f32138i = new d("", "", false, 1);

        @NotNull
        public final String f32139a;

        @NotNull
        public final String f32140b;

        public final boolean f32141c;

        public final int f32142d;

        public final boolean f32143e;

        public final boolean f32144f;

        public final boolean f32145g;

        @t0({"SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormat$NumberHexFormat$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,845:1\n1#2:846\n*E\n"})
        public static final class a {

            @NotNull
            public String f32146a;

            @NotNull
            public String f32147b;

            public boolean f32148c;

            public int f32149d;

            public a() {
                b bVar = d.f32137h;
                this.f32146a = bVar.a().f();
                this.f32147b = bVar.a().h();
                this.f32148c = bVar.a().g();
                this.f32149d = bVar.a().d();
            }

            @InterfaceC14422l0(version = "2.0")
            public static void c() {
            }

            @NotNull
            public final d a() {
                return new d(this.f32146a, this.f32147b, this.f32148c, this.f32149d);
            }

            public final int b() {
                return this.f32149d;
            }

            @NotNull
            public final String d() {
                return this.f32146a;
            }

            public final boolean e() {
                return this.f32148c;
            }

            @NotNull
            public final String f() {
                return this.f32147b;
            }

            public final void g(int i10) {
                if (i10 > 0) {
                    this.f32149d = i10;
                    return;
                }
                throw new IllegalArgumentException(("Non-positive values are prohibited for minLength, but was " + i10).toString());
            }

            public final void h(@NotNull String value) {
                kotlin.jvm.internal.M.p(value, "value");
                if (!P.o3(value, '\n', false, 2, null) && !P.o3(value, CharUtils.CR, false, 2, null)) {
                    this.f32146a = value;
                    return;
                }
                throw new IllegalArgumentException("LF and CR characters are prohibited in prefix, but was " + value);
            }

            public final void i(boolean z10) {
                this.f32148c = z10;
            }

            public final void j(@NotNull String value) {
                kotlin.jvm.internal.M.p(value, "value");
                if (!P.o3(value, '\n', false, 2, null) && !P.o3(value, CharUtils.CR, false, 2, null)) {
                    this.f32147b = value;
                    return;
                }
                throw new IllegalArgumentException("LF and CR characters are prohibited in suffix, but was " + value);
            }
        }

        public static final class b {
            public b(C14026x c14026x) {
                this();
            }

            @NotNull
            public final d a() {
                return d.f32138i;
            }

            public b() {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003b, code lost:
        
            if (r3 != false) goto L17;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public d(@NotNull String prefix, @NotNull String suffix, boolean z10, int i10) {
            boolean c10;
            boolean c11;
            kotlin.jvm.internal.M.p(prefix, "prefix");
            kotlin.jvm.internal.M.p(suffix, "suffix");
            this.f32139a = prefix;
            this.f32140b = suffix;
            this.f32141c = z10;
            this.f32142d = i10;
            boolean z11 = false;
            boolean z12 = prefix.length() == 0 && suffix.length() == 0;
            this.f32143e = z12;
            this.f32144f = z12 && i10 == 1;
            c10 = C3631m.c(prefix);
            if (!c10) {
                c11 = C3631m.c(suffix);
            }
            z11 = true;
            this.f32145g = z11;
        }

        @InterfaceC14422l0(version = "2.0")
        public static void e() {
        }

        @NotNull
        public final StringBuilder b(@NotNull StringBuilder sb2, @NotNull String indent) {
            kotlin.jvm.internal.M.p(sb2, "sb");
            kotlin.jvm.internal.M.p(indent, "indent");
            sb2.append(indent);
            sb2.append("prefix = \"");
            sb2.append(this.f32139a);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("suffix = \"");
            sb2.append(this.f32140b);
            sb2.append("\",");
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("removeLeadingZeros = ");
            sb2.append(this.f32141c);
            sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            sb2.append('\n');
            sb2.append(indent);
            sb2.append("minLength = ");
            sb2.append(this.f32142d);
            return sb2;
        }

        public final boolean c() {
            return this.f32145g;
        }

        public final int d() {
            return this.f32142d;
        }

        @NotNull
        public final String f() {
            return this.f32139a;
        }

        public final boolean g() {
            return this.f32141c;
        }

        @NotNull
        public final String h() {
            return this.f32140b;
        }

        public final boolean i() {
            return this.f32143e;
        }

        public final boolean j() {
            return this.f32144f;
        }

        @NotNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NumberHexFormat(");
            sb2.append('\n');
            b(sb2, C13155a.f85806a).append('\n');
            sb2.append(")");
            return sb2.toString();
        }
    }

    static {
        b.C0860b c0860b = b.f32120j;
        b a10 = c0860b.a();
        d.b bVar = d.f32137h;
        f32112e = new C3630l(false, a10, bVar.a());
        f32113f = new C3630l(true, c0860b.a(), bVar.a());
    }

    public C3630l(boolean z10, @NotNull b bytes, @NotNull d number) {
        kotlin.jvm.internal.M.p(bytes, "bytes");
        kotlin.jvm.internal.M.p(number, "number");
        this.f32114a = z10;
        this.f32115b = bytes;
        this.f32116c = number;
    }

    @NotNull
    public final b c() {
        return this.f32115b;
    }

    @NotNull
    public final d d() {
        return this.f32116c;
    }

    public final boolean e() {
        return this.f32114a;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HexFormat(");
        sb2.append('\n');
        sb2.append("    upperCase = ");
        sb2.append(this.f32114a);
        sb2.append(DocLint.SEPARATOR);
        sb2.append('\n');
        sb2.append("    bytes = BytesHexFormat(");
        sb2.append('\n');
        this.f32115b.b(sb2, "        ").append('\n');
        sb2.append("    ),");
        sb2.append('\n');
        sb2.append("    number = NumberHexFormat(");
        sb2.append('\n');
        this.f32116c.b(sb2, "        ").append('\n');
        sb2.append("    )");
        sb2.append('\n');
        sb2.append(")");
        return sb2.toString();
    }
}
