package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;

public class InnerClassesAttributeEntry extends ClassFileStruct implements IInnerClassesAttributeEntry {
    private int accessFlags;
    private char[] innerClassName;
    private int innerClassNameIndex;
    private char[] innerName;
    private int innerNameIndex;
    private char[] outerClassName;
    private int outerClassNameIndex;

    public InnerClassesAttributeEntry(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.innerClassNameIndex = u2At(bArr, 0, i10);
        this.outerClassNameIndex = u2At(bArr, 2, i10);
        this.innerNameIndex = u2At(bArr, 4, i10);
        this.accessFlags = u2At(bArr, 6, i10);
        int i11 = this.innerClassNameIndex;
        if (i11 != 0) {
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(i11);
            if (decodeEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.innerClassName = decodeEntry.getClassInfoName();
        }
        int i12 = this.outerClassNameIndex;
        if (i12 != 0) {
            IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(i12);
            if (decodeEntry2.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.outerClassName = decodeEntry2.getClassInfoName();
        }
        int i13 = this.innerNameIndex;
        if (i13 != 0) {
            IConstantPoolEntry decodeEntry3 = iConstantPool.decodeEntry(i13);
            if (decodeEntry3.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.innerName = decodeEntry3.getUtf8Value();
        }
    }

    @Override
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override
    public char[] getInnerClassName() {
        return this.innerClassName;
    }

    @Override
    public int getInnerClassNameIndex() {
        return this.innerClassNameIndex;
    }

    @Override
    public char[] getInnerName() {
        return this.innerName;
    }

    @Override
    public int getInnerNameIndex() {
        return this.innerNameIndex;
    }

    @Override
    public char[] getOuterClassName() {
        return this.outerClassName;
    }

    @Override
    public int getOuterClassNameIndex() {
        return this.outerClassNameIndex;
    }
}
