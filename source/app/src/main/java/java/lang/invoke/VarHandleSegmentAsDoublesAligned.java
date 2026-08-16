package java.lang.invoke;

import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

public final class VarHandleSegmentAsDoublesAligned extends VarHandleSegmentAsDoubles {
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsDoublesAligned.class, VarHandleSegmentAsDoubles.CONSTANT_OFFSET_FORM);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsDoublesAligned.class, VarHandleSegmentAsDoubles.VARIABLE_OFFSET_FORM);

    VarHandleSegmentAsDoublesAligned() {
        throw new AssertionError();
    }

    @ForceInline
    static long convEndian(boolean big, double v10) {
        long rv = Double.doubleToRawLongBits(v10);
        return big == SegmentVarHandle.BE ? rv : Long.reverseBytes(rv);
    }

    @ForceInline
    static double convEndian(boolean big, long rv) {
        return Double.longBitsToDouble(big == SegmentVarHandle.BE ? rv : Long.reverseBytes(rv));
    }

    @ForceInline
    static double getVolatile(VarHandle ob2, Object obb, long base) {
        return getVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static double getVolatile(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, double value) {
        setVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static double getAcquire(VarHandle ob2, Object obb, long base) {
        return getAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static double getAcquire(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, double value) {
        setRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static double getOpaque(VarHandle ob2, Object obb, long base) {
        return getOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static double getOpaque(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, double value) {
        setOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, double expected, double value) {
        return compareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndSetLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static double compareAndExchange(VarHandle ob2, Object obb, long base, double expected, double value) {
        return compareAndExchange(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static double compareAndExchange(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static double compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, double expected, double value) {
        return compareAndExchangeAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static double compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static double compareAndExchangeRelease(VarHandle ob2, Object obb, long base, double expected, double value) {
        return compareAndExchangeRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static double compareAndExchangeRelease(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, double expected, double value) {
        return weakCompareAndSetPlain(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongPlain(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, double expected, double value) {
        return weakCompareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, double expected, double value) {
        return weakCompareAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, double expected, double value) {
        return weakCompareAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, long offset, double expected, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static double getAndSet(VarHandle ob2, Object obb, long base, double value) {
        return getAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static double getAndSet(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetLong(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static double getAndSetAcquire(VarHandle ob2, Object obb, long base, double value) {
        return getAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static double getAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetLongAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static double getAndSetRelease(VarHandle ob2, Object obb, long base, double value) {
        return getAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static double getAndSetRelease(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetLongRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }
}
