package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10189x10;
import com.android.tools.r8.internal.C10504yv0;
import com.android.tools.r8.internal.C5283Hm0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5630Nm0;
import com.android.tools.r8.internal.C8091kU;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.C8854p10;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class T3 {

    public static final boolean f56991g = true;

    public final S3 f56992a;

    public final boolean f56993b;

    public final C8091kU f56994c;

    public final com.android.tools.r8.graph.M2 f56995d;

    public final com.android.tools.r8.graph.L2 f56996e;

    public final C8854p10 f56997f;

    public T3(boolean z10) {
        this.f56992a = S3.f56966b;
        this.f56993b = z10;
        this.f56994c = null;
        this.f56995d = null;
        this.f56996e = null;
        this.f56997f = null;
    }

    public boolean a() {
        if (f56991g || f()) {
            return this.f56993b;
        }
        throw new AssertionError();
    }

    public com.android.tools.r8.graph.M2 b() {
        if (f56991g || g()) {
            return this.f56995d;
        }
        throw new AssertionError();
    }

    public com.android.tools.r8.graph.L2 c() {
        if (f56991g || g()) {
            return this.f56996e;
        }
        throw new AssertionError();
    }

    public C8854p10 d() {
        if (f56991g || g() || h() || i()) {
            return this.f56997f;
        }
        throw new AssertionError();
    }

    public C8091kU e() {
        if (f56991g || i()) {
            return this.f56994c;
        }
        throw new AssertionError();
    }

    public boolean f() {
        return this.f56992a == S3.f56966b;
    }

    public boolean g() {
        return this.f56992a == S3.f56967c;
    }

    public boolean h() {
        return this.f56992a == S3.f56968d;
    }

    public boolean i() {
        return this.f56992a == S3.f56969e;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(" return ");
        if (f()) {
            sb2.append(this.f56993b);
        } else if (g()) {
            if (this.f56997f.d()) {
                sb2.append("_NONNULL_ ");
            }
            sb2.append(this.f56995d.D0());
            sb2.append('.');
            sb2.append((Object) this.f56996e);
        } else if (h()) {
            sb2.append(this.f56997f.e() ? "null" : "_NONNULL_");
        } else {
            if (!f56991g && !i()) {
                throw new AssertionError();
            }
            sb2.append(this.f56994c.b());
            if (!this.f56994c.c()) {
                sb2.append(ClasspathEntry.DOT_DOT);
                sb2.append(this.f56994c.a());
            }
        }
        return sb2.toString();
    }

    public final com.android.tools.r8.internal.F1 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        C4460g1 b10;
        com.android.tools.r8.internal.G1 g12 = c4798y.f38427t;
        int ordinal = this.f56992a.ordinal();
        if (ordinal == 0) {
            return g12.a(C8704o7.a(this.f56993b), AbstractC8999pu0.e());
        }
        if (ordinal == 1) {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(this.f56995d);
            if (g10 != null && (b10 = g10.b(this.f56996e)) != null) {
                C4554l1 reference = b10.getReference();
                g12.getClass();
                return new C5630Nm0(reference);
            }
            int i10 = com.android.tools.r8.internal.F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (ordinal == 2) {
            if (this.f56997f.e()) {
                g12.getClass();
                return C5283Hm0.f40867c;
            }
            int i11 = com.android.tools.r8.internal.F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (ordinal == 3) {
            if (m22.Q0()) {
                if (f56991g) {
                    int i12 = com.android.tools.r8.internal.F1.f40064a;
                    return C10504yv0.f54195b;
                }
                throw new AssertionError();
            }
            if (this.f56994c.c()) {
                C8091kU c8091kU = this.f56994c;
                if (!C8091kU.f49645c && !c8091kU.c()) {
                    throw new AssertionError();
                }
                return g12.a(c8091kU.f49646a, AbstractC8999pu0.l());
            }
            long b11 = this.f56994c.b();
            long a10 = this.f56994c.a();
            g12.getClass();
            return new C10189x10(b11, a10);
        }
        throw new C5417Jv0("Unexpected type: " + ((Object) this.f56992a));
    }

    public T3(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.L2 l22, C8854p10 c8854p10) {
        if (!f56991g && c8854p10.e()) {
            throw new AssertionError();
        }
        this.f56992a = S3.f56967c;
        this.f56993b = false;
        this.f56994c = null;
        this.f56995d = m22;
        this.f56996e = l22;
        this.f56997f = c8854p10;
    }

    public T3(C8854p10 c8854p10) {
        if (!f56991g && !c8854p10.e() && !c8854p10.d()) {
            throw new AssertionError();
        }
        this.f56992a = S3.f56968d;
        this.f56993b = false;
        this.f56994c = null;
        this.f56995d = null;
        this.f56996e = null;
        this.f56997f = c8854p10;
    }

    public T3(C8091kU c8091kU) {
        C8854p10 b10;
        this.f56992a = S3.f56969e;
        this.f56993b = false;
        this.f56994c = c8091kU;
        this.f56995d = null;
        this.f56996e = null;
        if (c8091kU.c()) {
            if (!C8091kU.f49645c && !c8091kU.c()) {
                throw new AssertionError();
            }
            if (c8091kU.f49646a == 0) {
                b10 = C8854p10.c();
                this.f56997f = b10;
            }
        }
        if (c8091kU.f49646a <= 0 && 0 <= c8091kU.f49647b) {
            b10 = C8854p10.h();
        } else {
            b10 = C8854p10.b();
        }
        this.f56997f = b10;
    }
}
