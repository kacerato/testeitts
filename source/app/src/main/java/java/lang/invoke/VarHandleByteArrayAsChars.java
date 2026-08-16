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

public final class VarHandleByteArrayAsChars extends VarHandleByteArrayBase {
    static final int ALIGN = 1;
    static final JavaNioAccess NIO_ACCESS = SharedSecrets.getJavaNioAccess();
    static final ScopedMemoryAccess SCOPED_MEMORY_ACCESS = ScopedMemoryAccess.getScopedMemoryAccess();

    VarHandleByteArrayAsChars() {
    }

    @ForceInline
    static char convEndian(boolean big, char n10) {
        return big == BE ? n10 : Character.reverseBytes(n10);
    }

    public static abstract class ByteArrayViewVarHandle extends VarHandle {

        final boolean f92806be;

        ByteArrayViewVarHandle(VarForm form, boolean be2, boolean exact) {
            super(form, exact);
            this.f92806be = be2;
        }
    }

    public static final class ArrayHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ArrayHandle.class, byte[].class, Character.TYPE, Integer.TYPE);

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
            return new ArrayHandle(this.f92806be, true);
        }

        @Override
        public ArrayHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ArrayHandle(this.f92806be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(byte[].class, Character.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(byte[] ba2, int index) {
            return Preconditions.checkIndex(index, ba2.length - 1, Preconditions.AIOOBE_FORMATTER);
        }

        @ForceInline
        static char get(VarHandle ob2, Object oba, int index) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            return MethodHandleStatics.UNSAFE.getCharUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, handle.f92806be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object oba, int index, char value) {
            ArrayHandle handle = (ArrayHandle) ob2;
            byte[] ba2 = (byte[]) oba;
            MethodHandleStatics.UNSAFE.putCharUnaligned(ba2, index(ba2, index) + Unsafe.ARRAY_BYTE_BASE_OFFSET, value, handle.f92806be);
        }
    }

    public static final class ByteBufferHandle extends ByteArrayViewVarHandle {
        static final VarForm FORM = new VarForm(ByteBufferHandle.class, ByteBuffer.class, Character.TYPE, Integer.TYPE);

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
            return new ByteBufferHandle(this.f92806be, true);
        }

        @Override
        public ByteBufferHandle withInvokeBehavior() {
            if (!hasInvokeExactBehavior()) {
                return this;
            }
            return new ByteBufferHandle(this.f92806be, false);
        }

        @Override
        final MethodType accessModeTypeUncached(VarHandle.AccessType at) {
            return at.accessModeType(ByteBuffer.class, Character.TYPE, Integer.TYPE);
        }

        @ForceInline
        static int index(ByteBuffer bb2, int index) {
            VarHandleByteArrayAsChars.NIO_ACCESS.bufferSegment(bb2);
            return Preconditions.checkIndex(index, MethodHandleStatics.UNSAFE.getInt(bb2, VarHandleByteArrayBase.BUFFER_LIMIT) - 1, (BiFunction) null);
        }

        @ForceInline
        static MemorySessionImpl session(ByteBuffer bb2) {
            AbstractMemorySegmentImpl bufferSegment = VarHandleByteArrayAsChars.NIO_ACCESS.bufferSegment(bb2);
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
        static char get(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.getCharUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), index(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), handle.f92806be);
        }

        @ForceInline
        static void set(VarHandle ob2, Object obb, int index, char value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.putCharUnaligned(session(bb2), MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB), indexRO(bb2, index) + MethodHandleStatics.UNSAFE.getLong(bb2, VarHandleByteArrayBase.BUFFER_ADDRESS), value, handle.f92806be);
        }

        @ForceInline
        static char getVolatile(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsChars.convEndian(handle.f92806be, VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.getCharVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setVolatile(VarHandle ob2, Object obb, int index, char value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.putCharVolatile(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsChars.convEndian(handle.f92806be, value));
        }

        @ForceInline
        static char getAcquire(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsChars.convEndian(handle.f92806be, VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.getCharAcquire(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setRelease(VarHandle ob2, Object obb, int index, char value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.putCharRelease(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsChars.convEndian(handle.f92806be, value));
        }

        @ForceInline
        static char getOpaque(VarHandle ob2, Object obb, int index) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            return VarHandleByteArrayAsChars.convEndian(handle.f92806be, VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.getCharOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, index(bb2, index))));
        }

        @ForceInline
        static void setOpaque(VarHandle ob2, Object obb, int index, char value) {
            ByteBufferHandle handle = (ByteBufferHandle) ob2;
            ByteBuffer bb2 = (ByteBuffer) Objects.requireNonNull(obb);
            VarHandleByteArrayAsChars.SCOPED_MEMORY_ACCESS.putCharOpaque(session(bb2), checkNullHeapBase(MethodHandleStatics.UNSAFE.getReference(bb2, VarHandleByteArrayBase.BYTE_BUFFER_HB)), address(bb2, indexRO(bb2, index)), VarHandleByteArrayAsChars.convEndian(handle.f92806be, value));
        }
    }
}
