package java.lang.invoke;

import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

final class VarHandleSegmentAsShortsAligned extends VarHandleSegmentAsShorts {
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsShortsAligned.class, VarHandleSegmentAsShorts.CONSTANT_OFFSET_FORM);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm((Class<?>) VarHandleSegmentAsShortsAligned.class, VarHandleSegmentAsShorts.VARIABLE_OFFSET_FORM);

    VarHandleSegmentAsShortsAligned() {
        throw new AssertionError();
    }

    @ForceInline
    static short convEndian(boolean big, short n10) {
        return big == SegmentVarHandle.BE ? n10 : Short.reverseBytes(n10);
    }

    @ForceInline
    static short getVolatile(VarHandle ob2, Object obb, long base) {
        return getVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static short getVolatile(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getShortVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, short value) {
        setVolatile(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setVolatile(VarHandle ob2, Object obb, long base, long offset, short value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putShortVolatile(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static short getAcquire(VarHandle ob2, Object obb, long base) {
        return getAcquire(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static short getAcquire(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getShortAcquire(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, short value) {
        setRelease(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setRelease(VarHandle ob2, Object obb, long base, long offset, short value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putShortRelease(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }

    @ForceInline
    static short getOpaque(VarHandle ob2, Object obb, long base) {
        return getOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static short getOpaque(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return convEndian(handle.f92805be, SegmentVarHandle.SCOPED_MEMORY_ACCESS.getShortOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset)));
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, short value) {
        setOpaque(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void setOpaque(VarHandle ob2, Object obb, long base, long offset, short value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putShortOpaque(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), convEndian(handle.f92805be, value));
    }
}
