package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IStackMapAttribute;
import org.eclipse.jdt.core.util.IStackMapFrame;

public class StackMapAttribute extends ClassFileAttribute implements IStackMapAttribute {
    private byte[] bytes;
    private IStackMapFrame[] frames;
    private int numberOfEntries;
    private static final IStackMapFrame[] NO_FRAMES = new IStackMapFrame[0];
    private static final byte[] NO_ENTRIES = new byte[0];

    public StackMapAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.numberOfEntries = u2At;
        if (u2At != 0) {
            this.frames = new IStackMapFrame[u2At];
            int i11 = 8;
            for (int i12 = 0; i12 < u2At; i12++) {
                DefaultStackMapFrame defaultStackMapFrame = new DefaultStackMapFrame(bArr, iConstantPool, i10 + i11);
                this.frames[i12] = defaultStackMapFrame;
                i11 += defaultStackMapFrame.sizeInBytes();
            }
        } else {
            this.frames = NO_FRAMES;
        }
        int u4At = (int) u4At(bArr, 2, i10);
        if (u2At == 0) {
            this.bytes = NO_ENTRIES;
            return;
        }
        byte[] bArr2 = new byte[u4At];
        this.bytes = bArr2;
        System.arraycopy(bArr, i10 + 6, bArr2, 0, u4At);
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    @Override
    public int getNumberOfEntries() {
        return this.numberOfEntries;
    }

    @Override
    public IStackMapFrame[] getStackMapFrame() {
        return this.frames;
    }
}
