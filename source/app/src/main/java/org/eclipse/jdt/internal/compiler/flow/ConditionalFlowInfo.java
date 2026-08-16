package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;

public class ConditionalFlowInfo extends FlowInfo {
    public FlowInfo initsWhenFalse;
    public FlowInfo initsWhenTrue;

    public ConditionalFlowInfo(FlowInfo flowInfo, FlowInfo flowInfo2) {
        this.initsWhenTrue = flowInfo;
        this.initsWhenFalse = flowInfo2;
        this.tagBits = flowInfo.tagBits & flowInfo2.tagBits & 3;
    }

    @Override
    public FlowInfo addInitializationsFrom(FlowInfo flowInfo) {
        this.initsWhenTrue.addInitializationsFrom(flowInfo);
        this.initsWhenFalse.addInitializationsFrom(flowInfo);
        return this;
    }

    @Override
    public FlowInfo addNullInfoFrom(FlowInfo flowInfo) {
        this.initsWhenTrue.addNullInfoFrom(flowInfo);
        this.initsWhenFalse.addNullInfoFrom(flowInfo);
        return this;
    }

    @Override
    public FlowInfo addPotentialInitializationsFrom(FlowInfo flowInfo) {
        this.initsWhenTrue.addPotentialInitializationsFrom(flowInfo);
        this.initsWhenFalse.addPotentialInitializationsFrom(flowInfo);
        return this;
    }

    @Override
    public FlowInfo asNegatedCondition() {
        FlowInfo flowInfo = this.initsWhenTrue;
        this.initsWhenTrue = this.initsWhenFalse;
        this.initsWhenFalse = flowInfo;
        return this;
    }

    @Override
    public FlowInfo copy() {
        return new ConditionalFlowInfo(this.initsWhenTrue.copy(), this.initsWhenFalse.copy());
    }

    @Override
    public boolean hasNullInfoFor(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.hasNullInfoFor(localVariableBinding) || this.initsWhenFalse.hasNullInfoFor(localVariableBinding);
    }

    @Override
    public FlowInfo initsWhenFalse() {
        return this.initsWhenFalse;
    }

    @Override
    public FlowInfo initsWhenTrue() {
        return this.initsWhenTrue;
    }

    @Override
    public boolean isDefinitelyAssigned(FieldBinding fieldBinding) {
        return this.initsWhenTrue.isDefinitelyAssigned(fieldBinding) && this.initsWhenFalse.isDefinitelyAssigned(fieldBinding);
    }

    @Override
    public boolean isDefinitelyNonNull(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isDefinitelyNonNull(localVariableBinding) && this.initsWhenFalse.isDefinitelyNonNull(localVariableBinding);
    }

    @Override
    public boolean isDefinitelyNull(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isDefinitelyNull(localVariableBinding) && this.initsWhenFalse.isDefinitelyNull(localVariableBinding);
    }

    @Override
    public boolean isDefinitelyUnknown(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isDefinitelyUnknown(localVariableBinding) && this.initsWhenFalse.isDefinitelyUnknown(localVariableBinding);
    }

    @Override
    public boolean isPotentiallyAssigned(FieldBinding fieldBinding) {
        return this.initsWhenTrue.isPotentiallyAssigned(fieldBinding) || this.initsWhenFalse.isPotentiallyAssigned(fieldBinding);
    }

    @Override
    public boolean isPotentiallyNonNull(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isPotentiallyNonNull(localVariableBinding) || this.initsWhenFalse.isPotentiallyNonNull(localVariableBinding);
    }

    @Override
    public boolean isPotentiallyNull(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isPotentiallyNull(localVariableBinding) || this.initsWhenFalse.isPotentiallyNull(localVariableBinding);
    }

    @Override
    public boolean isPotentiallyUnknown(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isPotentiallyUnknown(localVariableBinding) || this.initsWhenFalse.isPotentiallyUnknown(localVariableBinding);
    }

    @Override
    public boolean isProtectedNonNull(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isProtectedNonNull(localVariableBinding) && this.initsWhenFalse.isProtectedNonNull(localVariableBinding);
    }

    @Override
    public boolean isProtectedNull(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isProtectedNull(localVariableBinding) && this.initsWhenFalse.isProtectedNull(localVariableBinding);
    }

    @Override
    public void markAsComparedEqualToNonNull(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markAsComparedEqualToNonNull(localVariableBinding);
        this.initsWhenFalse.markAsComparedEqualToNonNull(localVariableBinding);
    }

    @Override
    public void markAsComparedEqualToNull(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markAsComparedEqualToNull(localVariableBinding);
        this.initsWhenFalse.markAsComparedEqualToNull(localVariableBinding);
    }

