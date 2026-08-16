package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.ssa.SsaInsn;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;

public class DeadCodeRemover {
    private final int regCount;
    private final SsaMethod ssaMeth;
    private final ArrayList<SsaInsn>[] useList;
    private final BitSet worklist;

    public static class NoSideEffectVisitor implements SsaInsn.Visitor {
        BitSet noSideEffectRegs;

        public NoSideEffectVisitor(BitSet bitSet) {
            this.noSideEffectRegs = bitSet;
        }

        @Override
        public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
            if (DeadCodeRemover.hasSideEffect(normalSsaInsn)) {
                return;
            }
            this.noSideEffectRegs.set(normalSsaInsn.getResult().getReg());
        }

        @Override
        public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
            RegisterSpec result = normalSsaInsn.getResult();
            if (DeadCodeRemover.hasSideEffect(normalSsaInsn) || result == null) {
                return;
            }
            this.noSideEffectRegs.set(result.getReg());
        }

        @Override
        public void visitPhiInsn(PhiInsn phiInsn) {
            if (DeadCodeRemover.hasSideEffect(phiInsn)) {
                return;
            }
            this.noSideEffectRegs.set(phiInsn.getResult().getReg());
        }
    }

    private DeadCodeRemover(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        int regCount = ssaMethod.getRegCount();
        this.regCount = regCount;
        this.worklist = new BitSet(regCount);
        this.useList = ssaMethod.getUseListCopy();
    }

    public static boolean hasSideEffect(SsaInsn ssaInsn) {
        if (ssaInsn == null) {
            return true;
        }
        return ssaInsn.hasSideEffect();
    }

    private boolean isCircularNoSideEffect(int i10, BitSet bitSet) {
        if (bitSet != null && bitSet.get(i10)) {
            return true;
        }
        Iterator<SsaInsn> it = this.useList[i10].iterator();
        while (it.hasNext()) {
            if (hasSideEffect(it.next())) {
                return false;
            }
        }
        if (bitSet == null) {
            bitSet = new BitSet(this.regCount);
        }
        bitSet.set(i10);
        Iterator<SsaInsn> it2 = this.useList[i10].iterator();
        while (it2.hasNext()) {
            RegisterSpec result = it2.next().getResult();
            if (result == null || !isCircularNoSideEffect(result.getReg(), bitSet)) {
                return false;
            }
        }
        return true;
    }

    public static void process(SsaMethod ssaMethod) {
        new DeadCodeRemover(ssaMethod).run();
    }

    private void pruneDeadInstructions() {
        HashSet hashSet = new HashSet();
        this.ssaMeth.computeReachability();
        Iterator<SsaBasicBlock> it = this.ssaMeth.getBlocks().iterator();
        while (it.hasNext()) {
            SsaBasicBlock next = it.next();
            if (!next.isReachable()) {
                for (int i10 = 0; i10 < next.getInsns().size(); i10++) {
                    SsaInsn ssaInsn = next.getInsns().get(i10);
                    RegisterSpecList sources = ssaInsn.getSources();
                    int size = sources.size();
                    if (size != 0) {
                        hashSet.add(ssaInsn);
                    }
                    for (int i11 = 0; i11 < size; i11++) {
                        this.useList[sources.get(i11).getReg()].remove(ssaInsn);
                    }
                    RegisterSpec result = ssaInsn.getResult();
                    if (result != null) {
                        Iterator<SsaInsn> it2 = this.useList[result.getReg()].iterator();
                        while (it2.hasNext()) {
                            SsaInsn next2 = it2.next();
                            if (next2 instanceof PhiInsn) {
                                ((PhiInsn) next2).removePhiRegister(result);
                            }
                        }
                    }
                }
            }
        }
        this.ssaMeth.deleteInsns(hashSet);
    }

    private void run() {
        pruneDeadInstructions();
        HashSet hashSet = new HashSet();
        this.ssaMeth.forEachInsn(new NoSideEffectVisitor(this.worklist));
        while (true) {
            int nextSetBit = this.worklist.nextSetBit(0);
            if (nextSetBit < 0) {
                this.ssaMeth.deleteInsns(hashSet);
                return;
            }
            this.worklist.clear(nextSetBit);
            if (this.useList[nextSetBit].size() == 0 || isCircularNoSideEffect(nextSetBit, null)) {
                SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(nextSetBit);
                if (!hashSet.contains(definitionForRegister)) {
                    RegisterSpecList sources = definitionForRegister.getSources();
                    int size = sources.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        RegisterSpec registerSpec = sources.get(i10);
                        this.useList[registerSpec.getReg()].remove(definitionForRegister);
                        if (!hasSideEffect(this.ssaMeth.getDefinitionForRegister(registerSpec.getReg()))) {
                            this.worklist.set(registerSpec.getReg());
                        }
                    }
                    hashSet.add(definitionForRegister);
                }
            }
        }
    }
}
