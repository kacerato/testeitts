package com.android.dx.rop.code;

import com.android.dx.util.Bits;
import com.android.dx.util.IntList;

public final class LocalVariableExtractor {
    private final BasicBlockList blocks;
    private final RopMethod method;
    private final LocalVariableInfo resultInfo;
    private final int[] workSet;

    private LocalVariableExtractor(RopMethod ropMethod) {
        if (ropMethod == null) {
            throw new NullPointerException("method == null");
        }
        BasicBlockList blocks = ropMethod.getBlocks();
        int maxLabel = blocks.getMaxLabel();
        this.method = ropMethod;
        this.blocks = blocks;
        this.resultInfo = new LocalVariableInfo(ropMethod);
        this.workSet = Bits.makeBitSet(maxLabel);
    }

    private LocalVariableInfo doit() {
        int firstLabel = this.method.getFirstLabel();
        while (firstLabel >= 0) {
            Bits.clear(this.workSet, firstLabel);
            processBlock(firstLabel);
            firstLabel = Bits.findFirst(this.workSet, 0);
        }
        this.resultInfo.setImmutable();
        return this.resultInfo;
    }

    public static LocalVariableInfo extract(RopMethod ropMethod) {
        return new LocalVariableExtractor(ropMethod).doit();
    }

    private void processBlock(int i10) {
        RegisterSpecSet mutableCopyOfStarts = this.resultInfo.mutableCopyOfStarts(i10);
        BasicBlock labelToBlock = this.blocks.labelToBlock(i10);
        InsnList insns = labelToBlock.getInsns();
        int size = insns.size();
        boolean z10 = labelToBlock.hasExceptionHandlers() && insns.getLast().getResult() != null;
        int i11 = size - 1;
        RegisterSpecSet registerSpecSet = mutableCopyOfStarts;
        for (int i12 = 0; i12 < size; i12++) {
            if (z10 && i12 == i11) {
                registerSpecSet.setImmutable();
                registerSpecSet = registerSpecSet.mutableCopy();
            }
            Insn insn = insns.get(i12);
            RegisterSpec localAssignment = insn.getLocalAssignment();
            if (localAssignment == null) {
                RegisterSpec result = insn.getResult();
                if (result != null && registerSpecSet.get(result.getReg()) != null) {
                    registerSpecSet.remove(registerSpecSet.get(result.getReg()));
                }
            } else {
                RegisterSpec withSimpleType = localAssignment.withSimpleType();
                if (!withSimpleType.equals(registerSpecSet.get(withSimpleType))) {
                    RegisterSpec localItemToSpec = registerSpecSet.localItemToSpec(withSimpleType.getLocalItem());
                    if (localItemToSpec != null && localItemToSpec.getReg() != withSimpleType.getReg()) {
                        registerSpecSet.remove(localItemToSpec);
                    }
                    this.resultInfo.addAssignment(insn, withSimpleType);
                    registerSpecSet.put(withSimpleType);
                }
            }
        }
        registerSpecSet.setImmutable();
        IntList successors = labelToBlock.getSuccessors();
        int size2 = successors.size();
        int primarySuccessor = labelToBlock.getPrimarySuccessor();
        for (int i13 = 0; i13 < size2; i13++) {
            int i14 = successors.get(i13);
            if (this.resultInfo.mergeStarts(i14, i14 == primarySuccessor ? registerSpecSet : mutableCopyOfStarts)) {
                Bits.set(this.workSet, i14);
            }
        }
    }
}
