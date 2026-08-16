package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.InterferenceRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.Optimizer;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.IntIterator;
import com.android.dx.util.IntSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class FirstFitLocalCombiningAllocator extends RegisterAllocator {
    private static final boolean DEBUG = false;
    private final ArrayList<NormalSsaInsn> invokeRangeInsns;
    private final Map<LocalItem, ArrayList<RegisterSpec>> localVariables;
    private final InterferenceRegisterMapper mapper;
    private final boolean minimizeRegisters;
    private final ArrayList<NormalSsaInsn> moveResultPseudoInsns;
    private final int paramRangeEnd;
    private final ArrayList<PhiInsn> phiInsns;
    private final BitSet reservedRopRegs;
    private final BitSet ssaRegsMapped;
    private final BitSet usedRopRegs;

    public enum Alignment {
        EVEN {
            @Override
            public int nextClearBit(BitSet bitSet, int i10) {
                int nextClearBit = bitSet.nextClearBit(i10);
                while (!FirstFitLocalCombiningAllocator.isEven(nextClearBit)) {
                    nextClearBit = bitSet.nextClearBit(nextClearBit + 1);
                }
                return nextClearBit;
            }
        },
        ODD {
            @Override
            public int nextClearBit(BitSet bitSet, int i10) {
                int nextClearBit = bitSet.nextClearBit(i10);
                while (FirstFitLocalCombiningAllocator.isEven(nextClearBit)) {
                    nextClearBit = bitSet.nextClearBit(nextClearBit + 1);
                }
                return nextClearBit;
            }
        },
        UNSPECIFIED {
            @Override
            public int nextClearBit(BitSet bitSet, int i10) {
                return bitSet.nextClearBit(i10);
            }
        };

        public abstract int nextClearBit(BitSet bitSet, int i10);
    }

    public static class Multiset {
        private final int[] count;
        private final int[] reg;
        private int size = 0;

        public Multiset(int i10) {
            this.reg = new int[i10];
            this.count = new int[i10];
        }

        public void add(int i10) {
            int i11 = 0;
            while (true) {
                int i12 = this.size;
                if (i11 >= i12) {
                    this.reg[i12] = i10;
                    this.count[i12] = 1;
                    this.size = i12 + 1;
                    return;
                } else {
                    if (this.reg[i11] == i10) {
                        int[] iArr = this.count;
                        iArr[i11] = iArr[i11] + 1;
                        return;
                    }
                    i11++;
                }
            }
        }

        public int getAndRemoveHighestCount() {
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            for (int i13 = 0; i13 < this.size; i13++) {
                int i14 = this.count[i13];
                if (i12 < i14) {
                    i11 = this.reg[i13];
                    i10 = i13;
                    i12 = i14;
                }
            }
            this.count[i10] = 0;
            return i11;
        }

        public int getSize() {
            return this.size;
        }
    }

    public FirstFitLocalCombiningAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph, boolean z10) {
        super(ssaMethod, interferenceGraph);
        this.ssaRegsMapped = new BitSet(ssaMethod.getRegCount());
        this.mapper = new InterferenceRegisterMapper(interferenceGraph, ssaMethod.getRegCount());
        this.minimizeRegisters = z10;
        int paramWidth = ssaMethod.getParamWidth();
        this.paramRangeEnd = paramWidth;
        BitSet bitSet = new BitSet(paramWidth * 2);
        this.reservedRopRegs = bitSet;
        bitSet.set(0, paramWidth);
        this.usedRopRegs = new BitSet(paramWidth * 2);
        this.localVariables = new TreeMap();
        this.moveResultPseudoInsns = new ArrayList<>();
        this.invokeRangeInsns = new ArrayList<>();
        this.phiInsns = new ArrayList<>();
    }

    private void addMapping(RegisterSpec registerSpec, int i10) {
        int reg = registerSpec.getReg();
        if (this.ssaRegsMapped.get(reg) || !canMapReg(registerSpec, i10)) {
            throw new RuntimeException("attempt to add invalid register mapping");
        }
        int category = registerSpec.getCategory();
        this.mapper.addMapping(registerSpec.getReg(), i10, category);
        this.ssaRegsMapped.set(reg);
        this.usedRopRegs.set(i10, category + i10);
    }

    private void adjustAndMapSourceRangeRange(NormalSsaInsn normalSsaInsn) {
        int findRangeAndAdjust = findRangeAndAdjust(normalSsaInsn);
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int i10 = 0;
        while (i10 < size) {
            RegisterSpec registerSpec = sources.get(i10);
            int reg = registerSpec.getReg();
            int category = registerSpec.getCategory();
            int i11 = findRangeAndAdjust + category;
            if (!this.ssaRegsMapped.get(reg)) {
                LocalItem localItemForReg = getLocalItemForReg(reg);
                addMapping(registerSpec, findRangeAndAdjust);
                if (localItemForReg != null) {
                    markReserved(findRangeAndAdjust, category);
                    ArrayList<RegisterSpec> arrayList = this.localVariables.get(localItemForReg);
                    int size2 = arrayList.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        RegisterSpec registerSpec2 = arrayList.get(i12);
                        if (-1 == sources.indexOfRegister(registerSpec2.getReg())) {
                            tryMapReg(registerSpec2, findRangeAndAdjust, category);
                        }
                    }
                }
            }
            i10++;
            findRangeAndAdjust = i11;
        }
    }

    private void analyzeInstructions() {
        this.ssaMeth.forEachInsn(new SsaInsn.Visitor() {
            private void processInsn(SsaInsn ssaInsn) {
                RegisterSpec localAssignment = ssaInsn.getLocalAssignment();
                if (localAssignment != null) {
                    LocalItem localItem = localAssignment.getLocalItem();
                    ArrayList arrayList = (ArrayList) FirstFitLocalCombiningAllocator.this.localVariables.get(localItem);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        FirstFitLocalCombiningAllocator.this.localVariables.put(localItem, arrayList);
                    }
                    arrayList.add(localAssignment);
                }
                if (!(ssaInsn instanceof NormalSsaInsn)) {
                    if (ssaInsn instanceof PhiInsn) {
                        FirstFitLocalCombiningAllocator.this.phiInsns.add((PhiInsn) ssaInsn);
                    }
                } else if (ssaInsn.getOpcode().getOpcode() == 56) {
                    FirstFitLocalCombiningAllocator.this.moveResultPseudoInsns.add((NormalSsaInsn) ssaInsn);
                } else if (Optimizer.getAdvice().requiresSourcesInOrder(ssaInsn.getOriginalRopInsn().getOpcode(), ssaInsn.getSources())) {
                    FirstFitLocalCombiningAllocator.this.invokeRangeInsns.add((NormalSsaInsn) ssaInsn);
                }
            }

            @Override
            public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override
            public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override
            public void visitPhiInsn(PhiInsn phiInsn) {
                processInsn(phiInsn);
            }
        });
    }

    private boolean canMapReg(RegisterSpec registerSpec, int i10) {
        return (spansParamRange(i10, registerSpec.getCategory()) || this.mapper.interferes(registerSpec, i10)) ? false : true;
    }

    private boolean canMapRegs(ArrayList<RegisterSpec> arrayList, int i10) {
        Iterator<RegisterSpec> it = arrayList.iterator();
        while (it.hasNext()) {
            RegisterSpec next = it.next();
            if (!this.ssaRegsMapped.get(next.getReg()) && !canMapReg(next, i10)) {
                return false;
            }
        }
        return true;
    }

    private int findAnyFittingRange(NormalSsaInsn normalSsaInsn, int i10, int[] iArr, BitSet bitSet) {
        Alignment alignment = Alignment.UNSPECIFIED;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            if (i14 == 2) {
                if (isEven(i13)) {
                    i12++;
                } else {
                    i11++;
                }
                i13 += 2;
            } else {
                i13++;
            }
        }
        if (i11 > i12) {
            alignment = isEven(this.paramRangeEnd) ? Alignment.ODD : Alignment.EVEN;
        } else if (i12 > 0) {
            alignment = isEven(this.paramRangeEnd) ? Alignment.EVEN : Alignment.ODD;
        }
        int i15 = this.paramRangeEnd;
        while (true) {
            int findNextUnreservedRopReg = findNextUnreservedRopReg(i15, i10, alignment);
            if (fitPlanForRange(findNextUnreservedRopReg, normalSsaInsn, iArr, bitSet) >= 0) {
                return findNextUnreservedRopReg;
            }
            i15 = findNextUnreservedRopReg + 1;
            bitSet.clear();
        }
    }

    private int findNextUnreservedRopReg(int i10, int i11) {
        return findNextUnreservedRopReg(i10, i11, getAlignment(i11));
    }

    private int findRangeAndAdjust(NormalSsaInsn normalSsaInsn) {
        int oldToNew;
        BitSet bitSet;
        int fitPlanForRange;
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int[] iArr = new int[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            int category = sources.get(i11).getCategory();
            iArr[i11] = category;
            i10 += category;
        }
        int i12 = Integer.MIN_VALUE;
        BitSet bitSet2 = null;
        int i13 = -1;
        int i14 = 0;
        for (int i15 = 0; i15 < size; i15++) {
            int reg = sources.get(i15).getReg();
            if (i15 != 0) {
                i14 -= iArr[i15 - 1];
            }
            if (this.ssaRegsMapped.get(reg) && (oldToNew = this.mapper.oldToNew(reg) + i14) >= 0 && !spansParamRange(oldToNew, i10) && (fitPlanForRange = fitPlanForRange(oldToNew, normalSsaInsn, iArr, (bitSet = new BitSet(size)))) >= 0) {
                int cardinality = fitPlanForRange - bitSet.cardinality();
                if (cardinality > i12) {
                    i12 = cardinality;
                    i13 = oldToNew;
                    bitSet2 = bitSet;
                }
                if (fitPlanForRange == i10) {
                    break;
                }
            }
        }
        if (i13 == -1) {
            bitSet2 = new BitSet(size);
            i13 = findAnyFittingRange(normalSsaInsn, i10, iArr, bitSet2);
        }
        for (int nextSetBit = bitSet2.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet2.nextSetBit(nextSetBit + 1)) {
            normalSsaInsn.changeOneSource(nextSetBit, insertMoveBefore(normalSsaInsn, sources.get(nextSetBit)));
        }
        return i13;
    }

    private int findRopRegForLocal(int i10, int i11) {
        Alignment alignment = getAlignment(i11);
        int nextClearBit = alignment.nextClearBit(this.usedRopRegs, i10);
        while (true) {
            int i12 = 1;
            while (i12 < i11 && !this.usedRopRegs.get(nextClearBit + i12)) {
                i12++;
            }
            if (i12 == i11) {
                return nextClearBit;
            }
            nextClearBit = alignment.nextClearBit(this.usedRopRegs, nextClearBit + i12);
        }
    }

    private int fitPlanForRange(int i10, NormalSsaInsn normalSsaInsn, int[] iArr, BitSet bitSet) {
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        RegisterSpecList ssaSetToSpecs = ssaSetToSpecs(normalSsaInsn.getBlock().getLiveOutRegs());
        BitSet bitSet2 = new BitSet(this.ssaMeth.getRegCount());
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RegisterSpec registerSpec = sources.get(i12);
            int reg = registerSpec.getReg();
            int i13 = iArr[i12];
            if (i12 != 0) {
                i10 += iArr[i12 - 1];
            }
            if (!this.ssaRegsMapped.get(reg) || this.mapper.oldToNew(reg) != i10) {
                if (!rangeContainsReserved(i10, i13)) {
                    if (this.ssaRegsMapped.get(reg) || !canMapReg(registerSpec, i10) || bitSet2.get(reg)) {
                        if (!this.mapper.areAnyPinned(ssaSetToSpecs, i10, i13) && !this.mapper.areAnyPinned(sources, i10, i13)) {
                            bitSet.set(i12);
                            bitSet2.set(reg);
                        }
                    }
                }
                return -1;
            }
            i11 += i13;
            bitSet2.set(reg);
        }
        return i11;
    }

    private Alignment getAlignment(int i10) {
        return i10 == 2 ? isEven(this.paramRangeEnd) ? Alignment.EVEN : Alignment.ODD : Alignment.UNSPECIFIED;
    }

    private LocalItem getLocalItemForReg(int i10) {
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            Iterator<RegisterSpec> it = entry.getValue().iterator();
            while (it.hasNext()) {
                if (it.next().getReg() == i10) {
                    return entry.getKey();
                }
            }
        }
        return null;
    }

    private int getParameterIndexForReg(int i10) {
        Rop opcode;
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        if (definitionForRegister == null || (opcode = definitionForRegister.getOpcode()) == null || opcode.getOpcode() != 3) {
            return -1;
        }
        return ((CstInteger) ((CstInsn) definitionForRegister.getOriginalRopInsn()).getConstant()).getValue();
    }

    private void handleCheckCastResults() {
        Iterator<NormalSsaInsn> it = this.moveResultPseudoInsns.iterator();
        while (it.hasNext()) {
            NormalSsaInsn next = it.next();
            RegisterSpec result = next.getResult();
            int reg = result.getReg();
            BitSet predecessors = next.getBlock().getPredecessors();
            if (predecessors.cardinality() == 1) {
                ArrayList<SsaInsn> insns = this.ssaMeth.getBlocks().get(predecessors.nextSetBit(0)).getInsns();
                SsaInsn ssaInsn = insns.get(insns.size() - 1);
                if (ssaInsn.getOpcode().getOpcode() == 43) {
                    RegisterSpec registerSpec = ssaInsn.getSources().get(0);
                    int reg2 = registerSpec.getReg();
                    int category = registerSpec.getCategory();
                    boolean z10 = this.ssaRegsMapped.get(reg);
                    boolean z11 = this.ssaRegsMapped.get(reg2);
                    if ((!z11) & z10) {
                        z11 = tryMapReg(registerSpec, this.mapper.oldToNew(reg), category);
                    }
                    if ((!z10) & z11) {
                        z10 = tryMapReg(result, this.mapper.oldToNew(reg2), category);
                    }
                    if (!z10 || !z11) {
                        int findNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                        ArrayList<RegisterSpec> arrayList = new ArrayList<>(2);
                        arrayList.add(result);
                        arrayList.add(registerSpec);
                        while (!tryMapRegs(arrayList, findNextUnreservedRopReg, category, false)) {
                            findNextUnreservedRopReg = findNextUnreservedRopReg(findNextUnreservedRopReg + 1, category);
                        }
                    }
                    boolean z12 = ssaInsn.getOriginalRopInsn().getCatches().size() != 0;
                    int oldToNew = this.mapper.oldToNew(reg);
                    if (oldToNew != this.mapper.oldToNew(reg2) && !z12) {
                        ((NormalSsaInsn) ssaInsn).changeOneSource(0, insertMoveBefore(ssaInsn, registerSpec));
                        addMapping(ssaInsn.getSources().get(0), oldToNew);
                    }
                }
            }
        }
    }

    private void handleInvokeRangeInsns() {
        Iterator<NormalSsaInsn> it = this.invokeRangeInsns.iterator();
        while (it.hasNext()) {
            adjustAndMapSourceRangeRange(it.next());
        }
    }

    private void handleLocalAssociatedOther() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int i10 = this.paramRangeEnd;
            boolean z10 = false;
            do {
                int size = arrayList.size();
                int i11 = 1;
                for (int i12 = 0; i12 < size; i12++) {
                    RegisterSpec registerSpec = arrayList.get(i12);
                    int category = registerSpec.getCategory();
                    if (!this.ssaRegsMapped.get(registerSpec.getReg()) && category > i11) {
                        i11 = category;
                    }
                }
                int findRopRegForLocal = findRopRegForLocal(i10, i11);
                if (canMapRegs(arrayList, findRopRegForLocal)) {
                    z10 = tryMapRegs(arrayList, findRopRegForLocal, i11, true);
                }
                i10 = findRopRegForLocal + 1;
            } while (!z10);
        }
    }

    private void handleLocalAssociatedParams() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int size = arrayList.size();
            int i10 = 0;
            int i11 = -1;
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    break;
                }
                RegisterSpec registerSpec = arrayList.get(i12);
                int parameterIndexForReg = getParameterIndexForReg(registerSpec.getReg());
                if (parameterIndexForReg >= 0) {
                    i10 = registerSpec.getCategory();
                    addMapping(registerSpec, parameterIndexForReg);
                    i11 = parameterIndexForReg;
                    break;
                }
                i12++;
                i11 = parameterIndexForReg;
            }
            if (i11 >= 0) {
                tryMapRegs(arrayList, i11, i10, true);
            }
        }
    }

    private void handleNormalUnassociated() {
        RegisterSpec definitionSpecForSsaReg;
        int regCount = this.ssaMeth.getRegCount();
        for (int i10 = 0; i10 < regCount; i10++) {
            if (!this.ssaRegsMapped.get(i10) && (definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i10)) != null) {
                int category = definitionSpecForSsaReg.getCategory();
                int findNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                while (!canMapReg(definitionSpecForSsaReg, findNextUnreservedRopReg)) {
                    findNextUnreservedRopReg = findNextUnreservedRopReg(findNextUnreservedRopReg + 1, category);
                }
                addMapping(definitionSpecForSsaReg, findNextUnreservedRopReg);
            }
        }
    }

    private void handlePhiInsns() {
        Iterator<PhiInsn> it = this.phiInsns.iterator();
        while (it.hasNext()) {
            processPhiInsn(it.next());
        }
    }

    private void handleUnassociatedParameters() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i10 = 0; i10 < regCount; i10++) {
            if (!this.ssaRegsMapped.get(i10)) {
                int parameterIndexForReg = getParameterIndexForReg(i10);
                RegisterSpec definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i10);
                if (parameterIndexForReg >= 0) {
                    addMapping(definitionSpecForSsaReg, parameterIndexForReg);
                }
            }
        }
    }

    public static boolean isEven(int i10) {
        return (i10 & 1) == 0;
    }

    private boolean isThisPointerReg(int i10) {
        return i10 == 0 && !this.ssaMeth.isStatic();
    }

    private void markReserved(int i10, int i11) {
        this.reservedRopRegs.set(i10, i11 + i10, true);
    }

    private void printLocalVars() {
        System.out.println("Printing local vars");
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            sb2.append(C15883c.f126249O);
            Iterator<RegisterSpec> it = entry.getValue().iterator();
            while (it.hasNext()) {
                RegisterSpec next = it.next();
                sb2.append('v');
                sb2.append(next.getReg());
                sb2.append(C15883c.f126249O);
            }
            sb2.append(JavaElement.JEM_ANNOTATION);
            System.out.printf("Local: %s Registers: %s\n", entry.getKey(), sb2);
        }
    }

    private void processPhiInsn(PhiInsn phiInsn) {
        RegisterSpec result = phiInsn.getResult();
        int reg = result.getReg();
        int category = result.getCategory();
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        ArrayList<RegisterSpec> arrayList = new ArrayList<>();
        Multiset multiset = new Multiset(size + 1);
        if (this.ssaRegsMapped.get(reg)) {
            multiset.add(this.mapper.oldToNew(reg));
        } else {
            arrayList.add(result);
        }
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec result2 = this.ssaMeth.getDefinitionForRegister(sources.get(i10).getReg()).getResult();
            int reg2 = result2.getReg();
            if (this.ssaRegsMapped.get(reg2)) {
                multiset.add(this.mapper.oldToNew(reg2));
            } else {
                arrayList.add(result2);
            }
        }
        for (int i11 = 0; i11 < multiset.getSize(); i11++) {
            tryMapRegs(arrayList, multiset.getAndRemoveHighestCount(), category, false);
        }
        int findNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
        while (!tryMapRegs(arrayList, findNextUnreservedRopReg, category, false)) {
            findNextUnreservedRopReg = findNextUnreservedRopReg(findNextUnreservedRopReg + 1, category);
        }
    }

    private boolean rangeContainsReserved(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            if (this.reservedRopRegs.get(i12)) {
                return true;
            }
        }
        return false;
    }

    private boolean spansParamRange(int i10, int i11) {
        int i12 = this.paramRangeEnd;
        return i10 < i12 && i10 + i11 > i12;
    }

    private boolean tryMapReg(RegisterSpec registerSpec, int i10, int i11) {
        if (registerSpec.getCategory() > i11 || this.ssaRegsMapped.get(registerSpec.getReg()) || !canMapReg(registerSpec, i10)) {
            return false;
        }
        addMapping(registerSpec, i10);
        return true;
    }

    private boolean tryMapRegs(ArrayList<RegisterSpec> arrayList, int i10, int i11, boolean z10) {
        Iterator<RegisterSpec> it = arrayList.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            RegisterSpec next = it.next();
            if (!this.ssaRegsMapped.get(next.getReg())) {
                boolean tryMapReg = tryMapReg(next, i10, i11);
                z11 = !tryMapReg || z11;
                if (tryMapReg && z10) {
                    markReserved(i10, next.getCategory());
                }
            }
        }
        return !z11;
    }

    @Override
    public RegisterMapper allocateRegisters() {
        analyzeInstructions();
        handleLocalAssociatedParams();
        handleUnassociatedParameters();
        handleInvokeRangeInsns();
        handleLocalAssociatedOther();
        handleCheckCastResults();
        handlePhiInsns();
        handleNormalUnassociated();
        return this.mapper;
    }

    public RegisterSpecList ssaSetToSpecs(IntSet intSet) {
        RegisterSpecList registerSpecList = new RegisterSpecList(intSet.elements());
        IntIterator it = intSet.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            registerSpecList.set(i10, getDefinitionSpecForSsaReg(it.next()));
            i10++;
        }
        return registerSpecList;
    }

    @Override
    public boolean wantsParamsMovedHigh() {
        return true;
    }

    private int findNextUnreservedRopReg(int i10, int i11, Alignment alignment) {
        int nextClearBit = alignment.nextClearBit(this.reservedRopRegs, i10);
        while (true) {
            int i12 = 1;
            while (i12 < i11 && !this.reservedRopRegs.get(nextClearBit + i12)) {
                i12++;
            }
            if (i12 == i11) {
                return nextClearBit;
            }
            nextClearBit = alignment.nextClearBit(this.reservedRopRegs, nextClearBit + i12);
        }
    }
}
