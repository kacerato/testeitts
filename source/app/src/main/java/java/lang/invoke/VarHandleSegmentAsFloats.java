package java.lang.invoke;

import java.lang.foreign.MemorySegment;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

public class VarHandleSegmentAsFloats {
    static final int NON_PLAIN_ACCESS_MIN_ALIGN_MASK = 3;
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm(VarHandleSegmentAsFloats.class, MemorySegment.class, Float.TYPE, Long.TYPE);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm(VarHandleSegmentAsFloats.class, MemorySegment.class, Float.TYPE, Long.TYPE, Long.TYPE);

    public static VarForm selectForm(long alignmentMask, boolean constantOffset) {
        return (alignmentMask & 3) != 3 ? constantOffset ? CONSTANT_OFFSET_FORM : VARIABLE_OFFSET_FORM : constantOffset ? VarHandleSegmentAsFloatsAligned.CONSTANT_OFFSET_FORM : VarHandleSegmentAsFloatsAligned.VARIABLE_OFFSET_FORM;
    }

    public VarHandleSegmentAsFloats() {
        throw new AssertionError();
    }

    @ForceInline
    static float get(VarHandle ob2, Object obb, long base) {
        return get(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static float get(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        int rawValue = SegmentVarHandle.SCOPED_MEMORY_ACCESS.getIntUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), handle.f92805be);
        return Float.intBitsToFloat(rawValue);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, float value) {
        set(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, long offset, float value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putIntUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), Float.floatToRawIntBits(value), handle.f92805be);
    }
}
