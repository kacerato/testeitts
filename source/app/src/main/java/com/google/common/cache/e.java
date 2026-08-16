package com.google.common.cache;

import com.google.common.cache.k;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.B;
import w2.H;
import w2.M;
import w2.P;
import w2.z;

@v2.c
@com.google.common.cache.g
public final class e {

    public static final M f65408o = M.h(IIndexConstants.PARAMETER_SEPARATOR).q();

    public static final M f65409p = M.h('=').q();

    public static final AbstractC12529i1<String, m> f65410q;

    @v2.d
    @CheckForNull
    public Integer f65411a;

    @v2.d
    @CheckForNull
    public Long f65412b;

    @v2.d
    @CheckForNull
    public Long f65413c;

    @v2.d
    @CheckForNull
    public Integer f65414d;

    @v2.d
    @CheckForNull
    public k.t f65415e;

    @v2.d
    @CheckForNull
    public k.t f65416f;

    @v2.d
    @CheckForNull
    public Boolean f65417g;

    @v2.d
    public long f65418h;

    @v2.d
    @CheckForNull
    public TimeUnit f65419i;

    @v2.d
    public long f65420j;

    @v2.d
    @CheckForNull
    public TimeUnit f65421k;

    @v2.d
    public long f65422l;

    @v2.d
    @CheckForNull
    public TimeUnit f65423m;

    public final String f65424n;

    public static class a {

        public static final int[] f65425a;

        static {
            int[] iArr = new int[k.t.values().length];
            f65425a = iArr;
            try {
                iArr[k.t.WEAK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f65425a[k.t.SOFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class b extends d {
        @Override
        public void b(e eVar, long j10, TimeUnit timeUnit) {
            H.e(eVar.f65421k == null, "expireAfterAccess already set");
            eVar.f65420j = j10;
            eVar.f65421k = timeUnit;
        }
    }

    public static class c extends f {
        @Override
        public void b(e eVar, int i10) {
            Integer num = eVar.f65414d;
            H.u(num == null, "concurrency level was already set to ", num);
            eVar.f65414d = Integer.valueOf(i10);
        }
    }

    public static abstract class d implements m {
        @Override
        public void a(e eVar, String str, @CheckForNull String str2) {
            TimeUnit timeUnit;
            if (P.d(str2)) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 21);
                sb2.append("value of key ");
                sb2.append(str);
                sb2.append(" omitted");
                throw new IllegalArgumentException(sb2.toString());
            }
            try {
                char charAt = str2.charAt(str2.length() - 1);
                if (charAt == 'd') {
                    timeUnit = TimeUnit.DAYS;
                } else if (charAt == 'h') {
                    timeUnit = TimeUnit.HOURS;
                } else if (charAt == 'm') {
                    timeUnit = TimeUnit.MINUTES;
                } else {
                    if (charAt != 's') {
                        throw new IllegalArgumentException(e.d("key %s invalid unit: was %s, must end with one of [dhms]", str, str2));
                    }
                    timeUnit = TimeUnit.SECONDS;
                }
                b(eVar, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(e.d("key %s value set to %s, must be integer", str, str2));
            }
        }

        public abstract void b(e eVar, long j10, TimeUnit timeUnit);
    }

    public static class C0978e extends f {
        @Override
        public void b(e eVar, int i10) {
            Integer num = eVar.f65411a;
            H.u(num == null, "initial capacity was already set to ", num);
            eVar.f65411a = Integer.valueOf(i10);
        }
    }

    public static abstract class f implements m {
        @Override
        public void a(e eVar, String str, String str2) {
            if (!P.d(str2)) {
                try {
                    b(eVar, Integer.parseInt(str2));
                } catch (NumberFormatException e10) {
                    throw new IllegalArgumentException(e.d("key %s value set to %s, must be integer", str, str2), e10);
                }
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 21);
                sb2.append("value of key ");
                sb2.append(str);
                sb2.append(" omitted");
                throw new IllegalArgumentException(sb2.toString());
            }
        }

        public abstract void b(e eVar, int i10);
    }

    public static class g implements m {

        public final k.t f65426a;

        public g(k.t tVar) {
            this.f65426a = tVar;
        }

        @Override
        public void a(e eVar, String str, @CheckForNull String str2) {
            H.u(str2 == null, "key %s does not take values", str);
            k.t tVar = eVar.f65415e;
            H.y(tVar == null, "%s was already set to %s", str, tVar);
            eVar.f65415e = this.f65426a;
        }
    }

    public static abstract class h implements m {
        @Override
        public void a(e eVar, String str, String str2) {
            if (!P.d(str2)) {
                try {
                    b(eVar, Long.parseLong(str2));
                } catch (NumberFormatException e10) {
                    throw new IllegalArgumentException(e.d("key %s value set to %s, must be integer", str, str2), e10);
                }
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 21);
                sb2.append("value of key ");
                sb2.append(str);
                sb2.append(" omitted");
                throw new IllegalArgumentException(sb2.toString());
            }
        }

        public abstract void b(e eVar, long j10);
    }

    public static class i extends h {
        @Override
        public void b(e eVar, long j10) {
            Long l10 = eVar.f65412b;
            H.u(l10 == null, "maximum size was already set to ", l10);
            Long l11 = eVar.f65413c;
            H.u(l11 == null, "maximum weight was already set to ", l11);
            eVar.f65412b = Long.valueOf(j10);
        }
    }

    public static class j extends h {
        @Override
        public void b(e eVar, long j10) {
            Long l10 = eVar.f65413c;
            H.u(l10 == null, "maximum weight was already set to ", l10);
            Long l11 = eVar.f65412b;
            H.u(l11 == null, "maximum size was already set to ", l11);
            eVar.f65413c = Long.valueOf(j10);
        }
    }

    public static class k implements m {
        @Override
        public void a(e eVar, String str, @CheckForNull String str2) {
            H.e(str2 == null, "recordStats does not take values");
            H.e(eVar.f65417g == null, "recordStats already set");
            eVar.f65417g = Boolean.TRUE;
        }
    }

    public static class l extends d {
        @Override
        public void b(e eVar, long j10, TimeUnit timeUnit) {
            H.e(eVar.f65423m == null, "refreshAfterWrite already set");
            eVar.f65422l = j10;
            eVar.f65423m = timeUnit;
        }
    }

    public interface m {
        void a(e eVar, String str, @CheckForNull String str2);
    }

    public static class n implements m {

        public final k.t f65427a;

        public n(k.t tVar) {
            this.f65427a = tVar;
        }

        @Override
        public void a(e eVar, String str, @CheckForNull String str2) {
            H.u(str2 == null, "key %s does not take values", str);
            k.t tVar = eVar.f65416f;
            H.y(tVar == null, "%s was already set to %s", str, tVar);
            eVar.f65416f = this.f65427a;
        }
    }

    public static class o extends d {
        @Override
        public void b(e eVar, long j10, TimeUnit timeUnit) {
            H.e(eVar.f65419i == null, "expireAfterWrite already set");
            eVar.f65418h = j10;
            eVar.f65419i = timeUnit;
        }
    }

    static {
        AbstractC12529i1.b i10 = AbstractC12529i1.i().i("initialCapacity", new C0978e()).i("maximumSize", new i()).i("maximumWeight", new j()).i("concurrencyLevel", new c());
        k.t tVar = k.t.WEAK;
        f65410q = i10.i("weakKeys", new g(tVar)).i("softValues", new n(k.t.SOFT)).i("weakValues", new n(tVar)).i("recordStats", new k()).i("expireAfterAccess", new b()).i("expireAfterWrite", new o()).i("refreshAfterWrite", new l()).i("refreshInterval", new l()).d();
    }

    public e(String str) {
        this.f65424n = str;
    }

    public static e b() {
        return e("maximumSize=0");
    }

    @CheckForNull
    public static Long c(long j10, @CheckForNull TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j10));
    }

    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static e e(String str) {
        e eVar = new e(str);
        if (!str.isEmpty()) {
            for (String str2 : f65408o.n(str)) {
                AbstractC12521g1 p10 = AbstractC12521g1.p(f65409p.n(str2));
                H.e(!p10.isEmpty(), "blank key-value pair");
                H.u(p10.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) p10.get(0);
                m mVar = f65410q.get(str3);
                H.u(mVar != null, "unknown key %s", str3);
                mVar.a(eVar, str3, p10.size() == 1 ? null : (String) p10.get(1));
            }
        }
        return eVar;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return B.a(this.f65411a, eVar.f65411a) && B.a(this.f65412b, eVar.f65412b) && B.a(this.f65413c, eVar.f65413c) && B.a(this.f65414d, eVar.f65414d) && B.a(this.f65415e, eVar.f65415e) && B.a(this.f65416f, eVar.f65416f) && B.a(this.f65417g, eVar.f65417g) && B.a(c(this.f65418h, this.f65419i), c(eVar.f65418h, eVar.f65419i)) && B.a(c(this.f65420j, this.f65421k), c(eVar.f65420j, eVar.f65421k)) && B.a(c(this.f65422l, this.f65423m), c(eVar.f65422l, eVar.f65423m));
    }

