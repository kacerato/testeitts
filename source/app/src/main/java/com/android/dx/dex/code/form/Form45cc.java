package com.android.dx.dex.code.form;

import com.android.dx.dex.code.DalvInsn;
import com.android.dx.dex.code.InsnFormat;
import com.android.dx.dex.code.MultiCstInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.type.Type;
import com.android.dx.util.AnnotatedOutput;
import java.util.BitSet;

public final class Form45cc extends InsnFormat {
    private static final int MAX_NUM_OPS = 5;
    public static final InsnFormat THE_ONE = new Form45cc();

    private Form45cc() {
    }

    private static RegisterSpecList explicitize(RegisterSpecList registerSpecList) {
        int wordCount = wordCount(registerSpecList);
        int size = registerSpecList.size();
        if (wordCount == size) {
            return registerSpecList;
        }
        RegisterSpecList registerSpecList2 = new RegisterSpecList(wordCount);
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RegisterSpec registerSpec = registerSpecList.get(i11);
            registerSpecList2.set(i10, registerSpec);
            if (registerSpec.getCategory() == 2) {
                registerSpecList2.set(i10 + 1, RegisterSpec.make(registerSpec.getReg() + 1, Type.VOID));
                i10 += 2;
            } else {
                i10++;
            }
        }
        registerSpecList2.setImmutable();
        return registerSpecList2;
    }

    private static int wordCount(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        if (size > 5) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += registerSpecList.get(i11).getCategory();
            if (!InsnFormat.unsignedFitsInNibble((r5.getReg() + r5.getCategory()) - 1)) {
                return -1;
            }
        }
        if (i10 <= 5) {
            return i10;
        }
        return -1;
    }

    @Override
    public int codeSize() {
        return 4;
    }

    @Override
    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        RegisterSpecList registers = dalvInsn.getRegisters();
        int size = registers.size();
        BitSet bitSet = new BitSet(size);
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec registerSpec = registers.get(i10);
            bitSet.set(i10, InsnFormat.unsignedFitsInNibble((registerSpec.getReg() + registerSpec.getCategory()) - 1));
        }
        return bitSet;
    }

    @Override
    public String insnArgString(DalvInsn dalvInsn) {
        return InsnFormat.regListString(explicitize(dalvInsn.getRegisters())) + ", " + dalvInsn.cstString();
    }

    @Override
    public String insnCommentString(DalvInsn dalvInsn, boolean z10) {
        return z10 ? dalvInsn.cstComment() : "";
    }

    @Override
    public boolean isCompatible(DalvInsn dalvInsn) {
        if (!(dalvInsn instanceof MultiCstInsn)) {
            return false;
        }
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        if (multiCstInsn.getNumberOfConstants() != 2) {
            return false;
        }
        return InsnFormat.unsignedFitsInShort(multiCstInsn.getIndex(0)) && InsnFormat.unsignedFitsInShort(multiCstInsn.getIndex(1)) && (multiCstInsn.getConstant(0) instanceof CstMethodRef) && (multiCstInsn.getConstant(1) instanceof CstProtoRef) && wordCount(multiCstInsn.getRegisters()) >= 0;
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn) {
        MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
        short index = (short) multiCstInsn.getIndex(0);
        short index2 = (short) multiCstInsn.getIndex(1);
        RegisterSpecList explicitize = explicitize(dalvInsn.getRegisters());
        int size = explicitize.size();
        InsnFormat.write(annotatedOutput, InsnFormat.opcodeUnit(dalvInsn, InsnFormat.makeByte(size > 4 ? explicitize.get(4).getReg() : 0, size)), index, InsnFormat.codeUnit(size > 0 ? explicitize.get(0).getReg() : 0, size > 1 ? explicitize.get(1).getReg() : 0, size > 2 ? explicitize.get(2).getReg() : 0, size > 3 ? explicitize.get(3).getReg() : 0), index2);
    }
}
