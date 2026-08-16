package java.lang.invoke;

import java.nio.Buffer;
import java.nio.ByteBuffer;

abstract class VarHandleByteArrayBase {
    static final long BUFFER_ADDRESS = MethodHandleStatics.UNSAFE.objectFieldOffset(Buffer.class, "address");
    static final long BUFFER_LIMIT = MethodHandleStatics.UNSAFE.objectFieldOffset(Buffer.class, "limit");
    static final long BYTE_BUFFER_HB = MethodHandleStatics.UNSAFE.objectFieldOffset(ByteBuffer.class, "hb");
    static final long BYTE_BUFFER_IS_READ_ONLY = MethodHandleStatics.UNSAFE.objectFieldOffset(ByteBuffer.class, "isReadOnly");
    static final boolean BE = MethodHandleStatics.UNSAFE.isBigEndian();

    public static IllegalStateException newIllegalStateExceptionForMisalignedAccess(int index) {
        return new IllegalStateException("Misaligned access at index: " + index);
    }
}
