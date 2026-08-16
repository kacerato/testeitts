package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IModuleMainClassAttribute;

public class ModuleMainClassAttribute extends ClassFileAttribute implements IModuleMainClassAttribute {
    private final int mainClassIndex;
    private final char[] mainClassName;

    public ModuleMainClassAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.mainClassIndex = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 7) {
            throw new ClassFormatException(3);
        }
        this.mainClassName = decodeEntry.getClassInfoName();
    }

    @Override
    public int getMainClassIndex() {
        return this.mainClassIndex;
    }

    @Override
    public char[] getMainClassName() {
        return this.mainClassName;
    }
}
