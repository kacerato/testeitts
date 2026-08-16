package java.lang.invoke;

import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleSegmentAsIntsAligned extends VarHandleSegmentAsInts {
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsIntsAligned.class, VarHandleSegmentAsInts.CONSTANT_OFFSET_FORM);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsIntsAligned.class, VarHandleSegmentAsInts.VARIABLE_OFFSET_FORM);

    VarHandleSegmentAsIntsAligned() {
        throw new AssertionError();
    }

    @ForceInline
    static int convEndian(boolean big, int n10) {
        return big == SegmentVarHandle.BE ? n10 : Integer.reverseBytes(n10);
    }

    @ForceInline
    static int getVolatile(VarHandle ob2, Object obb, long base) {
        return getVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static int getVolatile(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, int value) {
        setVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static int getAcquire(VarHandle ob2, Object obb, long base) {
        return getAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static int getAcquire(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, int value) {
        setRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static int getOpaque(VarHandle ob2, Object obb, long base) {
        return getOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static int getOpaque(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, int value) {
        setOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, int expected, int value) {
        return compareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndSetInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static int compareAndExchange(VarHandle ob2, Object obb, long base, int expected, int value) {
        return compareAndExchange(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static int compareAndExchange(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static int compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, int expected, int value) {
        return compareAndExchangeAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static int compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static int compareAndExchangeRelease(VarHandle ob2, Object obb, long base, int expected, int value) {
        return compareAndExchangeRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static int compareAndExchangeRelease(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, int expected, int value) {
        return weakCompareAndSetPlain(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntPlain(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, int expected, int value) {
        return weakCompareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, int expected, int value) {
        return weakCompareAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, int expected, int value) {
        return weakCompareAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, long offset, int expected, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static int getAndSet(VarHandle ob2, Object obb, long base, int value) {
        return getAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndSet(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static int getAndSetAcquire(VarHandle ob2, Object obb, long base, int value) {
        return getAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static int getAndSetRelease(VarHandle ob2, Object obb, long base, int value) {
        return getAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndSetRelease(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static int getAndAdd(VarHandle ob2, Object obb, long base, int value) {
        return getAndAdd(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndAdd(VarHandle ob2, Object obb, long base, long offset, int delta) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndAddInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), delta);
        }
        return getAndAddConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), delta);
    }

    @ForceInline
    static int getAndAddAcquire(VarHandle ob2, Object obb, long base, int value) {
        return getAndAddAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndAddAcquire(VarHandle ob2, Object obb, long base, long offset, int delta) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndAddIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), delta);
        }
        return getAndAddConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), delta);
    }

    @ForceInline
    static int getAndAddRelease(VarHandle ob2, Object obb, long base, int value) {
        return getAndAddRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndAddRelease(VarHandle ob2, Object obb, long base, long offset, int delta) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndAddIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), delta);
        }
        return getAndAddConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), delta);
    }

    @ForceInline
    static int getAndAddConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, int delta) {
        int nativeExpectedValue;
        int expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Integer.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(bb2.sessionImpl(), base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue + delta)));
        return expectedValue;
    }

    @ForceInline
    static int getAndBitwiseOr(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseOr(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseOr(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseOrInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseOrConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseOrRelease(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseOrRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseOrRelease(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseOrIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseOrConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseOrAcquire(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseOrAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseOrAcquire(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseOrIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseOrConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseOrConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, int value) {
        int nativeExpectedValue;
        int expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Integer.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(bb2.sessionImpl(), base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue | value)));
        return expectedValue;
    }

    @ForceInline
    static int getAndBitwiseAnd(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseAnd(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseAnd(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseAndInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseAndConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseAndRelease(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseAndRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseAndRelease(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseAndIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseAndConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseAndAcquire(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseAndAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseAndAcquire(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseAndIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseAndConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseAndConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, int value) {
        int nativeExpectedValue;
        int expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Integer.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(bb2.sessionImpl(), base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue & value)));
        return expectedValue;
    }

    @ForceInline
    static int getAndBitwiseXor(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseXor(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseXor(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseXorInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseXorConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseXorRelease(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseXorRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseXorRelease(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseXorIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseXorConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseXorAcquire(VarHandle ob2, Object obb, long base, int value) {
        return getAndBitwiseXorAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static int getAndBitwiseXorAcquire(VarHandle ob2, Object obb, long base, long offset, int value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseXorIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseXorConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static int getAndBitwiseXorConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, int value) {
        int nativeExpectedValue;
        int expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Integer.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(bb2.sessionImpl(), base, offset, nativeExpectedValue, Integer.reverseBytes(expectedValue ^ value)));
        return expectedValue;
    }
}
