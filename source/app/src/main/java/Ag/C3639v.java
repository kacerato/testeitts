package ag;

import Xf.AbstractC3314o;
import Xf.C3316q;
import Xf.InterfaceC3312m;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n+ 2 Regex.kt\nkotlin/text/RegexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,420:1\n24#2,3:421\n1#3:424\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n*L\n105#1:421,3\n*E\n"})
public final class C3639v implements Serializable {

    @NotNull
    public static final a f32172d = new a(null);

    @NotNull
    public final Pattern f32173b;

    @Nullable
    public Set<? extends EnumC3641x> f32174c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final int b(int i10) {
            return (i10 & 2) != 0 ? i10 | 64 : i10;
        }

        @NotNull
        public final String c(@NotNull String literal) {
            kotlin.jvm.internal.M.p(literal, "literal");
            String quote = Pattern.quote(literal);
            kotlin.jvm.internal.M.o(quote, "quote(...)");
            return quote;
        }

        @NotNull
        public final String d(@NotNull String literal) {
            kotlin.jvm.internal.M.p(literal, "literal");
            String quoteReplacement = Matcher.quoteReplacement(literal);
            kotlin.jvm.internal.M.o(quoteReplacement, "quoteReplacement(...)");
            return quoteReplacement;
        }

        @NotNull
        public final C3639v e(@NotNull String literal) {
            kotlin.jvm.internal.M.p(literal, "literal");
            return new C3639v(literal, EnumC3641x.LITERAL);
        }

