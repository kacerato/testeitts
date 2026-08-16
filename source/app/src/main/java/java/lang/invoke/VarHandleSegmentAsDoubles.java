package java.lang.invoke;

import java.lang.foreign.MemorySegment;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

public class VarHandleSegmentAsDoubles {
    static final int NON_PLAIN_ACCESS_MIN_ALIGN_MASK = 7;
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm(VarHandleSegmentAsDoubles.class, MemorySegment.class, Double.TYPE, Long.TYPE);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm(VarHandleSegmentAsDoubles.class, MemorySegment.class, Double.TYPE, Long.TYPE, Long.TYPE);

    public static VarForm selectForm(long alignmentMask, boolean constantOffset) {
        return (alignmentMask & 7) != 7 ? constantOffset ? CONSTANT_OFFSET_FORM : VARIABLE_OFFSET_FORM : constantOffset ? VarHandleSegmentAsDoublesAligned.CONSTANT_OFFSET_FORM : VarHandleSegmentAsDoublesAligned.VARIABLE_OFFSET_FORM;
    }

    public VarHandleSegmentAsDoubles() {
        throw new AssertionError();
    }

    @ForceInline
    static double get(VarHandle ob2, Object obb, long base) {
        return get(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static double get(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        long rawValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), handle.f92805be);
        return Double.longBitsToDouble(rawValue);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, double value) {
        set(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, long offset, double value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), Double.doubleToRawLongBits(value), handle.f92805be);
    }
}
