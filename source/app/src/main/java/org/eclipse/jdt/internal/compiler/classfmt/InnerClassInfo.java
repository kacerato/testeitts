package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;

public class InnerClassInfo extends ClassFileStruct implements IBinaryNestedType {
    private int accessFlags;
    private char[] innerClassName;
    int innerClassNameIndex;
    private char[] innerName;
    int innerNameIndex;
    private char[] outerClassName;
    int outerClassNameIndex;
    private boolean readInnerClassName;
    private boolean readInnerName;
    private boolean readOuterClassName;

    public InnerClassInfo(byte[] bArr, int[] iArr, int i10) {
        super(bArr, iArr, i10);
        this.innerClassNameIndex = -1;
        this.outerClassNameIndex = -1;
        this.innerNameIndex = -1;
        this.accessFlags = -1;
        this.innerClassNameIndex = u2At(0);
        this.outerClassNameIndex = u2At(2);
        this.innerNameIndex = u2At(4);
    }

    @Override
    public char[] getEnclosingTypeName() {
        if (!this.readOuterClassName) {
            int i10 = this.outerClassNameIndex;
            if (i10 != 0) {
                int[] iArr = this.constantPoolOffsets;
                int i11 = iArr[u2At((iArr[i10] - this.structOffset) + 1)] - this.structOffset;
                this.outerClassName = utf8At(i11 + 3, u2At(i11 + 1));
            }
            this.readOuterClassName = true;
        }
        return this.outerClassName;
    }

    @Override
    public int getModifiers() {
        if (this.accessFlags == -1) {
            this.accessFlags = u2At(6);
        }
        return this.accessFlags;
    }

    @Override
    public char[] getName() {
        if (!this.readInnerClassName) {
            int i10 = this.innerClassNameIndex;
            if (i10 != 0) {
                int[] iArr = this.constantPoolOffsets;
                int i11 = iArr[u2At((iArr[i10] - this.structOffset) + 1)] - this.structOffset;
                this.innerClassName = utf8At(i11 + 3, u2At(i11 + 1));
            }
            this.readInnerClassName = true;
        }
        return this.innerClassName;
    }

    public char[] getSourceName() {
        if (!this.readInnerName) {
            int i10 = this.innerNameIndex;
            if (i10 != 0) {
                int i11 = this.constantPoolOffsets[i10] - this.structOffset;
                this.innerName = utf8At(i11 + 3, u2At(i11 + 1));
            }
            this.readInnerName = true;
        }
        return this.innerName;
    }

    public void initialize() {
        getModifiers();
        getName();
        getSourceName();
        getEnclosingTypeName();
        reset();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (getName() != null) {
            stringBuffer.append(getName());
        }
        stringBuffer.append("\n");
        if (getEnclosingTypeName() != null) {
            stringBuffer.append(getEnclosingTypeName());
        }
        stringBuffer.append("\n");
        if (getSourceName() != null) {
            stringBuffer.append(getSourceName());
        }
        return stringBuffer.toString();
    }
}
