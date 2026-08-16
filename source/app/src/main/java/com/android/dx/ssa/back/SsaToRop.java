package com.android.dx.ssa.back;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.Iterator;

public class SsaToRop {
    private static final boolean DEBUG = false;
    private final InterferenceGraph interference;
    private final boolean minimizeRegisters;
    private final SsaMethod ssaMeth;

    public static class PhiVisitor implements PhiInsn.Visitor {
        private final ArrayList<SsaBasicBlock> blocks;

        public PhiVisitor(ArrayList<SsaBasicBlock> arrayList) {
            this.blocks = arrayList;
        }

        @Override
        public void visitPhiInsn(PhiInsn phiInsn) {
            RegisterSpecList sources = phiInsn.getSources();
            RegisterSpec result = phiInsn.getResult();
            int size = sources.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.blocks.get(phiInsn.predBlockIndexForSourcesIndex(i10)).addMoveToEnd(result, sources.get(i10));
            }
        }
    }

    private SsaToRop(SsaMethod ssaMethod, boolean z10) {
        this.minimizeRegisters = z10;
        this.ssaMeth = ssaMethod;
        this.interference = LivenessAnalyzer.constructInterferenceGraph(ssaMethod);
    }

    private RopMethod convert() {
        FirstFitLocalCombiningAllocator firstFitLocalCombiningAllocator = new FirstFitLocalCombiningAllocator(this.ssaMeth, this.interference, this.minimizeRegisters);
        RegisterMapper allocateRegisters = firstFitLocalCombiningAllocator.allocateRegisters();
        this.ssaMeth.setBackMode();
        this.ssaMeth.mapRegisters(allocateRegisters);
        removePhiFunctions();
        if (firstFitLocalCombiningAllocator.wantsParamsMovedHigh()) {
            moveParametersToHighRegisters();
        }
        removeEmptyGotos();
        BasicBlockList convertBasicBlocks = convertBasicBlocks();
        SsaMethod ssaMethod = this.ssaMeth;
        return new IdenticalBlockCombiner(new RopMethod(convertBasicBlocks, ssaMethod.blockIndexToRopLabel(ssaMethod.getEntryBlockIndex()))).process();
    }

    private BasicBlock convertBasicBlock(SsaBasicBlock ssaBasicBlock) {
        IntList ropLabelSuccessorList = ssaBasicBlock.getRopLabelSuccessorList();
        int primarySuccessorRopLabel = ssaBasicBlock.getPrimarySuccessorRopLabel();
        SsaBasicBlock exitBlock = this.ssaMeth.getExitBlock();
        if (ropLabelSuccessorList.contains(exitBlock == null ? -1 : exitBlock.getRopLabel())) {
            if (ropLabelSuccessorList.size() > 1) {
                throw new RuntimeException("Exit predecessor must have no other successors" + Hex.u2(ssaBasicBlock.getRopLabel()));
            }
            ropLabelSuccessorList = IntList.EMPTY;
            verifyValidExitPredecessor(ssaBasicBlock);
            primarySuccessorRopLabel = -1;
        }
        ropLabelSuccessorList.setImmutable();
        return new BasicBlock(ssaBasicBlock.getRopLabel(), convertInsns(ssaBasicBlock.getInsns()), ropLabelSuccessorList, primarySuccessorRopLabel);
    }

    private BasicBlockList convertBasicBlocks() {
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        SsaBasicBlock exitBlock = this.ssaMeth.getExitBlock();
        this.ssaMeth.computeReachability();
        int i10 = 0;
        BasicBlockList basicBlockList = new BasicBlockList(this.ssaMeth.getCountReachableBlocks() - ((exitBlock == null || !exitBlock.isReachable()) ? 0 : 1));
        Iterator<SsaBasicBlock> it = blocks.iterator();
        while (it.hasNext()) {
            SsaBasicBlock next = it.next();
            if (next.isReachable() && next != exitBlock) {
                basicBlockList.set(i10, convertBasicBlock(next));
                i10++;
            }
        }
        if (exitBlock == null || exitBlock.getInsns().size() == 0) {
            return basicBlockList;
        }
        throw new RuntimeException("Exit block must have no insns when leaving SSA form");
    }

    private InsnList convertInsns(ArrayList<SsaInsn> arrayList) {
        int size = arrayList.size();
        InsnList insnList = new InsnList(size);
        for (int i10 = 0; i10 < size; i10++) {
            insnList.set(i10, arrayList.get(i10).toRopInsn());
        }
        insnList.setImmutable();
        return insnList;
    }

    public static RopMethod convertToRopMethod(SsaMethod ssaMethod, boolean z10) {
        return new SsaToRop(ssaMethod, z10).convert();
    }

    private void moveParametersToHighRegisters() {
        int paramWidth = this.ssaMeth.getParamWidth();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(this.ssaMeth.getRegCount());
        int regCount = this.ssaMeth.getRegCount();
        for (int i10 = 0; i10 < regCount; i10++) {
            if (i10 < paramWidth) {
                basicRegisterMapper.addMapping(i10, (regCount - paramWidth) + i10, 1);
            } else {
                basicRegisterMapper.addMapping(i10, i10 - paramWidth, 1);
            }
        }
        this.ssaMeth.mapRegisters(basicRegisterMapper);
    }

    private void removeEmptyGotos() {
        final ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        this.ssaMeth.forEachBlockDepthFirst(false, new SsaBasicBlock.Visitor() {
            @Override
            public void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
                ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
                if (insns.size() == 1 && insns.get(0).getOpcode() == Rops.GOTO) {
                    BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                    for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                        ((SsaBasicBlock) blocks.get(nextSetBit)).replaceSuccessor(ssaBasicBlock.getIndex(), ssaBasicBlock.getPrimarySuccessorIndex());
                    }
                }
            }
        });
    }

    private void removePhiFunctions() {
        ArrayList<SsaBasicBlock> blocks = this.ssaMeth.getBlocks();
        Iterator<SsaBasicBlock> it = blocks.iterator();
        while (it.hasNext()) {
            SsaBasicBlock next = it.next();
            next.forEachPhiInsn(new PhiVisitor(blocks));
            next.removeAllPhiInsns();
        }
        Iterator<SsaBasicBlock> it2 = blocks.iterator();
        while (it2.hasNext()) {
            it2.next().scheduleMovesFromPhis();
        }
    }

    private void verifyValidExitPredecessor(SsaBasicBlock ssaBasicBlock) {
        Rop opcode = ssaBasicBlock.getInsns().get(r3.size() - 1).getOpcode();
        if (opcode.getBranchingness() != 2 && opcode != Rops.THROW) {
            throw new RuntimeException("Exit predecessor must end in valid exit statement.");
        }
    }

    public int[] getRegistersByFrequency() {
        int regCount = this.ssaMeth.getRegCount();
        Integer[] numArr = new Integer[regCount];
        for (int i10 = 0; i10 < regCount; i10++) {
            numArr[i10] = Integer.valueOf(i10);
        }
        Arrays.sort(numArr, new Comparator<Integer>() {
            @Override
            public int compare(Integer num, Integer num2) {
                return SsaToRop.this.ssaMeth.getUseListForRegister(num2.intValue()).size() - SsaToRop.this.ssaMeth.getUseListForRegister(num.intValue()).size();
            }
        });
        int[] iArr = new int[regCount];
        for (int i11 = 0; i11 < regCount; i11++) {
            iArr[i11] = numArr[i11].intValue();
        }
        return iArr;
    }
}
