package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableEntry;

public class LocalVariableTypeTableEntry extends ClassFileStruct implements ILocalVariableTypeTableEntry {
    private int index;
    private int length;
    private char[] name;
    private int nameIndex;
    private char[] signature;
    private int signatureIndex;
    private int startPC;

    public LocalVariableTypeTableEntry(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.startPC = u2At(bArr, 0, i10);
        this.length = u2At(bArr, 2, i10);
        this.nameIndex = u2At(bArr, 4, i10);
        this.signatureIndex = u2At(bArr, 6, i10);
        this.index = u2At(bArr, 8, i10);
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(this.nameIndex);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.name = decodeEntry.getUtf8Value();
        IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(this.signatureIndex);
        if (decodeEntry2.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.signature = decodeEntry2.getUtf8Value();
    }

    @Override
    public int getIndex() {
        return this.index;
    }

    @Override
    public int getLength() {
        return this.length;
    }

    @Override
    public char[] getName() {
        return this.name;
    }

    @Override
    public int getNameIndex() {
        return this.nameIndex;
    }

    @Override
    public char[] getSignature() {
        return this.signature;
    }

    @Override
    public int getSignatureIndex() {
        return this.signatureIndex;
    }

    @Override
    public int getStartPC() {
        return this.startPC;
    }
}
