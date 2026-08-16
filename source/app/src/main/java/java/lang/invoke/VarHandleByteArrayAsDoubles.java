package java.lang.invoke;

import java.lang.invoke.VarHandle;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;
import java.util.Objects;
import java.util.function.BiFunction;
import jdk.internal.access.JavaNioAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.foreign.MemorySessionImpl;
import jdk.internal.misc.ScopedMemoryAccess;
import jdk.internal.misc.Unsafe;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;

public final class VarHandleByteArrayAsDoubles extends VarHandleByteArrayBase {
    static final int ALIGN = 7;
    static final JavaNioAccess NIO_ACCESS = SharedSecrets.getJavaNioAccess();
    static final ScopedMemoryAccess SCOPED_MEMORY_ACCESS = ScopedMemoryAccess.getScopedMemoryAccess();

    VarHandleByteArrayAsDoubles() {
    }

    @ForceInline
    static long convEndian(boolean big, double v10) {
        long rv = Double.doubleToRawLongBits(v10);
        return big == BE ? rv : Long.reverseBytes(rv);
    }

    @ForceInline
    static double convEndian(boolean big, long rv) {
        return Double.longBitsToDouble(big == BE ? rv : Long.reverseBytes(rv));
    }

    public static abstract class ByteArrayViewVarHandle extends VarHandle {

        final boolean f92807be;

        ByteArrayViewVarHandle(VarForm form, boolean be2, boolean exact) {
            super(form, exact);
            this.f92807be = be2;
        }
    }

    public static final class ArrayHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ArrayHandle.class, byte[].class, Double.TYPE, Integer.TYPE);

        public ArrayHandle(boolean be2) {
            this(be2, false);
        }

        private ArrayHandle(boolean be2, boolean exact) {
            super(FORM, be2, exact);
        }

        @Override
        public ArrayHandle withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new ArrayHandle(this.f92807be, true);
        }

        @Override
        public ArrayHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ArrayHandle(this.f92807be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(byte[].class, Double.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(byte[] ba2, int index) {
            return Preconditions.checkIndex(index, ba2.length - 7, Preconditions.AIOOBE_FORMATTER);
        }

        @ForceInline
        static double get(VarHandle ob2, Object oba, int index) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            long rawValue = MethodHandleStatics.UNSAFE.getLongUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, handle.f92807be);
            return Double.longBitsToDouble(rawValue);
        }

        @ForceInline
        static void set(VarHandle ob2, Object oba, int index, double value) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            MethodHandleStatics.UNSAFE.putLongUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, Double.doubleToRawLongBits(value), handle.f92807be);
        }
    }

    public static final class ByteBufferHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ByteBufferHandle.class, ByteBuffer.class, Double.TYPE, Integer.TYPE);

        public ByteBufferHandle(boolean be2) {
            this(be2, false);
        }

        private ByteBufferHandle(boolean be2, boolean exact) {
            super(FORM, be2, exact);
        }

        @Override
        public ByteBufferHandle withInvokeExactBehavior() {
            if (hasInvokeExactBehavior()) {
                return this;
            }
            return new ByteBufferHandle(this.f92807be, true);
        }

        @Override
        public ByteBufferHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ByteBufferHandle(this.f92807be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(ByteBuffer.class, Double.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(ByteBuffer bb2, int index) {
            VarHandleByteArrayAsDoubles.NIO_ACCESS.bufferSegment(bb2);
            return Preconditions.checkIndex(index, MethodHandleStatics.UNSAFE.getInt(bb2, VarHandleByteArrayBase.BUFFER_LIMIT) - 7, (BiFunction) null);
        }

        @ForceInline
        static MemorySessionImpl session(ByteBuffer bb2) {
            AbstractMemorySegmentImpl bufferSegment = VarHandleByteArrayAsDoubles.NIO_ACCESS.bufferSegment(bb2);
            if (bufferSegment != null) {
                return bufferSegment.sessionImpl();
            }
            return null;
        }

        @ForceInline
        static int indexRO(ByteBuffer bb2, int index) {
            if (MethodHandleStatics.UNSAFE.getBoolean(bb2, VarHandleByteArrayBase.BYTE_BUFFER_IS_READ_ONLY)) {
                throw new ReadOnlyBufferException();
            }
            return index(bb2, index);
        }

        @ForceInline
        static long address(ByteBuffer bb2, int index) {
            long address = index + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS);
            if ((address & 7) != 0) {
                throw VarHandleByteArrayBase.newIllegalStateExceptionForMisalignedAccess(index);
            }
            return address;
        }

        @ForceInline
        static Object checkNullHeapBase(Object hb2) {
            if (hb2 != null) {
                throw new IllegalStateException("Atomic access not supported for heap buffer");
            }
            return hb2;
        }

        @ForceInline
        static double get(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            long rawValue = VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getLongUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), index(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), handle.f92807be);
            return Double.longBitsToDouble(rawValue);
        }

        @ForceInline
        static void set(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.putLongUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), indexRO(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), Double.doubleToRawLongBits(value), handle.f92807be);
        }

        @ForceInline
        static double getVolatile(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getLongVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.putLongVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static double getAcquire(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.putLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static double getOpaque(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getLongOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.putLongOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.compareAndSetLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static double compareAndExchange(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.compareAndExchangeLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value)));
        }

        @ForceInline
        static double compareAndExchangeAcquire(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.compareAndExchangeLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value)));
        }

        @ForceInline
        static double compareAndExchangeRelease(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.compareAndExchangeLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value)));
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongPlain(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, int index, double expected, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, expected), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value));
        }

        @ForceInline
        static double getAndSet(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getAndSetLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value)));
        }

        @ForceInline
        static double getAndSetAcquire(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getAndSetLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value)));
        }

        @ForceInline
        static double getAndSetRelease(VarHandle ob2, Object obb, int index, double value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, VarHandleByteArrayAsDoubles.SCOPED_MEMORY_ACCESS.getAndSetLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsDoubles.convEndian(handle.f92807be, value)));
        }
    }
}
