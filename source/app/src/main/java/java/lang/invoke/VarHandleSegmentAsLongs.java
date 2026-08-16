package java.lang.invoke;

import java.lang.foreign.MemorySegment;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.vm.annotation.ForceInline;

public class VarHandleSegmentAsLongs {
    static final int NON_PLAIN_ACCESS_MIN_ALIGN_MASK = 7;
    static final VarForm CONSTANT_OFFSET_FORM = new VarForm(VarHandleSegmentAsLongs.class, MemorySegment.class, Long.TYPE, Long.TYPE);
    static final VarForm VARIABLE_OFFSET_FORM = new VarForm(VarHandleSegmentAsLongs.class, MemorySegment.class, Long.TYPE, Long.TYPE, Long.TYPE);

    public static VarForm selectForm(long alignmentMask, boolean constantOffset) {
        return (alignmentMask & 7) != 7 ? constantOffset ? CONSTANT_OFFSET_FORM : VARIABLE_OFFSET_FORM : constantOffset ? VarHandleSegmentAsLongsAligned.CONSTANT_OFFSET_FORM : VarHandleSegmentAsLongsAligned.VARIABLE_OFFSET_FORM;
    }

    public VarHandleSegmentAsLongs() {
        throw new AssertionError();
    }

    @ForceInline
    static long get(VarHandle ob2, Object obb, long base) {
        return get(ob2, obb, base, ((SegmentVarHandle) ob2).offset);
    }

    @ForceInline
    static long get(VarHandle ob2, Object obb, long base, long offset) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, true);
        return SegmentVarHandle.SCOPED_MEMORY_ACCESS.getLongUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), handle.f92805be);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, long value) {
        set(ob2, obb, base, ((SegmentVarHandle) ob2).offset, value);
    }

    @ForceInline
    static void set(VarHandle ob2, Object obb, long base, long offset, long value) {
        SegmentVarHandle handle = (SegmentVarHandle) ob2;
        AbstractMemorySegmentImpl bb2 = handle.checkSegment(obb, base, false);
        SegmentVarHandle.SCOPED_MEMORY_ACCESS.putLongUnaligned(bb2.sessionImpl(), bb2.unsafeGetBase(), SegmentVarHandle.offset(bb2, base, offset), value, handle.f92805be);
    }
}
