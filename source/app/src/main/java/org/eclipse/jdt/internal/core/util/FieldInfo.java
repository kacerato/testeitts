package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantValueAttribute;
import org.eclipse.jdt.core.util.IFieldInfo;

public class FieldInfo extends ClassFileStruct implements IFieldInfo {
    private int accessFlags;
    private int attributeBytes;
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private IConstantValueAttribute constantValueAttribute;
    private char[] descriptor;
    private int descriptorIndex;
    private boolean isDeprecated;
    private boolean isSynthetic;
    private char[] name;
    private int nameIndex;

    public FieldInfo(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int i11;
        int u2At = u2At(bArr, 0, i10);
        this.accessFlags = u2At;
        if ((u2At & 4096) != 0) {
            this.isSynthetic = true;
        }
        int u2At2 = u2At(bArr, 2, i10);
        this.nameIndex = u2At2;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At2);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.name = decodeEntry.getUtf8Value();
        int u2At3 = u2At(bArr, 4, i10);
        this.descriptorIndex = u2At3;
        IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(u2At3);
        if (decodeEntry2.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.descriptor = decodeEntry2.getUtf8Value();
        int u2At4 = u2At(bArr, 6, i10);
        this.attributesCount = u2At4;
        this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
        if (u2At4 != 0) {
            this.attributes = new IClassFileAttribute[u2At4];
        }
        int i12 = 8;
        int i13 = 0;
        for (int i14 = 0; i14 < this.attributesCount; i14++) {
            IConstantPoolEntry decodeEntry3 = iConstantPool.decodeEntry(u2At(bArr, i12, i10));
            if (decodeEntry3.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            char[] utf8Value = decodeEntry3.getUtf8Value();
            if (equals(utf8Value, IAttributeNamesConstants.DEPRECATED)) {
                this.isDeprecated = true;
                i11 = i13 + 1;
                this.attributes[i13] = new ClassFileAttribute(bArr, iConstantPool, i10 + i12);
            } else if (equals(utf8Value, IAttributeNamesConstants.SYNTHETIC)) {
                this.isSynthetic = true;
                i11 = i13 + 1;
                this.attributes[i13] = new ClassFileAttribute(bArr, iConstantPool, i10 + i12);
            } else if (equals(utf8Value, IAttributeNamesConstants.CONSTANT_VALUE)) {
                ConstantValueAttribute constantValueAttribute = new ConstantValueAttribute(bArr, iConstantPool, i10 + i12);
                this.constantValueAttribute = constantValueAttribute;
                this.attributes[i13] = constantValueAttribute;
                i13++;
                i12 = (int) (i12 + u4At(bArr, i12 + 2, i10) + 6);
            } else if (equals(utf8Value, IAttributeNamesConstants.SIGNATURE)) {
                i11 = i13 + 1;
                this.attributes[i13] = new SignatureAttribute(bArr, iConstantPool, i10 + i12);
            } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS)) {
                i11 = i13 + 1;
                this.attributes[i13] = new RuntimeVisibleAnnotationsAttribute(bArr, iConstantPool, i10 + i12);
            } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS)) {
                i11 = i13 + 1;
                this.attributes[i13] = new RuntimeInvisibleAnnotationsAttribute(bArr, iConstantPool, i10 + i12);
            } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS)) {
                i11 = i13 + 1;
                this.attributes[i13] = new RuntimeVisibleTypeAnnotationsAttribute(bArr, iConstantPool, i10 + i12);
            } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS)) {
                i11 = i13 + 1;
                this.attributes[i13] = new RuntimeInvisibleTypeAnnotationsAttribute(bArr, iConstantPool, i10 + i12);
            } else {
                i11 = i13 + 1;
                this.attributes[i13] = new ClassFileAttribute(bArr, iConstantPool, i10 + i12);
            }
            i13 = i11;
            i12 = (int) (i12 + u4At(bArr, i12 + 2, i10) + 6);
        }
        this.attributeBytes = i12;
    }

    @Override
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override
    public int getAttributeCount() {
        return this.attributesCount;
    }

    @Override
    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    @Override
    public IConstantValueAttribute getConstantValueAttribute() {
        return this.constantValueAttribute;
    }

    @Override
    public char[] getDescriptor() {
        return this.descriptor;
    }

    @Override
    public int getDescriptorIndex() {
        return this.descriptorIndex;
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
    public boolean hasConstantValueAttribute() {
        return this.constantValueAttribute != null;
    }

    @Override
    public boolean isDeprecated() {
        return this.isDeprecated;
    }

    @Override
    public boolean isSynthetic() {
        return this.isSynthetic;
    }

    public int sizeInBytes() {
        return this.attributeBytes;
    }
}
