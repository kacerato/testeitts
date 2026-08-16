package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;

public final class SwitchData extends VariableSizeInsn {
    private final IntList cases;
    private final boolean packed;
    private final CodeAddress[] targets;
    private final CodeAddress user;

    public SwitchData(SourcePosition sourcePosition, CodeAddress codeAddress, IntList intList, CodeAddress[] codeAddressArr) {
        super(sourcePosition, RegisterSpecList.EMPTY);
        if (codeAddress == null) {
            throw new NullPointerException("user == null");
        }
        if (intList == null) {
            throw new NullPointerException("cases == null");
        }
        if (codeAddressArr == null) {
            throw new NullPointerException("targets == null");
        }
        int size = intList.size();
        if (size != codeAddressArr.length) {
            throw new IllegalArgumentException("cases / targets mismatch");
        }
        if (size > 65535) {
            throw new IllegalArgumentException("too many cases");
        }
        this.user = codeAddress;
        this.cases = intList;
        this.targets = codeAddressArr;
        this.packed = shouldPack(intList);
    }

    private static long packedCodeSize(IntList intList) {
        int size = intList.size();
        long j10 = (((intList.get(size - 1) - intList.get(0)) + 1) * 2) + 4;
        if (j10 <= 2147483647L) {
            return j10;
        }
        return -1L;
    }

    private static boolean shouldPack(IntList intList) {
        if (intList.size() < 2) {
            return true;
        }
        long packedCodeSize = packedCodeSize(intList);
        return packedCodeSize >= 0 && packedCodeSize <= (sparseCodeSize(intList) * 5) / 4;
    }

    private static long sparseCodeSize(IntList intList) {
        return (intList.size() * 4) + 2;
    }

    @Override
    public String argString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        int length = this.targets.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append("\n    ");
            stringBuffer.append(this.cases.get(i10));
            stringBuffer.append(": ");
            stringBuffer.append((Object) this.targets[i10]);
        }
        return stringBuffer.toString();
    }

    @Override
    public int codeSize() {
        return (int) (this.packed ? packedCodeSize(this.cases) : sparseCodeSize(this.cases));
    }

    public boolean isPacked() {
        return this.packed;
    }

    @Override
    public String listingString0(boolean z10) {
        int address = this.user.getAddress();
        StringBuffer stringBuffer = new StringBuffer(100);
        int length = this.targets.length;
        stringBuffer.append(this.packed ? "packed" : "sparse");
        stringBuffer.append("-switch-payload // for switch @ ");
        stringBuffer.append(Hex.u2(address));
        for (int i10 = 0; i10 < length; i10++) {
            int address2 = this.targets[i10].getAddress();
            stringBuffer.append("\n  ");
            stringBuffer.append(this.cases.get(i10));
            stringBuffer.append(": ");
            stringBuffer.append(Hex.u4(address2));
            stringBuffer.append(" // ");
            stringBuffer.append(Hex.s4(address2 - address));
        }
        return stringBuffer.toString();
    }

    @Override
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new SwitchData(getPosition(), this.user, this.cases, this.targets);
    }

    @Override
    public void writeTo(AnnotatedOutput annotatedOutput) {
        int address;
        int address2 = this.user.getAddress();
        int codeSize = Dops.PACKED_SWITCH.getFormat().codeSize();
        int length = this.targets.length;
        int i10 = 0;
        if (!this.packed) {
            annotatedOutput.writeShort(512);
            annotatedOutput.writeShort(length);
            for (int i11 = 0; i11 < length; i11++) {
                annotatedOutput.writeInt(this.cases.get(i11));
            }
            while (i10 < length) {
                annotatedOutput.writeInt(this.targets[i10].getAddress() - address2);
                i10++;
            }
            return;
        }
        int i12 = length == 0 ? 0 : this.cases.get(0);
        int i13 = ((length == 0 ? 0 : this.cases.get(length - 1)) - i12) + 1;
        annotatedOutput.writeShort(256);
        annotatedOutput.writeShort(i13);
        annotatedOutput.writeInt(i12);
        int i14 = 0;
        while (i10 < i13) {
            if (this.cases.get(i14) > i12 + i10) {
                address = codeSize;
            } else {
                address = this.targets[i14].getAddress() - address2;
                i14++;
            }
            annotatedOutput.writeInt(address);
            i10++;
        }
    }
}
