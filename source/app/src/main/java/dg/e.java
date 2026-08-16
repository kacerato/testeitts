package dg;

import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w2.C15883c;

@t0({"SMAP\nUuidJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n1#1,285:1\n284#1:286\n284#1:287\n284#1:288\n284#1:289\n284#1:290\n284#1:291\n284#1:292\n284#1:293\n*S KotlinDebug\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n144#1:286\n145#1:287\n189#1:288\n190#1:289\n230#1:290\n231#1:291\n278#1:292\n279#1:293\n*E\n"})
public class e {
    @InterfaceC12919a
    public static final void a(long j10, @NotNull byte[] dst, int i10, int i11, int i12) {
        M.p(dst, "dst");
        f.s(j10, dst, i10, i11, i12);
    }

    @InterfaceC12919a
    public static final long b(@NotNull byte[] bArr, int i10) {
        M.p(bArr, "<this>");
        return f.t(bArr, i10);
    }

    @InterfaceC12919a
    @InterfaceC14422l0(version = "2.0")
    @NotNull
    public static final c c(@NotNull ByteBuffer byteBuffer) {
        M.p(byteBuffer, "<this>");
        if (byteBuffer.position() + 15 >= byteBuffer.limit()) {
            throw new BufferUnderflowException();
        }
        long j10 = byteBuffer.getLong();
        long j11 = byteBuffer.getLong();
        if (M.g(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
            j10 = Long.reverseBytes(j10);
            j11 = Long.reverseBytes(j11);
        }
        return c.f84637d.b(j10, j11);
    }

    @InterfaceC12919a
    @InterfaceC14422l0(version = "2.0")
    @NotNull
    public static final c d(@NotNull ByteBuffer byteBuffer, int i10) {
        M.p(byteBuffer, "<this>");
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Negative index: " + i10);
        }
        if (i10 + 15 < byteBuffer.limit()) {
            long j10 = byteBuffer.getLong(i10);
            long j11 = byteBuffer.getLong(i10 + 8);
            if (M.g(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
                j10 = Long.reverseBytes(j10);
                j11 = Long.reverseBytes(j11);
            }
            return c.f84637d.b(j10, j11);
        }
        throw new IndexOutOfBoundsException("Not enough bytes to read a uuid at index: " + i10 + ", with limit: " + byteBuffer.limit() + C15883c.f126249O);
    }

    @InterfaceC12919a
    @NotNull
    @InterfaceC14394D
    @InterfaceC14422l0(version = "2.0")
    public static final ByteBuffer e(@NotNull ByteBuffer byteBuffer, int i10, @NotNull c uuid) {
        ByteBuffer putLong;
        M.p(byteBuffer, "<this>");
        M.p(uuid, "uuid");
        long e10 = uuid.e();
        long c10 = uuid.c();
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Negative index: " + i10);
        }
        if (i10 + 15 < byteBuffer.limit()) {
            if (M.g(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
                byteBuffer.putLong(i10, e10);
                putLong = byteBuffer.putLong(i10 + 8, c10);
            } else {
                byteBuffer.putLong(i10, Long.reverseBytes(e10));
                putLong = byteBuffer.putLong(i10 + 8, Long.reverseBytes(c10));
            }
            M.o(putLong, "toLongs(...)");
            return putLong;
        }
        throw new IndexOutOfBoundsException("Not enough capacity to write a uuid at index: " + i10 + ", with limit: " + byteBuffer.limit() + C15883c.f126249O);
    }

    @InterfaceC12919a
    @NotNull
    @InterfaceC14394D
    @InterfaceC14422l0(version = "2.0")
    public static final ByteBuffer f(@NotNull ByteBuffer byteBuffer, @NotNull c uuid) {
        ByteBuffer putLong;
        M.p(byteBuffer, "<this>");
        M.p(uuid, "uuid");
        long e10 = uuid.e();
        long c10 = uuid.c();
        if (byteBuffer.position() + 15 >= byteBuffer.limit()) {
            throw new BufferOverflowException();
        }
        if (M.g(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
            byteBuffer.putLong(e10);
            putLong = byteBuffer.putLong(c10);
        } else {
            byteBuffer.putLong(Long.reverseBytes(e10));
            putLong = byteBuffer.putLong(Long.reverseBytes(c10));
        }
        M.o(putLong, "toLongs(...)");
        return putLong;
    }

    public static final long g(long j10) {
        return Long.reverseBytes(j10);
    }

    public static final void h(@NotNull byte[] destination) {
        M.p(destination, "destination");
        b.f84635a.a().nextBytes(destination);
    }

    @InterfaceC12919a
    @NotNull
    public static final Object i(@NotNull c uuid) {
        M.p(uuid, "uuid");
        return new g(uuid.e(), uuid.c());
    }

    @InterfaceC12919a
    public static final void j(@NotNull byte[] bArr, int i10, long j10) {
        M.p(bArr, "<this>");
        f.v(bArr, i10, j10);
    }

    @InterfaceC12919a
    @InterfaceC14422l0(version = "2.0")
    @NotNull
    public static final UUID k(@NotNull c cVar) {
        M.p(cVar, "<this>");
        return new UUID(cVar.e(), cVar.c());
    }

    @InterfaceC12919a
    @InterfaceC14422l0(version = "2.0")
    @NotNull
    public static final c l(@NotNull UUID uuid) {
        M.p(uuid, "<this>");
        return c.f84637d.b(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @InterfaceC12919a
    @NotNull
    public static final c m(@NotNull String hexString) {
        M.p(hexString, "hexString");
        return f.A(hexString);
    }

    @InterfaceC12919a
    @NotNull
    public static final c n(@NotNull String hexDashString) {
        M.p(hexDashString, "hexDashString");
        return f.C(hexDashString);
    }

    @InterfaceC12919a
    @Nullable
    public static final c o(@NotNull String hexDashString) {
        M.p(hexDashString, "hexDashString");
        return f.E(hexDashString);
    }

    @InterfaceC12919a
    @Nullable
    public static final c p(@NotNull String hexString) {
        M.p(hexString, "hexString");
        return f.F(hexString);
    }
}
