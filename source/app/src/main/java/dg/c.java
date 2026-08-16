package dg;

import Mf.p;
import ag.C3617K;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Comparator;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.time.InterfaceC14033e;
import kotlin.time.o;
import kotlin.time.q;
import nf.F0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.InterfaceC14443y;
import nf.y0;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tf.C15420g;

@InterfaceC12919a
@InterfaceC14422l0(version = "2.0")
public final class c implements Comparable<c>, Serializable {

    @NotNull
    public static final a f84637d = new a(null);

    @NotNull
    public static final c f84638e = new c(0, 0);

    public static final int f84639f = 16;

    public static final int f84640g = 128;

    public final long f84641b;

    public final long f84642c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @InterfaceC14427o(message = "Use naturalOrder<Uuid>() instead", replaceWith = @InterfaceC14412g0(expression = "naturalOrder<Uuid>()", imports = {"kotlin.comparisons.naturalOrder"}))
        @InterfaceC14429p(warningSince = "2.1")
        public static void j() {
        }

        @NotNull
        public final c a(@NotNull byte[] byteArray) {
            String x10;
            M.p(byteArray, "byteArray");
            if (byteArray.length == 16) {
                return b(e.b(byteArray, 0), e.b(byteArray, 8));
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Expected exactly 16 bytes, but was ");
            x10 = f.x(byteArray, 32);
            sb2.append(x10);
            sb2.append(" of size ");
            sb2.append(byteArray.length);
            throw new IllegalArgumentException(sb2.toString().toString());
        }

        @NotNull
        public final c b(long j10, long j11) {
            return (j10 == 0 && j11 == 0) ? k() : new c(j10, j11, null);
        }

        @InterfaceC14443y
        @InterfaceC14422l0(version = "2.1")
        @NotNull
        public final c c(@NotNull byte[] bArr) {
            M.p(bArr, "$v$c$kotlin-UByteArray$-ubyteArray$0");
            return a(bArr);
        }

        @NotNull
        public final c d(long j10, long j11) {
            return b(j10, j11);
        }

        @InterfaceC14422l0(version = "2.3")
        @NotNull
        public final c e() {
            return f.u();
        }

        @InterfaceC14422l0(version = "2.3")
        @NotNull
        public final c f() {
            return g(InterfaceC14033e.b.f95861b);
        }

        @NotNull
        public final c g(@NotNull InterfaceC14033e clock) {
            M.p(clock, "clock");
            return h.f84649a.a(clock);
        }

        @o
        @InterfaceC14422l0(version = "2.3")
        @NotNull
        public final c h(@NotNull q timestamp) {
            M.p(timestamp, "timestamp");
            byte[] bArr = new byte[10];
            e.h(bArr);
            long k10 = (timestamp.k() << 16) | (((bArr[8] & 15) | 112) << 8) | (bArr[9] & 255);
            bArr[0] = (byte) (((byte) (bArr[0] & Opcodes.OPC_lstore_0)) | Byte.MIN_VALUE);
            return b(k10, e.b(bArr, 0));
        }

        @NotNull
        public final Comparator<c> i() {
            return C15420g.q();
        }

        @NotNull
        public final c k() {
            return c.f84638e;
        }

        @NotNull
        public final c l(@NotNull String uuidString) {
            String w10;
            M.p(uuidString, "uuidString");
            int length = uuidString.length();
            if (length == 32) {
                return e.m(uuidString);
            }
            if (length == 36) {
                return e.n(uuidString);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
            w10 = f.w(uuidString, 64);
            sb2.append(w10);
            sb2.append("\" of length ");
            sb2.append(uuidString.length());
            throw new IllegalArgumentException(sb2.toString());
        }

        @NotNull
        public final c m(@NotNull String hexString) {
            String w10;
            M.p(hexString, "hexString");
            if (hexString.length() == 32) {
                return e.m(hexString);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Expected a 32-char hexadecimal string, but was \"");
            w10 = f.w(hexString, 64);
            sb2.append(w10);
            sb2.append("\" of length ");
            sb2.append(hexString.length());
            throw new IllegalArgumentException(sb2.toString().toString());
        }

        @InterfaceC14422l0(version = "2.1")
        @NotNull
        public final c n(@NotNull String hexDashString) {
            String w10;
            M.p(hexDashString, "hexDashString");
            if (hexDashString.length() == 36) {
                return e.n(hexDashString);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Expected a 36-char string in the standard hex-and-dash UUID format, but was \"");
            w10 = f.w(hexDashString, 64);
            sb2.append(w10);
            sb2.append("\" of length ");
            sb2.append(hexDashString.length());
            throw new IllegalArgumentException(sb2.toString().toString());
        }

        @InterfaceC14422l0(version = "2.3")
        @Nullable
        public final c o(@NotNull String hexDashString) {
            M.p(hexDashString, "hexDashString");
            if (hexDashString.length() != 36) {
                return null;
            }
            return e.o(hexDashString);
        }

        @InterfaceC14422l0(version = "2.3")
        @Nullable
        public final c p(@NotNull String hexString) {
            M.p(hexString, "hexString");
            if (hexString.length() != 32) {
                return null;
            }
            return e.p(hexString);
        }

        @InterfaceC14422l0(version = "2.3")
        @Nullable
        public final c q(@NotNull String uuidString) {
            M.p(uuidString, "uuidString");
            int length = uuidString.length();
            if (length == 32) {
                return p(uuidString);
            }
            if (length != 36) {
                return null;
            }
            return o(uuidString);
        }

        @NotNull
        public final c r() {
            return e();
        }

        public a() {
        }
    }

    public c(long j10, long j11, C14026x c14026x) {
        this(j10, j11);
    }

    @InterfaceC14410f0
    public static void d() {
    }

    @InterfaceC14410f0
    public static void g() {
    }

    @Override
    @InterfaceC14422l0(version = "2.1")
    public int compareTo(@NotNull c other) {
        M.p(other, "other");
        long j10 = this.f84641b;
        return j10 != other.f84641b ? Long.compareUnsigned(F0.i(j10), F0.i(other.f84641b)) : Long.compareUnsigned(F0.i(this.f84642c), F0.i(other.f84642c));
    }

    public final long c() {
        return this.f84642c;
    }

    public final long e() {
        return this.f84641b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f84641b == cVar.f84641b && this.f84642c == cVar.f84642c;
    }

    public final void h(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public int hashCode() {
        return Long.hashCode(this.f84641b ^ this.f84642c);
    }

    @NotNull
    public final byte[] i() {
        byte[] bArr = new byte[16];
        e.j(bArr, 0, this.f84641b);
        e.j(bArr, 8, this.f84642c);
        return bArr;
    }

    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public final String j() {
        byte[] bArr = new byte[36];
        e.a(this.f84641b, bArr, 0, 0, 4);
        bArr[8] = Opcodes.OPC_aload_3;
        e.a(this.f84641b, bArr, 9, 4, 6);
        bArr[13] = Opcodes.OPC_aload_3;
        e.a(this.f84641b, bArr, 14, 6, 8);
        bArr[18] = Opcodes.OPC_aload_3;
        e.a(this.f84642c, bArr, 19, 0, 2);
        bArr[23] = Opcodes.OPC_aload_3;
        e.a(this.f84642c, bArr, 24, 2, 8);
        return C3617K.W1(bArr);
    }

    @NotNull
    public final String k() {
        byte[] bArr = new byte[32];
        e.a(this.f84641b, bArr, 0, 0, 8);
        e.a(this.f84642c, bArr, 16, 0, 8);
        return C3617K.W1(bArr);
    }

    @Ef.f
    public final <T> T m(p<? super Long, ? super Long, ? extends T> action) {
        M.p(action, "action");
        return action.invoke(Long.valueOf(e()), Long.valueOf(c()));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "2.1")
    @NotNull
    public final byte[] o() {
        return y0.k(i());
    }

    @Ef.f
    public final <T> T q(p<? super F0, ? super F0, ? extends T> action) {
        M.p(action, "action");
        return action.invoke(F0.b(F0.i(e())), F0.b(F0.i(c())));
    }

    public final Object r() {
        return e.i(this);
    }

    @NotNull
    public String toString() {
        return j();
    }

    public c(long j10, long j11) {
        this.f84641b = j10;
        this.f84642c = j11;
    }
}
