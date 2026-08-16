package com.android.dx.cf.code;

import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Bits;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class Ropper {
    private static final int PARAM_ASSIGNMENT = -1;
    private static final int RETURN = -2;
    private static final int SPECIAL_LABEL_COUNT = 7;
    private static final int SYNCH_CATCH_1 = -6;
    private static final int SYNCH_CATCH_2 = -7;
    private static final int SYNCH_RETURN = -3;
    private static final int SYNCH_SETUP_1 = -4;
    private static final int SYNCH_SETUP_2 = -5;
    private final ByteBlockList blocks;
    private final CatchInfo[] catchInfos;
    private final ExceptionSetupLabelAllocator exceptionSetupLabelAllocator;
    private boolean hasSubroutines;
    private final RopperMachine machine;
    private final int maxLabel;
    private final int maxLocals;
    private final ConcreteMethod method;
    private final ArrayList<BasicBlock> result;
    private final ArrayList<IntList> resultSubroutines;
    private final Simulator sim;
    private final Frame[] startFrames;
    private final Subroutine[] subroutines;
    private boolean synchNeedsExceptionHandler;

    public class CatchInfo {
        private final Map<Type, ExceptionHandlerSetup> setups;

        private CatchInfo() {
            this.setups = new HashMap();
        }

        public ExceptionHandlerSetup getSetup(Type type) {
            ExceptionHandlerSetup exceptionHandlerSetup = this.setups.get(type);
            if (exceptionHandlerSetup != null) {
                return exceptionHandlerSetup;
            }
            ExceptionHandlerSetup exceptionHandlerSetup2 = new ExceptionHandlerSetup(type, Ropper.this.exceptionSetupLabelAllocator.getNextLabel());
            this.setups.put(type, exceptionHandlerSetup2);
            return exceptionHandlerSetup2;
        }

        public Collection<ExceptionHandlerSetup> getSetups() {
            return this.setups.values();
        }
    }

    public static class ExceptionHandlerSetup {
        private Type caughtType;
        private int label;

        public ExceptionHandlerSetup(Type type, int i10) {
            this.caughtType = type;
            this.label = i10;
        }

        public Type getCaughtType() {
            return this.caughtType;
        }

        public int getLabel() {
            return this.label;
        }
    }

    public class ExceptionSetupLabelAllocator extends LabelAllocator {
        int maxSetupLabel;

        public ExceptionSetupLabelAllocator() {
            super(Ropper.this.maxLabel);
            this.maxSetupLabel = Ropper.this.maxLabel + Ropper.this.method.getCatches().size();
        }

        @Override
        public int getNextLabel() {
            int i10 = this.nextAvailableLabel;
            if (i10 >= this.maxSetupLabel) {
                throw new IndexOutOfBoundsException();
            }
            this.nextAvailableLabel = i10 + 1;
            return i10;
        }
    }

    public static class LabelAllocator {
        int nextAvailableLabel;

        public LabelAllocator(int i10) {
            this.nextAvailableLabel = i10;
        }

        public int getNextLabel() {
            int i10 = this.nextAvailableLabel;
            this.nextAvailableLabel = i10 + 1;
            return i10;
        }
    }

    public class SubroutineInliner {
        private final LabelAllocator labelAllocator;
        private final ArrayList<IntList> labelToSubroutines;
        private final HashMap<Integer, Integer> origLabelToCopiedLabel = new HashMap<>();
        private int subroutineStart;
        private int subroutineSuccessor;
        private final BitSet workList;

        public SubroutineInliner(LabelAllocator labelAllocator, ArrayList<IntList> arrayList) {
            this.workList = new BitSet(Ropper.this.maxLabel);
            this.labelAllocator = labelAllocator;
            this.labelToSubroutines = arrayList;
        }

        private void copyBlock(int i10, int i11) {
            IntList intList;
            BasicBlock labelToBlock = Ropper.this.labelToBlock(i10);
            IntList successors = labelToBlock.getSuccessors();
            int i12 = -1;
            if (Ropper.this.isSubroutineCaller(labelToBlock)) {
                intList = IntList.makeImmutable(mapOrAllocateLabel(successors.get(0)), successors.get(1));
            } else {
                Subroutine subroutineFromRetBlock = Ropper.this.subroutineFromRetBlock(i10);
                if (subroutineFromRetBlock == null) {
                    int primarySuccessor = labelToBlock.getPrimarySuccessor();
                    int size = successors.size();
                    IntList intList2 = new IntList(size);
                    for (int i13 = 0; i13 < size; i13++) {
                        int i14 = successors.get(i13);
                        int mapOrAllocateLabel = mapOrAllocateLabel(i14);
                        intList2.add(mapOrAllocateLabel);
                        if (primarySuccessor == i14) {
                            i12 = mapOrAllocateLabel;
                        }
                    }
                    intList2.setImmutable();
                    intList = intList2;
                } else {
                    if (subroutineFromRetBlock.startBlock != this.subroutineStart) {
                        throw new RuntimeException("ret instruction returns to label " + Hex.u2(subroutineFromRetBlock.startBlock) + " expected: " + Hex.u2(this.subroutineStart));
                    }
                    intList = IntList.makeImmutable(this.subroutineSuccessor);
                    i12 = this.subroutineSuccessor;
                }
            }
            Ropper ropper = Ropper.this;
            ropper.addBlock(new BasicBlock(i11, ropper.filterMoveReturnAddressInsns(labelToBlock.getInsns()), intList, i12), this.labelToSubroutines.get(i11));
        }

        private boolean involvedInSubroutine(int i10, int i11) {
            IntList intList = this.labelToSubroutines.get(i10);
            return intList != null && intList.size() > 0 && intList.top() == i11;
        }

        private int mapOrAllocateLabel(int i10) {
            Integer num = this.origLabelToCopiedLabel.get(Integer.valueOf(i10));
            if (num != null) {
                return num.intValue();
            }
            if (!involvedInSubroutine(i10, this.subroutineStart)) {
                return i10;
            }
            int nextLabel = this.labelAllocator.getNextLabel();
            this.workList.set(i10);
            this.origLabelToCopiedLabel.put(Integer.valueOf(i10), Integer.valueOf(nextLabel));
            while (this.labelToSubroutines.size() <= nextLabel) {
                this.labelToSubroutines.add(null);
            }
            ArrayList<IntList> arrayList = this.labelToSubroutines;
            arrayList.set(nextLabel, arrayList.get(i10));
            return nextLabel;
        }

        public void inlineSubroutineCalledFrom(BasicBlock basicBlock) {
            this.subroutineSuccessor = basicBlock.getSuccessors().get(0);
            int i10 = basicBlock.getSuccessors().get(1);
            this.subroutineStart = i10;
            int mapOrAllocateLabel = mapOrAllocateLabel(i10);
            int nextSetBit = this.workList.nextSetBit(0);
            while (nextSetBit >= 0) {
                this.workList.clear(nextSetBit);
                int intValue = this.origLabelToCopiedLabel.get(Integer.valueOf(nextSetBit)).intValue();
                copyBlock(nextSetBit, intValue);
                Ropper ropper = Ropper.this;
                if (ropper.isSubroutineCaller(ropper.labelToBlock(nextSetBit))) {
                    new SubroutineInliner(this.labelAllocator, this.labelToSubroutines).inlineSubroutineCalledFrom(Ropper.this.labelToBlock(intValue));
                }
                nextSetBit = this.workList.nextSetBit(0);
            }
            Ropper.this.addOrReplaceBlockNoDelete(new BasicBlock(basicBlock.getLabel(), basicBlock.getInsns(), IntList.makeImmutable(mapOrAllocateLabel), mapOrAllocateLabel), this.labelToSubroutines.get(basicBlock.getLabel()));
        }
    }

    private Ropper(ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList, DexOptions dexOptions) {
        if (concreteMethod == null) {
            throw new NullPointerException("method == null");
        }
        if (translationAdvice == null) {
            throw new NullPointerException("advice == null");
        }
        this.method = concreteMethod;
        ByteBlockList identifyBlocks = BasicBlocker.identifyBlocks(concreteMethod);
        this.blocks = identifyBlocks;
        int maxLabel = identifyBlocks.getMaxLabel();
        this.maxLabel = maxLabel;
        int maxLocals = concreteMethod.getMaxLocals();
        this.maxLocals = maxLocals;
        RopperMachine ropperMachine = new RopperMachine(this, concreteMethod, translationAdvice, methodList);
        this.machine = ropperMachine;
        this.sim = new Simulator(ropperMachine, concreteMethod, dexOptions);
        Frame[] frameArr = new Frame[maxLabel];
        this.startFrames = frameArr;
        this.subroutines = new Subroutine[maxLabel];
        this.result = new ArrayList<>((identifyBlocks.size() * 2) + 10);
        this.resultSubroutines = new ArrayList<>((identifyBlocks.size() * 2) + 10);
        this.catchInfos = new CatchInfo[maxLabel];
        this.synchNeedsExceptionHandler = false;
        frameArr[0] = new Frame(maxLocals, concreteMethod.getMaxStack());
        this.exceptionSetupLabelAllocator = new ExceptionSetupLabelAllocator();
    }

    public void addBlock(BasicBlock basicBlock, IntList intList) {
        if (basicBlock == null) {
            throw new NullPointerException("block == null");
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
    }

    private void addExceptionSetupBlocks() {
        int length = this.catchInfos.length;
        for (int i10 = 0; i10 < length; i10++) {
            CatchInfo catchInfo = this.catchInfos[i10];
            if (catchInfo != null) {
                for (ExceptionHandlerSetup exceptionHandlerSetup : catchInfo.getSetups()) {
                    SourcePosition position = labelToBlock(i10).getFirstInsn().getPosition();
                    InsnList insnList = new InsnList(2);
                    Rop opMoveException = Rops.opMoveException(exceptionHandlerSetup.getCaughtType());
                    RegisterSpec make = RegisterSpec.make(this.maxLocals, exceptionHandlerSetup.getCaughtType());
                    RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
                    insnList.set(0, new PlainInsn(opMoveException, position, make, registerSpecList));
                    insnList.set(1, new PlainInsn(Rops.GOTO, position, (RegisterSpec) null, registerSpecList));
                    insnList.setImmutable();
                    addBlock(new BasicBlock(exceptionHandlerSetup.getLabel(), insnList, IntList.makeImmutable(i10), i10), this.startFrames[i10].getSubroutines());
                }
            }
        }
    }

    private boolean addOrReplaceBlock(BasicBlock basicBlock, IntList intList) {
        boolean z10;
        if (basicBlock == null) {
            throw new NullPointerException("block == null");
        }
        int labelToResultIndex = labelToResultIndex(basicBlock.getLabel());
        if (labelToResultIndex < 0) {
            z10 = false;
        } else {
            removeBlockAndSpecialSuccessors(labelToResultIndex);
            z10 = true;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
        return z10;
    }

    public boolean addOrReplaceBlockNoDelete(BasicBlock basicBlock, IntList intList) {
        boolean z10;
        if (basicBlock == null) {
            throw new NullPointerException("block == null");
        }
        int labelToResultIndex = labelToResultIndex(basicBlock.getLabel());
        if (labelToResultIndex < 0) {
            z10 = false;
        } else {
            this.result.remove(labelToResultIndex);
            this.resultSubroutines.remove(labelToResultIndex);
            z10 = true;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
        return z10;
    }

    private void addReturnBlock() {
        Rop returnOp = this.machine.getReturnOp();
        if (returnOp == null) {
            return;
        }
        SourcePosition returnPosition = this.machine.getReturnPosition();
        int specialLabel = getSpecialLabel(-2);
        if (isSynchronized()) {
            InsnList insnList = new InsnList(1);
            insnList.set(0, new ThrowingInsn(Rops.MONITOR_EXIT, returnPosition, RegisterSpecList.make(getSynchReg()), StdTypeList.EMPTY));
            insnList.setImmutable();
            int specialLabel2 = getSpecialLabel(-3);
            addBlock(new BasicBlock(specialLabel, insnList, IntList.makeImmutable(specialLabel2), specialLabel2), IntList.EMPTY);
            specialLabel = specialLabel2;
        }
        InsnList insnList2 = new InsnList(1);
        TypeList sources = returnOp.getSources();
        insnList2.set(0, new PlainInsn(returnOp, returnPosition, (RegisterSpec) null, sources.size() == 0 ? RegisterSpecList.EMPTY : RegisterSpecList.make(RegisterSpec.make(0, sources.getType(0)))));
        insnList2.setImmutable();
        IntList intList = IntList.EMPTY;
        addBlock(new BasicBlock(specialLabel, insnList2, intList, -1), intList);
    }

    private void addSetupBlocks() {
        int i10;
        InsnList insnList;
        LocalVariableList localVariables = this.method.getLocalVariables();
        int i11 = 0;
        SourcePosition makeSourcePosistion = this.method.makeSourcePosistion(0);
        StdTypeList parameterTypes = this.method.getEffectiveDescriptor().getParameterTypes();
        int size = parameterTypes.size();
        InsnList insnList2 = new InsnList(size + 1);
        int i12 = 0;
        int i13 = 0;
        while (i12 < size) {
            Type type = parameterTypes.get(i12);
            LocalVariableList.Item pcAndIndexToLocal = localVariables.pcAndIndexToLocal(i11, i13);
            insnList2.set(i12, new PlainCstInsn(Rops.opMoveParam(type), makeSourcePosistion, pcAndIndexToLocal == null ? RegisterSpec.make(i13, type) : RegisterSpec.makeLocalOptional(i13, type, pcAndIndexToLocal.getLocalItem()), RegisterSpecList.EMPTY, CstInteger.make(i13)));
            i13 += type.getCategory();
            i12++;
            i11 = 0;
        }
        Rop rop = Rops.GOTO;
        RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
        insnList2.set(size, new PlainInsn(rop, makeSourcePosistion, (RegisterSpec) null, registerSpecList));
        insnList2.setImmutable();
        boolean isSynchronized = isSynchronized();
        int specialLabel = isSynchronized ? getSpecialLabel(-4) : 0;
        BasicBlock basicBlock = new BasicBlock(getSpecialLabel(-1), insnList2, IntList.makeImmutable(specialLabel), specialLabel);
        IntList intList = IntList.EMPTY;
        addBlock(basicBlock, intList);
        if (isSynchronized) {
            RegisterSpec synchReg = getSynchReg();
            if (isStatic()) {
                ThrowingCstInsn throwingCstInsn = new ThrowingCstInsn(Rops.CONST_OBJECT, makeSourcePosistion, registerSpecList, StdTypeList.EMPTY, this.method.getDefiningClass());
                insnList = new InsnList(1);
                insnList.set(0, throwingCstInsn);
                i10 = 1;
            } else {
                InsnList insnList3 = new InsnList(2);
                insnList3.set(0, new PlainCstInsn(Rops.MOVE_PARAM_OBJECT, makeSourcePosistion, synchReg, registerSpecList, CstInteger.VALUE_0));
                PlainInsn plainInsn = new PlainInsn(rop, makeSourcePosistion, (RegisterSpec) null, registerSpecList);
                i10 = 1;
                insnList3.set(1, plainInsn);
                insnList = insnList3;
            }
            int specialLabel2 = getSpecialLabel(-5);
            insnList.setImmutable();
            addBlock(new BasicBlock(specialLabel, insnList, IntList.makeImmutable(specialLabel2), specialLabel2), intList);
            InsnList insnList4 = new InsnList(isStatic() ? 2 : i10);
            if (isStatic()) {
                insnList4.set(0, new PlainInsn(Rops.opMoveResultPseudo(synchReg), makeSourcePosistion, synchReg, registerSpecList));
            }
            insnList4.set(isStatic() ? 1 : 0, new ThrowingInsn(Rops.MONITOR_ENTER, makeSourcePosistion, RegisterSpecList.make(synchReg), StdTypeList.EMPTY));
            insnList4.setImmutable();
            addBlock(new BasicBlock(specialLabel2, insnList4, IntList.makeImmutable(0), 0), intList);
        }
    }

    private void addSynchExceptionHandlerBlock() {
        if (this.synchNeedsExceptionHandler) {
            SourcePosition makeSourcePosistion = this.method.makeSourcePosistion(0);
            Type type = Type.THROWABLE;
            RegisterSpec make = RegisterSpec.make(0, type);
            InsnList insnList = new InsnList(2);
            insnList.set(0, new PlainInsn(Rops.opMoveException(type), makeSourcePosistion, make, RegisterSpecList.EMPTY));
            Rop rop = Rops.MONITOR_EXIT;
            RegisterSpecList make2 = RegisterSpecList.make(getSynchReg());
            StdTypeList stdTypeList = StdTypeList.EMPTY;
            insnList.set(1, new ThrowingInsn(rop, makeSourcePosistion, make2, stdTypeList));
            insnList.setImmutable();
            int specialLabel = getSpecialLabel(-7);
            BasicBlock basicBlock = new BasicBlock(getSpecialLabel(-6), insnList, IntList.makeImmutable(specialLabel), specialLabel);
            IntList intList = IntList.EMPTY;
            addBlock(basicBlock, intList);
            InsnList insnList2 = new InsnList(1);
            insnList2.set(0, new ThrowingInsn(Rops.THROW, makeSourcePosistion, RegisterSpecList.make(make), stdTypeList));
            insnList2.setImmutable();
            addBlock(new BasicBlock(specialLabel, insnList2, intList, -1), intList);
        }
    }

    public static RopMethod convert(ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList, DexOptions dexOptions) {
        try {
            Ropper ropper = new Ropper(concreteMethod, translationAdvice, methodList, dexOptions);
            ropper.doit();
            return ropper.getRopMethod();
        } catch (SimException e10) {
            e10.addContext("...while working on method " + concreteMethod.getNat().toHuman());
            throw e10;
        }
    }

    private void deleteUnreachableBlocks() {
        final IntList intList = new IntList(this.result.size());
        this.resultSubroutines.clear();
        forEachNonSubBlockDepthFirst(getSpecialLabel(-1), new BasicBlock.Visitor() {
            @Override
            public void visitBlock(BasicBlock basicBlock) {
                intList.add(basicBlock.getLabel());
            }
        });
        intList.sort();
        for (int size = this.result.size() - 1; size >= 0; size--) {
            if (intList.indexOf(this.result.get(size).getLabel()) < 0) {
                this.result.remove(size);
            }
        }
    }

    private void doit() {
        int[] makeBitSet = Bits.makeBitSet(this.maxLabel);
        Bits.set(makeBitSet, 0);
        addSetupBlocks();
        setFirstFrame();
        while (true) {
            int findFirst = Bits.findFirst(makeBitSet, 0);
            if (findFirst < 0) {
                break;
            }
            Bits.clear(makeBitSet, findFirst);
            try {
                processBlock(this.blocks.labelToBlock(findFirst), this.startFrames[findFirst], makeBitSet);
            } catch (SimException e10) {
                e10.addContext("...while working on block " + Hex.u2(findFirst));
                throw e10;
            }
        }
        addReturnBlock();
        addSynchExceptionHandlerBlock();
        addExceptionSetupBlocks();
        if (this.hasSubroutines) {
            inlineSubroutines();
        }
    }

    public InsnList filterMoveReturnAddressInsns(InsnList insnList) {
        int size = insnList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (insnList.get(i11).getOpcode() != Rops.MOVE_RETURN_ADDRESS) {
                i10++;
            }
        }
        if (i10 == size) {
            return insnList;
        }
        InsnList insnList2 = new InsnList(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            Insn insn = insnList.get(i13);
            if (insn.getOpcode() != Rops.MOVE_RETURN_ADDRESS) {
                insnList2.set(i12, insn);
                i12++;
            }
        }
        insnList2.setImmutable();
        return insnList2;
    }

    private void forEachNonSubBlockDepthFirst(int i10, BasicBlock.Visitor visitor) {
        forEachNonSubBlockDepthFirst0(labelToBlock(i10), visitor, new BitSet(this.maxLabel));
    }

    private void forEachNonSubBlockDepthFirst0(BasicBlock basicBlock, BasicBlock.Visitor visitor, BitSet bitSet) {
        int labelToResultIndex;
        visitor.visitBlock(basicBlock);
        bitSet.set(basicBlock.getLabel());
        IntList successors = basicBlock.getSuccessors();
        int size = successors.size();
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = successors.get(i10);
            if (!bitSet.get(i11) && ((!isSubroutineCaller(basicBlock) || i10 <= 0) && (labelToResultIndex = labelToResultIndex(i11)) >= 0)) {
                forEachNonSubBlockDepthFirst0(this.result.get(labelToResultIndex), visitor, bitSet);
            }
        }
    }

    private int getAvailableLabel() {
        int minimumUnreservedLabel = getMinimumUnreservedLabel();
        Iterator<BasicBlock> it = this.result.iterator();
        while (it.hasNext()) {
            int label = it.next().getLabel();
            if (label >= minimumUnreservedLabel) {
                minimumUnreservedLabel = label + 1;
            }
        }
        return minimumUnreservedLabel;
    }

    private int getMinimumUnreservedLabel() {
        return this.maxLabel + this.method.getCatches().size() + 7;
    }

    private int getNormalRegCount() {
        return this.maxLocals + this.method.getMaxStack();
    }

    private RopMethod getRopMethod() {
        int size = this.result.size();
        BasicBlockList basicBlockList = new BasicBlockList(size);
        for (int i10 = 0; i10 < size; i10++) {
            basicBlockList.set(i10, this.result.get(i10));
        }
        basicBlockList.setImmutable();
        return new RopMethod(basicBlockList, getSpecialLabel(-1));
    }

    private int getSpecialLabel(int i10) {
        return this.maxLabel + this.method.getCatches().size() + (~i10);
    }

    private RegisterSpec getSynchReg() {
        int normalRegCount = getNormalRegCount();
        if (normalRegCount < 1) {
            normalRegCount = 1;
        }
        return RegisterSpec.make(normalRegCount, Type.OBJECT);
    }

    private void inlineSubroutines() {
        final IntList intList = new IntList(4);
        forEachNonSubBlockDepthFirst(0, new BasicBlock.Visitor() {
            @Override
            public void visitBlock(BasicBlock basicBlock) {
                if (Ropper.this.isSubroutineCaller(basicBlock)) {
                    intList.add(basicBlock.getLabel());
                }
            }
        });
        int availableLabel = getAvailableLabel();
        ArrayList arrayList = new ArrayList(availableLabel);
        for (int i10 = 0; i10 < availableLabel; i10++) {
            arrayList.add(null);
        }
        for (int i11 = 0; i11 < this.result.size(); i11++) {
            BasicBlock basicBlock = this.result.get(i11);
            if (basicBlock != null) {
                arrayList.set(basicBlock.getLabel(), this.resultSubroutines.get(i11));
            }
        }
        int size = intList.size();
        for (int i12 = 0; i12 < size; i12++) {
            new SubroutineInliner(new LabelAllocator(getAvailableLabel()), arrayList).inlineSubroutineCalledFrom(labelToBlock(intList.get(i12)));
        }
        deleteUnreachableBlocks();
    }

    private boolean isStatic() {
        return (this.method.getAccessFlags() & 8) != 0;
    }

    public boolean isSubroutineCaller(BasicBlock basicBlock) {
        IntList successors = basicBlock.getSuccessors();
        if (successors.size() < 2) {
            return false;
        }
        int i10 = successors.get(1);
        Subroutine[] subroutineArr = this.subroutines;
        return i10 < subroutineArr.length && subroutineArr[i10] != null;
    }

    private boolean isSynchronized() {
        return (this.method.getAccessFlags() & 32) != 0;
    }

    public BasicBlock labelToBlock(int i10) {
        int labelToResultIndex = labelToResultIndex(i10);
        if (labelToResultIndex >= 0) {
            return this.result.get(labelToResultIndex);
        }
        throw new IllegalArgumentException("no such label " + Hex.u2(i10));
    }

    private int labelToResultIndex(int i10) {
        int size = this.result.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.result.get(i11).getLabel() == i10) {
                return i11;
            }
        }
        return -1;
    }

    public void mergeAndWorkAsNecessary(int i10, int i11, Subroutine subroutine, Frame frame, int[] iArr) {
        Frame[] frameArr = this.startFrames;
        Frame frame2 = frameArr[i10];
        if (frame2 == null) {
            if (subroutine != null) {
                frameArr[i10] = frame.makeNewSubroutineStartFrame(i10, i11);
            } else {
                frameArr[i10] = frame;
            }
            Bits.set(iArr, i10);
            return;
        }
        Frame mergeWithSubroutineCaller = subroutine != null ? frame2.mergeWithSubroutineCaller(frame, subroutine.getStartBlock(), i11) : frame2.mergeWith(frame);
        if (mergeWithSubroutineCaller != frame2) {
            this.startFrames[i10] = mergeWithSubroutineCaller;
            Bits.set(iArr, i10);
        }
    }

    /* JADX WARN: Type inference failed for: r14v0, types: [com.android.dx.cf.code.Ropper$1, com.android.dx.rop.code.RegisterSpec] */
    private void processBlock(ByteBlock byteBlock, Frame frame, int[] iArr) {
        IntList intList;
        Subroutine subroutine;
        int i10;
        IntList intList2;
        int i11;
        int primarySuccessorIndex;
        int i12;
        IntList intList3;
        ByteCatchList catches = byteBlock.getCatches();
        this.machine.startBlock(catches.toRopCatchList());
        Frame copy = frame.copy();
        this.sim.simulate(byteBlock, copy);
        copy.setImmutable();
        int extraBlockCount = this.machine.getExtraBlockCount();
        ArrayList<Insn> insns = this.machine.getInsns();
        int size = insns.size();
        int size2 = catches.size();
        IntList successors = byteBlock.getSuccessors();
        boolean z10 = true;
        Object obj = null;
        if (this.machine.hasJsr()) {
            int i13 = successors.get(1);
            Subroutine[] subroutineArr = this.subroutines;
            if (subroutineArr[i13] == null) {
                subroutineArr[i13] = new Subroutine(i13);
            }
            this.subroutines[i13].addCallerBlock(byteBlock.getLabel());
            intList = successors;
            subroutine = this.subroutines[i13];
            i10 = 1;
        } else if (this.machine.hasRet()) {
            int subroutineAddress = this.machine.getReturnAddress().getSubroutineAddress();
            Subroutine[] subroutineArr2 = this.subroutines;
            Subroutine subroutine2 = subroutineArr2[subroutineAddress];
            if (subroutine2 == null) {
                subroutineArr2[subroutineAddress] = new Subroutine(this, subroutineAddress, byteBlock.getLabel());
            } else {
                subroutine2.addRetBlock(byteBlock.getLabel());
            }
            IntList successors2 = this.subroutines[subroutineAddress].getSuccessors();
            this.subroutines[subroutineAddress].mergeToSuccessors(copy, iArr);
            i10 = successors2.size();
            intList = successors2;
            subroutine = null;
        } else if (this.machine.wereCatchesUsed()) {
            intList = successors;
            subroutine = null;
            i10 = size2;
        } else {
            intList = successors;
            subroutine = null;
            i10 = 0;
        }
        int size3 = intList.size();
        int i14 = i10;
        while (i14 < size3) {
            int i15 = intList.get(i14);
            try {
                int i16 = i14;
                int i17 = size3;
                IntList intList4 = intList;
                Object obj2 = obj;
                mergeAndWorkAsNecessary(i15, byteBlock.getLabel(), subroutine, copy, iArr);
                i14 = i16 + 1;
                obj = obj2;
                intList = intList4;
                size3 = i17;
            } catch (SimException e10) {
                e10.addContext("...while merging to block " + Hex.u2(i15));
                throw e10;
            }
        }
        int i18 = size3;
        IntList intList5 = intList;
        ?? r14 = obj;
        if (i18 == 0 && this.machine.returns()) {
            intList2 = IntList.makeImmutable(getSpecialLabel(-2));
            i11 = 1;
        } else {
            intList2 = intList5;
            i11 = i18;
        }
        if (i11 == 0) {
            primarySuccessorIndex = -1;
        } else {
            primarySuccessorIndex = this.machine.getPrimarySuccessorIndex();
            if (primarySuccessorIndex >= 0) {
                primarySuccessorIndex = intList2.get(primarySuccessorIndex);
            }
        }
        int i19 = primarySuccessorIndex;
        boolean z11 = isSynchronized() && this.machine.canThrow();
        if (z11 || size2 != 0) {
            IntList intList6 = new IntList(i11);
            boolean z12 = false;
            int i20 = 0;
            while (i20 < size2) {
                ByteCatchList.Item item = catches.get(i20);
                CstType exceptionClass = item.getExceptionClass();
                int handlerPc = item.getHandlerPc();
                boolean z13 = z12 | (exceptionClass == CstType.OBJECT ? z10 : false);
                try {
                    int i21 = i20;
                    IntList intList7 = intList6;
                    int i22 = i19;
                    mergeAndWorkAsNecessary(handlerPc, byteBlock.getLabel(), null, copy.makeExceptionHandlerStartFrame(exceptionClass), iArr);
                    CatchInfo catchInfo = this.catchInfos[handlerPc];
                    if (catchInfo == null) {
                        catchInfo = new CatchInfo();
                        this.catchInfos[handlerPc] = catchInfo;
                    }
                    intList7.add(catchInfo.getSetup(exceptionClass.getClassType()).getLabel());
                    i20 = i21 + 1;
                    intList6 = intList7;
                    z12 = z13;
                    i19 = i22;
                    z10 = true;
                } catch (SimException e11) {
                    e11.addContext("...while merging exception to block " + Hex.u2(handlerPc));
                    throw e11;
                }
            }
            IntList intList8 = intList6;
            int i23 = i19;
            if (z11 && !z12) {
                intList8.add(getSpecialLabel(-6));
                this.synchNeedsExceptionHandler = true;
                for (int i24 = (size - extraBlockCount) - 1; i24 < size; i24++) {
                    Insn insn = insns.get(i24);
                    if (insn.canThrow()) {
                        insns.set(i24, insn.withAddedCatch(Type.OBJECT));
                    }
                }
            }
            i12 = i23;
            if (i12 >= 0) {
                intList8.add(i12);
            }
            intList8.setImmutable();
            intList2 = intList8;
        } else {
            i12 = i19;
        }
        int indexOf = intList2.indexOf(i12);
        int i25 = i12;
        while (extraBlockCount > 0) {
            size--;
            Insn insn2 = insns.get(size);
            boolean z14 = insn2.getOpcode().getBranchingness() == 1;
            InsnList insnList = new InsnList(z14 ? 2 : 1);
            insnList.set(0, insn2);
            if (z14) {
                insnList.set(1, new PlainInsn(Rops.GOTO, insn2.getPosition(), (RegisterSpec) r14, RegisterSpecList.EMPTY));
                intList3 = IntList.makeImmutable(i25);
            } else {
                intList3 = intList2;
            }
            insnList.setImmutable();
            int availableLabel = getAvailableLabel();
            addBlock(new BasicBlock(availableLabel, insnList, intList3, i25), copy.getSubroutines());
            intList2 = intList2.mutableCopy();
            intList2.set(indexOf, availableLabel);
            intList2.setImmutable();
            extraBlockCount--;
            i25 = availableLabel;
        }
        Insn insn3 = size == 0 ? r14 : insns.get(size - 1);
        if (insn3 == null || insn3.getOpcode().getBranchingness() == 1) {
            insns.add(new PlainInsn(Rops.GOTO, insn3 == null ? SourcePosition.NO_INFO : insn3.getPosition(), (RegisterSpec) r14, RegisterSpecList.EMPTY));
            size++;
        }
        InsnList insnList2 = new InsnList(size);
        for (int i26 = 0; i26 < size; i26++) {
            insnList2.set(i26, insns.get(i26));
        }
        insnList2.setImmutable();
        addOrReplaceBlock(new BasicBlock(byteBlock.getLabel(), insnList2, intList2, i25), copy.getSubroutines());
    }

    private void removeBlockAndSpecialSuccessors(int i10) {
        int minimumUnreservedLabel = getMinimumUnreservedLabel();
        IntList successors = this.result.get(i10).getSuccessors();
        int size = successors.size();
        this.result.remove(i10);
        this.resultSubroutines.remove(i10);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = successors.get(i11);
            if (i12 >= minimumUnreservedLabel) {
                int labelToResultIndex = labelToResultIndex(i12);
                if (labelToResultIndex < 0) {
                    throw new RuntimeException("Invalid label " + Hex.u2(i12));
                }
                removeBlockAndSpecialSuccessors(labelToResultIndex);
            }
        }
    }

    private void setFirstFrame() {
        this.startFrames[0].initializeWithParameters(this.method.getEffectiveDescriptor().getParameterTypes());
        this.startFrames[0].setImmutable();
    }

    public Subroutine subroutineFromRetBlock(int i10) {
        for (int length = this.subroutines.length - 1; length >= 0; length--) {
            Subroutine subroutine = this.subroutines[length];
            if (subroutine != null && subroutine.retBlocks.get(i10)) {
                return subroutine;
            }
        }
        return null;
    }

    public int getFirstTempStackReg() {
        int normalRegCount = getNormalRegCount();
        return isSynchronized() ? normalRegCount + 1 : normalRegCount;
    }

    public class Subroutine {
        private BitSet callerBlocks;
        private BitSet retBlocks;
        private int startBlock;

        public Subroutine(int i10) {
            this.startBlock = i10;
            this.retBlocks = new BitSet(Ropper.this.maxLabel);
            this.callerBlocks = new BitSet(Ropper.this.maxLabel);
            Ropper.this.hasSubroutines = true;
        }

        public void addCallerBlock(int i10) {
            this.callerBlocks.set(i10);
        }

        public void addRetBlock(int i10) {
            this.retBlocks.set(i10);
        }

        public int getStartBlock() {
            return this.startBlock;
        }

        public IntList getSuccessors() {
            IntList intList = new IntList(this.callerBlocks.size());
            int nextSetBit = this.callerBlocks.nextSetBit(0);
            while (nextSetBit >= 0) {
                intList.add(Ropper.this.labelToBlock(nextSetBit).getSuccessors().get(0));
                nextSetBit = this.callerBlocks.nextSetBit(nextSetBit + 1);
            }
            intList.setImmutable();
            return intList;
        }

        public void mergeToSuccessors(Frame frame, int[] iArr) {
            int nextSetBit = this.callerBlocks.nextSetBit(0);
            while (nextSetBit >= 0) {
                int i10 = Ropper.this.labelToBlock(nextSetBit).getSuccessors().get(0);
                Frame subFrameForLabel = frame.subFrameForLabel(this.startBlock, nextSetBit);
                if (subFrameForLabel != null) {
                    Ropper.this.mergeAndWorkAsNecessary(i10, -1, null, subFrameForLabel, iArr);
                } else {
                    Bits.set(iArr, nextSetBit);
                }
                nextSetBit = this.callerBlocks.nextSetBit(nextSetBit + 1);
            }
        }

        public Subroutine(Ropper ropper, int i10, int i11) {
            this(i10);
            addRetBlock(i11);
        }
    }
}
