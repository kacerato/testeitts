package org.objectweb.asm;

import org.objectweb.asm.Attribute;

public final class FieldWriter extends FieldVisitor {
    private final int accessFlags;
    private int constantValueIndex;
    private final int descriptorIndex;
    private Attribute firstAttribute;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private final int nameIndex;
    private int signatureIndex;
    private final SymbolTable symbolTable;

    public FieldWriter(SymbolTable symbolTable, int i10, String str, String str2, String str3, Object obj) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.accessFlags = i10;
        this.nameIndex = symbolTable.addConstantUtf8(str);
        this.descriptorIndex = symbolTable.addConstantUtf8(str2);
        if (str3 != null) {
            this.signatureIndex = symbolTable.addConstantUtf8(str3);
        }
        if (obj != null) {
            this.constantValueIndex = symbolTable.addConstant(obj).index;
        }
    }

    public final void collectAttributePrototypes(Attribute.Set set) {
        set.addAttributes(this.firstAttribute);
    }

    public int computeFieldInfoSize() {
        int i10;
        if (this.constantValueIndex != 0) {
            this.symbolTable.addConstantUtf8("ConstantValue");
            i10 = 16;
        } else {
            i10 = 8;
        }
        int computeAttributesSize = i10 + Attribute.computeAttributesSize(this.symbolTable, this.accessFlags, this.signatureIndex) + AnnotationWriter.computeAnnotationsSize(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        Attribute attribute = this.firstAttribute;
        return attribute != null ? computeAttributesSize + attribute.computeAttributesSize(this.symbolTable) : computeAttributesSize;
    }

    public void putFieldInfo(ByteVector byteVector) {
        boolean z10 = this.symbolTable.getMajorVersion() < 49;
        byteVector.putShort((~(z10 ? 4096 : 0)) & this.accessFlags).putShort(this.nameIndex).putShort(this.descriptorIndex);
        int i10 = this.constantValueIndex != 0 ? 1 : 0;
        int i11 = this.accessFlags;
        if ((i11 & 4096) != 0 && z10) {
            i10++;
        }
        if (this.signatureIndex != 0) {
            i10++;
        }
        if ((131072 & i11) != 0) {
            i10++;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            i10++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            i10++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            i10++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            i10++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            i10 += attribute.getAttributeCount();
        }
        byteVector.putShort(i10);
        if (this.constantValueIndex != 0) {
            byteVector.putShort(this.symbolTable.addConstantUtf8("ConstantValue")).putInt(2).putShort(this.constantValueIndex);
        }
        Attribute.putAttributes(this.symbolTable, this.accessFlags, this.signatureIndex, byteVector);
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.putAttributes(this.symbolTable, byteVector);
        }
    }

    @Override
    public AnnotationVisitor visitAnnotation(String str, boolean z10) {
        if (z10) {
            AnnotationWriter create = AnnotationWriter.create(this.symbolTable, str, this.lastRuntimeVisibleAnnotation);
            this.lastRuntimeVisibleAnnotation = create;
            return create;
        }
        AnnotationWriter create2 = AnnotationWriter.create(this.symbolTable, str, this.lastRuntimeInvisibleAnnotation);
        this.lastRuntimeInvisibleAnnotation = create2;
        return create2;
    }

    @Override
    public void visitAttribute(Attribute attribute) {
        attribute.nextAttribute = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override
    public void visitEnd() {
    }

    @Override
    public AnnotationVisitor visitTypeAnnotation(int i10, TypePath typePath, String str, boolean z10) {
        if (z10) {
            AnnotationWriter create = AnnotationWriter.create(this.symbolTable, i10, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = create;
            return create;
        }
        AnnotationWriter create2 = AnnotationWriter.create(this.symbolTable, i10, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = create2;
        return create2;
    }
}
