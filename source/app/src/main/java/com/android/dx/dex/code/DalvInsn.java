package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.TwoColumnOutput;
import java.util.BitSet;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public abstract class DalvInsn {
    private int address;
    private final Dop opcode;
    private final SourcePosition position;
    private final RegisterSpecList registers;

    public DalvInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        if (dop == null) {
            throw new NullPointerException("opcode == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("position == null");
        }
        if (registerSpecList == null) {
            throw new NullPointerException("registers == null");
        }
        this.address = -1;
        this.opcode = dop;
        this.position = sourcePosition;
        this.registers = registerSpecList;
    }

    public static SimpleInsn makeMove(SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        boolean z10 = registerSpec.getCategory() == 1;
        boolean isReference = registerSpec.getType().isReference();
        int reg = registerSpec.getReg();
        return new SimpleInsn((registerSpec2.getReg() | reg) < 16 ? isReference ? Dops.MOVE_OBJECT : z10 ? Dops.MOVE : Dops.MOVE_WIDE : reg < 256 ? isReference ? Dops.MOVE_OBJECT_FROM16 : z10 ? Dops.MOVE_FROM16 : Dops.MOVE_WIDE_FROM16 : isReference ? Dops.MOVE_OBJECT_16 : z10 ? Dops.MOVE_16 : Dops.MOVE_WIDE_16, sourcePosition, RegisterSpecList.make(registerSpec, registerSpec2));
    }

    public abstract String argString();

    public abstract int codeSize();

    public String cstComment() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public String cstString() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public DalvInsn expandedPrefix(BitSet bitSet) {
        RegisterSpecList registerSpecList = this.registers;
        boolean z10 = bitSet.get(0);
        if (hasResult()) {
            bitSet.set(0);
        }
        RegisterSpecList subset = registerSpecList.subset(bitSet);
        if (hasResult()) {
            bitSet.set(0, z10);
        }
        if (subset.size() == 0) {
            return null;
        }
        return new HighRegisterPrefix(this.position, subset);
    }

    public DalvInsn expandedSuffix(BitSet bitSet) {
        if (!hasResult() || bitSet.get(0)) {
            return null;
        }
        RegisterSpec registerSpec = this.registers.get(0);
        return makeMove(this.position, registerSpec, registerSpec.withReg(0));
    }

    public DalvInsn expandedVersion(BitSet bitSet) {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), bitSet));
    }

    public final int getAddress() {
        int i10 = this.address;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("address not yet known");
    }

    public DalvInsn getLowRegVersion() {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.dx.rop.code.RegisterSpecList] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.BitSet] */
    public final int getMinimumRegisterRequirement(BitSet bitSet) {
        ?? hasResult = hasResult();
        int size = this.registers.size();
        int i10 = 0;
        int category = (hasResult == 0 || bitSet.get(0)) ? 0 : this.registers.get(0).getCategory();
        while (hasResult < size) {
            if (!bitSet.get(hasResult)) {
                i10 += this.registers.get(hasResult).getCategory();
            }
            hasResult++;
        }
        return Math.max(i10, category);
    }

    public final int getNextAddress() {
        return getAddress() + codeSize();
    }

    public final Dop getOpcode() {
        return this.opcode;
    }

    public final SourcePosition getPosition() {
        return this.position;
    }

    public final RegisterSpecList getRegisters() {
        return this.registers;
    }

    public final boolean hasAddress() {
        return this.address >= 0;
    }

    public final boolean hasResult() {
        return this.opcode.hasResult();
    }

    public final String identifierString() {
        int i10 = this.address;
        return i10 != -1 ? String.format("%04x", Integer.valueOf(i10)) : Hex.u4(System.identityHashCode(this));
    }

    public final String listingString(String str, int i10, boolean z10) {
        String listingString0 = listingString0(z10);
        if (listingString0 == null) {
            return null;
        }
        String str2 = str + identifierString() + ": ";
        int length = str2.length();
        return TwoColumnOutput.toString(str2, length, "", listingString0, i10 == 0 ? listingString0.length() : i10 - length);
    }

    public abstract String listingString0(boolean z10);

    public final void setAddress(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("address < 0");
        }
        this.address = i10;
    }

    public final String toString() {
        boolean z10;
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(identifierString());
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append((Object) this.position);
        stringBuffer.append(": ");
        stringBuffer.append(this.opcode.getName());
        if (this.registers.size() != 0) {
            stringBuffer.append(this.registers.toHuman(" ", ", ", null));
            z10 = true;
        } else {
            z10 = false;
        }
        String argString = argString();
        if (argString != null) {
            if (z10) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(argString);
        }
        return stringBuffer.toString();
    }

    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return withRegisters(registerMapper.map(getRegisters()));
    }

    public abstract DalvInsn withOpcode(Dop dop);

    public abstract DalvInsn withRegisterOffset(int i10);

    public abstract DalvInsn withRegisters(RegisterSpecList registerSpecList);

    public abstract void writeTo(AnnotatedOutput annotatedOutput);
}
