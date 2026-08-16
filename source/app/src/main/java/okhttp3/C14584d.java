package okhttp3;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C14584d {

    public static final C14584d f99211n = new a().f().a();

    public static final C14584d f99212o = new a().i().d(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    public final boolean f99213a;

    public final boolean f99214b;

    public final int f99215c;

    public final int f99216d;

    public final boolean f99217e;

    public final boolean f99218f;

    public final boolean f99219g;

    public final int f99220h;

    public final int f99221i;

    public final boolean f99222j;

    public final boolean f99223k;

    public final boolean f99224l;

    @Nullable
    public String f99225m;

    public static final class a {

        public boolean f99226a;

        public boolean f99227b;

        public int f99228c = -1;

        public int f99229d = -1;

        public int f99230e = -1;

        public boolean f99231f;

        public boolean f99232g;

        public boolean f99233h;

        public C14584d a() {
            return new C14584d(this);
        }

        public a b() {
            this.f99233h = true;
            return this;
        }

        public a c(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.f99228c = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxAge < 0: " + i10);
        }

        public a d(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.f99229d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i10);
        }

        public a e(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.f99230e = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("minFresh < 0: " + i10);
        }

        public a f() {
            this.f99226a = true;
            return this;
        }

        public a g() {
            this.f99227b = true;
            return this;
        }

        public a h() {
            this.f99232g = true;
            return this;
        }

        public a i() {
            this.f99231f = true;
            return this;
        }
    }

    public C14584d(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, @Nullable String str) {
        this.f99213a = z10;
        this.f99214b = z11;
        this.f99215c = i10;
        this.f99216d = i11;
        this.f99217e = z12;
        this.f99218f = z13;
        this.f99219g = z14;
        this.f99220h = i12;
        this.f99221i = i13;
        this.f99222j = z15;
        this.f99223k = z16;
        this.f99224l = z17;
        this.f99225m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C14584d m(u uVar) {
        int i10;
        int i11;
        String str;
        u uVar2 = uVar;
        int l10 = uVar.l();
        int i12 = 0;
        boolean z10 = true;
        String str2 = null;
        boolean z11 = false;
        boolean z12 = false;
        int i13 = -1;
        int i14 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int i15 = -1;
        int i16 = -1;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        while (i12 < l10) {
            String g10 = uVar2.g(i12);
            String n10 = uVar2.n(i12);
            if (g10.equalsIgnoreCase("Cache-Control")) {
                if (str2 == null) {
                    str2 = n10;
                    for (i10 = 0; i10 < n10.length(); i10 = i11) {
                        int n11 = Lg.e.n(n10, i10, "=,;");
                        String trim = n10.substring(i10, n11).trim();
                        if (n11 == n10.length() || n10.charAt(n11) == ',' || n10.charAt(n11) == ';') {
                            i11 = n11 + 1;
                            str = null;
                        } else {
                            int o10 = Lg.e.o(n10, n11 + 1);
                            if (o10 >= n10.length() || n10.charAt(o10) != '\"') {
                                i11 = Lg.e.n(n10, o10, ",;");
                                str = n10.substring(o10, i11).trim();
                            } else {
                                int i17 = o10 + 1;
                                int n12 = Lg.e.n(n10, i17, JavadocConstants.ANCHOR_PREFIX_END);
                                str = n10.substring(i17, n12);
                                i11 = n12 + 1;
                            }
                        }
                        if (g3.c.f88118u.equalsIgnoreCase(trim)) {
                            z11 = true;
                        } else if ("no-store".equalsIgnoreCase(trim)) {
                            z12 = true;
                        } else if ("max-age".equalsIgnoreCase(trim)) {
                            i13 = Lg.e.h(str, -1);
                        } else if ("s-maxage".equalsIgnoreCase(trim)) {
                            i14 = Lg.e.h(str, -1);
                        } else if ("private".equalsIgnoreCase(trim)) {
                            z13 = true;
                        } else if ("public".equalsIgnoreCase(trim)) {
                            z14 = true;
                        } else if ("must-revalidate".equalsIgnoreCase(trim)) {
                            z15 = true;
                        } else if ("max-stale".equalsIgnoreCase(trim)) {
                            i15 = Lg.e.h(str, Integer.MAX_VALUE);
                        } else if ("min-fresh".equalsIgnoreCase(trim)) {
                            i16 = Lg.e.h(str, -1);
                        } else if ("only-if-cached".equalsIgnoreCase(trim)) {
                            z16 = true;
                        } else if ("no-transform".equalsIgnoreCase(trim)) {
                            z17 = true;
                        } else if ("immutable".equalsIgnoreCase(trim)) {
                            z18 = true;
                        }
                    }
                    i12++;
                    uVar2 = uVar;
                }
            } else if (!g10.equalsIgnoreCase(F2.d.f6229e)) {
                i12++;
                uVar2 = uVar;
            }
            z10 = false;
            while (i10 < n10.length()) {
            }
            i12++;
            uVar2 = uVar;
        }
        return new C14584d(z11, z12, i13, i14, z13, z14, z15, i15, i16, z16, z17, z18, !z10 ? null : str2);
    }

    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f99213a) {
            sb2.append("no-cache, ");
        }
        if (this.f99214b) {
            sb2.append("no-store, ");
        }
        if (this.f99215c != -1) {
            sb2.append("max-age=");
            sb2.append(this.f99215c);
            sb2.append(", ");
        }
        if (this.f99216d != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.f99216d);
            sb2.append(", ");
        }
        if (this.f99217e) {
            sb2.append("private, ");
        }
        if (this.f99218f) {
            sb2.append("public, ");
        }
        if (this.f99219g) {
            sb2.append("must-revalidate, ");
        }
        if (this.f99220h != -1) {
            sb2.append("max-stale=");
            sb2.append(this.f99220h);
            sb2.append(", ");
        }
        if (this.f99221i != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f99221i);
            sb2.append(", ");
        }
        if (this.f99222j) {
            sb2.append("only-if-cached, ");
        }
        if (this.f99223k) {
            sb2.append("no-transform, ");
        }
        if (this.f99224l) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }

    public boolean b() {
        return this.f99224l;
    }

    public boolean c() {
        return this.f99217e;
    }

    public boolean d() {
        return this.f99218f;
    }

    public int e() {
        return this.f99215c;
    }

    public int f() {
        return this.f99220h;
    }

    public int g() {
        return this.f99221i;
    }

    public boolean h() {
        return this.f99219g;
    }

    public boolean i() {
        return this.f99213a;
    }

    public boolean j() {
        return this.f99214b;
    }

    public boolean k() {
        return this.f99223k;
    }

    public boolean l() {
        return this.f99222j;
    }

    public int n() {
        return this.f99216d;
    }

    public String toString() {
        String str = this.f99225m;
        if (str != null) {
            return str;
        }
        String a10 = a();
        this.f99225m = a10;
        return a10;
    }

    public C14584d(a aVar) {
        this.f99213a = aVar.f99226a;
        this.f99214b = aVar.f99227b;
        this.f99215c = aVar.f99228c;
        this.f99216d = -1;
        this.f99217e = false;
        this.f99218f = false;
        this.f99219g = false;
        this.f99220h = aVar.f99229d;
        this.f99221i = aVar.f99230e;
        this.f99222j = aVar.f99231f;
        this.f99223k = aVar.f99232g;
        this.f99224l = aVar.f99233h;
    }
}
