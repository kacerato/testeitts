package java.lang.invoke;

import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

public final class VarHandleSegmentAsLongsAligned extends VarHandleSegmentAsLongs {
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsLongsAligned.class, VarHandleSegmentAsLongs.CONSTANT_OFFSET_FORM);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsLongsAligned.class, VarHandleSegmentAsLongs.VARIABLE_OFFSET_FORM);

    VarHandleSegmentAsLongsAligned() {
        throw new AssertionError();
    }

    @ForceInline
    static long convEndian(boolean big, long n10) {
        return big == SegmentVarHandle.BE ? n10 : Long.reverseBytes(n10);
    }

    @ForceInline
    static long getVolatile(VarHandle ob2, Object obb, long base) {
        return getVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static long getVolatile(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, long value) {
        setVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static long getAcquire(VarHandle ob2, Object obb, long base) {
        return getAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static long getAcquire(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, long value) {
        setRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static long getOpaque(VarHandle ob2, Object obb, long base) {
        return getOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static long getOpaque(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, long value) {
        setOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, long expected, long value) {
        return compareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndSetLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static long compareAndExchange(VarHandle ob2, Object obb, long base, long expected, long value) {
        return compareAndExchange(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static long compareAndExchange(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static long compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, long expected, long value) {
        return compareAndExchangeAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static long compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static long compareAndExchangeRelease(VarHandle ob2, Object obb, long base, long expected, long value) {
        return compareAndExchangeRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static long compareAndExchangeRelease(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, long expected, long value) {
        return weakCompareAndSetPlain(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongPlain(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, long expected, long value) {
        return weakCompareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, long expected, long value) {
        return weakCompareAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, long expected, long value) {
        return weakCompareAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, long offset, long expected, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static long getAndSet(VarHandle ob2, Object obb, long base, long value) {
        return getAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndSet(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static long getAndSetAcquire(VarHandle ob2, Object obb, long base, long value) {
        return getAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static long getAndSetRelease(VarHandle ob2, Object obb, long base, long value) {
        return getAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndSetRelease(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static long getAndAdd(VarHandle ob2, Object obb, long base, long value) {
        return getAndAdd(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndAdd(VarHandle ob2, Object obb, long base, long offset, long delta) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndAddLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), delta);
        }
        return getAndAddConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), delta);
    }

    @ForceInline
    static long getAndAddAcquire(VarHandle ob2, Object obb, long base, long value) {
        return getAndAddAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndAddAcquire(VarHandle ob2, Object obb, long base, long offset, long delta) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndAddLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), delta);
        }
        return getAndAddConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), delta);
    }

    @ForceInline
    static long getAndAddRelease(VarHandle ob2, Object obb, long base, long value) {
        return getAndAddRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndAddRelease(VarHandle ob2, Object obb, long base, long offset, long delta) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndAddLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), delta);
        }
        return getAndAddConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), delta);
    }

    @ForceInline
    static long getAndAddConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, long delta) {
        long nativeExpectedValue;
        long expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Long.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(bb2.sessionImpl(), base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue + delta)));
        return expectedValue;
    }

    @ForceInline
    static long getAndBitwiseOr(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseOr(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseOr(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseOrLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseOrConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseOrRelease(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseOrRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseOrRelease(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseOrLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseOrConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseOrAcquire(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseOrAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseOrAcquire(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseOrLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseOrConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseOrConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, long value) {
        long nativeExpectedValue;
        long expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Long.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(bb2.sessionImpl(), base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue | value)));
        return expectedValue;
    }

    @ForceInline
    static long getAndBitwiseAnd(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseAnd(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseAnd(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseAndLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseAndConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseAndRelease(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseAndRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseAndRelease(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseAndLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseAndConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseAndAcquire(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseAndAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseAndAcquire(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseAndLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseAndConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseAndConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, long value) {
        long nativeExpectedValue;
        long expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Long.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(bb2.sessionImpl(), base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue & value)));
        return expectedValue;
    }

    @ForceInline
    static long getAndBitwiseXor(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseXor(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseXor(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseXorLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseXorConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseXorRelease(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseXorRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseXorRelease(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseXorLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseXorConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseXorAcquire(VarHandle ob2, Object obb, long base, long value) {
        return getAndBitwiseXorAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static long getAndBitwiseXorAcquire(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        if (handle.f92805be == SegmentVarHandle.BE) {
            return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndBitwiseXorLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value);
        }
        return getAndBitwiseXorConvEndianWithCAS(bb2, SegmentVarHandle.offset(bb2, base, offset), value);
    }

    @ForceInline
    static long getAndBitwiseXorConvEndianWithCAS(AbstractMemorySegmentImpl bb2, long offset, long value) {
        long nativeExpectedValue;
        long expectedValue;
        Object base = bb2.unsafeGetBase();
        do {
            nativeExpectedValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongVolatile(bb2.sessionImpl(), base, offset);
            expectedValue = Long.reverseBytes(nativeExpectedValue);
        } while (!SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(bb2.sessionImpl(), base, offset, nativeExpectedValue, Long.reverseBytes(expectedValue ^ value)));
        return expectedValue;
    }
}
