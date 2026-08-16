package com.android.dx.ssa;

import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.type.Type;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class SsaRenamer implements Runnable {
    private static final boolean DEBUG = false;
    private int nextSsaReg;
    private final int ropRegCount;
    private final SsaMethod ssaMeth;
    private final ArrayList<LocalItem> ssaRegToLocalItems;
    private IntList ssaRegToRopReg;
    private final RegisterSpec[][] startsForBlocks;
    private int threshold;

    public class BlockRenamer implements SsaInsn.Visitor {
        private final SsaBasicBlock block;
        private final RegisterSpec[] currentMapping;
        private final HashSet<SsaInsn> movesToKeep = new HashSet<>();
        private final HashMap<SsaInsn, SsaInsn> insnsToReplace = new HashMap<>();
        private final RenamingMapper mapper = new RenamingMapper();

        public class RenamingMapper extends RegisterMapper {
            public RenamingMapper() {
            }

            @Override
            public int getNewRegisterCount() {
                return SsaRenamer.this.nextSsaReg;
            }

            @Override
            public RegisterSpec map(RegisterSpec registerSpec) {
                if (registerSpec == null) {
                    return null;
                }
                return registerSpec.withReg(BlockRenamer.this.currentMapping[registerSpec.getReg()].getReg());
            }
        }

        public BlockRenamer(SsaBasicBlock ssaBasicBlock) {
            this.block = ssaBasicBlock;
            this.currentMapping = SsaRenamer.this.startsForBlocks[ssaBasicBlock.getIndex()];
            SsaRenamer.this.startsForBlocks[ssaBasicBlock.getIndex()] = null;
        }

        private void addMapping(int i10, RegisterSpec registerSpec) {
            int reg = registerSpec.getReg();
            LocalItem localItem = registerSpec.getLocalItem();
            RegisterSpec[] registerSpecArr = this.currentMapping;
            registerSpecArr[i10] = registerSpec;
            for (int length = registerSpecArr.length - 1; length >= 0; length--) {
                if (reg == this.currentMapping[length].getReg()) {
                    this.currentMapping[length] = registerSpec;
                }
            }
            if (localItem == null) {
                return;
            }
            SsaRenamer.this.setNameForSsaReg(registerSpec);
            for (int length2 = this.currentMapping.length - 1; length2 >= 0; length2--) {
                RegisterSpec registerSpec2 = this.currentMapping[length2];
                if (reg != registerSpec2.getReg() && localItem.equals(registerSpec2.getLocalItem())) {
                    this.currentMapping[length2] = registerSpec2.withLocalItem(null);
                }
            }
        }

        private void updateSuccessorPhis() {
            PhiInsn.Visitor visitor = new PhiInsn.Visitor() {
                @Override
                public void visitPhiInsn(PhiInsn phiInsn) {
                    int ropResultReg = phiInsn.getRopResultReg();
                    if (SsaRenamer.this.isBelowThresholdRegister(ropResultReg)) {
                        return;
                    }
                    RegisterSpec registerSpec = BlockRenamer.this.currentMapping[ropResultReg];
                    if (SsaRenamer.this.isVersionZeroRegister(registerSpec.getReg())) {
                        return;
                    }
                    phiInsn.addPhiOperand(registerSpec, BlockRenamer.this.block);
                }
            };
            BitSet successors = this.block.getSuccessors();
            for (int nextSetBit = successors.nextSetBit(0); nextSetBit >= 0; nextSetBit = successors.nextSetBit(nextSetBit + 1)) {
                SsaRenamer.this.ssaMeth.getBlocks().get(nextSetBit).forEachPhiInsn(visitor);
            }
        }

        public void process() {
            this.block.forEachInsn(this);
            updateSuccessorPhis();
            ArrayList<SsaInsn> insns = this.block.getInsns();
            boolean z10 = true;
            for (int size = insns.size() - 1; size >= 0; size--) {
                SsaInsn ssaInsn = insns.get(size);
                SsaInsn ssaInsn2 = this.insnsToReplace.get(ssaInsn);
                if (ssaInsn2 != null) {
                    insns.set(size, ssaInsn2);
                } else if (ssaInsn.isNormalMoveInsn() && !this.movesToKeep.contains(ssaInsn)) {
                    insns.remove(size);
                }
            }
            Iterator<SsaBasicBlock> it = this.block.getDomChildren().iterator();
            while (it.hasNext()) {
                SsaBasicBlock next = it.next();
                if (next != this.block) {
                    SsaRenamer.this.startsForBlocks[next.getIndex()] = z10 ? this.currentMapping : SsaRenamer.dupArray(this.currentMapping);
                    z10 = false;
                }
            }
        }

        public void processResultReg(SsaInsn ssaInsn) {
            RegisterSpec result = ssaInsn.getResult();
            if (result == null) {
                return;
            }
            int reg = result.getReg();
            if (SsaRenamer.this.isBelowThresholdRegister(reg)) {
                return;
            }
            ssaInsn.changeResultReg(SsaRenamer.this.nextSsaReg);
            addMapping(reg, ssaInsn.getResult());
            SsaRenamer.access$108(SsaRenamer.this);
        }

        @Override
        public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
            RegisterSpec result = normalSsaInsn.getResult();
            int reg = result.getReg();
            int reg2 = normalSsaInsn.getSources().get(0).getReg();
            normalSsaInsn.mapSourceRegisters(this.mapper);
            int reg3 = normalSsaInsn.getSources().get(0).getReg();
            LocalItem localItem = this.currentMapping[reg2].getLocalItem();
            LocalItem localItem2 = result.getLocalItem();
            if (localItem2 == null) {
                localItem2 = localItem;
            }
            LocalItem localForNewReg = SsaRenamer.this.getLocalForNewReg(reg3);
            boolean z10 = localForNewReg == null || localItem2 == null || localItem2.equals(localForNewReg);
            RegisterSpec makeLocalOptional = RegisterSpec.makeLocalOptional(reg3, result.getType(), localItem2);
            if (!Optimizer.getPreserveLocals() || (z10 && SsaRenamer.equalsHandlesNulls(localItem2, localItem) && SsaRenamer.this.threshold == 0)) {
                addMapping(reg, makeLocalOptional);
                return;
            }
            if (z10 && localItem == null && SsaRenamer.this.threshold == 0) {
                this.insnsToReplace.put(normalSsaInsn, SsaInsn.makeFromRop(new PlainInsn(Rops.opMarkLocal(makeLocalOptional), SourcePosition.NO_INFO, (RegisterSpec) null, RegisterSpecList.make(RegisterSpec.make(makeLocalOptional.getReg(), makeLocalOptional.getType(), localItem2))), this.block));
                addMapping(reg, makeLocalOptional);
            } else {
                processResultReg(normalSsaInsn);
                this.movesToKeep.add(normalSsaInsn);
            }
        }

        @Override
        public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
            normalSsaInsn.mapSourceRegisters(this.mapper);
            processResultReg(normalSsaInsn);
        }

        @Override
        public void visitPhiInsn(PhiInsn phiInsn) {
            processResultReg(phiInsn);
        }
    }

    public SsaRenamer(SsaMethod ssaMethod) {
        int regCount = ssaMethod.getRegCount();
        this.ropRegCount = regCount;
        this.ssaMeth = ssaMethod;
        this.nextSsaReg = regCount;
        this.threshold = 0;
        this.startsForBlocks = new RegisterSpec[ssaMethod.getBlocks().size()];
        this.ssaRegToLocalItems = new ArrayList<>();
        RegisterSpec[] registerSpecArr = new RegisterSpec[regCount];
        for (int i10 = 0; i10 < this.ropRegCount; i10++) {
            registerSpecArr[i10] = RegisterSpec.make(i10, Type.VOID);
        }
        this.startsForBlocks[ssaMethod.getEntryBlockIndex()] = registerSpecArr;
    }

    public static int access$108(SsaRenamer ssaRenamer) {
        int i10 = ssaRenamer.nextSsaReg;
        ssaRenamer.nextSsaReg = i10 + 1;
        return i10;
    }

    public static RegisterSpec[] dupArray(RegisterSpec[] registerSpecArr) {
        RegisterSpec[] registerSpecArr2 = new RegisterSpec[registerSpecArr.length];
        System.arraycopy(registerSpecArr, 0, registerSpecArr2, 0, registerSpecArr.length);
        return registerSpecArr2;
    }

    public static boolean equalsHandlesNulls(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public LocalItem getLocalForNewReg(int i10) {
        if (i10 < this.ssaRegToLocalItems.size()) {
            return this.ssaRegToLocalItems.get(i10);
        }
        return null;
    }

    public boolean isBelowThresholdRegister(int i10) {
        return i10 < this.threshold;
    }

    public boolean isVersionZeroRegister(int i10) {
        return i10 < this.ropRegCount;
    }

    public void setNameForSsaReg(RegisterSpec registerSpec) {
        int reg = registerSpec.getReg();
        LocalItem localItem = registerSpec.getLocalItem();
        this.ssaRegToLocalItems.ensureCapacity(reg + 1);
        while (this.ssaRegToLocalItems.size() <= reg) {
            this.ssaRegToLocalItems.add(null);
        }
        this.ssaRegToLocalItems.set(reg, localItem);
    }

    @Override
    public void run() {
        this.ssaMeth.forEachBlockDepthFirstDom(new SsaBasicBlock.Visitor() {
            @Override
            public void visitBlock(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
                new BlockRenamer(ssaBasicBlock).process();
            }
        });
        this.ssaMeth.setNewRegCount(this.nextSsaReg);
        this.ssaMeth.onInsnsChanged();
    }

    public SsaRenamer(SsaMethod ssaMethod, int i10) {
        this(ssaMethod);
        this.threshold = i10;
    }
}
