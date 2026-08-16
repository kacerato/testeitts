package org.objectweb.asm;

import java.lang.classfile.Attributes;
import org.objectweb.asm.Attribute;

public class ClassWriter extends ClassVisitor {
    public static final int COMPUTE_FRAMES = 2;
    public static final int COMPUTE_MAXS = 1;
    private int accessFlags;
    private int compute;
    private ByteVector debugExtension;
    private int enclosingClassIndex;
    private int enclosingMethodIndex;
    private Attribute firstAttribute;
    private FieldWriter firstField;
    private MethodWriter firstMethod;
    private RecordComponentWriter firstRecordComponent;
    private final int flags;
    private ByteVector innerClasses;
    private int interfaceCount;
    private int[] interfaces;
    private FieldWriter lastField;
    private MethodWriter lastMethod;
    private RecordComponentWriter lastRecordComponent;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private ModuleWriter moduleWriter;
    private int nestHostClassIndex;
    private ByteVector nestMemberClasses;
    private int numberOfInnerClasses;
    private int numberOfNestMemberClasses;
    private int numberOfPermittedSubclasses;
    private ByteVector permittedSubclasses;
    private int signatureIndex;
    private int sourceFileIndex;
    private int superClass;
    private final SymbolTable symbolTable;
    private int thisClass;
    private int version;

    public ClassWriter(int i10) {
        this(null, i10);
    }