        public a() {
        }
    }

    public static final class b implements Serializable {

        @NotNull
        public static final a f32175d = new a(null);

        public static final long f32176e = 0;

        @NotNull
        public final String f32177b;

        public final int f32178c;

        public static final class a {
            public a(C14026x c14026x) {
                this();
            }

            public a() {
            }
        }

        public b(@NotNull String pattern, int i10) {
            kotlin.jvm.internal.M.p(pattern, "pattern");
            this.f32177b = pattern;
            this.f32178c = i10;
        }

        public final int a() {
            return this.f32178c;
        }

        @NotNull
        public final String b() {
            return this.f32177b;
        }

        public final Object c() {
            Pattern compile = Pattern.compile(this.f32177b, this.f32178c);
            kotlin.jvm.internal.M.o(compile, "compile(...)");
            return new C3639v(compile);
        }
    }

    public static final class c extends kotlin.jvm.internal.I implements Mf.l<r, r> {

        public static final c f32179b = new c();

        public c() {
            super(1, r.class, "next", "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override
        public final r invoke(r p02) {
            kotlin.jvm.internal.M.p(p02, "p0");
            return p02.next();
        }
    }

    @t0({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt$fromInt$1$1\n*L\n1#1,420:1\n*E\n"})
    public static final class d implements Mf.l<EnumC3641x, Boolean> {

        public final int f32180b;

        public d(int i10) {
            this.f32180b = i10;
        }

        @Override
        public final Boolean invoke(EnumC3641x enumC3641x) {
            EnumC3641x enumC3641x2 = enumC3641x;
            return Boolean.valueOf((this.f32180b & enumC3641x2.a()) == enumC3641x2.getValue());
        }
    }

    @Bf.f(c = "kotlin.text.Regex$splitToSequence$1", f = "Regex.kt", i = {0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {296, 304, 308}, m = "invokeSuspend", n = {"$this$sequence", "matcher", "$this$sequence", "matcher", "nextStart", "splitCount", "$this$sequence", "matcher", "nextStart", "splitCount"}, nl = {ParserBasicInformation.SCOPE_UBOUND, 305, 309}, s = {"L$0", "L$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"}, v = 2)
    public static final class e extends Bf.l implements Mf.p<AbstractC3314o<? super String>, yf.f<? super P0>, Object> {

        public Object f32181b;

        public int f32182c;

        public int f32183d;

        public int f32184e;

        public Object f32185f;

        public final CharSequence f32187h;

        public final int f32188i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(CharSequence charSequence, int i10, yf.f<? super e> fVar) {
            super(2, fVar);
            this.f32187h = charSequence;
            this.f32188i = i10;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            e eVar = new e(this.f32187h, this.f32188i, fVar);
            eVar.f32185f = obj;
            return eVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super String> abstractC3314o, yf.f<? super P0> fVar) {
            return ((e) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0074 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00b1 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0075 -> B:13:0x0076). Please report as a decompilation issue!!! */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int i10;
            Matcher matcher;
            int i11;
            String obj2;
            String obj3;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f32185f;
            Object l10 = Af.d.l();
            int i12 = this.f32184e;
            if (i12 == 0) {
                C14418j0.n(obj);
                Matcher matcher2 = C3639v.this.f32173b.matcher(this.f32187h);
                if (this.f32188i == 1 || !matcher2.find()) {
                    String obj4 = this.f32187h.toString();
                    this.f32185f = Bf.o.a(abstractC3314o);
                    this.f32181b = Bf.o.a(matcher2);
                    this.f32184e = 1;
                    if (abstractC3314o.a(obj4, this) == l10) {
                        return l10;
                    }
                } else {
                    i10 = 0;
                    matcher = matcher2;
                    i11 = 0;
                    obj2 = this.f32187h.subSequence(i10, matcher.start()).toString();
                    this.f32185f = abstractC3314o;
                    this.f32181b = matcher;
                    this.f32182c = i10;
                    this.f32183d = i11;
                    this.f32184e = 2;
                    if (abstractC3314o.a(obj2, this) != l10) {
                    }
                }
            } else {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                        return P0.f98194a;
                    }
                    int i13 = this.f32183d;
                    matcher = (Matcher) this.f32181b;
                    C14418j0.n(obj);
                    int end = matcher.end();
                    int i14 = i13 + 1;
                    if (i14 != this.f32188i - 1 || !matcher.find()) {
                        CharSequence charSequence = this.f32187h;
                        obj3 = charSequence.subSequence(end, charSequence.length()).toString();
                        this.f32185f = Bf.o.a(abstractC3314o);
                        this.f32181b = Bf.o.a(matcher);
                        this.f32182c = end;
                        this.f32183d = i14;
                        this.f32184e = 3;
                        if (abstractC3314o.a(obj3, this) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                    i10 = end;
                    i11 = i14;
                    obj2 = this.f32187h.subSequence(i10, matcher.start()).toString();
                    this.f32185f = abstractC3314o;
                    this.f32181b = matcher;
                    this.f32182c = i10;
                    this.f32183d = i11;
                    this.f32184e = 2;
                    if (abstractC3314o.a(obj2, this) != l10) {
                        return l10;
                    }
                    i13 = i11;
                    int end2 = matcher.end();
                    int i142 = i13 + 1;
                    if (i142 != this.f32188i - 1) {
                    }
                    CharSequence charSequence2 = this.f32187h;
                    obj3 = charSequence2.subSequence(end2, charSequence2.length()).toString();
                    this.f32185f = Bf.o.a(abstractC3314o);
                    this.f32181b = Bf.o.a(matcher);
                    this.f32182c = end2;
                    this.f32183d = i142;
                    this.f32184e = 3;
                    if (abstractC3314o.a(obj3, this) == l10) {
                    }
                    return P0.f98194a;
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    @InterfaceC14410f0
    public C3639v(@NotNull Pattern nativePattern) {
        kotlin.jvm.internal.M.p(nativePattern, "nativePattern");
        this.f32173b = nativePattern;
    }

    public static r e(C3639v c3639v, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c3639v.d(charSequence, i10);
    }

    public static InterfaceC3312m g(C3639v c3639v, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c3639v.f(charSequence, i10);
    }

    public static final r h(C3639v c3639v, CharSequence charSequence, int i10) {
        return c3639v.d(charSequence, i10);
    }

    public static List u(C3639v c3639v, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c3639v.s(charSequence, i10);
    }

    public static InterfaceC3312m w(C3639v c3639v, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c3639v.v(charSequence, i10);
    }

    public final boolean c(@NotNull CharSequence input) {
        kotlin.jvm.internal.M.p(input, "input");
        return this.f32173b.matcher(input).find();
    }

    @Nullable
    public final r d(@NotNull CharSequence input, int i10) {
        kotlin.jvm.internal.M.p(input, "input");
        Matcher matcher = this.f32173b.matcher(input);
        kotlin.jvm.internal.M.o(matcher, "matcher(...)");
        return C3640w.a(matcher, i10, input);
    }

    @NotNull
    public final InterfaceC3312m<r> f(@NotNull final CharSequence input, final int i10) {
        kotlin.jvm.internal.M.p(input, "input");
        if (i10 >= 0 && i10 <= input.length()) {
            return Xf.x.u(new Mf.a() {
                @Override
                public final Object invoke() {
                    r h10;
                    h10 = C3639v.h(C3639v.this, input, i10);
                    return h10;
                }
            }, c.f32179b);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + i10 + ", input length: " + input.length());
    }

    @NotNull
    public final Set<EnumC3641x> i() {
        Set set = this.f32174c;
        if (set != null) {
            return set;
        }
        int flags = this.f32173b.flags();
        EnumSet allOf = EnumSet.allOf(EnumC3641x.class);
        kotlin.jvm.internal.M.m(allOf);
        pf.M.S0(allOf, new d(flags));
        Set<EnumC3641x> unmodifiableSet = Collections.unmodifiableSet(allOf);
        kotlin.jvm.internal.M.o(unmodifiableSet, "unmodifiableSet(...)");
        this.f32174c = unmodifiableSet;
        return unmodifiableSet;
    }

    @NotNull
    public final String j() {
        String pattern = this.f32173b.pattern();
        kotlin.jvm.internal.M.o(pattern, "pattern(...)");
        return pattern;
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public final r k(@NotNull CharSequence input, int i10) {
        kotlin.jvm.internal.M.p(input, "input");
        Matcher region = this.f32173b.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(i10, input.length());
        if (!region.lookingAt()) {
            return null;
        }
        kotlin.jvm.internal.M.m(region);
        return new C3636s(region, input);
    }

    @Nullable
    public final r l(@NotNull CharSequence input) {
        kotlin.jvm.internal.M.p(input, "input");
        Matcher matcher = this.f32173b.matcher(input);
        kotlin.jvm.internal.M.o(matcher, "matcher(...)");
        return C3640w.b(matcher, input);
    }

    public final boolean m(@NotNull CharSequence input) {
        kotlin.jvm.internal.M.p(input, "input");
        return this.f32173b.matcher(input).matches();
    }

    @InterfaceC14422l0(version = "1.7")
    public final boolean n(@NotNull CharSequence input, int i10) {
        kotlin.jvm.internal.M.p(input, "input");
        return this.f32173b.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(i10, input.length()).lookingAt();
    }

    public final void o(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @NotNull
    public final String p(@NotNull CharSequence input, @NotNull Mf.l<? super r, ? extends CharSequence> transform) {
        kotlin.jvm.internal.M.p(input, "input");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        r e10 = e(this, input, 0, 2, null);
        if (e10 == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb2 = new StringBuilder(length);
        do {
            sb2.append(input, i10, e10.getRange().getStart().intValue());
            sb2.append(transform.invoke(e10));
            i10 = e10.getRange().getEndInclusive().intValue() + 1;
            e10 = e10.next();
            if (i10 >= length) {
                break;
            }
        } while (e10 != null);
        if (i10 < length) {
            sb2.append(input, i10, length);
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.M.o(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String q(@NotNull CharSequence input, @NotNull String replacement) {
        kotlin.jvm.internal.M.p(input, "input");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        String replaceAll = this.f32173b.matcher(input).replaceAll(replacement);
        kotlin.jvm.internal.M.o(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    @NotNull
    public final String r(@NotNull CharSequence input, @NotNull String replacement) {
        kotlin.jvm.internal.M.p(input, "input");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        String replaceFirst = this.f32173b.matcher(input).replaceFirst(replacement);
        kotlin.jvm.internal.M.o(replaceFirst, "replaceFirst(...)");
        return replaceFirst;
    }

    @NotNull
    public final List<String> s(@NotNull CharSequence input, int i10) {
        kotlin.jvm.internal.M.p(input, "input");
        P.j5(i10);
        Matcher matcher = this.f32173b.matcher(input);
        if (i10 == 1 || !matcher.find()) {
            return pf.G.l(input.toString());
        }
        ArrayList arrayList = new ArrayList(i10 > 0 ? Vf.u.D(i10, 10) : 10);
        int i11 = i10 - 1;
        int i12 = 0;
        do {
            arrayList.add(input.subSequence(i12, matcher.start()).toString());
            i12 = matcher.end();
            if (i11 >= 0 && arrayList.size() == i11) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(i12, input.length()).toString());
        return arrayList;
    }

    @NotNull
    public String toString() {
        String pattern = this.f32173b.toString();
        kotlin.jvm.internal.M.o(pattern, "toString(...)");
        return pattern;
    }

    @InterfaceC14422l0(version = "1.6")
    @NotNull
    public final InterfaceC3312m<String> v(@NotNull CharSequence input, int i10) {
        kotlin.jvm.internal.M.p(input, "input");
        P.j5(i10);
        return C3316q.b(new e(input, i10, null));
    }

    @NotNull
    public final Pattern x() {
        return this.f32173b;
    }

    public final Object y() {
        String pattern = this.f32173b.pattern();
        kotlin.jvm.internal.M.o(pattern, "pattern(...)");
        return new b(pattern, this.f32173b.flags());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C3639v(@NotNull String pattern) {
        this(r2);
        kotlin.jvm.internal.M.p(pattern, "pattern");
        Pattern compile = Pattern.compile(pattern);
        kotlin.jvm.internal.M.o(compile, "compile(...)");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C3639v(@NotNull String pattern, @NotNull EnumC3641x option) {
        this(r2);
        kotlin.jvm.internal.M.p(pattern, "pattern");
        kotlin.jvm.internal.M.p(option, "option");
        Pattern compile = Pattern.compile(pattern, f32172d.b(option.getValue()));
        kotlin.jvm.internal.M.o(compile, "compile(...)");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C3639v(@NotNull String pattern, @NotNull Set<? extends EnumC3641x> options) {
        this(r2);
        kotlin.jvm.internal.M.p(pattern, "pattern");
        kotlin.jvm.internal.M.p(options, "options");
        Pattern compile = Pattern.compile(pattern, f32172d.b(C3640w.e(options)));
        kotlin.jvm.internal.M.o(compile, "compile(...)");
    }
}
