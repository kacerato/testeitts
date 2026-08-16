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

public final class VarHandleByteArrayAsLongs extends VarHandleByteArrayBase {
    static final int ALIGN = 7;
    static final JavaNioAccess NIO_ACCESS = SharedSecrets.getJavaNioAccess();
    static final ScopedMemoryAccess SCOPED_MEMORY_ACCESS = ScopedMemoryAccess.getScopedMemoryAccess();

    VarHandleByteArrayAsLongs() {
    }

    @ForceInline
    static long convEndian(boolean big, long n10) {
        return big == BE ? n10 : Long.reverseBytes(n10);
    }

    public static abstract class ByteArrayViewVarHandle extends VarHandle {

        final boolean f92810be;

        ByteArrayViewVarHandle(VarForm form, boolean be2, boolean exact) {
            super(form, exact);
            this.f92810be = be2;
        }
    }

    public static final class ArrayHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ArrayHandle.class, byte[].class, Long.TYPE, Integer.TYPE);

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
            return new ArrayHandle(this.f92810be, true);
        }

        @Override
        public ArrayHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ArrayHandle(this.f92810be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(byte[].class, Long.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(byte[] ba2, int index) {
            return Preconditions.checkIndex(index, ba2.length - 7, Preconditions.AIOOBE_FORMATTER);
        }

        @ForceInline
        static long get(VarHandle ob2, Object oba, int index) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            return MethodHandleStatics.UNSAFE.getLongUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, handle.f92810be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object oba, int index, long value) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            MethodHandleStatics.UNSAFE.putLongUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, value, handle.f92810be);
        }
    }

    public static final class ByteBufferHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ByteBufferHandle.class, ByteBuffer.class, Long.TYPE, Integer.TYPE);

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
            return new ByteBufferHandle(this.f92810be, true);
        }

        @Override
        public ByteBufferHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ByteBufferHandle(this.f92810be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(ByteBuffer.class, Long.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(ByteBuffer bb2, int index) {
            VarHandleByteArrayAsLongs.NIO_ACCESS.bufferSegment(bb2);
            return Preconditions.checkIndex(index, MethodHandleStatics.UNSAFE.getInt(bb2, VarHandleByteArrayBase.BUFFER_LIMIT) - 7, (BiFunction) null);
        }

        @ForceInline
        static MemorySessionImpl session(ByteBuffer bb2) {
            AbstractMemorySegmentImpl bufferSegment = VarHandleByteArrayAsLongs.NIO_ACCESS.bufferSegment(bb2);
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
        static long get(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), index(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), handle.f92810be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.putLongUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), indexRO(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), value, handle.f92810be);
        }

        @ForceInline
        static long getVolatile(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.putLongVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static long getAcquire(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.putLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static long getOpaque(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.putLongOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.compareAndSetLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static long compareAndExchange(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.compareAndExchangeLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value)));
        }

        @ForceInline
        static long compareAndExchangeAcquire(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.compareAndExchangeLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value)));
        }

        @ForceInline
        static long compareAndExchangeRelease(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.compareAndExchangeLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value)));
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongPlain(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, int index, long expected, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, expected), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value));
        }

        @ForceInline
        static long getAndSet(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndSetLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value)));
        }

        @ForceInline
        static long getAndSetAcquire(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndSetLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value)));
        }

        @ForceInline
        static long getAndSetRelease(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsLongs.convEndian(handle.f92810be, VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndSetLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsLongs.convEndian(handle.f92810be, value)));
        }

        @ForceInline
        static long getAndAdd(VarHandle ob2, Object obb, int index, long delta) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndAddLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), delta);
            }
            return getAndAddConvEndianWithCAS(bb2, index, delta);
        }

        @ForceInline
        static long getAndAddAcquire(VarHandle ob2, Object obb, int index, long delta) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndAddLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), delta);
            }
            return getAndAddConvEndianWithCAS(bb2, index, delta);
        }

        @ForceInline
        static long getAndAddRelease(VarHandle ob2, Object obb, int index, long delta) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndAddLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), delta);
            }
            return getAndAddConvEndianWithCAS(bb2, index, delta);
        }

        @ForceInline
        static long getAndAddConvEndianWithCAS(ByteBuffer bb2, int index, long delta) {
            long nativeExpectedValue;
            long expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongVolatile(session(bb2), base, offset);
                expectedValue = Long.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetLong(base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue + delta)));
            return expectedValue;
        }

        @ForceInline
        static long getAndBitwiseOr(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseOrLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseOrConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseOrRelease(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseOrLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseOrConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseOrAcquire(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseOrLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseOrConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseOrConvEndianWithCAS(ByteBuffer bb2, int index, long value) {
            long nativeExpectedValue;
            long expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongVolatile(session(bb2), base, offset);
                expectedValue = Long.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetLong(base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue | value)));
            return expectedValue;
        }

        @ForceInline
        static long getAndBitwiseAnd(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseAndLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseAndConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseAndRelease(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseAndLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseAndConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseAndAcquire(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseAndLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseAndConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseAndConvEndianWithCAS(ByteBuffer bb2, int index, long value) {
            long nativeExpectedValue;
            long expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongVolatile(session(bb2), base, offset);
                expectedValue = Long.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetLong(base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue & value)));
            return expectedValue;
        }

        @ForceInline
        static long getAndBitwiseXor(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseXorLong(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseXorConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseXorRelease(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseXorLongRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseXorConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseXorAcquire(VarHandle ob2, Object obb, int index, long value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92810be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getAndBitwiseXorLongAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseXorConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static long getAndBitwiseXorConvEndianWithCAS(ByteBuffer bb2, int index, long value) {
            long nativeExpectedValue;
            long expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsLongs.SCOPED_MEMORY_ACCESS.getLongVolatile(session(bb2), base, offset);
                expectedValue = Long.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetLong(base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue ^ value)));
            return expectedValue;
        }
    }
}