    private Attribute[] getAttributePrototypes() {
        Attribute.Set set = new Attribute.Set();
        set.addAttributes(this.firstAttribute);
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.fv) {
            fieldWriter.collectAttributePrototypes(set);
        }
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = (MethodWriter) methodWriter.mv) {
            methodWriter.collectAttributePrototypes(set);
        }
        for (RecordComponentWriter recordComponentWriter = this.firstRecordComponent; recordComponentWriter != null; recordComponentWriter = (RecordComponentWriter) recordComponentWriter.delegate) {
            recordComponentWriter.collectAttributePrototypes(set);
        }
        return set.toArray();
    }

    private byte[] replaceAsmInstructions(byte[] bArr, boolean z10) {
        Attribute[] attributePrototypes = getAttributePrototypes();
        this.firstField = null;
        this.lastField = null;
        this.firstMethod = null;
        this.lastMethod = null;
        this.lastRuntimeVisibleAnnotation = null;
        this.lastRuntimeInvisibleAnnotation = null;
        this.lastRuntimeVisibleTypeAnnotation = null;
        this.lastRuntimeInvisibleTypeAnnotation = null;
        this.moduleWriter = null;
        this.nestHostClassIndex = 0;
        this.numberOfNestMemberClasses = 0;
        this.nestMemberClasses = null;
        this.numberOfPermittedSubclasses = 0;
        this.permittedSubclasses = null;
        this.firstRecordComponent = null;
        this.lastRecordComponent = null;
        this.firstAttribute = null;
        this.compute = z10 ? 3 : 0;
        new ClassReader(bArr, 0, false).accept(this, attributePrototypes, (z10 ? 8 : 0) | 256);
        return toByteArray();
    }

    public ClassLoader getClassLoader() {
        return getClass().getClassLoader();
    }

    public String getCommonSuperClass(String str, String str2) {
        ClassLoader classLoader = getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace('/', '.'), false, classLoader);
            try {
                Class<?> cls2 = Class.forName(str2.replace('/', '.'), false, classLoader);
                if (cls.isAssignableFrom(cls2)) {
                    return str;
                }
                if (cls2.isAssignableFrom(cls)) {
                    return str2;
                }
                if (cls.isInterface() || cls2.isInterface()) {
                    return "java/lang/Object";
                }
                do {
                    cls = cls.getSuperclass();
                } while (!cls.isAssignableFrom(cls2));
                return cls.getName().replace('.', '/');
            } catch (ClassNotFoundException e10) {
                throw new TypeNotPresentException(str2, e10);
            }
        } catch (ClassNotFoundException e11) {
            throw new TypeNotPresentException(str, e11);
        }
    }

    public boolean hasFlags(int i10) {
        return (this.flags & i10) == i10;
    }

    public int newClass(String str) {
        return this.symbolTable.addConstantClass(str).index;
    }

    public int newConst(Object obj) {
        return this.symbolTable.addConstant(obj).index;
    }

    public int newConstantDynamic(String str, String str2, Handle handle, Object... objArr) {
        return this.symbolTable.addConstantDynamic(str, str2, handle, objArr).index;
    }

    public int newField(String str, String str2, String str3) {
        return this.symbolTable.addConstantFieldref(str, str2, str3).index;
    }

    @Deprecated
    public int newHandle(int i10, String str, String str2, String str3) {
        return newHandle(i10, str, str2, str3, i10 == 9);
    }

    public int newInvokeDynamic(String str, String str2, Handle handle, Object... objArr) {
        return this.symbolTable.addConstantInvokeDynamic(str, str2, handle, objArr).index;
    }

    public int newMethod(String str, String str2, String str3, boolean z10) {
        return this.symbolTable.addConstantMethodref(str, str2, str3, z10).index;
    }

    public int newMethodType(String str) {
        return this.symbolTable.addConstantMethodType(str).index;
    }

    public int newModule(String str) {
        return this.symbolTable.addConstantModule(str).index;
    }

    public int newNameType(String str, String str2) {
        return this.symbolTable.addConstantNameAndType(str, str2);
    }

    public int newPackage(String str) {
        return this.symbolTable.addConstantPackage(str).index;
    }

    public int newUTF8(String str) {
        return this.symbolTable.addConstantUtf8(str);
    }

    public byte[] toByteArray() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = (this.interfaceCount * 2) + 24;
        int i16 = 0;
        for (FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.fv) {
            i16++;
            i15 += fieldWriter.computeFieldInfoSize();
        }
        int i17 = 0;
        for (MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = (MethodWriter) methodWriter.mv) {
            i17++;
            i15 += methodWriter.computeMethodInfoSize();
        }
        ByteVector byteVector = this.innerClasses;
        if (byteVector != null) {
            i15 += byteVector.length + 8;
            this.symbolTable.addConstantUtf8("InnerClasses");
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.enclosingClassIndex != 0) {
            i10++;
            i15 += 10;
            this.symbolTable.addConstantUtf8("EnclosingMethod");
        }
        if ((this.accessFlags & 4096) != 0 && (this.version & 65535) < 49) {
            i10++;
            i15 += 6;
            this.symbolTable.addConstantUtf8("Synthetic");
        }
        if (this.signatureIndex != 0) {
            i10++;
            i15 += 8;
            this.symbolTable.addConstantUtf8("Signature");
        }
        if (this.sourceFileIndex != 0) {
            i10++;
            i15 += 8;
            this.symbolTable.addConstantUtf8("SourceFile");
        }
        ByteVector byteVector2 = this.debugExtension;
        if (byteVector2 != null) {
            i10++;
            i15 += byteVector2.length + 6;
            this.symbolTable.addConstantUtf8("SourceDebugExtension");
        }
        if ((this.accessFlags & 131072) != 0) {
            i10++;
            i15 += 6;
            this.symbolTable.addConstantUtf8("Deprecated");
        }
        AnnotationWriter annotationWriter = this.lastRuntimeVisibleAnnotation;
        if (annotationWriter != null) {
            i10++;
            i15 += annotationWriter.computeAnnotationsSize("RuntimeVisibleAnnotations");
        }
        AnnotationWriter annotationWriter2 = this.lastRuntimeInvisibleAnnotation;
        if (annotationWriter2 != null) {
            i10++;
            i15 += annotationWriter2.computeAnnotationsSize("RuntimeInvisibleAnnotations");
        }
        AnnotationWriter annotationWriter3 = this.lastRuntimeVisibleTypeAnnotation;
        if (annotationWriter3 != null) {
            i10++;
            i15 += annotationWriter3.computeAnnotationsSize(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
        }
        AnnotationWriter annotationWriter4 = this.lastRuntimeInvisibleTypeAnnotation;
        if (annotationWriter4 != null) {
            i10++;
            i15 += annotationWriter4.computeAnnotationsSize(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
        }
        if (this.symbolTable.computeBootstrapMethodsSize() > 0) {
            i10++;
            i15 += this.symbolTable.computeBootstrapMethodsSize();
        }
        ModuleWriter moduleWriter = this.moduleWriter;
        if (moduleWriter != null) {
            i10 += moduleWriter.getAttributeCount();
            i15 += this.moduleWriter.computeAttributesSize();
        }
        if (this.nestHostClassIndex != 0) {
            i10++;
            i15 += 8;
            this.symbolTable.addConstantUtf8(Attributes.NAME_NEST_HOST);
        }
        ByteVector byteVector3 = this.nestMemberClasses;
        if (byteVector3 != null) {
            i10++;
            i15 += byteVector3.length + 8;
            this.symbolTable.addConstantUtf8(Attributes.NAME_NEST_MEMBERS);
        }
        ByteVector byteVector4 = this.permittedSubclasses;
        if (byteVector4 != null) {
            i10++;
            i15 += byteVector4.length + 8;
            this.symbolTable.addConstantUtf8(Attributes.NAME_PERMITTED_SUBCLASSES);
        }
        if ((this.accessFlags & 65536) == 0 && this.firstRecordComponent == null) {
            i11 = 0;
            i12 = 0;
        } else {
            i11 = 0;
            i12 = 0;
            for (RecordComponentWriter recordComponentWriter = this.firstRecordComponent; recordComponentWriter != null; recordComponentWriter = (RecordComponentWriter) recordComponentWriter.delegate) {
                i12++;
                i11 += recordComponentWriter.computeRecordComponentInfoSize();
            }
            i10++;
            i15 += i11 + 8;
            this.symbolTable.addConstantUtf8(Attributes.NAME_RECORD);
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            int attributeCount = i10 + attribute.getAttributeCount();
            i15 += this.firstAttribute.computeAttributesSize(this.symbolTable);
            i10 = attributeCount;
        }
        int constantPoolLength = i15 + this.symbolTable.getConstantPoolLength();
        int constantPoolCount = this.symbolTable.getConstantPoolCount();
        if (constantPoolCount > 65535) {
            throw new ClassTooLargeException(this.symbolTable.getClassName(), constantPoolCount);
        }
        ByteVector byteVector5 = new ByteVector(constantPoolLength);
        byteVector5.putInt(-889275714).putInt(this.version);
        this.symbolTable.putConstantPool(byteVector5);
        byteVector5.putShort((~((this.version & 65535) < 49 ? 4096 : 0)) & this.accessFlags).putShort(this.thisClass).putShort(this.superClass);
        byteVector5.putShort(this.interfaceCount);
        for (int i18 = 0; i18 < this.interfaceCount; i18++) {
            byteVector5.putShort(this.interfaces[i18]);
        }
        byteVector5.putShort(i16);
        for (FieldWriter fieldWriter2 = this.firstField; fieldWriter2 != null; fieldWriter2 = (FieldWriter) fieldWriter2.fv) {
            fieldWriter2.putFieldInfo(byteVector5);
        }
        byteVector5.putShort(i17);
        boolean z10 = false;
        boolean z11 = false;
        for (MethodWriter methodWriter2 = this.firstMethod; methodWriter2 != null; methodWriter2 = (MethodWriter) methodWriter2.mv) {
            z10 |= methodWriter2.hasFrames();
            z11 |= methodWriter2.hasAsmInstructions();
            methodWriter2.putMethodInfo(byteVector5);
        }
        byteVector5.putShort(i10);
        if (this.innerClasses != null) {
            ByteVector putShort = byteVector5.putShort(this.symbolTable.addConstantUtf8("InnerClasses")).putInt(this.innerClasses.length + 2).putShort(this.numberOfInnerClasses);
            ByteVector byteVector6 = this.innerClasses;
            putShort.putByteArray(byteVector6.data, 0, byteVector6.length);
        }
        if (this.enclosingClassIndex != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8("EnclosingMethod")).putInt(4).putShort(this.enclosingClassIndex).putShort(this.enclosingMethodIndex);
        }
        if ((this.accessFlags & 4096) != 0 && (this.version & 65535) < 49) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8("Synthetic")).putInt(0);
        }
        if (this.signatureIndex != 0) {
            i13 = 2;
            byteVector5.putShort(this.symbolTable.addConstantUtf8("Signature")).putInt(2).putShort(this.signatureIndex);
        } else {
            i13 = 2;
        }
        if (this.sourceFileIndex != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8("SourceFile")).putInt(i13).putShort(this.sourceFileIndex);
        }
        ByteVector byteVector7 = this.debugExtension;
        if (byteVector7 != null) {
            int i19 = byteVector7.length;
            i14 = 0;
            byteVector5.putShort(this.symbolTable.addConstantUtf8("SourceDebugExtension")).putInt(i19).putByteArray(this.debugExtension.data, 0, i19);
        } else {
            i14 = 0;
        }
        if ((this.accessFlags & 131072) != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8("Deprecated")).putInt(i14);
        }
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector5);
        this.symbolTable.putBootstrapMethods(byteVector5);
        ModuleWriter moduleWriter2 = this.moduleWriter;
        if (moduleWriter2 != null) {
            moduleWriter2.putAttributes(byteVector5);
        }
        if (this.nestHostClassIndex != 0) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8(Attributes.NAME_NEST_HOST)).putInt(2).putShort(this.nestHostClassIndex);
        }
        if (this.nestMemberClasses != null) {
            ByteVector putShort2 = byteVector5.putShort(this.symbolTable.addConstantUtf8(Attributes.NAME_NEST_MEMBERS)).putInt(this.nestMemberClasses.length + 2).putShort(this.numberOfNestMemberClasses);
            ByteVector byteVector8 = this.nestMemberClasses;
            putShort2.putByteArray(byteVector8.data, 0, byteVector8.length);
        }
        if (this.permittedSubclasses != null) {
            ByteVector putShort3 = byteVector5.putShort(this.symbolTable.addConstantUtf8(Attributes.NAME_PERMITTED_SUBCLASSES)).putInt(this.permittedSubclasses.length + 2).putShort(this.numberOfPermittedSubclasses);
            ByteVector byteVector9 = this.permittedSubclasses;
            putShort3.putByteArray(byteVector9.data, 0, byteVector9.length);
        }
        if ((this.accessFlags & 65536) != 0 || this.firstRecordComponent != null) {
            byteVector5.putShort(this.symbolTable.addConstantUtf8(Attributes.NAME_RECORD)).putInt(i11 + 2).putShort(i12);
            for (RecordComponentWriter recordComponentWriter2 = this.firstRecordComponent; recordComponentWriter2 != null; recordComponentWriter2 = (RecordComponentWriter) recordComponentWriter2.delegate) {
                recordComponentWriter2.putRecordComponentInfo(byteVector5);
            }
        }
        Attribute attribute2 = this.firstAttribute;
        if (attribute2 != null) {
            attribute2.putAttributes(this.symbolTable, byteVector5);
        }
        return z11 ? replaceAsmInstructions(byteVector5.data, z10) : byteVector5.data;
    }

    @Override
    public final void visit(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        this.version = i10;
        this.accessFlags = i11;
        int i12 = i10 & 65535;
        this.thisClass = this.symbolTable.setMajorVersionAndClassName(i12, str);
        if (str2 != null) {
            this.signatureIndex = this.symbolTable.addConstantUtf8(str2);
        }
        this.superClass = str3 == null ? 0 : this.symbolTable.addConstantClass(str3).index;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.interfaceCount = length;
            this.interfaces = new int[length];
            for (int i13 = 0; i13 < this.interfaceCount; i13++) {
                this.interfaces[i13] = this.symbolTable.addConstantClass(strArr[i13]).index;
            }
        }
        if (this.compute != 1 || i12 < 51) {
            return;
        }
        this.compute = 2;
    }

    @Override
    public final AnnotationVisitor visitAnnotation(String str, boolean z10) {
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
    public final void visitAttribute(Attribute attribute) {
        attribute.nextAttribute = this.firstAttribute;
        this.firstAttribute = attribute;
    }

    @Override
    public final void visitEnd() {
    }

    @Override
    public final FieldVisitor visitField(int i10, String str, String str2, String str3, Object obj) {
        FieldWriter fieldWriter = new FieldWriter(this.symbolTable, i10, str, str2, str3, obj);
        if (this.firstField == null) {
            this.firstField = fieldWriter;
        } else {
            this.lastField.fv = fieldWriter;
        }
        this.lastField = fieldWriter;
        return fieldWriter;
    }

    @Override
    public final void visitInnerClass(String str, String str2, String str3, int i10) {
        if (this.innerClasses == null) {
            this.innerClasses = new ByteVector();
        }
        Symbol addConstantClass = this.symbolTable.addConstantClass(str);
        if (addConstantClass.info == 0) {
            this.numberOfInnerClasses++;
            this.innerClasses.putShort(addConstantClass.index);
            this.innerClasses.putShort(str2 == null ? 0 : this.symbolTable.addConstantClass(str2).index);
            this.innerClasses.putShort(str3 != null ? this.symbolTable.addConstantUtf8(str3) : 0);
            this.innerClasses.putShort(i10);
            addConstantClass.info = this.numberOfInnerClasses;
        }
    }

    @Override
    public final MethodVisitor visitMethod(int i10, String str, String str2, String str3, String[] strArr) {
        MethodWriter methodWriter = new MethodWriter(this.symbolTable, i10, str, str2, str3, strArr, this.compute);
        if (this.firstMethod == null) {
            this.firstMethod = methodWriter;
        } else {
            this.lastMethod.mv = methodWriter;
        }
        this.lastMethod = methodWriter;
        return methodWriter;
    }

    @Override
    public final ModuleVisitor visitModule(String str, int i10, String str2) {
        SymbolTable symbolTable = this.symbolTable;
        ModuleWriter moduleWriter = new ModuleWriter(symbolTable, symbolTable.addConstantModule(str).index, i10, str2 == null ? 0 : this.symbolTable.addConstantUtf8(str2));
        this.moduleWriter = moduleWriter;
        return moduleWriter;
    }

    @Override
    public final void visitNestHost(String str) {
        this.nestHostClassIndex = this.symbolTable.addConstantClass(str).index;
    }

    @Override
    public final void visitNestMember(String str) {
        if (this.nestMemberClasses == null) {
            this.nestMemberClasses = new ByteVector();
        }
        this.numberOfNestMemberClasses++;
        this.nestMemberClasses.putShort(this.symbolTable.addConstantClass(str).index);
    }

    @Override
    public final void visitOuterClass(String str, String str2, String str3) {
        this.enclosingClassIndex = this.symbolTable.addConstantClass(str).index;
        if (str2 == null || str3 == null) {
            return;
        }
        this.enclosingMethodIndex = this.symbolTable.addConstantNameAndType(str2, str3);
    }

    @Override
    public final void visitPermittedSubclass(String str) {
        if (this.permittedSubclasses == null) {
            this.permittedSubclasses = new ByteVector();
        }
        this.numberOfPermittedSubclasses++;
        this.permittedSubclasses.putShort(this.symbolTable.addConstantClass(str).index);
    }

    @Override
    public final RecordComponentVisitor visitRecordComponent(String str, String str2, String str3) {
        RecordComponentWriter recordComponentWriter = new RecordComponentWriter(this.symbolTable, str, str2, str3);
        if (this.firstRecordComponent == null) {
            this.firstRecordComponent = recordComponentWriter;
        } else {
            this.lastRecordComponent.delegate = recordComponentWriter;
        }
        this.lastRecordComponent = recordComponentWriter;
        return recordComponentWriter;
    }

    @Override
    public final void visitSource(String str, String str2) {
        if (str != null) {
            this.sourceFileIndex = this.symbolTable.addConstantUtf8(str);
        }
        if (str2 != null) {
            this.debugExtension = new ByteVector().encodeUtf8(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override
    public final AnnotationVisitor visitTypeAnnotation(int i10, TypePath typePath, String str, boolean z10) {
        if (z10) {
            AnnotationWriter create = AnnotationWriter.create(this.symbolTable, i10, typePath, str, this.lastRuntimeVisibleTypeAnnotation);
            this.lastRuntimeVisibleTypeAnnotation = create;
            return create;
        }
        AnnotationWriter create2 = AnnotationWriter.create(this.symbolTable, i10, typePath, str, this.lastRuntimeInvisibleTypeAnnotation);
        this.lastRuntimeInvisibleTypeAnnotation = create2;
        return create2;
    }

    public ClassWriter(ClassReader classReader, int i10) {
        super(Opcodes.ASM9);
        this.flags = i10;
        this.symbolTable = classReader == null ? new SymbolTable(this) : new SymbolTable(this, classReader);
        if ((i10 & 2) != 0) {
            this.compute = 4;
        } else if ((i10 & 1) != 0) {
            this.compute = 1;
        } else {
            this.compute = 0;
        }
    }

    public int newHandle(int i10, String str, String str2, String str3, boolean z10) {
        return this.symbolTable.addConstantMethodHandle(i10, str, str2, str3, z10).index;
    }
}
