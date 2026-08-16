package com.android.dx.dex.code;

import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.FillArrayDataInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InvokePolymorphicInsn;
import com.android.dx.rop.code.LocalVariableInfo;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.SwitchInsn;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.util.Bits;
import com.android.dx.util.IntList;
import java.util.ArrayList;

public final class RopTranslator {
    private final BlockAddresses addresses;
    private final DexOptions dexOptions;
    private final LocalVariableInfo locals;
    private final RopMethod method;
    private int[] order = null;
    private final OutputCollector output;
    private final int paramSize;
    private boolean paramsAreInOrder;
    private final int positionInfo;
    private final int regCount;
    private final TranslationVisitor translationVisitor;

    public class LocalVariableAwareTranslationVisitor extends TranslationVisitor {
        private LocalVariableInfo locals;

        public LocalVariableAwareTranslationVisitor(OutputCollector outputCollector, LocalVariableInfo localVariableInfo) {
            super(outputCollector);
            this.locals = localVariableInfo;
        }

        public void addIntroductionIfNecessary(Insn insn) {
            RegisterSpec assignment = this.locals.getAssignment(insn);
            if (assignment != null) {
                addOutput(new LocalStart(insn.getPosition(), assignment));
            }
        }

        @Override
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
            super.visitPlainCstInsn(plainCstInsn);
            addIntroductionIfNecessary(plainCstInsn);
        }

        @Override
        public void visitPlainInsn(PlainInsn plainInsn) {
            super.visitPlainInsn(plainInsn);
            addIntroductionIfNecessary(plainInsn);
        }

        @Override
        public void visitSwitchInsn(SwitchInsn switchInsn) {
            super.visitSwitchInsn(switchInsn);
            addIntroductionIfNecessary(switchInsn);
        }

