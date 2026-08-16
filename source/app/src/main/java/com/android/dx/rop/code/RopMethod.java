package com.android.dx.rop.code;

import com.android.dx.util.Hex;
import com.android.dx.util.IntList;

public final class RopMethod {
    private final BasicBlockList blocks;
    private IntList exitPredecessors;
    private final int firstLabel;
    private IntList[] predecessors;

    public RopMethod(BasicBlockList basicBlockList, int i10) {
        if (basicBlockList == null) {
            throw new NullPointerException("blocks == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("firstLabel < 0");
        }
        this.blocks = basicBlockList;
        this.firstLabel = i10;
        this.predecessors = null;
        this.exitPredecessors = null;
    }

    private void calcPredecessors() {
        int maxLabel = this.blocks.getMaxLabel();
        IntList[] intListArr = new IntList[maxLabel];
        IntList intList = new IntList(10);
        int size = this.blocks.size();
        for (int i10 = 0; i10 < size; i10++) {
            BasicBlock basicBlock = this.blocks.get(i10);
            int label = basicBlock.getLabel();
            IntList successors = basicBlock.getSuccessors();
            int size2 = successors.size();
            if (size2 == 0) {
                intList.add(label);
            } else {
                for (int i11 = 0; i11 < size2; i11++) {
                    int i12 = successors.get(i11);
                    IntList intList2 = intListArr[i12];
                    if (intList2 == null) {
                        intList2 = new IntList(10);
                        intListArr[i12] = intList2;
                    }
                    intList2.add(label);
                }
            }
        }
        for (int i13 = 0; i13 < maxLabel; i13++) {
            IntList intList3 = intListArr[i13];
            if (intList3 != null) {
                intList3.sort();
                intList3.setImmutable();
            }
        }
        intList.sort();
        intList.setImmutable();
        int i14 = this.firstLabel;
        if (intListArr[i14] == null) {
            intListArr[i14] = IntList.EMPTY;
        }
        this.predecessors = intListArr;
        this.exitPredecessors = intList;
    }

    public BasicBlockList getBlocks() {
        return this.blocks;
    }

    public IntList getExitPredecessors() {
        if (this.exitPredecessors == null) {
            calcPredecessors();
        }
        return this.exitPredecessors;
    }

    public int getFirstLabel() {
        return this.firstLabel;
    }

    public IntList labelToPredecessors(int i10) {
        if (this.exitPredecessors == null) {
            calcPredecessors();
        }
        IntList intList = this.predecessors[i10];
        if (intList != null) {
            return intList;
        }
        throw new RuntimeException("no such block: " + Hex.u2(i10));
    }

    public RopMethod withRegisterOffset(int i10) {
        RopMethod ropMethod = new RopMethod(this.blocks.withRegisterOffset(i10), this.firstLabel);
        IntList intList = this.exitPredecessors;
        if (intList != null) {
            ropMethod.exitPredecessors = intList;
            ropMethod.predecessors = this.predecessors;
        }
        return ropMethod;
    }
}
