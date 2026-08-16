package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.ssa.DomFront;
import com.android.dx.util.IntIterator;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

public class SsaConverter {
    public static final boolean DEBUG = false;

    public static SsaMethod convertToSsaMethod(RopMethod ropMethod, int i10, boolean z10) {
        SsaMethod newFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i10, z10);
        edgeSplit(newFromRopMethod);
        placePhiFunctions(newFromRopMethod, LocalVariableExtractor.extract(newFromRopMethod), 0);
        new SsaRenamer(newFromRopMethod).run();
        newFromRopMethod.makeExitBlock();
        return newFromRopMethod;
    }

    private static void edgeSplit(SsaMethod ssaMethod) {
        edgeSplitPredecessors(ssaMethod);
        edgeSplitMoveExceptionsAndResults(ssaMethod);
        edgeSplitSuccessors(ssaMethod);
    }

    private static void edgeSplitMoveExceptionsAndResults(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (!ssaBasicBlock.isExitBlock() && ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getInsns().get(0).isMoveException()) {
                BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                    blocks.get(nextSetBit).insertNewSuccessor(ssaBasicBlock).getInsns().add(0, ssaBasicBlock.getInsns().get(0).mo688clone());
                }
                ssaBasicBlock.getInsns().remove(0);
            }
        }
    }

    private static void edgeSplitPredecessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (nodeNeedsUniquePredecessor(ssaBasicBlock)) {
                ssaBasicBlock.insertNewPredecessor();
            }
        }
    }

    private static void edgeSplitSuccessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            BitSet bitSet = (BitSet) ssaBasicBlock.getSuccessors().clone();
            for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                SsaBasicBlock ssaBasicBlock2 = blocks.get(nextSetBit);
                if (needsNewSuccessor(ssaBasicBlock, ssaBasicBlock2)) {
                    ssaBasicBlock.insertNewSuccessor(ssaBasicBlock2);
                }
            }
        }
    }

    private static boolean needsNewSuccessor(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        SsaInsn ssaInsn = insns.get(insns.size() - 1);
        return (ssaInsn.getResult() != null || ssaInsn.getSources().size() > 0) && ssaBasicBlock2.getPredecessors().cardinality() > 1;
    }

    private static boolean nodeNeedsUniquePredecessor(SsaBasicBlock ssaBasicBlock) {
        return ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getSuccessors().cardinality() > 1;
    }

    private static void placePhiFunctions(SsaMethod ssaMethod, LocalVariableInfo localVariableInfo, int i10) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int size = blocks.size();
        int regCount = ssaMethod.getRegCount() - i10;
        DomFront.DomInfo[] run = new DomFront(ssaMethod).run();
        BitSet[] bitSetArr = new BitSet[regCount];
        BitSet[] bitSetArr2 = new BitSet[regCount];
        for (int i11 = 0; i11 < regCount; i11++) {
            bitSetArr[i11] = new BitSet(size);
            bitSetArr2[i11] = new BitSet(size);
        }
        int size2 = blocks.size();
        for (int i12 = 0; i12 < size2; i12++) {
            Iterator<SsaInsn> it = blocks.get(i12).getInsns().iterator();
            while (it.hasNext()) {
                RegisterSpec result = it.next().getResult();
                if (result != null && result.getReg() - i10 >= 0) {
                    bitSetArr[result.getReg() - i10].set(i12);
                }
            }
        }
        for (int i13 = 0; i13 < regCount; i13++) {
            BitSet bitSet = (BitSet) bitSetArr[i13].clone();
            while (true) {
                int nextSetBit = bitSet.nextSetBit(0);
                if (nextSetBit >= 0) {
                    bitSet.clear(nextSetBit);
                    IntIterator it2 = run[nextSetBit].dominanceFrontiers.iterator();
                    while (it2.hasNext()) {
                        int next = it2.next();
                        if (!bitSetArr2[i13].get(next)) {
                            bitSetArr2[i13].set(next);
                            int i14 = i13 + i10;
                            RegisterSpec registerSpec = localVariableInfo.getStarts(next).get(i14);
                            if (registerSpec == null) {
                                blocks.get(next).addPhiInsnForReg(i14);
                            } else {
                                blocks.get(next).addPhiInsnForReg(registerSpec);
                            }
                            if (!bitSetArr[i13].get(next)) {
                                bitSet.set(next);
                            }
                        }
                    }
                }
            }
        }
    }

    public static SsaMethod testEdgeSplit(RopMethod ropMethod, int i10, boolean z10) {
        SsaMethod newFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i10, z10);
        edgeSplit(newFromRopMethod);
        return newFromRopMethod;
    }

    public static SsaMethod testPhiPlacement(RopMethod ropMethod, int i10, boolean z10) {
        SsaMethod newFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i10, z10);
        edgeSplit(newFromRopMethod);
        placePhiFunctions(newFromRopMethod, LocalVariableExtractor.extract(newFromRopMethod), 0);
        return newFromRopMethod;
    }

    public static void updateSsaMethod(SsaMethod ssaMethod, int i10) {
        placePhiFunctions(ssaMethod, LocalVariableExtractor.extract(ssaMethod), i10);
        new SsaRenamer(ssaMethod, i10).run();
    }
}
