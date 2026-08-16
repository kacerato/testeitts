package java.lang.invoke;

import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleSegmentAsFloatsAligned extends VarHandleSegmentAsFloats {
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsFloatsAligned.class, VarHandleSegmentAsFloats.CONSTANT_OFFSET_FORM);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsFloatsAligned.class, VarHandleSegmentAsFloats.VARIABLE_OFFSET_FORM);

    VarHandleSegmentAsFloatsAligned() {
        throw new AssertionError();
    }

    @ForceInline
    static int convEndian(boolean big, float v10) {
        int rv = Float.floatToRawIntBits(v10);
        return big == SegmentVarHandle.BE ? rv : Integer.reverseBytes(rv);
    }

    @ForceInline
    static float convEndian(boolean big, int rv) {
        return Float.intBitsToFloat(big == SegmentVarHandle.BE ? rv : Integer.reverseBytes(rv));
    }

    @ForceInline
    static float getVolatile(VarHandle ob2, Object obb, long base) {
        return getVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static float getVolatile(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, float value) {
        setVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static float getAcquire(VarHandle ob2, Object obb, long base) {
        return getAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static float getAcquire(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, float value) {
        setRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static float getOpaque(VarHandle ob2, Object obb, long base) {
        return getOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static float getOpaque(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, float value) {
        setOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, float expected, float value) {
        return compareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean compareAndSet(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndSetInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static float compareAndExchange(VarHandle ob2, Object obb, long base, float expected, float value) {
        return compareAndExchange(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static float compareAndExchange(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static float compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, float expected, float value) {
        return compareAndExchangeAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static float compareAndExchangeAcquire(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static float compareAndExchangeRelease(VarHandle ob2, Object obb, long base, float expected, float value) {
        return compareAndExchangeRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static float compareAndExchangeRelease(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.compareAndExchangeIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, float expected, float value) {
        return weakCompareAndSetPlain(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetPlain(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntPlain(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, float expected, float value) {
        return weakCompareAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSet(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, float expected, float value) {
        return weakCompareAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, float expected, float value) {
        return weakCompareAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, expected, value);
    }

    @ForceInline
    static boolean weakCompareAndSetRelease(VarHandle ob2, Object obb, long base, long offset, float expected, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.weakCompareAndSetIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, expected), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static float getAndSet(VarHandle ob2, Object obb, long base, float value) {
        return getAndSet(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static float getAndSet(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetInt(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static float getAndSetAcquire(VarHandle ob2, Object obb, long base, float value) {
        return getAndSetAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static float getAndSetAcquire(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetIntAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }

    @ForceInline
    static float getAndSetRelease(VarHandle ob2, Object obb, long base, float value) {
        return getAndSetRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static float getAndSetRelease(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getAndSetIntRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value)));
    }
}
