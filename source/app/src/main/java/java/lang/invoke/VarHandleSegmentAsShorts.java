package java.lang.invoke;

import java.lang.foreign.MemorySegment;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

public class VarHandleSegmentAsShorts {
    static final int NON_PLAIN_ACCESS_MIN_ALIGN_MASK = 1;
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm(VarHandleSegmentAsShorts.class, MemorySegment.class, Short.TYPE, Long.TYPE);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm(VarHandleSegmentAsShorts.class, MemorySegment.class, Short.TYPE, Long.TYPE, Long.TYPE);

    public static VarForm selectForm(long alignmentMask, boolean constantOffset) {
        return (alignmentMask & 1) != 1 ? constantOffset ? CONSTANT_OFFSET_FORM : VARIABLE_OFFSET_FORM : constantOffset ? VarHandleSegmentAsShortsAligned.CONSTANT_OFFSET_FORM : VarHandleSegmentAsShortsAligned.VARIABLE_OFFSET_FORM;
    }

    public VarHandleSegmentAsShorts() {
        throw new AssertionError();
    }

    @ForceInline
    static short get(VarHandle ob2, Object obb, long base) {
        return get(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static short get(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getShortUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), handle.f92805be);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, short value) {
        set(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, long offset, short value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putShortUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value, handle.f92805be);
    }
}
