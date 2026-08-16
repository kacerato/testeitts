package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantPoolEntry3;
import org.eclipse.jdt.core.util.IRequiresInfo;

public class RequiresInfo extends ClassFileStruct implements IRequiresInfo {
    private int flags;
    private int index;
    private char[] moduleName;
    private int versionIndex;
    private char[] versionName;

    public RequiresInfo(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.index = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 19) {
            throw new ClassFormatException(3);
        }
        this.moduleName = ((IConstantPoolEntry3) decodeEntry).getModuleName();
        this.flags = u2At(bArr, 2, i10);
        int u2At2 = u2At(bArr, 4, i10);
        this.versionIndex = u2At2;
        if (u2At2 == 0) {
            this.versionName = CharOperation.NO_CHAR;
            return;
        }
        IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(u2At2);
        if (decodeEntry2.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.versionName = decodeEntry2.getUtf8Value();
    }

    @Override
    public int getRequiresFlags() {
        return this.flags;
    }

    @Override
    public int getRequiresIndex() {
        return this.index;
    }

    @Override
    public char[] getRequiresModuleName() {
        return this.moduleName;
    }

    @Override
    public int getRequiresVersionIndex() {
        return this.versionIndex;
    }

    @Override
    public char[] getRequiresVersionValue() {
        return this.versionName;
    }
}
