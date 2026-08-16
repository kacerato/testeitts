package com.android.dx.ssa.back;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.util.IntList;
import java.util.BitSet;

public class IdenticalBlockCombiner {
    private final BasicBlockList blocks;
    private final BasicBlockList newBlocks;
    private final RopMethod ropMethod;

    public IdenticalBlockCombiner(RopMethod ropMethod) {
        this.ropMethod = ropMethod;
        BasicBlockList blocks = ropMethod.getBlocks();
        this.blocks = blocks;
        this.newBlocks = blocks.getMutableCopy();
    }

    private void combineBlocks(int i10, IntList intList) {
        int size = intList.size();
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = intList.get(i11);
            IntList labelToPredecessors = this.ropMethod.labelToPredecessors(this.blocks.labelToBlock(i12).getLabel());
            int size2 = labelToPredecessors.size();
            for (int i13 = 0; i13 < size2; i13++) {
                replaceSucc(this.newBlocks.labelToBlock(labelToPredecessors.get(i13)), i12, i10);
            }
        }
    }

    private static boolean compareInsns(BasicBlock basicBlock, BasicBlock basicBlock2) {
        return basicBlock.getInsns().contentEquals(basicBlock2.getInsns());
    }

    private void replaceSucc(BasicBlock basicBlock, int i10, int i11) {
        IntList mutableCopy = basicBlock.getSuccessors().mutableCopy();
        mutableCopy.set(mutableCopy.indexOf(i10), i11);
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        if (primarySuccessor != i10) {
            i11 = primarySuccessor;
        }
        mutableCopy.setImmutable();
        BasicBlock basicBlock2 = new BasicBlock(basicBlock.getLabel(), basicBlock.getInsns(), mutableCopy, i11);
        BasicBlockList basicBlockList = this.newBlocks;
        basicBlockList.set(basicBlockList.indexOfLabel(basicBlock.getLabel()), basicBlock2);
    }

    public RopMethod process() {
        int size = this.blocks.size();
        BitSet bitSet = new BitSet(this.blocks.getMaxLabel());
        for (int i10 = 0; i10 < size; i10++) {
            BasicBlock basicBlock = this.blocks.get(i10);
            if (!bitSet.get(basicBlock.getLabel())) {
                IntList labelToPredecessors = this.ropMethod.labelToPredecessors(basicBlock.getLabel());
                int size2 = labelToPredecessors.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    int i12 = labelToPredecessors.get(i11);
                    BasicBlock labelToBlock = this.blocks.labelToBlock(i12);
                    if (!bitSet.get(i12) && labelToBlock.getSuccessors().size() <= 1 && labelToBlock.getFirstInsn().getOpcode().getOpcode() != 55) {
                        IntList intList = new IntList();
                        for (int i13 = i11 + 1; i13 < size2; i13++) {
                            int i14 = labelToPredecessors.get(i13);
                            BasicBlock labelToBlock2 = this.blocks.labelToBlock(i14);
                            if (labelToBlock2.getSuccessors().size() == 1 && compareInsns(labelToBlock, labelToBlock2)) {
                                intList.add(i14);
                                bitSet.set(i14);
                            }
                        }
                        combineBlocks(i12, intList);
                    }
                }
            }
        }
        for (int i15 = size - 1; i15 >= 0; i15--) {
            if (bitSet.get(this.newBlocks.get(i15).getLabel())) {
                this.newBlocks.set(i15, (BasicBlock) null);
            }
        }
        this.newBlocks.shrinkToFit();
        this.newBlocks.setImmutable();
        return new RopMethod(this.newBlocks, this.ropMethod.getFirstLabel());
    }
}
