package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;

public abstract class FlowInfo {
    public static final UnconditionalFlowInfo DEAD_END;
    public static final int FREE_TYPEVARIABLE = 48;
    public static final int NON_NULL = 4;
    public static final int NULL = 2;
    public static final int NULL_FLAG_MASK = 4;
    public static final int POTENTIALLY_NON_NULL = 32;
    public static final int POTENTIALLY_NULL = 16;
    public static final int POTENTIALLY_UNKNOWN = 8;
    public static final int REACHABLE = 0;
    public static final int UNKNOWN = 1;
    public static final int UNREACHABLE = 3;
    public static final int UNREACHABLE_BY_NULLANALYSIS = 2;
    public static final int UNREACHABLE_OR_DEAD = 1;
    public static final int UNROOTED = 64;
    public int tagBits;

    static {
        UnconditionalFlowInfo unconditionalFlowInfo = new UnconditionalFlowInfo();
        DEAD_END = unconditionalFlowInfo;
        unconditionalFlowInfo.tagBits = 3;
    }

    public static FlowInfo conditional(FlowInfo flowInfo, FlowInfo flowInfo2) {
        return flowInfo == flowInfo2 ? flowInfo : new ConditionalFlowInfo(flowInfo, flowInfo2);
    }

    public static UnconditionalFlowInfo initial(int i10) {
        UnconditionalFlowInfo unconditionalFlowInfo = new UnconditionalFlowInfo();
        unconditionalFlowInfo.maxFieldCount = i10;
        return unconditionalFlowInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int mergeNullStatus(int i10, int i11) {
        boolean z10;
        boolean z11 = false;
        if (i10 != 2) {
            if (i10 != 4) {
                if (i10 == 16) {
                    z11 = true;
                } else if (i10 != 32) {
                    z10 = false;
                    if (i11 != 2) {
                        if (i11 != 4) {
                            if (i11 != 16) {
                                if (i11 == 32) {
                                    z11 = true;
                                }
                                return z11 ? z10 ? 16 : 2 : z10 ? 4 : 1;
                            }
                            z10 = true;
                        }
                        z10 = true;
                        if (z11) {
                        }
                    }
                    z11 = true;
                    if (z11) {
                    }
                } else {
                    z11 = true;
                }
            }
            z10 = true;
            if (i11 != 2) {
            }
            z11 = true;
            if (z11) {
            }
        }
        z10 = z11;
        z11 = true;
        if (i11 != 2) {
        }
        z11 = true;
        if (z11) {
        }
    }

    public static UnconditionalFlowInfo mergedOptimizedBranches(FlowInfo flowInfo, boolean z10, FlowInfo flowInfo2, boolean z11, boolean z12) {
        return z10 ? (flowInfo == DEAD_END && z12) ? flowInfo2.setReachMode(1).unconditionalInits() : flowInfo.addPotentialInitializationsFrom(flowInfo2.nullInfoLessUnconditionalCopy()).unconditionalInits() : z11 ? (flowInfo2 == DEAD_END && z12) ? flowInfo.setReachMode(1).unconditionalInits() : flowInfo2.addPotentialInitializationsFrom(flowInfo.nullInfoLessUnconditionalCopy()).unconditionalInits() : flowInfo.mergedWith(flowInfo2.unconditionalInits());
    }

    public static UnconditionalFlowInfo mergedOptimizedBranchesIfElse(FlowInfo flowInfo, boolean z10, FlowInfo flowInfo2, boolean z11, boolean z12, FlowInfo flowInfo3, IfStatement ifStatement, boolean z13) {
        UnconditionalFlowInfo unconditionalFlowInfo;
        UnconditionalFlowInfo unconditionalFlowInfo2;
        if (z10) {
            UnconditionalFlowInfo unconditionalFlowInfo3 = DEAD_END;
            if (flowInfo != unconditionalFlowInfo3 || !z12) {
                return flowInfo.addPotentialInitializationsFrom(flowInfo2.nullInfoLessUnconditionalCopy()).unconditionalInits();
            }
            if (z13) {
                return flowInfo2.setReachMode(1).unconditionalInits();
            }
            if (ifStatement.elseStatement == null) {
                return flowInfo3.unconditionalInits();
            }
            UnconditionalFlowInfo unconditionalInits = flowInfo2.unconditionalInits();
            if (flowInfo2 == unconditionalFlowInfo3) {
                return unconditionalInits;
            }
            unconditionalInits.setReachMode(flowInfo3.reachMode());
            return unconditionalInits;
        }
        if (z11) {
            UnconditionalFlowInfo unconditionalFlowInfo4 = DEAD_END;
            if (flowInfo2 != unconditionalFlowInfo4 || !z12) {
                return flowInfo2.addPotentialInitializationsFrom(flowInfo.nullInfoLessUnconditionalCopy()).unconditionalInits();
            }
            if (z13) {
                return flowInfo.setReachMode(1).unconditionalInits();
            }
            if (ifStatement.thenStatement == null) {
                return flowInfo3.unconditionalInits();
            }
            UnconditionalFlowInfo unconditionalInits2 = flowInfo.unconditionalInits();
            if (flowInfo != unconditionalFlowInfo4) {
                unconditionalInits2.setReachMode(flowInfo3.reachMode());
            }
            return unconditionalInits2;
        }
        int i10 = flowInfo3.tagBits;
        if ((i10 & 3) == 0 && (ifStatement.bits & 128) != 0 && flowInfo != (unconditionalFlowInfo2 = DEAD_END) && flowInfo2 != unconditionalFlowInfo2) {
            UnconditionalFlowInfo unconditionalInits3 = flowInfo.addPotentialInitializationsFrom(flowInfo2.nullInfoLessUnconditionalCopy()).unconditionalInits();
            unconditionalInits3.mergeDefiniteInitsWith(flowInfo2.unconditionalCopy());
            int i11 = unconditionalInits3.tagBits;
            if ((i11 & 1) == 0 || (flowInfo2.tagBits & 3) != 2) {
                return unconditionalInits3;
            }
            unconditionalInits3.tagBits = (i11 & (-2)) | 2;
            return unconditionalInits3;
        }
        if ((i10 & 3) != 0 || (ifStatement.bits & 256) == 0 || flowInfo == (unconditionalFlowInfo = DEAD_END) || flowInfo2 == unconditionalFlowInfo) {
            return flowInfo.mergedWith(flowInfo2.unconditionalInits());
        }
        UnconditionalFlowInfo unconditionalInits4 = flowInfo2.addPotentialInitializationsFrom(flowInfo.nullInfoLessUnconditionalCopy()).unconditionalInits();
        unconditionalInits4.mergeDefiniteInitsWith(flowInfo.unconditionalCopy());
        int i12 = unconditionalInits4.tagBits;
        if ((i12 & 1) != 0 && (flowInfo.tagBits & 3) == 2) {
            unconditionalInits4.tagBits = (i12 & (-2)) | 2;
        }
        return unconditionalInits4;
    }

    public static int tagBitsToNullStatus(long j10) {
        if ((72057594037927936L & j10) != 0) {
            return 4;
        }
        return (j10 & 36028797018963968L) != 0 ? 48 : 1;
    }

    public abstract FlowInfo addInitializationsFrom(FlowInfo flowInfo);

    public abstract FlowInfo addNullInfoFrom(FlowInfo flowInfo);

    public abstract FlowInfo addPotentialInitializationsFrom(FlowInfo flowInfo);

    public FlowInfo asNegatedCondition() {
        return this;
    }

    public boolean canOnlyBeNull(LocalVariableBinding localVariableBinding) {
        return isDefinitelyNull(localVariableBinding) || isProtectedNull(localVariableBinding);
    }

    public boolean cannotBeDefinitelyNullOrNonNull(LocalVariableBinding localVariableBinding) {
        if (isPotentiallyUnknown(localVariableBinding)) {
            return true;
        }
        return isPotentiallyNonNull(localVariableBinding) && isPotentiallyNull(localVariableBinding);
    }

    public boolean cannotBeNull(LocalVariableBinding localVariableBinding) {
        return isDefinitelyNonNull(localVariableBinding) || isProtectedNonNull(localVariableBinding);
    }

    public abstract FlowInfo copy();

    public abstract boolean hasNullInfoFor(LocalVariableBinding localVariableBinding);

    public abstract FlowInfo initsWhenFalse();

    public abstract FlowInfo initsWhenTrue();

    public abstract boolean isDefinitelyAssigned(FieldBinding fieldBinding);

    public abstract boolean isDefinitelyAssigned(LocalVariableBinding localVariableBinding);

    public abstract boolean isDefinitelyNonNull(LocalVariableBinding localVariableBinding);

    public abstract boolean isDefinitelyNull(LocalVariableBinding localVariableBinding);

    public abstract boolean isDefinitelyUnknown(LocalVariableBinding localVariableBinding);

    public abstract boolean isPotentiallyAssigned(FieldBinding fieldBinding);

    public abstract boolean isPotentiallyAssigned(LocalVariableBinding localVariableBinding);

    public abstract boolean isPotentiallyNonNull(LocalVariableBinding localVariableBinding);

    public abstract boolean isPotentiallyNull(LocalVariableBinding localVariableBinding);

    public abstract boolean isPotentiallyUnknown(LocalVariableBinding localVariableBinding);

    public abstract boolean isProtectedNonNull(LocalVariableBinding localVariableBinding);

    public abstract boolean isProtectedNull(LocalVariableBinding localVariableBinding);

    public abstract void markAsComparedEqualToNonNull(LocalVariableBinding localVariableBinding);

    public abstract void markAsComparedEqualToNull(LocalVariableBinding localVariableBinding);

    public abstract void markAsDefinitelyAssigned(FieldBinding fieldBinding);

    public abstract void markAsDefinitelyAssigned(LocalVariableBinding localVariableBinding);

    public abstract void markAsDefinitelyNonNull(LocalVariableBinding localVariableBinding);

    public abstract void markAsDefinitelyNull(LocalVariableBinding localVariableBinding);

    public abstract void markAsDefinitelyUnknown(LocalVariableBinding localVariableBinding);

    public void markNullStatus(LocalVariableBinding localVariableBinding, int i10) {
        if (i10 == 1) {
            markAsDefinitelyUnknown(localVariableBinding);
            return;
        }
        if (i10 == 2) {
            markAsDefinitelyNull(localVariableBinding);
            return;
        }
        if (i10 == 4) {
            markAsDefinitelyNonNull(localVariableBinding);
            return;
        }
        resetNullInfo(localVariableBinding);
        if ((i10 & 8) != 0) {
            markPotentiallyUnknownBit(localVariableBinding);
        }
        if ((i10 & 16) != 0) {
            markPotentiallyNullBit(localVariableBinding);
        }
        if ((i10 & 32) != 0) {
            markPotentiallyNonNullBit(localVariableBinding);
        }
        if ((i10 & 56) == 0) {
            markAsDefinitelyUnknown(localVariableBinding);
        }
    }

    public abstract void markPotentiallyNonNullBit(LocalVariableBinding localVariableBinding);

    public abstract void markPotentiallyNullBit(LocalVariableBinding localVariableBinding);

    public abstract void markPotentiallyUnknownBit(LocalVariableBinding localVariableBinding);

    public abstract UnconditionalFlowInfo mergeDefiniteInitsWith(UnconditionalFlowInfo unconditionalFlowInfo);

    public abstract UnconditionalFlowInfo mergedWith(UnconditionalFlowInfo unconditionalFlowInfo);

    public abstract UnconditionalFlowInfo nullInfoLessUnconditionalCopy();

    public int nullStatus(LocalVariableBinding localVariableBinding) {
        if (isDefinitelyUnknown(localVariableBinding)) {
            return 1;
        }
        if (isDefinitelyNull(localVariableBinding)) {
            return 2;
        }
        if (isDefinitelyNonNull(localVariableBinding)) {
            return 4;
        }
        int i10 = isPotentiallyUnknown(localVariableBinding) ? 8 : 0;
        if (isPotentiallyNull(localVariableBinding)) {
            i10 |= 16;
        }
        if (isPotentiallyNonNull(localVariableBinding)) {
            i10 |= 32;
        }
        if (i10 > 0) {
            return i10;
        }
        return 1;
    }

    public int reachMode() {
        return this.tagBits & 3;
    }

    public abstract void resetAssignmentInfo(LocalVariableBinding localVariableBinding);

    public abstract void resetNullInfo(LocalVariableBinding localVariableBinding);

    public abstract FlowInfo safeInitsWhenTrue();

    public abstract FlowInfo setReachMode(int i10);

    public String toString() {
        return this == DEAD_END ? "FlowInfo.DEAD_END" : super.toString();
    }

    public abstract UnconditionalFlowInfo unconditionalCopy();

    public abstract UnconditionalFlowInfo unconditionalFieldLessCopy();

    public abstract UnconditionalFlowInfo unconditionalInits();

    public abstract UnconditionalFlowInfo unconditionalInitsWithoutSideEffect();
}
