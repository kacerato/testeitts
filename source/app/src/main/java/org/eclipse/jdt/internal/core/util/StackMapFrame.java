package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IStackMapFrame;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;

public class StackMapFrame extends ClassFileStruct implements IStackMapFrame {
    private static final IVerificationTypeInfo[] EMPTY_LOCALS_OR_STACK_ITEMS = new IVerificationTypeInfo[0];
    private int frameType;
    private IVerificationTypeInfo[] locals;
    private int numberOfLocals;
    private int numberOfStackItems;
    private int offsetDelta;
    private int readOffset;
    private IVerificationTypeInfo[] stackItems;

    public StackMapFrame(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int i11 = 0;
        int u1At = u1At(bArr, 0, i10);
        this.frameType = u1At;
        switch (u1At) {
            case 247:
                this.offsetDelta = u2At(bArr, 1, i10);
                this.numberOfStackItems = 1;
                this.stackItems = new VerificationInfo[1];
                this.readOffset = 3;
                VerificationInfo verificationInfo = new VerificationInfo(bArr, iConstantPool, i10 + 3);
                this.stackItems[0] = verificationInfo;
                this.readOffset += verificationInfo.sizeInBytes();
                this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.numberOfLocals = 0;
                return;
            case 248:
            case 249:
            case 250:
                this.offsetDelta = u2At(bArr, 1, i10);
                this.numberOfStackItems = 0;
                IVerificationTypeInfo[] iVerificationTypeInfoArr = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.stackItems = iVerificationTypeInfoArr;
                this.readOffset = 3;
                this.locals = iVerificationTypeInfoArr;
                this.numberOfLocals = 0;
                return;
            case 251:
                this.offsetDelta = u2At(bArr, 1, i10);
                this.numberOfStackItems = 0;
                IVerificationTypeInfo[] iVerificationTypeInfoArr2 = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.stackItems = iVerificationTypeInfoArr2;
                this.readOffset = 3;
                this.locals = iVerificationTypeInfoArr2;
                this.numberOfLocals = 0;
                return;
            case 252:
            case 253:
            case 254:
                this.offsetDelta = u2At(bArr, 1, i10);
                this.numberOfStackItems = 0;
                this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.readOffset = 3;
                int i12 = u1At - 251;
                this.numberOfLocals = i12;
                this.locals = new IVerificationTypeInfo[i12];
                while (i11 < i12) {
                    VerificationInfo verificationInfo2 = new VerificationInfo(bArr, iConstantPool, this.readOffset + i10);
                    this.locals[i11] = verificationInfo2;
                    this.readOffset += verificationInfo2.sizeInBytes();
                    i11++;
                }
                return;
            case 255:
                this.offsetDelta = u2At(bArr, 1, i10);
                int u2At = u2At(bArr, 3, i10);
                this.numberOfLocals = u2At;
                this.readOffset = 5;
                if (u2At != 0) {
                    this.locals = new IVerificationTypeInfo[u2At];
                    for (int i13 = 0; i13 < u2At; i13++) {
                        VerificationInfo verificationInfo3 = new VerificationInfo(bArr, iConstantPool, this.readOffset + i10);
                        this.locals[i13] = verificationInfo3;
                        this.readOffset += verificationInfo3.sizeInBytes();
                    }
                } else {
                    this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                }
                int u2At2 = u2At(bArr, this.readOffset, i10);
                this.readOffset += 2;
                this.numberOfStackItems = u2At2;
                if (u2At2 == 0) {
                    this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                    return;
                }
                this.stackItems = new IVerificationTypeInfo[u2At2];
                while (i11 < u2At2) {
                    VerificationInfo verificationInfo4 = new VerificationInfo(bArr, iConstantPool, this.readOffset + i10);
                    this.stackItems[i11] = verificationInfo4;
                    this.readOffset += verificationInfo4.sizeInBytes();
                    i11++;
                }
                return;
            default:
                if (u1At <= 63) {
                    this.offsetDelta = u1At;
                    this.numberOfStackItems = 0;
                    IVerificationTypeInfo[] iVerificationTypeInfoArr3 = EMPTY_LOCALS_OR_STACK_ITEMS;
                    this.stackItems = iVerificationTypeInfoArr3;
                    this.locals = iVerificationTypeInfoArr3;
                    this.numberOfLocals = 0;
                    this.readOffset = 1;
                    return;
                }
                if (u1At <= 127) {
                    this.offsetDelta = u1At - 64;
                    this.numberOfStackItems = 1;
                    this.stackItems = new VerificationInfo[1];
                    this.readOffset = 1;
                    VerificationInfo verificationInfo5 = new VerificationInfo(bArr, iConstantPool, i10 + 1);
                    this.stackItems[0] = verificationInfo5;
                    this.readOffset += verificationInfo5.sizeInBytes();
                    this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                    this.numberOfLocals = 0;
                    return;
                }
                return;
        }
    }

    @Override
    public int getFrameType() {
        return this.frameType;
    }

    @Override
    public IVerificationTypeInfo[] getLocals() {
        return this.locals;
    }

    @Override
    public int getNumberOfLocals() {
        return this.numberOfLocals;
    }

    @Override
    public int getNumberOfStackItems() {
        return this.numberOfStackItems;
    }

    @Override
    public int getOffsetDelta() {
        return this.offsetDelta;
    }

    @Override
    public IVerificationTypeInfo[] getStackItems() {
        return this.stackItems;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}
