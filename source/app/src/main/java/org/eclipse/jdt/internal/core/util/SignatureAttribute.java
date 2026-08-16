package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ISignatureAttribute;

public class SignatureAttribute extends ClassFileAttribute implements ISignatureAttribute {
    private char[] signature;
    private int signatureIndex;

    public SignatureAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.signatureIndex = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.signature = decodeEntry.getUtf8Value();
    }

    @Override
    public char[] getSignature() {
        return this.signature;
    }

    @Override
    public int getSignatureIndex() {
        return this.signatureIndex;
    }
}
