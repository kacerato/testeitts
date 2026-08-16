package com.android.dx.ssa;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.TypedConstant;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

public class SCCP {
    private static final int CONSTANT = 1;
    private static final int TOP = 0;
    private static final int VARYING = 2;
    private ArrayList<SsaInsn> branchWorklist;
    private ArrayList<SsaBasicBlock> cfgPhiWorklist;
    private ArrayList<SsaBasicBlock> cfgWorklist;
    private BitSet executableBlocks;
    private Constant[] latticeConstants;
    private int[] latticeValues;
    private int regCount;
    private SsaMethod ssaMeth;
    private ArrayList<SsaInsn> ssaWorklist;
    private ArrayList<SsaInsn> varyingWorklist;

    private SCCP(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        int regCount = ssaMethod.getRegCount();
        this.regCount = regCount;
        this.latticeValues = new int[regCount];
        this.latticeConstants = new Constant[regCount];
        this.cfgWorklist = new ArrayList<>();
        this.cfgPhiWorklist = new ArrayList<>();
        this.executableBlocks = new BitSet(ssaMethod.getBlocks().size());
        this.ssaWorklist = new ArrayList<>();
        this.varyingWorklist = new ArrayList<>();
        this.branchWorklist = new ArrayList<>();
        for (int i10 = 0; i10 < this.regCount; i10++) {
            this.latticeValues[i10] = 0;
            this.latticeConstants[i10] = null;
        }
    }

    private void addBlockToWorklist(SsaBasicBlock ssaBasicBlock) {
        if (this.executableBlocks.get(ssaBasicBlock.getIndex())) {
            this.cfgPhiWorklist.add(ssaBasicBlock);
        } else {
            this.cfgWorklist.add(ssaBasicBlock);
            this.executableBlocks.set(ssaBasicBlock.getIndex());
        }
    }

    private void addUsersToWorklist(int i10, int i11) {
        if (i11 == 2) {
            Iterator<SsaInsn> it = this.ssaMeth.getUseListForRegister(i10).iterator();
            while (it.hasNext()) {
                this.varyingWorklist.add(it.next());
            }
            return;
        }
        Iterator<SsaInsn> it2 = this.ssaMeth.getUseListForRegister(i10).iterator();
        while (it2.hasNext()) {
            this.ssaWorklist.add(it2.next());
        }
    }

    private static String latticeValName(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? "UNKNOWN" : "VARYING" : "CONSTANT" : "TOP";
    }

    public static void process(SsaMethod ssaMethod) {
        new SCCP(ssaMethod).run();
    }

    private void replaceBranches() {
        Iterator<SsaInsn> it = this.branchWorklist.iterator();
        while (it.hasNext()) {
            SsaInsn next = it.next();
            SsaBasicBlock block = next.getBlock();
            int size = block.getSuccessorList().size();
            int i10 = -1;
            for (int i11 = 0; i11 < size; i11++) {
                int i12 = block.getSuccessorList().get(i11);
                if (!this.executableBlocks.get(i12)) {
                    i10 = i12;
                }
            }
            if (size == 2 && i10 != -1) {
                block.replaceLastInsn(new PlainInsn(Rops.GOTO, next.getOriginalRopInsn().getPosition(), (RegisterSpec) null, RegisterSpecList.EMPTY));
                block.removeSuccessor(i10);
            }
        }
    }

