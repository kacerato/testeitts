package com.android.dx.dex.code;

import com.android.dex.DexException;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.ssa.BasicRegisterMapper;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;

public final class OutputFinisher {
    private final DexOptions dexOptions;
    private ArrayList<DalvInsn> insns;
    private final int paramSize;
    private int reservedParameterCount;
    private final int unreservedRegCount;
    private int reservedCount = -1;
    private boolean hasAnyPositionInfo = false;
    private boolean hasAnyLocalInfo = false;

    public OutputFinisher(DexOptions dexOptions, int i10, int i11, int i12) {
        this.dexOptions = dexOptions;
        this.unreservedRegCount = i11;
        this.insns = new ArrayList<>(i10);
        this.paramSize = i12;
    }

    private static void addConstants(HashSet<Constant> hashSet, DalvInsn dalvInsn) {
        if (dalvInsn instanceof CstInsn) {
            hashSet.add(((CstInsn) dalvInsn).getConstant());
            return;
        }
        int i10 = 0;
        if (dalvInsn instanceof MultiCstInsn) {
            MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
            while (i10 < multiCstInsn.getNumberOfConstants()) {
                hashSet.add(multiCstInsn.getConstant(i10));
                i10++;
            }
            return;
        }
        if (dalvInsn instanceof LocalSnapshot) {
            RegisterSpecSet locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            while (i10 < size) {
                addConstants(hashSet, locals.get(i10));
                i10++;
            }
            return;
        }
        if (dalvInsn instanceof LocalStart) {
            addConstants(hashSet, ((LocalStart) dalvInsn).getLocal());
        }
    }

    private void addReservedParameters(int i10) {
        shiftParameters(i10);
        this.reservedParameterCount += i10;
    }

    private void addReservedRegisters(int i10) {
        shiftAllRegisters(i10);
        this.reservedCount += i10;
    }

    private void align64bits(Dop[] dopArr) {
        do {
            int i10 = ((this.unreservedRegCount + this.reservedCount) + this.reservedParameterCount) - this.paramSize;
            Iterator<DalvInsn> it = this.insns.iterator();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            while (it.hasNext()) {
                RegisterSpecList registers = it.next().getRegisters();
                for (int i15 = 0; i15 < registers.size(); i15++) {
                    RegisterSpec registerSpec = registers.get(i15);
                    if (registerSpec.isCategory2()) {
                        boolean z10 = registerSpec.getReg() >= i10;
                        if (registerSpec.isEvenRegister()) {
                            if (z10) {
                                i12++;
                            } else {
                                i14++;
                            }
                        } else if (z10) {
                            i11++;
                        } else {
                            i13++;
                        }
                    }
                }
            }
            if (i11 > i12 && i13 > i14) {
                addReservedRegisters(1);
            } else if (i11 > i12) {
                addReservedParameters(1);
            } else {
                if (i13 <= i14) {
                    return;
                }
                addReservedRegisters(1);
                if (this.paramSize != 0 && i12 > i11) {
                    addReservedParameters(1);
                }
            }
        } while (reserveRegisters(dopArr));
    }

