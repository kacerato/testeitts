package com.android.tools.r8.dex;

import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C6574bL;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.C7741iL;
import com.android.tools.r8.internal.C7906jL;
import com.android.tools.r8.internal.C8407mL;
import java.util.Comparator;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

public class W {

    public static final String f35790c = "~~" + ((Object) b.f35802b) + "{";

    public static final String f35791d = "~~" + ((Object) b.f35805e) + "{";

    public static final String f35792e = "~~" + ((Object) b.f35806f) + "{";

    public static final String f35793f = "~~" + ((Object) b.f35804d) + "{";

    public static final String f35794g = "~~" + ((Object) b.f35807g) + "{";

    public static final String f35795h = "~~" + ((Object) b.f35809i) + "{";

    public static final boolean f35796i = true;

    public final C7407gL f35797a;

    public final b f35798b;

    public enum a {
        f35799b,
        f35800c;

        a() {
        }
    }

    public enum b {
        f35802b,
        f35803c,
        f35804d,
        f35805e,
        f35806f,
        f35807g,
        f35808h,
        f35809i;

        b() {
        }

        public static b[] a() {
            return new b[]{f35802b, f35805e};
        }
    }

    public W(b bVar) {
        C7407gL c7407gL = new C7407gL();
        this.f35798b = bVar;
        this.f35797a = c7407gL;
    }

    public W a(String str) {
        if (!f35796i && this.f35797a.f48234b.containsKey("version")) {
            throw new AssertionError();
        }
        this.f35797a.a("version", str);
        return this;
    }

    public String b() {
        if (this.f35797a.f48234b.containsKey("compilation-mode")) {
            return ((AbstractC6907dL) this.f35797a.f48234b.get("compilation-mode")).h();
        }
        return null;
    }

    public String[] c() {
        if (!this.f35797a.f48234b.containsKey("desugared-library-identifiers")) {
            return new String[0];
        }
        C6574bL c10 = ((AbstractC6907dL) this.f35797a.f48234b.get("desugared-library-identifiers")).c();
        String[] strArr = new String[c10.f46749b.size()];
        for (int i10 = 0; i10 < c10.f46749b.size(); i10++) {
            strArr[i10] = ((AbstractC6907dL) c10.f46749b.get(i10)).h();
        }
        return strArr;
    }

    public boolean d() {
        return ((AbstractC6907dL) this.f35797a.f48234b.get("has-checksums")).a();
    }

    public Long e() {
        return Long.valueOf(((AbstractC6907dL) this.f35797a.f48234b.get("min-api")).g());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof W) {
            W w10 = (W) obj;
            if (this.f35798b == w10.f35798b && this.f35797a.equals(w10.f35797a)) {
                return true;
            }
        }
        return false;
    }

    public String f() {
        return ((AbstractC6907dL) this.f35797a.f48234b.get("pg-map-id")).h();
    }

    public String g() {
        return ((AbstractC6907dL) this.f35797a.f48234b.get("r8-mode")).h();
    }

    public b h() {
        return this.f35798b;
    }

    public final int hashCode() {
        return (this.f35797a.f48234b.hashCode() * 3) + this.f35798b.hashCode();
    }

    public String i() {
        return ((AbstractC6907dL) this.f35797a.f48234b.get("version")).h();
    }

    public boolean j() {
        return this.f35797a.f48234b.containsKey("desugared-library-identifiers");
    }

    public boolean k() {
        return this.f35797a.f48234b.containsKey("min-api");
    }

    public boolean l() {
        return this.f35797a.f48234b.containsKey("platform") && ((AbstractC6907dL) this.f35797a.f48234b.get("platform")).a();
    }

    public boolean m() {
        return k();
    }

    public final String toString() {
        final C7407gL c7407gL = new C7407gL();
        this.f35797a.f48234b.entrySet().stream().sorted(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (String) ((Map.Entry) obj).getKey();
            }
        })).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7407gL.this.a((String) r2.getKey(), (AbstractC6907dL) ((Map.Entry) obj).getValue());
            }
        });
        return "~~" + ((Object) this.f35798b) + ((Object) c7407gL);
    }

    public W(b bVar, C7407gL c7407gL) {
        this.f35798b = bVar;
        this.f35797a = c7407gL;
    }

    public W a(long j10) {
        if (!f35796i && this.f35797a.f48234b.containsKey("min-api")) {
            throw new AssertionError();
        }
        C7407gL c7407gL = this.f35797a;
        Long valueOf = Long.valueOf(j10);
        c7407gL.getClass();
        c7407gL.a("min-api", new C7906jL(valueOf));
        return this;
    }

    public String a() {
        if (this.f35797a.f48234b.containsKey("backend")) {
            return ((AbstractC6907dL) this.f35797a.f48234b.get("backend")).h();
        }
        int i10 = V.f35789a[this.f35798b.ordinal()];
        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
            return null;
        }
        if (k()) {
            return C10656zq0.f(a.f35800c.name());
        }
        return C10656zq0.f("CF");
    }

    public static W a(L2 l22) {
        if (!a(l22.f36562f)) {
            return null;
        }
        String l23 = l22.toString();
        if (l23.startsWith(f35790c)) {
            return a(b.f35802b, l23.substring(r0.length() - 1));
        }
        if (l23.startsWith(f35791d)) {
            return a(b.f35805e, l23.substring(r0.length() - 1));
        }
        if (l23.startsWith(f35792e)) {
            return a(b.f35806f, l23.substring(r0.length() - 1));
        }
        if (l23.startsWith(f35793f)) {
            return a(b.f35804d, l23.substring(r0.length() - 1));
        }
        if (l23.startsWith(f35794g)) {
            return a(b.f35807g, l23.substring(r0.length() - 1));
        }
        if (l23.startsWith(f35795h)) {
            return a(b.f35809i, l23.substring(r0.length() - 1));
        }
        return null;
    }

    public static boolean a(byte[] bArr) {
        return bArr.length > 2 && bArr[0] == 126 && bArr[1] == 126;
    }

    public static W a(b bVar, String str) {
        try {
            AbstractC6907dL a10 = C7741iL.a(str);
            if (a10 instanceof C7407gL) {
                return new W(bVar, a10.d());
            }
            return null;
        } catch (C8407mL unused) {
            return null;
        }
    }
}