    private void replaceConstants() {
        for (int i10 = 0; i10 < this.regCount; i10++) {
            if (this.latticeValues[i10] == 1 && (this.latticeConstants[i10] instanceof TypedConstant)) {
                SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
                if (!definitionForRegister.getResult().getTypeBearer().isConstant()) {
                    definitionForRegister.setResult(definitionForRegister.getResult().withType((TypedConstant) this.latticeConstants[i10]));
                    for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(i10)) {
                        if (!ssaInsn.isPhiOrMove()) {
                            NormalSsaInsn normalSsaInsn = (NormalSsaInsn) ssaInsn;
                            RegisterSpecList sources = ssaInsn.getSources();
                            int indexOfRegister = sources.indexOfRegister(i10);
                            normalSsaInsn.changeOneSource(indexOfRegister, sources.get(indexOfRegister).withType((TypedConstant) this.latticeConstants[i10]));
                        }
                    }
                }
            }
        }
    }

    private void run() {
        addBlockToWorklist(this.ssaMeth.getEntryBlock());
        while (true) {
            if (this.cfgWorklist.isEmpty() && this.cfgPhiWorklist.isEmpty() && this.ssaWorklist.isEmpty() && this.varyingWorklist.isEmpty()) {
                replaceConstants();
                replaceBranches();
                return;
            }
            while (!this.cfgWorklist.isEmpty()) {
                simulateBlock(this.cfgWorklist.remove(this.cfgWorklist.size() - 1));
            }
            while (!this.cfgPhiWorklist.isEmpty()) {
                simulatePhiBlock(this.cfgPhiWorklist.remove(this.cfgPhiWorklist.size() - 1));
            }
            while (!this.varyingWorklist.isEmpty()) {
                SsaInsn remove = this.varyingWorklist.remove(this.varyingWorklist.size() - 1);
                if (this.executableBlocks.get(remove.getBlock().getIndex())) {
                    if (remove instanceof PhiInsn) {
                        simulatePhi((PhiInsn) remove);
                    } else {
                        simulateStmt(remove);
                    }
                }
            }
            while (!this.ssaWorklist.isEmpty()) {
                SsaInsn remove2 = this.ssaWorklist.remove(this.ssaWorklist.size() - 1);
                if (this.executableBlocks.get(remove2.getBlock().getIndex())) {
                    if (remove2 instanceof PhiInsn) {
                        simulatePhi((PhiInsn) remove2);
                    } else {
                        simulateStmt(remove2);
                    }
                }
            }
        }
    }

    private boolean setLatticeValueTo(int i10, int i11, Constant constant) {
        if (i11 != 1) {
            int[] iArr = this.latticeValues;
            if (iArr[i10] == i11) {
                return false;
            }
            iArr[i10] = i11;
            return true;
        }
        if (this.latticeValues[i10] == i11 && this.latticeConstants[i10].equals(constant)) {
            return false;
        }
        this.latticeValues[i10] = i11;
        this.latticeConstants[i10] = constant;
        return true;
    }

    private void simulateBlock(SsaBasicBlock ssaBasicBlock) {
        Iterator<SsaInsn> it = ssaBasicBlock.getInsns().iterator();
        while (it.hasNext()) {
            SsaInsn next = it.next();
            if (next instanceof PhiInsn) {
                simulatePhi((PhiInsn) next);
            } else {
                simulateStmt(next);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        if (r1 > 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b5, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b6, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007b, code lost:
    
        if (r1 <= 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007e, code lost:
    
        if (r1 >= 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0081, code lost:
    
        if (r1 < 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
    
        if (r1 != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0087, code lost:
    
        if (r1 == 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b1, code lost:
    
        if (r1 > r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b8, code lost:
    
        if (r1 <= r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00bb, code lost:
    
        if (r1 >= r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00be, code lost:
    
        if (r1 < r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c1, code lost:
    
        if (r1 != r2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c4, code lost:
    
        if (r1 == r2) goto L50;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x006f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:52:0x00a8. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [com.android.dx.rop.cst.Constant[]] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void simulateBranch(SsaInsn ssaInsn) {
        Rop opcode = ssaInsn.getOpcode();
        RegisterSpecList sources = ssaInsn.getSources();
        if (opcode.getBranchingness() == 4) {
            RegisterSpec registerSpec = sources.get(0);
            int reg = registerSpec.getReg();
            Constant constant = null;
            CstInteger cstInteger = (this.ssaMeth.isRegALocal(registerSpec) || this.latticeValues[reg] != 1) ? null : this.latticeConstants[reg];
            if (sources.size() == 2) {
                RegisterSpec registerSpec2 = sources.get(1);
                int reg2 = registerSpec2.getReg();
                if (!this.ssaMeth.isRegALocal(registerSpec2) && this.latticeValues[reg2] == 1) {
                    constant = this.latticeConstants[reg2];
                }
            }
            if (cstInteger == null || sources.size() != 1) {
                if (cstInteger != null && constant != null && cstInteger.getBasicType() == 6) {
                    int value = cstInteger.getValue();
                    int value2 = ((CstInteger) constant).getValue();
                    switch (opcode.getOpcode()) {
                        case 7:
                            break;
                        case 8:
                            break;
                        case 9:
                            break;
                        case 10:
                            break;
                        case 11:
                            break;
                        case 12:
                            break;
                        default:
                            throw new RuntimeException("Unexpected op");
                    }
                }
            } else if (cstInteger.getBasicType() == 6) {
                int value3 = cstInteger.getValue();
                switch (opcode.getOpcode()) {
                    case 7:
                        break;
                    case 8:
                        break;
                    case 9:
                        break;
                    case 10:
                        break;
                    case 11:
                        break;
                    case 12:
                        break;
                    default:
                        throw new RuntimeException("Unexpected op");
                }
            }
        }
        boolean z10 = false;
        boolean z11 = false;
        SsaBasicBlock block = ssaInsn.getBlock();
        if (z11) {
            addBlockToWorklist(this.ssaMeth.getBlocks().get(z10 ? block.getSuccessorList().get(1) : block.getSuccessorList().get(0)));
            this.branchWorklist.add(ssaInsn);
        } else {
            for (int i10 = 0; i10 < block.getSuccessorList().size(); i10++) {
                addBlockToWorklist(this.ssaMeth.getBlocks().get(block.getSuccessorList().get(i10)));
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x005d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Constant simulateMath(SsaInsn ssaInsn, int i10) {
        Constant constant;
        int i11;
        int i12;
        Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
        int opcode = ssaInsn.getOpcode().getOpcode();
        RegisterSpecList sources = ssaInsn.getSources();
        boolean z10 = false;
        int reg = sources.get(0).getReg();
        Constant constant2 = this.latticeValues[reg] != 1 ? null : this.latticeConstants[reg];
        if (sources.size() == 1) {
            constant = ((CstInsn) originalRopInsn).getConstant();
        } else {
            int reg2 = sources.get(1).getReg();
            constant = this.latticeValues[reg2] != 1 ? null : this.latticeConstants[reg2];
        }
        if (constant2 != null && constant != null && i10 == 6) {
            int value = ((CstInteger) constant2).getValue();
            int value2 = ((CstInteger) constant).getValue();
            switch (opcode) {
                case 14:
                    i11 = value + value2;
                    i12 = i11;
                    if (z10) {
                        return CstInteger.make(i12);
                    }
                    return null;
                case 15:
                    if (sources.size() == 1) {
                        i12 = value2 - value;
                        if (z10) {
                        }
                    } else {
                        i11 = value - value2;
                        i12 = i11;
                        if (z10) {
                        }
                    }
                    break;
                case 16:
                    i11 = value * value2;
                    i12 = i11;
                    if (z10) {
                    }
                    break;
                case 17:
                    if (value2 != 0) {
                        i11 = value / value2;
                        i12 = i11;
                        if (z10) {
                        }
                    }
                    i12 = 0;
                    z10 = true;
                    if (z10) {
                    }
                    break;
                case 18:
                    if (value2 != 0) {
                        i11 = value % value2;
                        i12 = i11;
                        if (z10) {
                        }
                    }
                    i12 = 0;
                    z10 = true;
                    if (z10) {
                    }
                    break;
                case 19:
                default:
                    throw new RuntimeException("Unexpected op");
                case 20:
                    i12 = value & value2;
                    if (z10) {
                    }
                    break;
                case 21:
                    i12 = value | value2;
                    if (z10) {
                    }
                    break;
                case 22:
                    i12 = value ^ value2;
                    if (z10) {
                    }
                    break;
                case 23:
                    i12 = value << value2;
                    if (z10) {
                    }
                    break;
                case 24:
                    i12 = value >> value2;
                    if (z10) {
                    }
                    break;
                case 25:
                    i12 = value >>> value2;
                    if (z10) {
                    }
                    break;
            }
        } else {
            return null;
        }
    }

    private void simulatePhi(PhiInsn phiInsn) {
        int reg = phiInsn.getResult().getReg();
        int i10 = 2;
        if (this.latticeValues[reg] == 2) {
            return;
        }
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        int i11 = 0;
        Constant constant = null;
        int i12 = 0;
        while (true) {
            if (i11 >= size) {
                i10 = i12;
                break;
            }
            int predBlockIndexForSourcesIndex = phiInsn.predBlockIndexForSourcesIndex(i11);
            int reg2 = sources.get(i11).getReg();
            int i13 = this.latticeValues[reg2];
            if (this.executableBlocks.get(predBlockIndexForSourcesIndex)) {
                if (i13 != 1) {
                    i10 = i13;
                    break;
                } else if (constant == null) {
                    constant = this.latticeConstants[reg2];
                    i12 = 1;
                } else if (!this.latticeConstants[reg2].equals(constant)) {
                    break;
                }
            }
            i11++;
        }
        if (setLatticeValueTo(reg, i10, constant)) {
            addUsersToWorklist(reg, i10);
        }
    }

    private void simulatePhiBlock(SsaBasicBlock ssaBasicBlock) {
        Iterator<SsaInsn> it = ssaBasicBlock.getInsns().iterator();
        while (it.hasNext()) {
            SsaInsn next = it.next();
            if (!(next instanceof PhiInsn)) {
                return;
            } else {
                simulatePhi((PhiInsn) next);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        if (r8 != null) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void simulateStmt(SsaInsn ssaInsn) {
        Constant constant;
        Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
        int i10 = 1;
        if (originalRopInsn.getOpcode().getBranchingness() != 1 || originalRopInsn.getOpcode().isCallLike()) {
            simulateBranch(ssaInsn);
        }
        int opcode = ssaInsn.getOpcode().getOpcode();
        RegisterSpec result = ssaInsn.getResult();
        if (result == null) {
            if (opcode != 17 && opcode != 18) {
                return;
            } else {
                result = ssaInsn.getBlock().getPrimarySuccessor().getInsns().get(0).getResult();
            }
        }
        int reg = result.getReg();
        if (opcode != 2) {
            if (opcode == 5) {
                constant = ((CstInsn) originalRopInsn).getConstant();
            } else if (opcode != 56) {
                switch (opcode) {
                    default:
                        switch (opcode) {
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                break;
                            default:
                                constant = null;
                                break;
                        }
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        constant = simulateMath(ssaInsn, result.getBasicType());
                        break;
                }
            } else {
                int i11 = this.latticeValues[reg];
                if (i11 == 1) {
                    i10 = i11;
                    constant = this.latticeConstants[reg];
                }
                constant = null;
            }
            if (setLatticeValueTo(reg, i10, constant)) {
                addUsersToWorklist(reg, i10);
                return;
            }
            return;
        }
        if (ssaInsn.getSources().size() == 1) {
            int reg2 = ssaInsn.getSources().get(0).getReg();
            i10 = this.latticeValues[reg2];
            constant = this.latticeConstants[reg2];
            if (setLatticeValueTo(reg, i10, constant)) {
            }
        }
        constant = null;
        i10 = 2;
        if (setLatticeValueTo(reg, i10, constant)) {
        }
    }
}
