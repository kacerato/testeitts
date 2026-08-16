package com.android.dx.ssa;

import b3.s;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.IntSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public final class SsaBasicBlock {
    public static final Comparator<SsaBasicBlock> LABEL_COMPARATOR = new LabelComparator();
    private int index;
    private IntSet liveIn;
    private IntSet liveOut;
    private SsaMethod parent;
    private BitSet predecessors;
    private int ropLabel;
    private BitSet successors;
    private int primarySuccessor = -1;
    private int movesFromPhisAtEnd = 0;
    private int movesFromPhisAtBeginning = 0;
    private int reachable = -1;
    private ArrayList<SsaInsn> insns = new ArrayList<>();
    private IntList successorList = new IntList();
    private final ArrayList<SsaBasicBlock> domChildren = new ArrayList<>();

    public static final class LabelComparator implements Comparator<SsaBasicBlock> {
        @Override
        public int compare(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
            int i10 = ssaBasicBlock.ropLabel;
            int i11 = ssaBasicBlock2.ropLabel;
            if (i10 < i11) {
                return -1;
            }
            return i10 > i11 ? 1 : 0;
        }
    }

    public interface Visitor {
        void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2);
    }

    public SsaBasicBlock(int i10, int i11, SsaMethod ssaMethod) {
        this.parent = ssaMethod;
        this.index = i10;
        this.ropLabel = i11;
        this.predecessors = new BitSet(ssaMethod.getBlocks().size());
        this.successors = new BitSet(ssaMethod.getBlocks().size());
    }

    private static boolean checkRegUsed(BitSet bitSet, RegisterSpec registerSpec) {
        int reg = registerSpec.getReg();
        int category = registerSpec.getCategory();
        if (bitSet.get(reg)) {
            return true;
        }
        return category == 2 && bitSet.get(reg + 1);
    }

    private int getCountPhiInsns() {
        int size = this.insns.size();
        int i10 = 0;
        while (i10 < size && (this.insns.get(i10) instanceof PhiInsn)) {
            i10++;
        }
        return i10;
    }

    public static SsaBasicBlock newFromRop(RopMethod ropMethod, int i10, SsaMethod ssaMethod) {
        BasicBlockList blocks = ropMethod.getBlocks();
        BasicBlock basicBlock = blocks.get(i10);
        SsaBasicBlock ssaBasicBlock = new SsaBasicBlock(i10, basicBlock.getLabel(), ssaMethod);
        InsnList insns = basicBlock.getInsns();
        ssaBasicBlock.insns.ensureCapacity(insns.size());
        int size = insns.size();
        for (int i11 = 0; i11 < size; i11++) {
            ssaBasicBlock.insns.add(new NormalSsaInsn(insns.get(i11), ssaBasicBlock));
        }
        ssaBasicBlock.predecessors = SsaMethod.bitSetFromLabelList(blocks, ropMethod.labelToPredecessors(basicBlock.getLabel()));
        ssaBasicBlock.successors = SsaMethod.bitSetFromLabelList(blocks, basicBlock.getSuccessors());
        IntList indexListFromLabelList = SsaMethod.indexListFromLabelList(blocks, basicBlock.getSuccessors());
        ssaBasicBlock.successorList = indexListFromLabelList;
        if (indexListFromLabelList.size() != 0) {
            int primarySuccessor = basicBlock.getPrimarySuccessor();
            ssaBasicBlock.primarySuccessor = primarySuccessor < 0 ? -1 : blocks.indexOfLabel(primarySuccessor);
        }
        return ssaBasicBlock;
    }

    private void scheduleUseBeforeAssigned(List<SsaInsn> list) {
        SsaInsn ssaInsn;
        BitSet bitSet = new BitSet(this.parent.getRegCount());
        BitSet bitSet2 = new BitSet(this.parent.getRegCount());
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            for (int i11 = i10; i11 < size; i11++) {
                setRegsUsed(bitSet, list.get(i11).getSources().get(0));
                setRegsUsed(bitSet2, list.get(i11).getResult());
            }
            int i12 = i10;
            int i13 = i12;
            while (i12 < size) {
                if (!checkRegUsed(bitSet, list.get(i12).getResult())) {
                    Collections.swap(list, i12, i13);
                    i13++;
                }
                i12++;
            }
            if (i10 == i13) {
                int i14 = i13;
                while (true) {
                    if (i14 >= size) {
                        ssaInsn = null;
                        break;
                    }
                    ssaInsn = list.get(i14);
                    if (checkRegUsed(bitSet, ssaInsn.getResult()) && checkRegUsed(bitSet2, ssaInsn.getSources().get(0))) {
                        Collections.swap(list, i13, i14);
                        break;
                    }
                    i14++;
                }
                RegisterSpec result = ssaInsn.getResult();
                RegisterSpec withReg = result.withReg(this.parent.borrowSpareRegister(result.getCategory()));
                Rop opMove = Rops.opMove(result.getType());
                SourcePosition sourcePosition = SourcePosition.NO_INFO;
                NormalSsaInsn normalSsaInsn = new NormalSsaInsn(new PlainInsn(opMove, sourcePosition, withReg, ssaInsn.getSources()), this);
                int i15 = i13 + 1;
                list.add(i13, normalSsaInsn);
                list.set(i15, new NormalSsaInsn(new PlainInsn(Rops.opMove(result.getType()), sourcePosition, result, RegisterSpecList.make(withReg)), this));
                size = list.size();
                i10 = i15;
            } else {
                i10 = i13;
            }
            bitSet.clear();
            bitSet2.clear();
        }
    }

    private static void setRegsUsed(BitSet bitSet, RegisterSpec registerSpec) {
        bitSet.set(registerSpec.getReg());
        if (registerSpec.getCategory() > 1) {
            bitSet.set(registerSpec.getReg() + 1);
        }
    }

    public void addDomChild(SsaBasicBlock ssaBasicBlock) {
        this.domChildren.add(ssaBasicBlock);
    }

    public void addInsnToHead(Insn insn) {
        SsaInsn makeFromRop = SsaInsn.makeFromRop(insn, this);
        this.insns.add(getCountPhiInsns(), makeFromRop);
        this.parent.onInsnAdded(makeFromRop);
    }

    public void addLiveIn(int i10) {
        if (this.liveIn == null) {
            this.liveIn = SetFactory.makeLivenessSet(this.parent.getRegCount());
        }
        this.liveIn.add(i10);
    }

    public void addLiveOut(int i10) {
        if (this.liveOut == null) {
            this.liveOut = SetFactory.makeLivenessSet(this.parent.getRegCount());
        }
        this.liveOut.add(i10);
    }

    public void addMoveToBeginning(RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        if (registerSpec.getReg() == registerSpec2.getReg()) {
            return;
        }
        this.insns.add(getCountPhiInsns(), new NormalSsaInsn(new PlainInsn(Rops.opMove(registerSpec.getType()), SourcePosition.NO_INFO, registerSpec, RegisterSpecList.make(registerSpec2)), this));
        this.movesFromPhisAtBeginning++;
    }

    public void addMoveToEnd(RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        if (registerSpec.getReg() == registerSpec2.getReg()) {
            return;
        }
        NormalSsaInsn normalSsaInsn = (NormalSsaInsn) this.insns.get(r0.size() - 1);
        if (normalSsaInsn.getResult() != null || normalSsaInsn.getSources().size() > 0) {
            int nextSetBit = this.successors.nextSetBit(0);
            while (nextSetBit >= 0) {
                this.parent.getBlocks().get(nextSetBit).addMoveToBeginning(registerSpec, registerSpec2);
                nextSetBit = this.successors.nextSetBit(nextSetBit + 1);
            }
            return;
        }
        NormalSsaInsn normalSsaInsn2 = new NormalSsaInsn(new PlainInsn(Rops.opMove(registerSpec.getType()), SourcePosition.NO_INFO, registerSpec, RegisterSpecList.make(registerSpec2)), this);
        this.insns.add(r5.size() - 1, normalSsaInsn2);
        this.movesFromPhisAtEnd++;
    }

    public void addPhiInsnForReg(int i10) {
        this.insns.add(0, new PhiInsn(i10, this));
    }

    public void exitBlockFixup(SsaBasicBlock ssaBasicBlock) {
        if (this != ssaBasicBlock && this.successorList.size() == 0) {
            this.successors.set(ssaBasicBlock.index);
            this.successorList.add(ssaBasicBlock.index);
            this.primarySuccessor = ssaBasicBlock.index;
            ssaBasicBlock.predecessors.set(this.index);
        }
    }

    public void forEachInsn(SsaInsn.Visitor visitor) {
        int size = this.insns.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.insns.get(i10).accept(visitor);
        }
    }

    public void forEachPhiInsn(PhiInsn.Visitor visitor) {
        int size = this.insns.size();
        for (int i10 = 0; i10 < size; i10++) {
            SsaInsn ssaInsn = this.insns.get(i10);
            if (!(ssaInsn instanceof PhiInsn)) {
                return;
            }
            visitor.visitPhiInsn((PhiInsn) ssaInsn);
        }
    }

    public ArrayList<SsaBasicBlock> getDomChildren() {
        return this.domChildren;
    }

    public int getIndex() {
        return this.index;
    }

    public ArrayList<SsaInsn> getInsns() {
        return this.insns;
    }

    public IntSet getLiveInRegs() {
        if (this.liveIn == null) {
            this.liveIn = SetFactory.makeLivenessSet(this.parent.getRegCount());
        }
        return this.liveIn;
    }

    public IntSet getLiveOutRegs() {
        if (this.liveOut == null) {
            this.liveOut = SetFactory.makeLivenessSet(this.parent.getRegCount());
        }
        return this.liveOut;
    }

    public SsaMethod getParent() {
        return this.parent;
    }

    public List<SsaInsn> getPhiInsns() {
        return this.insns.subList(0, getCountPhiInsns());
    }

    public BitSet getPredecessors() {
        return this.predecessors;
    }

    public SsaBasicBlock getPrimarySuccessor() {
        if (this.primarySuccessor < 0) {
            return null;
        }
        return this.parent.getBlocks().get(this.primarySuccessor);
    }

    public int getPrimarySuccessorIndex() {
        return this.primarySuccessor;
    }

    public int getPrimarySuccessorRopLabel() {
        return this.parent.blockIndexToRopLabel(this.primarySuccessor);
    }

    public int getRopLabel() {
        return this.ropLabel;
    }

    public String getRopLabelString() {
        return Hex.u2(this.ropLabel);
    }

    public IntList getRopLabelSuccessorList() {
        IntList intList = new IntList(this.successorList.size());
        int size = this.successorList.size();
        for (int i10 = 0; i10 < size; i10++) {
            intList.add(this.parent.blockIndexToRopLabel(this.successorList.get(i10)));
        }
        return intList;
    }

    public IntList getSuccessorList() {
        return this.successorList;
    }

    public BitSet getSuccessors() {
        return this.successors;
    }

    public SsaBasicBlock insertNewPredecessor() {
        SsaBasicBlock makeNewGotoBlock = this.parent.makeNewGotoBlock();
        makeNewGotoBlock.predecessors = this.predecessors;
        makeNewGotoBlock.successors.set(this.index);
        makeNewGotoBlock.successorList.add(this.index);
        makeNewGotoBlock.primarySuccessor = this.index;
        BitSet bitSet = new BitSet(this.parent.getBlocks().size());
        this.predecessors = bitSet;
        bitSet.set(makeNewGotoBlock.index);
        for (int nextSetBit = makeNewGotoBlock.predecessors.nextSetBit(0); nextSetBit >= 0; nextSetBit = makeNewGotoBlock.predecessors.nextSetBit(nextSetBit + 1)) {
            this.parent.getBlocks().get(nextSetBit).replaceSuccessor(this.index, makeNewGotoBlock.index);
        }
        return makeNewGotoBlock;
    }

    public SsaBasicBlock insertNewSuccessor(SsaBasicBlock ssaBasicBlock) {
        SsaBasicBlock makeNewGotoBlock = this.parent.makeNewGotoBlock();
        if (!this.successors.get(ssaBasicBlock.index)) {
            throw new RuntimeException("Block " + ssaBasicBlock.getRopLabelString() + " not successor of " + getRopLabelString());
        }
        makeNewGotoBlock.predecessors.set(this.index);
        makeNewGotoBlock.successors.set(ssaBasicBlock.index);
        makeNewGotoBlock.successorList.add(ssaBasicBlock.index);
        makeNewGotoBlock.primarySuccessor = ssaBasicBlock.index;
        for (int size = this.successorList.size() - 1; size >= 0; size--) {
            if (this.successorList.get(size) == ssaBasicBlock.index) {
                this.successorList.set(size, makeNewGotoBlock.index);
            }
        }
        int i10 = this.primarySuccessor;
        int i11 = ssaBasicBlock.index;
        if (i10 == i11) {
            this.primarySuccessor = makeNewGotoBlock.index;
        }
        this.successors.clear(i11);
        this.successors.set(makeNewGotoBlock.index);
        ssaBasicBlock.predecessors.set(makeNewGotoBlock.index);
        ssaBasicBlock.predecessors.set(this.index, this.successors.get(ssaBasicBlock.index));
        return makeNewGotoBlock;
    }

    public boolean isExitBlock() {
        return this.index == this.parent.getExitBlockIndex();
    }

    public boolean isReachable() {
        if (this.reachable == -1) {
            this.parent.computeReachability();
        }
        return this.reachable == 1;
    }

    public void removeAllPhiInsns() {
        this.insns.subList(0, getCountPhiInsns()).clear();
    }

    public void removeSuccessor(int i10) {
        int i11 = 0;
        for (int size = this.successorList.size() - 1; size >= 0; size--) {
            if (this.successorList.get(size) == i10) {
                i11 = size;
            } else {
                this.primarySuccessor = this.successorList.get(size);
            }
        }
        this.successorList.removeIndex(i11);
        this.successors.clear(i10);
        this.parent.getBlocks().get(i10).predecessors.clear(this.index);
    }

    public void replaceLastInsn(Insn insn) {
        if (insn.getOpcode().getBranchingness() == 1) {
            throw new IllegalArgumentException("last insn must branch");
        }
        ArrayList<SsaInsn> arrayList = this.insns;
        SsaInsn ssaInsn = arrayList.get(arrayList.size() - 1);
        SsaInsn makeFromRop = SsaInsn.makeFromRop(insn, this);
        ArrayList<SsaInsn> arrayList2 = this.insns;
        arrayList2.set(arrayList2.size() - 1, makeFromRop);
        this.parent.onInsnRemoved(ssaInsn);
        this.parent.onInsnAdded(makeFromRop);
    }

    public void replaceSuccessor(int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        this.successors.set(i11);
        if (this.primarySuccessor == i10) {
            this.primarySuccessor = i11;
        }
        for (int size = this.successorList.size() - 1; size >= 0; size--) {
            if (this.successorList.get(size) == i10) {
                this.successorList.set(size, i11);
            }
        }
        this.successors.clear(i10);
        this.parent.getBlocks().get(i11).predecessors.set(this.index);
        this.parent.getBlocks().get(i10).predecessors.clear(this.index);
    }

    public void scheduleMovesFromPhis() {
        int i10 = this.movesFromPhisAtBeginning;
        if (i10 > 1) {
            scheduleUseBeforeAssigned(this.insns.subList(0, i10));
            if (this.insns.get(this.movesFromPhisAtBeginning).isMoveException()) {
                throw new RuntimeException("Unexpected: moves from phis before move-exception");
            }
        }
        if (this.movesFromPhisAtEnd > 1) {
            ArrayList<SsaInsn> arrayList = this.insns;
            scheduleUseBeforeAssigned(arrayList.subList((arrayList.size() - this.movesFromPhisAtEnd) - 1, this.insns.size() - 1));
        }
        this.parent.returnSpareRegisters();
    }

    public void setReachable(int i10) {
        this.reachable = i10;
    }

    public String toString() {
        return "{" + this.index + s.f32937c + Hex.u2(this.ropLabel) + JavaElement.JEM_ANNOTATION;
    }

    public void addPhiInsnForReg(RegisterSpec registerSpec) {
        this.insns.add(0, new PhiInsn(registerSpec, this));
    }
}
