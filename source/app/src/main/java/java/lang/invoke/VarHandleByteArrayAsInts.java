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

public final class VarHandleByteArrayAsInts extends VarHandleByteArrayBase {
    static final int ALIGN = 3;
    static final JavaNioAccess NIO_ACCESS = SharedSecrets.getJavaNioAccess();
    static final ScopedMemoryAccess SCOPED_MEMORY_ACCESS = ScopedMemoryAccess.getScopedMemoryAccess();

    VarHandleByteArrayAsInts() {
    }

    @ForceInline
    static int convEndian(boolean big, int n10) {
        return big == BE ? n10 : Integer.reverseBytes(n10);
    }

    public static abstract class ByteArrayViewVarHandle extends VarHandle {

        final boolean f92809be;

        ByteArrayViewVarHandle(VarForm form, boolean be2, boolean exact) {
            super(form, exact);
            this.f92809be = be2;
        }
    }

    public static final class ArrayHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ArrayHandle.class, byte[].class, Integer.TYPE, Integer.TYPE);

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
            return new ArrayHandle(this.f92809be, true);
        }

        @Override
        public ArrayHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ArrayHandle(this.f92809be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(byte[].class, Integer.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(byte[] ba2, int index) {
            return Preconditions.checkIndex(index, ba2.length - 3, Preconditions.AIOOBE_FORMATTER);
        }

        @ForceInline
        static int get(VarHandle ob2, Object oba, int index) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            return MethodHandleStatics.UNSAFE.getIntUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, handle.f92809be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object oba, int index, int value) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            MethodHandleStatics.UNSAFE.putIntUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, value, handle.f92809be);
        }
    }

    public static final class ByteBufferHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ByteBufferHandle.class, ByteBuffer.class, Integer.TYPE, Integer.TYPE);

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
            return new ByteBufferHandle(this.f92809be, true);
        }

        @Override
        public ByteBufferHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ByteBufferHandle(this.f92809be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(ByteBuffer.class, Integer.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(ByteBuffer bb2, int index) {
            VarHandleByteArrayAsInts.NIO_ACCESS.bufferSegment(bb2);
            return Preconditions.checkIndex(index, MethodHandleStatics.UNSAFE.getInt(bb2, VarHandleByteArrayBase.BUFFER_LIMIT) - 3, (BiFunction) null);
        }

        @ForceInline
        static MemorySessionImpl session(ByteBuffer bb2) {
            AbstractMemorySegmentImpl bufferSegment = VarHandleByteArrayAsInts.NIO_ACCESS.bufferSegment(bb2);
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
            if ((address & 3) != 0) {
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
        static int get(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), index(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), handle.f92809be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.putIntUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), indexRO(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), value, handle.f92809be);
        }

        @ForceInline
        static int getVolatile(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.putIntVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static int getAcquire(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.putIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static int getOpaque(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.putIntOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static boolean compareAndSet(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.compareAndSetInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static int compareAndExchange(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.compareAndExchangeInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value)));
        }

        @ForceInline
        static int compareAndExchangeAcquire(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.compareAndExchangeIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value)));
        }

        @ForceInline
        static int compareAndExchangeRelease(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.compareAndExchangeIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value)));
        }

        @ForceInline
        static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntPlain(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static boolean weakCompareAndSet(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, int index, int expected, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, expected), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value));
        }

        @ForceInline
        static int getAndSet(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndSetInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value)));
        }

        @ForceInline
        static int getAndSetAcquire(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndSetIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value)));
        }

        @ForceInline
        static int getAndSetRelease(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsInts.convEndian(handle.f92809be, VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndSetIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsInts.convEndian(handle.f92809be, value)));
        }

        @ForceInline
        static int getAndAdd(VarHandle ob2, Object obb, int index, int delta) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndAddInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), delta);
            }
            return getAndAddConvEndianWithCAS(bb2, index, delta);
        }

        @ForceInline
        static int getAndAddAcquire(VarHandle ob2, Object obb, int index, int delta) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndAddIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), delta);
            }
            return getAndAddConvEndianWithCAS(bb2, index, delta);
        }

        @ForceInline
        static int getAndAddRelease(VarHandle ob2, Object obb, int index, int delta) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndAddIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), delta);
            }
            return getAndAddConvEndianWithCAS(bb2, index, delta);
        }

        @ForceInline
        static int getAndAddConvEndianWithCAS(ByteBuffer bb2, int index, int delta) {
            int nativeExpectedValue;
            int expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntVolatile(session(bb2), base, offset);
                expectedValue = Integer.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetInt(base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue + delta)));
            return expectedValue;
        }

        @ForceInline
        static int getAndBitwiseOr(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseOrInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseOrConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseOrRelease(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseOrIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseOrConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseOrAcquire(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseOrIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseOrConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseOrConvEndianWithCAS(ByteBuffer bb2, int index, int value) {
            int nativeExpectedValue;
            int expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntVolatile(session(bb2), base, offset);
                expectedValue = Integer.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetInt(base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue | value)));
            return expectedValue;
        }

        @ForceInline
        static int getAndBitwiseAnd(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseAndInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseAndConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseAndRelease(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseAndIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseAndConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseAndAcquire(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseAndIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseAndConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseAndConvEndianWithCAS(ByteBuffer bb2, int index, int value) {
            int nativeExpectedValue;
            int expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntVolatile(session(bb2), base, offset);
                expectedValue = Integer.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetInt(base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue & value)));
            return expectedValue;
        }

        @ForceInline
        static int getAndBitwiseXor(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseXorInt(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseXorConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseXorRelease(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseXorIntRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseXorConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseXorAcquire(VarHandle ob2, Object obb, int index, int value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            if (handle.f92809be == VarHandleByteArrayBase.BE) {
                return VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getAndBitwiseXorIntAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), value);
            }
            return getAndBitwiseXorConvEndianWithCAS(bb2, index, value);
        }

        @ForceInline
        static int getAndBitwiseXorConvEndianWithCAS(ByteBuffer bb2, int index, int value) {
            int nativeExpectedValue;
            int expectedValue;
            Object base = checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB));
            long offset = address(bb2, indexRO(bb2, index));
            do {
                nativeExpectedValue = VarHandleByteArrayAsInts.SCOPED_MEMORY_ACCESS.getIntVolatile(session(bb2), base, offset);
                expectedValue = Integer.reverseBytes(nativeExpectedValue);
            } while (!MethodHandleStatics.UNSAFE.weakCompareAndSetInt(base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue ^ value)));
            return expectedValue;
        }
    }
}
