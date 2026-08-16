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

public final class VarHandleByteArrayAsShorts extends VarHandleByteArrayBase {
    static final int ALIGN = 1;
    static final JavaNioAccess NIO_ACCESS = SharedSecrets.getJavaNioAccess();
    static final ScopedMemoryAccess SCOPED_MEMORY_ACCESS = ScopedMemoryAccess.getScopedMemoryAccess();

    VarHandleByteArrayAsShorts() {
    }

    @ForceInline
    static short convEndian(boolean big, short n10) {
        return big == BE ? n10 : Short.reverseBytes(n10);
    }

    public static abstract class ByteArrayViewVarHandle extends VarHandle {

        final boolean f92811be;

        ByteArrayViewVarHandle(VarForm form, boolean be2, boolean exact) {
            super(form, exact);
            this.f92811be = be2;
        }
    }

    public static final class ArrayHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ArrayHandle.class, byte[].class, Short.TYPE, Integer.TYPE);

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
            return new ArrayHandle(this.f92811be, true);
        }

        @Override
        public ArrayHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ArrayHandle(this.f92811be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(byte[].class, Short.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(byte[] ba2, int index) {
            return Preconditions.checkIndex(index, ba2.length - 1, Preconditions.AIOOBE_FORMATTER);
        }

        @ForceInline
        static short get(VarHandle ob2, Object oba, int index) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            return MethodHandleStatics.UNSAFE.getShortUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, handle.f92811be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object oba, int index, short value) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            MethodHandleStatics.UNSAFE.putShortUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, value, handle.f92811be);
        }
    }

    public static final class ByteBufferHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ByteBufferHandle.class, ByteBuffer.class, Short.TYPE, Integer.TYPE);

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
            return new ByteBufferHandle(this.f92811be, true);
        }

        @Override
        public ByteBufferHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ByteBufferHandle(this.f92811be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(ByteBuffer.class, Short.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(ByteBuffer bb2, int index) {
            VarHandleByteArrayAsShorts.NIO_ACCESS.bufferSegment(bb2);
            return Preconditions.checkIndex(index, MethodHandleStatics.UNSAFE.getInt(bb2, VarHandleByteArrayBase.BUFFER_LIMIT) - 1, (BiFunction) null);
        }

        @ForceInline
        static MemorySessionImpl session(ByteBuffer bb2) {
            AbstractMemorySegmentImpl bufferSegment = VarHandleByteArrayAsShorts.NIO_ACCESS.bufferSegment(bb2);
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
            if ((address & 1) != 0) {
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
        static short get(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.getShortUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), index(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), handle.f92811be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object obb, int index, short value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.putShortUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), indexRO(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), value, handle.f92811be);
        }

        @ForceInline
        static short getVolatile(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsShorts.convEndian(handle.f92811be, VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.getShortVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object obb, int index, short value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.putShortVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsShorts.convEndian(handle.f92811be, value));
        }

        @ForceInline
        static short getAcquire(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsShorts.convEndian(handle.f92811be, VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.getShortAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object obb, int index, short value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.putShortRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsShorts.convEndian(handle.f92811be, value));
        }

        @ForceInline
        static short getOpaque(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsShorts.convEndian(handle.f92811be, VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.getShortOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object obb, int index, short value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsShorts.SCOPED_MEMORY_ACCESS.putShortOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsShorts.convEndian(handle.f92811be, value));
        }
    }
}