        @Override
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
            super.visitThrowingCstInsn(throwingCstInsn);
            addIntroductionIfNecessary(throwingCstInsn);
        }

        @Override
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
            super.visitThrowingInsn(throwingInsn);
            addIntroductionIfNecessary(throwingInsn);
        }
    }

    public class TranslationVisitor implements Insn.Visitor {
        private BasicBlock block;
        private CodeAddress lastAddress;
        private final OutputCollector output;

        public TranslationVisitor(OutputCollector outputCollector) {
            this.output = outputCollector;
        }

        private RegisterSpec getNextMoveResultPseudo() {
            int primarySuccessor = this.block.getPrimarySuccessor();
            if (primarySuccessor < 0) {
                return null;
            }
            Insn insn = RopTranslator.this.method.getBlocks().labelToBlock(primarySuccessor).getInsns().get(0);
            if (insn.getOpcode().getOpcode() != 56) {
                return null;
            }
            return insn.getResult();
        }

        public void addOutput(DalvInsn dalvInsn) {
            this.output.add(dalvInsn);
        }

        public void addOutputSuffix(DalvInsn dalvInsn) {
            this.output.addSuffix(dalvInsn);
        }

        public void setBlock(BasicBlock basicBlock, CodeAddress codeAddress) {
            this.block = basicBlock;
            this.lastAddress = codeAddress;
        }

        @Override
        public void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn) {
            SourcePosition position = fillArrayDataInsn.getPosition();
            Constant constant = fillArrayDataInsn.getConstant();
            ArrayList<Constant> initValues = fillArrayDataInsn.getInitValues();
            if (fillArrayDataInsn.getOpcode().getBranchingness() != 1) {
                throw new RuntimeException("shouldn't happen");
            }
            CodeAddress codeAddress = new CodeAddress(position);
            DalvInsn arrayData = new ArrayData(position, this.lastAddress, initValues, constant);
            DalvInsn targetInsn = new TargetInsn(Dops.FILL_ARRAY_DATA, position, RopTranslator.getRegs(fillArrayDataInsn), codeAddress);
            addOutput(this.lastAddress);
            addOutput(targetInsn);
            addOutputSuffix(new OddSpacer(position));
            addOutputSuffix(codeAddress);
            addOutputSuffix(arrayData);
        }

        @Override
        public void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn) {
            SourcePosition position = invokePolymorphicInsn.getPosition();
            Dop dopFor = RopToDop.dopFor(invokePolymorphicInsn);
            Rop opcode = invokePolymorphicInsn.getOpcode();
            if (opcode.getBranchingness() != 6) {
                throw new RuntimeException("Expected BRANCH_THROW got " + opcode.getBranchingness());
            }
            if (!opcode.isCallLike()) {
                throw new RuntimeException("Expected call-like operation");
            }
            addOutput(this.lastAddress);
            addOutput(new MultiCstInsn(dopFor, position, invokePolymorphicInsn.getSources(), new Constant[]{invokePolymorphicInsn.getInvokeMethod(), invokePolymorphicInsn.getCallSiteProto()}));
        }

        @Override
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
            SourcePosition position = plainCstInsn.getPosition();
            Dop dopFor = RopToDop.dopFor(plainCstInsn);
            Rop opcode = plainCstInsn.getOpcode();
            int opcode2 = opcode.getOpcode();
            if (opcode.getBranchingness() != 1) {
                throw new RuntimeException("shouldn't happen");
            }
            if (opcode2 != 3) {
                addOutput(new CstInsn(dopFor, position, RopTranslator.getRegs(plainCstInsn), plainCstInsn.getConstant()));
            } else {
                if (RopTranslator.this.paramsAreInOrder) {
                    return;
                }
                RegisterSpec result = plainCstInsn.getResult();
                addOutput(new SimpleInsn(dopFor, position, RegisterSpecList.make(result, RegisterSpec.make((RopTranslator.this.regCount - RopTranslator.this.paramSize) + ((CstInteger) plainCstInsn.getConstant()).getValue(), result.getType()))));
            }
        }

        @Override
        public void visitPlainInsn(PlainInsn plainInsn) {
            DalvInsn simpleInsn;
            Rop opcode = plainInsn.getOpcode();
            if (opcode.getOpcode() == 54 || opcode.getOpcode() == 56) {
                return;
            }
            SourcePosition position = plainInsn.getPosition();
            Dop dopFor = RopToDop.dopFor(plainInsn);
            int branchingness = opcode.getBranchingness();
            if (branchingness != 1 && branchingness != 2) {
                if (branchingness == 3) {
                    return;
                }
                if (branchingness == 4) {
                    simpleInsn = new TargetInsn(dopFor, position, RopTranslator.getRegs(plainInsn), RopTranslator.this.addresses.getStart(this.block.getSuccessors().get(1)));
                    addOutput(simpleInsn);
                } else if (branchingness != 6) {
                    throw new RuntimeException("shouldn't happen");
                }
            }
            simpleInsn = new SimpleInsn(dopFor, position, RopTranslator.getRegs(plainInsn));
            addOutput(simpleInsn);
        }

        @Override
        public void visitSwitchInsn(SwitchInsn switchInsn) {
            SourcePosition position = switchInsn.getPosition();
            IntList cases = switchInsn.getCases();
            IntList successors = this.block.getSuccessors();
            int size = cases.size();
            int size2 = successors.size();
            int primarySuccessor = this.block.getPrimarySuccessor();
            if (size != size2 - 1 || primarySuccessor != successors.get(size)) {
                throw new RuntimeException("shouldn't happen");
            }
            CodeAddress[] codeAddressArr = new CodeAddress[size];
            for (int i10 = 0; i10 < size; i10++) {
                codeAddressArr[i10] = RopTranslator.this.addresses.getStart(successors.get(i10));
            }
            CodeAddress codeAddress = new CodeAddress(position);
            CodeAddress codeAddress2 = new CodeAddress(this.lastAddress.getPosition(), true);
            SwitchData switchData = new SwitchData(position, codeAddress2, cases, codeAddressArr);
            DalvInsn targetInsn = new TargetInsn(switchData.isPacked() ? Dops.PACKED_SWITCH : Dops.SPARSE_SWITCH, position, RopTranslator.getRegs(switchInsn), codeAddress);
            addOutput(codeAddress2);
            addOutput(targetInsn);
            addOutputSuffix(new OddSpacer(position));
            addOutputSuffix(codeAddress);
            addOutputSuffix(switchData);
        }

        @Override
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
            SourcePosition position = throwingCstInsn.getPosition();
            Dop dopFor = RopToDop.dopFor(throwingCstInsn);
            Rop opcode = throwingCstInsn.getOpcode();
            Constant constant = throwingCstInsn.getConstant();
            if (opcode.getBranchingness() != 6) {
                throw new RuntimeException("Expected BRANCH_THROW got " + opcode.getBranchingness());
            }
            addOutput(this.lastAddress);
            if (opcode.isCallLike()) {
                addOutput(new CstInsn(dopFor, position, throwingCstInsn.getSources(), constant));
                return;
            }
            RegisterSpec nextMoveResultPseudo = getNextMoveResultPseudo();
            RegisterSpecList regs = RopTranslator.getRegs(throwingCstInsn, nextMoveResultPseudo);
            if ((dopFor.hasResult() || opcode.getOpcode() == 43) == (nextMoveResultPseudo != null)) {
                addOutput((opcode.getOpcode() != 41 || dopFor.getOpcode() == 35) ? new CstInsn(dopFor, position, regs, constant) : new SimpleInsn(dopFor, position, regs));
                return;
            }
            throw new RuntimeException("Insn with result/move-result-pseudo mismatch " + ((Object) throwingCstInsn));
        }

        @Override
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
            SourcePosition position = throwingInsn.getPosition();
            Dop dopFor = RopToDop.dopFor(throwingInsn);
            if (throwingInsn.getOpcode().getBranchingness() != 6) {
                throw new RuntimeException("shouldn't happen");
            }
            RegisterSpec nextMoveResultPseudo = getNextMoveResultPseudo();
            if (dopFor.hasResult() == (nextMoveResultPseudo != null)) {
                addOutput(this.lastAddress);
                addOutput(new SimpleInsn(dopFor, position, RopTranslator.getRegs(throwingInsn, nextMoveResultPseudo)));
            } else {
                throw new RuntimeException("Insn with result/move-result-pseudo mismatch" + ((Object) throwingInsn));
            }
        }
    }

    private RopTranslator(RopMethod ropMethod, int i10, LocalVariableInfo localVariableInfo, int i11, DexOptions dexOptions) {
        this.dexOptions = dexOptions;
        this.method = ropMethod;
        this.positionInfo = i10;
        this.locals = localVariableInfo;
        this.addresses = new BlockAddresses(ropMethod);
        this.paramSize = i11;
        this.paramsAreInOrder = calculateParamsAreInOrder(ropMethod, i11);
        BasicBlockList blocks = ropMethod.getBlocks();
        int size = blocks.size();
        int i12 = size * 3;
        int instructionCount = blocks.getInstructionCount() + i12;
        int assignmentCount = localVariableInfo != null ? instructionCount + size + localVariableInfo.getAssignmentCount() : instructionCount;
        int regCount = blocks.getRegCount() + (this.paramsAreInOrder ? 0 : i11);
        this.regCount = regCount;
        OutputCollector outputCollector = new OutputCollector(dexOptions, assignmentCount, i12, regCount, i11);
        this.output = outputCollector;
        if (localVariableInfo != null) {
            this.translationVisitor = new LocalVariableAwareTranslationVisitor(outputCollector, localVariableInfo);
        } else {
            this.translationVisitor = new TranslationVisitor(outputCollector);
        }
    }

    private static boolean calculateParamsAreInOrder(RopMethod ropMethod, final int i10) {
        final boolean[] zArr = {true};
        final int regCount = ropMethod.getBlocks().getRegCount();
        ropMethod.getBlocks().forEachInsn(new Insn.BaseVisitor() {
            @Override
            public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
                if (plainCstInsn.getOpcode().getOpcode() == 3) {
                    int value = ((CstInteger) plainCstInsn.getConstant()).getValue();
                    boolean[] zArr2 = zArr;
                    zArr2[0] = zArr2[0] && (regCount - i10) + value == plainCstInsn.getResult().getReg();
                }
            }
        });
        return zArr[0];
    }

    public static RegisterSpecList getRegs(Insn insn) {
        return getRegs(insn, insn.getResult());
    }

    private void outputBlock(BasicBlock basicBlock, int i10) {
        CodeAddress start = this.addresses.getStart(basicBlock);
        this.output.add(start);
        LocalVariableInfo localVariableInfo = this.locals;
        if (localVariableInfo != null) {
            this.output.add(new LocalSnapshot(start.getPosition(), localVariableInfo.getStarts(basicBlock)));
        }
        this.translationVisitor.setBlock(basicBlock, this.addresses.getLast(basicBlock));
        basicBlock.getInsns().forEach(this.translationVisitor);
        this.output.add(this.addresses.getEnd(basicBlock));
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        Insn lastInsn = basicBlock.getLastInsn();
        if (primarySuccessor < 0 || primarySuccessor == i10) {
            return;
        }
        if (lastInsn.getOpcode().getBranchingness() == 4 && basicBlock.getSecondarySuccessor() == i10) {
            this.output.reverseBranch(1, this.addresses.getStart(primarySuccessor));
        } else {
            this.output.add(new TargetInsn(Dops.GOTO, lastInsn.getPosition(), RegisterSpecList.EMPTY, this.addresses.getStart(primarySuccessor)));
        }
    }

    private void outputInstructions() {
        BasicBlockList blocks = this.method.getBlocks();
        int[] iArr = this.order;
        int length = iArr.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            outputBlock(blocks.labelToBlock(iArr[i10]), i11 == iArr.length ? -1 : iArr[i11]);
            i10 = i11;
        }
    }

    private void pickOrder() {
        int i10;
        BasicBlockList blocks = this.method.getBlocks();
        int size = blocks.size();
        int maxLabel = blocks.getMaxLabel();
        int[] makeBitSet = Bits.makeBitSet(maxLabel);
        int[] makeBitSet2 = Bits.makeBitSet(maxLabel);
        for (int i11 = 0; i11 < size; i11++) {
            Bits.set(makeBitSet, blocks.get(i11).getLabel());
        }
        int[] iArr = new int[size];
        int firstLabel = this.method.getFirstLabel();
        int i12 = 0;
        while (firstLabel != -1) {
            while (true) {
                IntList labelToPredecessors = this.method.labelToPredecessors(firstLabel);
                int size2 = labelToPredecessors.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    i10 = labelToPredecessors.get(i13);
                    if (Bits.get(makeBitSet2, i10)) {
                        break;
                    }
                    if (Bits.get(makeBitSet, i10) && blocks.labelToBlock(i10).getPrimarySuccessor() == firstLabel) {
                        break;
                    }
                }
                Bits.set(makeBitSet2, i10);
                firstLabel = i10;
            }
            while (firstLabel != -1) {
                Bits.clear(makeBitSet, firstLabel);
                Bits.clear(makeBitSet2, firstLabel);
                iArr[i12] = firstLabel;
                i12++;
                BasicBlock labelToBlock = blocks.labelToBlock(firstLabel);
                BasicBlock preferredSuccessorOf = blocks.preferredSuccessorOf(labelToBlock);
                if (preferredSuccessorOf == null) {
                    break;
                }
                int label = preferredSuccessorOf.getLabel();
                int primarySuccessor = labelToBlock.getPrimarySuccessor();
                if (Bits.get(makeBitSet, label)) {
                    firstLabel = label;
                } else if (primarySuccessor == label || primarySuccessor < 0 || !Bits.get(makeBitSet, primarySuccessor)) {
                    IntList successors = labelToBlock.getSuccessors();
                    int size3 = successors.size();
                    int i14 = 0;
                    while (true) {
                        if (i14 >= size3) {
                            firstLabel = -1;
                            break;
                        }
                        int i15 = successors.get(i14);
                        if (Bits.get(makeBitSet, i15)) {
                            firstLabel = i15;
                            break;
                        }
                        i14++;
                    }
                } else {
                    firstLabel = primarySuccessor;
                }
            }
            firstLabel = Bits.findFirst(makeBitSet, 0);
        }
        if (i12 != size) {
            throw new RuntimeException("shouldn't happen");
        }
        this.order = iArr;
    }

    public static DalvCode translate(RopMethod ropMethod, int i10, LocalVariableInfo localVariableInfo, int i11, DexOptions dexOptions) {
        return new RopTranslator(ropMethod, i10, localVariableInfo, i11, dexOptions).translateAndGetResult();
    }

    private DalvCode translateAndGetResult() {
        pickOrder();
        outputInstructions();
        return new DalvCode(this.positionInfo, this.output.getFinisher(), new StdCatchBuilder(this.method, this.order, this.addresses));
    }

    public static RegisterSpecList getRegs(Insn insn, RegisterSpec registerSpec) {
        RegisterSpecList sources = insn.getSources();
        if (insn.getOpcode().isCommutative() && sources.size() == 2 && registerSpec.getReg() == sources.get(1).getReg()) {
            sources = RegisterSpecList.make(sources.get(1), sources.get(0));
        }
        return registerSpec == null ? sources : sources.withFirst(registerSpec);
    }
}
