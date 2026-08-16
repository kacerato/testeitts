package kotlin.time;

import android.provider.ContactsContract;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.time.Year;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.C14036h;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/InstantKt\n+ 4 Duration.kt\nkotlin/time/Duration\n*L\n1#1,871:1\n1#2:872\n810#3,14:873\n793#3,6:887\n810#3,14:893\n793#3,6:907\n793#3,6:914\n620#4:913\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n*L\n150#1:873,14\n153#1:887,6\n161#1:893,14\n164#1:907,6\n188#1:914,6\n184#1:913\n*E\n"})
@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "2.3")
public final class q implements Comparable<q>, Serializable {

    @NotNull
    public static final a f95889d = new a(null);

    @NotNull
    public static final q f95890e = new q(y.f95897c, 0);

    @NotNull
    public static final q f95891f = new q(y.f95898d, Year.MAX_VALUE);

    public final long f95892b;

    public final int f95893c;

    @t0({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,871:1\n793#2,6:872\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n320#1:872,6\n*E\n"})
    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public static q d(a aVar, long j10, long j11, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                j11 = 0;
            }
            return aVar.c(j10, j11);
        }

        @NotNull
        public final q a(long j10) {
            long j11 = j10 / 1000;
            if ((j10 ^ 1000) < 0 && j11 * 1000 != j10) {
                j11--;
            }
            long j12 = j10 % 1000;
            return j11 < y.f95897c ? h() : j11 > y.f95898d ? g() : b(j11, (int) ((j12 + (1000 & (((j12 ^ 1000) & ((-j12) | j12)) >> 63))) * 1000000));
        }

        @NotNull
        public final q b(long j10, int i10) {
            return c(j10, i10);
        }

        @NotNull
        public final q c(long j10, long j11) {
            long j12 = j11 / ContactsContract.Directory.ENTERPRISE_DEFAULT;
            if ((j11 ^ ContactsContract.Directory.ENTERPRISE_DEFAULT) < 0 && j12 * ContactsContract.Directory.ENTERPRISE_DEFAULT != j11) {
                j12--;
            }
            long j13 = j10 + j12;
            if ((j10 ^ j13) < 0 && (j12 ^ j10) >= 0) {
                return j10 > 0 ? q.f95889d.g() : q.f95889d.h();
            }
            if (j13 < y.f95897c) {
                return h();
            }
            if (j13 > y.f95898d) {
                return g();
            }
            long j14 = j11 % ContactsContract.Directory.ENTERPRISE_DEFAULT;
            return new q(j13, (int) (j14 + ((((j14 ^ ContactsContract.Directory.ENTERPRISE_DEFAULT) & ((-j14) | j14)) >> 63) & ContactsContract.Directory.ENTERPRISE_DEFAULT)));
        }

        @NotNull
        public final q e() {
            return b(y.f95896b, 0);
        }

        @NotNull
        public final q f() {
            return b(y.f95895a, Year.MAX_VALUE);
        }

        @NotNull
        public final q g() {
            return q.f95891f;
        }

        @NotNull
        public final q h() {
            return q.f95890e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use Clock.System.now() instead", replaceWith = @InterfaceC14412g0(expression = "Clock.System.now()", imports = {"kotlin.time.Clock"}))
        @NotNull
        public final q i() {
            throw new NotImplementedError(null, 1, 0 == true ? 1 : 0);
        }

        @NotNull
        public final q j(@NotNull CharSequence input) {
            M.p(input, "input");
            return y.h(input).b();
        }

        @Nullable
        public final q k(@NotNull CharSequence input) {
            M.p(input, "input");
            return y.h(input).a();
        }

        public a() {
        }
    }

    public q(long j10, int i10) {
        this.f95892b = j10;
        this.f95893c = i10;
        if (y.f95897c > j10 || j10 >= 31556889864403200L) {
            throw new IllegalArgumentException("Instant exceeds minimum or maximum instant");
        }
    }

    @Override
    public int compareTo(@NotNull q other) {
        M.p(other, "other");
        int u10 = M.u(this.f95892b, other.f95892b);
        return u10 != 0 ? u10 : M.t(this.f95893c, other.f95893c);
    }

    public final long d() {
        return this.f95892b;
    }

    public final int e() {
        return this.f95893c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof q) {
                q qVar = (q) obj;
                if (this.f95892b != qVar.f95892b || this.f95893c != qVar.f95893c) {
                }
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final q g(long j10) {
        return i(C14036h.l0(j10));
    }

    public final long h(@NotNull q other) {
        M.p(other, "other");
        C14036h.a aVar = C14036h.f95864c;
        return C14036h.W(C14038j.P(this.f95892b - other.f95892b, EnumC14039k.SECONDS), C14038j.O(this.f95893c - other.f95893c, EnumC14039k.NANOSECONDS));
    }

    public int hashCode() {
        return Long.hashCode(this.f95892b) + (this.f95893c * 51);
    }

    @NotNull
    public final q i(long j10) {
        long E10 = C14036h.E(j10);
        int I10 = C14036h.I(j10);
        if (E10 == 0 && I10 == 0) {
            return this;
        }
        long j11 = this.f95892b;
        long j12 = j11 + E10;
        if ((j11 ^ j12) >= 0 || (E10 ^ j11) < 0) {
            return f95889d.b(j12, this.f95893c + I10);
        }
        return C14036h.U(j10) ? f95891f : f95890e;
    }

    public final void j(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public final long k() {
        long j10 = this.f95892b;
        long j11 = 1000;
        if (j10 >= 0) {
            if (j10 != 1) {
                if (j10 != 0) {
                    long j12 = j10 * 1000;
                    if (j12 / 1000 != j10) {
                        return Long.MAX_VALUE;
                    }
                    j11 = j12;
                } else {
                    j11 = 0;
                }
            }
            long j13 = this.f95893c / 1000000;
            long j14 = j11 + j13;
            if ((j11 ^ j14) >= 0 || (j13 ^ j11) < 0) {
                return j14;
            }
            return Long.MAX_VALUE;
        }
        long j15 = j10 + 1;
        if (j15 != 1) {
            if (j15 != 0) {
                long j16 = j15 * 1000;
                if (j16 / 1000 != j15) {
                    return Long.MIN_VALUE;
                }
                j11 = j16;
            } else {
                j11 = 0;
            }
        }
        long j17 = (this.f95893c / 1000000) - 1000;
        long j18 = j11 + j17;
        if ((j11 ^ j18) >= 0 || (j17 ^ j11) < 0) {
            return j18;
        }
        return Long.MIN_VALUE;
    }

    public final Object o() {
        return r.a(this);
    }

    @NotNull
    public String toString() {
        return y.g(this);
    }
}