    @Override
    public void markAsDefinitelyAssigned(FieldBinding fieldBinding) {
        this.initsWhenTrue.markAsDefinitelyAssigned(fieldBinding);
        this.initsWhenFalse.markAsDefinitelyAssigned(fieldBinding);
    }

    @Override
    public void markAsDefinitelyNonNull(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markAsDefinitelyNonNull(localVariableBinding);
        this.initsWhenFalse.markAsDefinitelyNonNull(localVariableBinding);
    }

    @Override
    public void markAsDefinitelyNull(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markAsDefinitelyNull(localVariableBinding);
        this.initsWhenFalse.markAsDefinitelyNull(localVariableBinding);
    }

    @Override
    public void markAsDefinitelyUnknown(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markAsDefinitelyUnknown(localVariableBinding);
        this.initsWhenFalse.markAsDefinitelyUnknown(localVariableBinding);
    }

    @Override
    public void markPotentiallyNonNullBit(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markPotentiallyNonNullBit(localVariableBinding);
        this.initsWhenFalse.markPotentiallyNonNullBit(localVariableBinding);
    }

    @Override
    public void markPotentiallyNullBit(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markPotentiallyNullBit(localVariableBinding);
        this.initsWhenFalse.markPotentiallyNullBit(localVariableBinding);
    }

    @Override
    public void markPotentiallyUnknownBit(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markPotentiallyUnknownBit(localVariableBinding);
        this.initsWhenFalse.markPotentiallyUnknownBit(localVariableBinding);
    }

    @Override
    public UnconditionalFlowInfo mergeDefiniteInitsWith(UnconditionalFlowInfo unconditionalFlowInfo) {
        return unconditionalInits().mergeDefiniteInitsWith(unconditionalFlowInfo);
    }

    @Override
    public UnconditionalFlowInfo mergedWith(UnconditionalFlowInfo unconditionalFlowInfo) {
        return unconditionalInits().mergedWith(unconditionalFlowInfo);
    }

    @Override
    public UnconditionalFlowInfo nullInfoLessUnconditionalCopy() {
        return unconditionalInitsWithoutSideEffect().nullInfoLessUnconditionalCopy();
    }

    @Override
    public void resetAssignmentInfo(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.resetAssignmentInfo(localVariableBinding);
        this.initsWhenFalse.resetAssignmentInfo(localVariableBinding);
    }

    @Override
    public void resetNullInfo(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.resetNullInfo(localVariableBinding);
        this.initsWhenFalse.resetNullInfo(localVariableBinding);
    }

    @Override
    public FlowInfo safeInitsWhenTrue() {
        return this.initsWhenTrue;
    }

    @Override
    public FlowInfo setReachMode(int i10) {
        if (i10 == 0) {
            this.tagBits &= -4;
        } else {
            this.tagBits |= i10;
        }
        this.initsWhenTrue.setReachMode(i10);
        this.initsWhenFalse.setReachMode(i10);
        return this;
    }

    @Override
    public String toString() {
        return "FlowInfo<true: " + this.initsWhenTrue.toString() + ", false: " + this.initsWhenFalse.toString() + ">";
    }

    @Override
    public UnconditionalFlowInfo unconditionalCopy() {
        return this.initsWhenTrue.unconditionalCopy().mergedWith(this.initsWhenFalse.unconditionalInits());
    }

    @Override
    public UnconditionalFlowInfo unconditionalFieldLessCopy() {
        return this.initsWhenTrue.unconditionalFieldLessCopy().mergedWith(this.initsWhenFalse.unconditionalFieldLessCopy());
    }

    @Override
    public UnconditionalFlowInfo unconditionalInits() {
        return this.initsWhenTrue.unconditionalInits().mergedWith(this.initsWhenFalse.unconditionalInits());
    }

    @Override
    public UnconditionalFlowInfo unconditionalInitsWithoutSideEffect() {
        return this.initsWhenTrue.unconditionalCopy().mergedWith(this.initsWhenFalse.unconditionalInits());
    }

    @Override
    public boolean isDefinitelyAssigned(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isDefinitelyAssigned(localVariableBinding) && this.initsWhenFalse.isDefinitelyAssigned(localVariableBinding);
    }

    @Override
    public boolean isPotentiallyAssigned(LocalVariableBinding localVariableBinding) {
        return this.initsWhenTrue.isPotentiallyAssigned(localVariableBinding) || this.initsWhenFalse.isPotentiallyAssigned(localVariableBinding);
    }

    @Override
    public void markAsDefinitelyAssigned(LocalVariableBinding localVariableBinding) {
        this.initsWhenTrue.markAsDefinitelyAssigned(localVariableBinding);
        this.initsWhenFalse.markAsDefinitelyAssigned(localVariableBinding);
    }
}
