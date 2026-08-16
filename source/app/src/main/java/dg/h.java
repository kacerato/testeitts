package dg;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.M;
import kotlin.time.InterfaceC14033e;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.jetbrains.annotations.NotNull;

public final class h {

    public static final int f84650b = 16;

    public static final int f84651c = 28672;

    public static final long f84652d = 32768;

    @NotNull
    public static final h f84649a = new h();

    @NotNull
    public static final AtomicLong f84653e = new AtomicLong(0);

    @InterfaceC12919a
    @NotNull
    public final c a(@NotNull InterfaceC14033e clock) {
        long j10;
        M.p(clock, "clock");
        byte[] bArr = new byte[10];
        e.h(bArr);
        int i10 = ((bArr[8] & 7) << 8) | (bArr[9] & 255) | 28672;
        while (true) {
            AtomicLong atomicLong = f84653e;
            long j11 = atomicLong.get();
            long k10 = clock.a().k();
            long j12 = j11 >>> 16;
            if (j12 < k10) {
                j10 = (k10 << 16) | i10;
                if (atomicLong.compareAndSet(j11, j10)) {
                    break;
                }
            } else {
                long j13 = j11 + 1;
                j10 = (32768 & j13) != 0 ? ((j12 + 1) << 16) | i10 : j13;
                if (atomicLong.compareAndSet(j11, j10)) {
                    break;
                }
            }
        }
        bArr[0] = (byte) (((byte) (bArr[0] & Opcodes.OPC_lstore_0)) | Byte.MIN_VALUE);
        return c.f84637d.b(j10, e.b(bArr, 0));
    }
}
