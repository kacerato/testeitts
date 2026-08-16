package java.lang.invoke;

import java.lang.foreign.MemoryLayout;
import java.lang.foreign.MemorySegment;
import java.lang.invoke.VarHandle;
import java.util.Objects;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.misc.ScopedMemoryAccess;
import jdk.internal.vm.annotation.ForceInline;

public final class SegmentVarHandle extends VarHandle {
    static final boolean BE = MethodHandleStatics.UNSAFE.isBigEndian();
    static final ScopedMemoryAccess SCOPED_MEMORY_ACCESS = ScopedMemoryAccess.getScopedMemoryAccess();

    final boolean f92805be;
    final MemoryLayout enclosing;
    final long offset;

    public SegmentVarHandle(VarForm form, boolean be2, MemoryLayout enclosing, long offset, boolean exact) {
        super(form, exact);
        this.f92805be = be2;
        this.enclosing = enclosing;
        this.offset = offset;
    }

    @Override
    final MethodType accessModeTypeUncached(VarHandle.AccessType accessType) {
        MethodType getType = this.vform.methodType_table[0];
        if (getType.parameterCount() == 2) {
            return accessType.accessModeType(MemorySegment.class, getType.returnType(), Long.TYPE);
        }
        return accessType.accessModeType(MemorySegment.class, getType.returnType(), Long.TYPE, Long.TYPE);
    }

    @Override
    public SegmentVarHandle withInvokeExactBehavior() {
        if (hasInvokeExactBehavior()) {
            return this;
        }
        return new SegmentVarHandle(this.vform, this.f92805be, this.enclosing, this.offset, true);
    }

    @Override
    public SegmentVarHandle withInvokeBehavior() {
        if (!hasInvokeExactBehavior()) {
            return this;
        }
        return new SegmentVarHandle(this.vform, this.f92805be, this.enclosing, this.offset, false);
    }

    @ForceInline
    public static long offset(AbstractMemorySegmentImpl bb2, long base, long offset) {
        long segment_base = bb2.unsafeGetOffset();
        return segment_base + base + offset;
    }

    @ForceInline
    public AbstractMemorySegmentImpl checkSegment(Object obb, long base, boolean ro) {
        AbstractMemorySegmentImpl oo = (AbstractMemorySegmentImpl) Objects.requireNonNull(obb);
        oo.checkEnclosingLayout(base, this.enclosing, ro);
        return oo;
    }
}
