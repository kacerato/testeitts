package kotlin.time;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1656#2,3:1614\n1656#2,3:1617\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n*L\n1295#1:1614,3\n1302#1:1617,3\n*E\n"})
public final class B {

    @NotNull
    public static final a f95823e = new a(null);

    @NotNull
    public static final B f95824f = new B(4611686018427387903L, true);

    @NotNull
    public static final B f95825g = new B(Long.MAX_VALUE, false);

    public final long f95826a;

    public final boolean f95827b;

    public final long f95828c;

    public final long f95829d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final B a() {
            return B.f95825g;
        }

        @NotNull
        public final B b() {
            return B.f95824f;
        }

        public a() {
        }
    }

    public B(long j10, boolean z10) {
        this.f95826a = j10;
        this.f95827b = z10;
        long j11 = 10;
        this.f95828c = j10 / j11;
        this.f95829d = j10 % j11;
    }

    public static final boolean a(B b10) {
        return b10.f95827b;
    }

    public static final long d(B b10) {
        return b10.f95829d;
    }

    public static final long e(B b10) {
        return b10.f95826a;
    }

    public static final long f(B b10) {
        return b10.f95828c;
    }

    public final long g(@NotNull String value, int i10, @NotNull Mf.q<? super Integer, ? super Integer, ? super Boolean, P0> callback) {
        int i11;
        long j10;
        char charAt;
        char charAt2;
        M.p(value, "value");
        M.p(callback, "callback");
        if (this.f95827b) {
            char charAt3 = value.charAt(i10);
            if (charAt3 == '+') {
                i10++;
            } else if (charAt3 == '-') {
                i10++;
                i11 = -1;
                while (i10 < value.length() && value.charAt(i10) == '0') {
                    i10++;
                }
                j10 = 0;
                while (i10 < value.length() && '0' <= (charAt = value.charAt(i10)) && charAt < ':') {
                    int i12 = charAt - '0';
                    if (j10 <= this.f95828c || (j10 == this.f95828c && i12 > this.f95829d)) {
                        while (i10 < value.length() && '0' <= (charAt2 = value.charAt(i10)) && charAt2 < ':') {
                            i10++;
                        }
                        callback.n(Integer.valueOf(i10), Integer.valueOf(i11), Boolean.TRUE);
                        return this.f95826a;
                    }
                    j10 = i12 + (j10 << 3) + (j10 << 1);
                    i10++;
                }
                callback.n(Integer.valueOf(i10), Integer.valueOf(i11), Boolean.FALSE);
                return j10;
            }
        }
        i11 = 1;
        while (i10 < value.length()) {
            i10++;
        }
        j10 = 0;
        while (i10 < value.length()) {
            int i122 = charAt - '0';
            if (j10 <= this.f95828c) {
            }
            while (i10 < value.length()) {
                i10++;
            }
            callback.n(Integer.valueOf(i10), Integer.valueOf(i11), Boolean.TRUE);
            return this.f95826a;
        }
        callback.n(Integer.valueOf(i10), Integer.valueOf(i11), Boolean.FALSE);
        return j10;
    }
}
