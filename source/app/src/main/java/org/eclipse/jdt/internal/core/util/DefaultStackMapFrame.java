package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IStackMapFrame;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;

public class DefaultStackMapFrame extends ClassFileStruct implements IStackMapFrame {
    private static final IVerificationTypeInfo[] EMPTY_LOCALS_OR_STACK_ITEMS = new IVerificationTypeInfo[0];
    private IVerificationTypeInfo[] locals;
    private int numberOfLocals;
    private int numberOfStackItems;
    private int offsetDelta;
    private int readOffset;
    private IVerificationTypeInfo[] stackItems;

    public DefaultStackMapFrame(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.offsetDelta = u2At(bArr, 0, i10);
        int u2At = u2At(bArr, 2, i10);
        this.numberOfLocals = u2At;
        this.readOffset = 4;
        if (u2At != 0) {
            this.locals = new IVerificationTypeInfo[u2At];
            for (int i11 = 0; i11 < u2At; i11++) {
                VerificationInfo verificationInfo = new VerificationInfo(bArr, iConstantPool, this.readOffset + i10);
                this.locals[i11] = verificationInfo;
                this.readOffset += verificationInfo.sizeInBytes();
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
        for (int i12 = 0; i12 < u2At2; i12++) {
            VerificationInfo verificationInfo2 = new VerificationInfo(bArr, iConstantPool, this.readOffset + i10);
            this.stackItems[i12] = verificationInfo2;
            this.readOffset += verificationInfo2.sizeInBytes();
        }
    }

    @Override
    public int getFrameType() {
        return 255;
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
