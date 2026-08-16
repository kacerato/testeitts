package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ISourceAttribute;

public class SourceFileAttribute extends ClassFileAttribute implements ISourceAttribute {
    private int sourceFileIndex;
    private char[] sourceFileName;

    public SourceFileAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.sourceFileIndex = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.sourceFileName = decodeEntry.getUtf8Value();
    }

    @Override
    public int getSourceFileIndex() {
        return this.sourceFileIndex;
    }

    @Override
    public char[] getSourceFileName() {
        return this.sourceFileName;
    }
}
