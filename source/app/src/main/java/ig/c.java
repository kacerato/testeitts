package Ig;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.C;
import okhttp3.C14584d;
import okhttp3.E;
import okhttp3.u;

public final class c {

    @Nullable
    public final C f9357a;

    @Nullable
    public final E f9358b;

    public static class a {

        public final long f9359a;

        public final C f9360b;

        public final E f9361c;

        public Date f9362d;

        public String f9363e;

        public Date f9364f;

        public String f9365g;

        public Date f9366h;

        public long f9367i;

        public long f9368j;

        public String f9369k;

        public int f9370l;

        public a(long j10, C c10, E e10) {
            this.f9370l = -1;
            this.f9359a = j10;
            this.f9360b = c10;
            this.f9361c = e10;
            if (e10 != null) {
                this.f9367i = e10.x();
                this.f9368j = e10.v();
                u m10 = e10.m();
                int l10 = m10.l();
                for (int i10 = 0; i10 < l10; i10++) {
                    String g10 = m10.g(i10);
                    String n10 = m10.n(i10);
                    if (F2.d.f6226d.equalsIgnoreCase(g10)) {
                        this.f9362d = Lg.d.b(n10);
                        this.f9363e = n10;
                    } else if (F2.d.f6266q0.equalsIgnoreCase(g10)) {
                        this.f9366h = Lg.d.b(n10);
                    } else if (F2.d.f6269r0.equalsIgnoreCase(g10)) {
                        this.f9364f = Lg.d.b(n10);
                        this.f9365g = n10;
                    } else if (F2.d.f6263p0.equalsIgnoreCase(g10)) {
                        this.f9369k = n10;
                    } else if (F2.d.f6213Y.equalsIgnoreCase(g10)) {
                        this.f9370l = Lg.e.h(n10, -1);
                    }
                }
            }
        }

        public static boolean e(C c10) {
            return (c10.c(F2.d.f6292z) == null && c10.c(F2.d.f6144A) == null) ? false : true;
        }

        public final long a() {
            Date date = this.f9362d;
            long max = date != null ? Math.max(0L, this.f9368j - date.getTime()) : 0L;
            int i10 = this.f9370l;
            if (i10 != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.f9368j;
            return max + (j10 - this.f9367i) + (this.f9359a - j10);
        }

        public final long b() {
            if (this.f9361c.d().e() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.e());
            }
            if (this.f9366h != null) {
                Date date = this.f9362d;
                long time = this.f9366h.getTime() - (date != null ? date.getTime() : this.f9368j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f9364f == null || this.f9361c.w().k().F() != null) {
                return 0L;
            }
            Date date2 = this.f9362d;
            long time2 = (date2 != null ? date2.getTime() : this.f9367i) - this.f9364f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        public c c() {
            c d10 = d();
            return (d10.f9357a == null || !this.f9360b.b().l()) ? d10 : new c(null, null);
        }

        public final c d() {
            String str;
            if (this.f9361c == null) {
                return new c(this.f9360b, null);
            }
            if ((!this.f9360b.f() || this.f9361c.h() != null) && c.a(this.f9361c, this.f9360b)) {
                C14584d b10 = this.f9360b.b();
                if (b10.i() || e(this.f9360b)) {
                    return new c(this.f9360b, null);
                }
                C14584d d10 = this.f9361c.d();
                long a10 = a();
                long b11 = b();
                if (b10.e() != -1) {
                    b11 = Math.min(b11, TimeUnit.SECONDS.toMillis(b10.e()));
                }
                long j10 = 0;
                long millis = b10.g() != -1 ? TimeUnit.SECONDS.toMillis(b10.g()) : 0L;
                if (!d10.h() && b10.f() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(b10.f());
                }
                if (!d10.i()) {
                    long j11 = millis + a10;
                    if (j11 < j10 + b11) {
                        E.a r10 = this.f9361c.r();
                        if (j11 >= b11) {
                            r10.a(F2.d.f6235g, "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (a10 > 86400000 && f()) {
                            r10.a(F2.d.f6235g, "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new c(null, r10.c());
                    }
                }
                String str2 = this.f9369k;
                if (str2 != null) {
                    str = F2.d.f6144A;
                } else {
                    if (this.f9364f != null) {
                        str2 = this.f9365g;
                    } else {
                        if (this.f9362d == null) {
                            return new c(this.f9360b, null);
                        }
                        str2 = this.f9363e;
                    }
                    str = F2.d.f6292z;
                }
                u.a i10 = this.f9360b.e().i();
                Gg.a.f7796a.b(i10, str, str2);
                return new c(this.f9360b.h().i(i10.h()).b(), this.f9361c);
            }
            return new c(this.f9360b, null);
        }

        public final boolean f() {
            return this.f9361c.d().e() == -1 && this.f9366h == null;
        }
    }

    public c(C c10, E e10) {
        this.f9357a = c10;
        this.f9358b = e10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.d().c() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(E e10, C c10) {
        int g10 = e10.g();
        if (g10 != 200 && g10 != 410 && g10 != 414 && g10 != 501 && g10 != 203 && g10 != 204) {
            if (g10 != 307) {
                if (g10 != 308 && g10 != 404 && g10 != 405) {
                    switch (g10) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (e10.j(F2.d.f6266q0) == null) {
                if (e10.d().e() == -1) {
                    if (!e10.d().d()) {
                    }
                }
            }
        }
        return (e10.d().j() || c10.b().j()) ? false : true;
    }
}