    public com.google.common.cache.d<Object, Object> f() {
        com.google.common.cache.d<Object, Object> D10 = com.google.common.cache.d.D();
        Integer num = this.f65411a;
        if (num != null) {
            D10.x(num.intValue());
        }
        Long l10 = this.f65412b;
        if (l10 != null) {
            D10.B(l10.longValue());
        }
        Long l11 = this.f65413c;
        if (l11 != null) {
            D10.C(l11.longValue());
        }
        Integer num2 = this.f65414d;
        if (num2 != null) {
            D10.e(num2.intValue());
        }
        k.t tVar = this.f65415e;
        if (tVar != null) {
            if (a.f65425a[tVar.ordinal()] != 1) {
                throw new AssertionError();
            }
            D10.M();
        }
        k.t tVar2 = this.f65416f;
        if (tVar2 != null) {
            int i10 = a.f65425a[tVar2.ordinal()];
            if (i10 == 1) {
                D10.N();
            } else {
                if (i10 != 2) {
                    throw new AssertionError();
                }
                D10.J();
            }
        }
        Boolean bool = this.f65417g;
        if (bool != null && bool.booleanValue()) {
            D10.E();
        }
        TimeUnit timeUnit = this.f65419i;
        if (timeUnit != null) {
            D10.g(this.f65418h, timeUnit);
        }
        TimeUnit timeUnit2 = this.f65421k;
        if (timeUnit2 != null) {
            D10.f(this.f65420j, timeUnit2);
        }
        TimeUnit timeUnit3 = this.f65423m;
        if (timeUnit3 != null) {
            D10.F(this.f65422l, timeUnit3);
        }
        return D10;
    }

    public String g() {
        return this.f65424n;
    }

    public int hashCode() {
        return B.b(this.f65411a, this.f65412b, this.f65413c, this.f65414d, this.f65415e, this.f65416f, this.f65417g, c(this.f65418h, this.f65419i), c(this.f65420j, this.f65421k), c(this.f65422l, this.f65423m));
    }

    public String toString() {
        return z.c(this).s(g()).toString();
    }
}