    private void assignAddresses() {
        int size = this.insns.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            DalvInsn dalvInsn = this.insns.get(i11);
            dalvInsn.setAddress(i10);
            i10 += dalvInsn.codeSize();
        }
    }

    private void assignAddressesAndFixBranches() {
        do {
            assignAddresses();
        } while (fixBranches());
    }

    private int calculateReservedCount(Dop[] dopArr) {
        int i10;
        int size = this.insns.size();
        int i11 = this.reservedCount;
        while (i10 < size) {
            DalvInsn dalvInsn = this.insns.get(i10);
            Dop dop = dopArr[i10];
            Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn, dop);
            if (findOpcodeForInsn == null) {
                int minimumRegisterRequirement = dalvInsn.getMinimumRegisterRequirement(findExpandedOpcodeForInsn(dalvInsn).getFormat().compatibleRegs(dalvInsn));
                if (minimumRegisterRequirement > i11) {
                    i11 = minimumRegisterRequirement;
                }
            } else {
                i10 = dop == findOpcodeForInsn ? i10 + 1 : 0;
            }
            dopArr[i10] = findOpcodeForInsn;
        }
        return i11;
    }

    private Dop findExpandedOpcodeForInsn(DalvInsn dalvInsn) {
        Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn.getLowRegVersion(), dalvInsn.getOpcode());
        if (findOpcodeForInsn != null) {
            return findOpcodeForInsn;
        }
        throw new DexException("No expanded opcode for " + ((Object) dalvInsn));
    }

    private Dop findOpcodeForInsn(DalvInsn dalvInsn, Dop dop) {
        while (dop != null && (!dop.getFormat().isCompatible(dalvInsn) || (this.dexOptions.forceJumbo && dop.getOpcode() == 26))) {
            dop = Dops.getNextOrNull(dop, this.dexOptions);
        }
        return dop;
    }

    private boolean fixBranches() {
        int size = this.insns.size();
        int i10 = 0;
        boolean z10 = false;
        while (i10 < size) {
            DalvInsn dalvInsn = this.insns.get(i10);
            if (dalvInsn instanceof TargetInsn) {
                Dop opcode = dalvInsn.getOpcode();
                TargetInsn targetInsn = (TargetInsn) dalvInsn;
                if (opcode.getFormat().branchFits(targetInsn)) {
                    continue;
                } else {
                    if (opcode.getFamily() == 40) {
                        Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn, opcode);
                        if (findOpcodeForInsn == null) {
                            throw new UnsupportedOperationException("method too long");
                        }
                        this.insns.set(i10, dalvInsn.withOpcode(findOpcodeForInsn));
                    } else {
                        try {
                            int i11 = i10 + 1;
                            CodeAddress codeAddress = (CodeAddress) this.insns.get(i11);
                            this.insns.set(i10, new TargetInsn(Dops.GOTO, targetInsn.getPosition(), RegisterSpecList.EMPTY, targetInsn.getTarget()));
                            this.insns.add(i10, targetInsn.withNewTargetAndReversed(codeAddress));
                            size++;
                            i10 = i11;
                        } catch (ClassCastException unused) {
                            throw new IllegalStateException("unpaired TargetInsn");
                        } catch (IndexOutOfBoundsException unused2) {
                            throw new IllegalStateException("unpaired TargetInsn (dangling)");
                        }
                    }
                    z10 = true;
                }
            }
            i10++;
        }
        return z10;
    }

    private static boolean hasLocalInfo(DalvInsn dalvInsn) {
        if (dalvInsn instanceof LocalSnapshot) {
            RegisterSpecSet locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (hasLocalInfo(locals.get(i10))) {
                    return true;
                }
            }
        } else if ((dalvInsn instanceof LocalStart) && hasLocalInfo(((LocalStart) dalvInsn).getLocal())) {
            return true;
        }
        return false;
    }

    private Dop[] makeOpcodesArray() {
        int size = this.insns.size();
        Dop[] dopArr = new Dop[size];
        for (int i10 = 0; i10 < size; i10++) {
            dopArr[i10] = this.insns.get(i10).getOpcode();
        }
        return dopArr;
    }

    private void massageInstructions(Dop[] dopArr) {
        if (this.reservedCount != 0) {
            this.insns = performExpansion(dopArr);
            return;
        }
        int size = this.insns.size();
        for (int i10 = 0; i10 < size; i10++) {
            DalvInsn dalvInsn = this.insns.get(i10);
            Dop opcode = dalvInsn.getOpcode();
            Dop dop = dopArr[i10];
            if (opcode != dop) {
                this.insns.set(i10, dalvInsn.withOpcode(dop));
            }
        }
    }

    private ArrayList<DalvInsn> performExpansion(Dop[] dopArr) {
        DalvInsn expandedSuffix;
        DalvInsn dalvInsn;
        int size = this.insns.size();
        ArrayList<DalvInsn> arrayList = new ArrayList<>(size * 2);
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            DalvInsn dalvInsn2 = this.insns.get(i10);
            Dop opcode = dalvInsn2.getOpcode();
            Dop dop = dopArr[i10];
            if (dop != null) {
                dalvInsn = null;
                expandedSuffix = null;
            } else {
                dop = findExpandedOpcodeForInsn(dalvInsn2);
                BitSet compatibleRegs = dop.getFormat().compatibleRegs(dalvInsn2);
                DalvInsn expandedPrefix = dalvInsn2.expandedPrefix(compatibleRegs);
                expandedSuffix = dalvInsn2.expandedSuffix(compatibleRegs);
                dalvInsn2 = dalvInsn2.expandedVersion(compatibleRegs);
                dalvInsn = expandedPrefix;
            }
            if (dalvInsn2 instanceof CodeAddress) {
                CodeAddress codeAddress = (CodeAddress) dalvInsn2;
                if (codeAddress.getBindsClosely()) {
                    arrayList2.add(codeAddress);
                }
            }
            if (dalvInsn != null) {
                arrayList.add(dalvInsn);
            }
            if (!(dalvInsn2 instanceof ZeroSizeInsn) && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    arrayList.add((CodeAddress) it.next());
                }
                arrayList2.clear();
            }
            if (dop != opcode) {
                dalvInsn2 = dalvInsn2.withOpcode(dop);
            }
            arrayList.add(dalvInsn2);
            if (expandedSuffix != null) {
                arrayList.add(expandedSuffix);
            }
        }
        return arrayList;
    }

    private boolean reserveRegisters(Dop[] dopArr) {
        int i10 = this.reservedCount;
        if (i10 < 0) {
            i10 = 0;
        }
        boolean z10 = false;
        while (true) {
            int calculateReservedCount = calculateReservedCount(dopArr);
            if (i10 >= calculateReservedCount) {
                this.reservedCount = i10;
                return z10;
            }
            int i11 = calculateReservedCount - i10;
            int size = this.insns.size();
            for (int i12 = 0; i12 < size; i12++) {
                DalvInsn dalvInsn = this.insns.get(i12);
                if (!(dalvInsn instanceof CodeAddress)) {
                    this.insns.set(i12, dalvInsn.withRegisterOffset(i11));
                }
            }
            z10 = true;
            i10 = calculateReservedCount;
        }
    }

    private void shiftAllRegisters(int i10) {
        int size = this.insns.size();
        for (int i11 = 0; i11 < size; i11++) {
            DalvInsn dalvInsn = this.insns.get(i11);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i11, dalvInsn.withRegisterOffset(i10));
            }
        }
    }

    private void shiftParameters(int i10) {
        int size = this.insns.size();
        int i11 = this.unreservedRegCount + this.reservedCount + this.reservedParameterCount;
        int i12 = i11 - this.paramSize;
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(i11);
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 >= i12) {
                basicRegisterMapper.addMapping(i13, i13 + i10, 1);
            } else {
                basicRegisterMapper.addMapping(i13, i13, 1);
            }
        }
        for (int i14 = 0; i14 < size; i14++) {
            DalvInsn dalvInsn = this.insns.get(i14);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i14, dalvInsn.withMapper(basicRegisterMapper));
            }
        }
    }

    private void updateInfo(DalvInsn dalvInsn) {
        if (!this.hasAnyPositionInfo && dalvInsn.getPosition().getLine() >= 0) {
            this.hasAnyPositionInfo = true;
        }
        if (this.hasAnyLocalInfo || !hasLocalInfo(dalvInsn)) {
            return;
        }
        this.hasAnyLocalInfo = true;
    }

    public void add(DalvInsn dalvInsn) {
        this.insns.add(dalvInsn);
        updateInfo(dalvInsn);
    }

    public void assignIndices(DalvCode.AssignIndicesCallback assignIndicesCallback) {
        Iterator<DalvInsn> it = this.insns.iterator();
        while (it.hasNext()) {
            DalvInsn next = it.next();
            if (next instanceof CstInsn) {
                assignIndices((CstInsn) next, assignIndicesCallback);
            } else if (next instanceof MultiCstInsn) {
                assignIndices((MultiCstInsn) next, assignIndicesCallback);
            }
        }
    }

    public DalvInsnList finishProcessingAndGetList() {
        if (this.reservedCount >= 0) {
            throw new UnsupportedOperationException("already processed");
        }
        Dop[] makeOpcodesArray = makeOpcodesArray();
        reserveRegisters(makeOpcodesArray);
        if (this.dexOptions.ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER) {
            align64bits(makeOpcodesArray);
        }
        massageInstructions(makeOpcodesArray);
        assignAddressesAndFixBranches();
        return DalvInsnList.makeImmutable(this.insns, this.reservedCount + this.unreservedRegCount + this.reservedParameterCount);
    }

    public HashSet<Constant> getAllConstants() {
        HashSet<Constant> hashSet = new HashSet<>(20);
        Iterator<DalvInsn> it = this.insns.iterator();
        while (it.hasNext()) {
            addConstants(hashSet, it.next());
        }
        return hashSet;
    }

    public boolean hasAnyLocalInfo() {
        return this.hasAnyLocalInfo;
    }

    public boolean hasAnyPositionInfo() {
        return this.hasAnyPositionInfo;
    }

    public void insert(int i10, DalvInsn dalvInsn) {
        this.insns.add(i10, dalvInsn);
        updateInfo(dalvInsn);
    }

    public void reverseBranch(int i10, CodeAddress codeAddress) {
        int size = (this.insns.size() - i10) - 1;
        try {
            this.insns.set(size, ((TargetInsn) this.insns.get(size)).withNewTargetAndReversed(codeAddress));
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("non-reversible instruction");
        } catch (IndexOutOfBoundsException unused2) {
            throw new IllegalArgumentException("too few instructions");
        }
    }

    private static void assignIndices(CstInsn cstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        int index;
        Constant constant = cstInsn.getConstant();
        int index2 = assignIndicesCallback.getIndex(constant);
        if (index2 >= 0) {
            cstInsn.setIndex(index2);
        }
        if (!(constant instanceof CstMemberRef) || (index = assignIndicesCallback.getIndex(((CstMemberRef) constant).getDefiningClass())) < 0) {
            return;
        }
        cstInsn.setClassIndex(index);
    }

    private static boolean hasLocalInfo(RegisterSpec registerSpec) {
        return (registerSpec == null || registerSpec.getLocalItem().getName() == null) ? false : true;
    }

    private static void assignIndices(MultiCstInsn multiCstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        for (int i10 = 0; i10 < multiCstInsn.getNumberOfConstants(); i10++) {
            Constant constant = multiCstInsn.getConstant(i10);
            multiCstInsn.setIndex(i10, assignIndicesCallback.getIndex(constant));
            if (constant instanceof CstMemberRef) {
                multiCstInsn.setClassIndex(assignIndicesCallback.getIndex(((CstMemberRef) constant).getDefiningClass()));
            }
        }
    }

    private static void addConstants(HashSet<Constant> hashSet, RegisterSpec registerSpec) {
        if (registerSpec == null) {
            return;
        }
        LocalItem localItem = registerSpec.getLocalItem();
        CstString name = localItem.getName();
        CstString signature = localItem.getSignature();
        Type type = registerSpec.getType();
        if (type != Type.KNOWN_NULL) {
            hashSet.add(CstType.intern(type));
        }
        if (name != null) {
            hashSet.add(name);
        }
        if (signature != null) {
            hashSet.add(signature);
        }
    }
}
