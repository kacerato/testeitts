package org.objectweb.asm;

import java.lang.classfile.Attributes;
import java.lang.constant.ConstantDescs;
import org.objectweb.asm.Attribute;

public final class MethodWriter extends MethodVisitor {
    static final int COMPUTE_ALL_FRAMES = 4;
    static final int COMPUTE_INSERTED_FRAMES = 3;
    static final int COMPUTE_MAX_STACK_AND_LOCAL = 1;
    static final int COMPUTE_MAX_STACK_AND_LOCAL_FROM_FRAMES = 2;
    static final int COMPUTE_NOTHING = 0;
    private static final int NA = 0;
    private static final int[] STACK_SIZE_DELTA = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};
    private final int accessFlags;
    private final ByteVector code;
    private final int compute;
    private Label currentBasicBlock;
    private int[] currentFrame;
    private int currentLocals;
    private ByteVector defaultValue;
    private final String descriptor;
    private final int descriptorIndex;
    private final int[] exceptionIndexTable;
    private Attribute firstAttribute;
    private Label firstBasicBlock;
    private Attribute firstCodeAttribute;
    private Handler firstHandler;
    private boolean hasAsmInstructions;
    private boolean hasSubroutines;
    private int invisibleAnnotableParameterCount;
    private Label lastBasicBlock;
    private int lastBytecodeOffset;
    private AnnotationWriter lastCodeRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastCodeRuntimeVisibleTypeAnnotation;
    private Handler lastHandler;
    private AnnotationWriter lastRuntimeInvisibleAnnotation;
    private AnnotationWriter[] lastRuntimeInvisibleParameterAnnotations;
    private AnnotationWriter lastRuntimeInvisibleTypeAnnotation;
    private AnnotationWriter lastRuntimeVisibleAnnotation;
    private AnnotationWriter[] lastRuntimeVisibleParameterAnnotations;
    private AnnotationWriter lastRuntimeVisibleTypeAnnotation;
    private ByteVector lineNumberTable;
    private int lineNumberTableLength;
    private ByteVector localVariableTable;
    private int localVariableTableLength;
    private ByteVector localVariableTypeTable;
    private int localVariableTypeTableLength;
    private int maxLocals;
    private int maxRelativeStackSize;
    private int maxStack;
    private final String name;
    private final int nameIndex;
    private final int numberOfExceptions;
    private ByteVector parameters;
    private int parametersCount;
    private int[] previousFrame;
    private int previousFrameOffset;
    private int relativeStackSize;
    private final int signatureIndex;
    private int sourceLength;
    private int sourceOffset;
    private ByteVector stackMapTableEntries;
    private int stackMapTableNumberOfEntries;
    private final SymbolTable symbolTable;
    private int visibleAnnotableParameterCount;

    public MethodWriter(SymbolTable symbolTable, int i10, String str, String str2, String str3, String[] strArr, int i11) {
        super(Opcodes.ASM9);
        this.code = new ByteVector();
        this.symbolTable = symbolTable;
        this.accessFlags = ConstantDescs.INIT_NAME.equals(str) ? 262144 | i10 : i10;
        this.nameIndex = symbolTable.addConstantUtf8(str);
        this.name = str;
        this.descriptorIndex = symbolTable.addConstantUtf8(str2);
        this.descriptor = str2;
        this.signatureIndex = str3 == null ? 0 : symbolTable.addConstantUtf8(str3);
        if (strArr == null || strArr.length <= 0) {
            this.numberOfExceptions = 0;
            this.exceptionIndexTable = null;
        } else {
            int length = strArr.length;
            this.numberOfExceptions = length;
            this.exceptionIndexTable = new int[length];
            for (int i12 = 0; i12 < this.numberOfExceptions; i12++) {
                this.exceptionIndexTable[i12] = symbolTable.addConstantClass(strArr[i12]).index;
            }
        }
        this.compute = i11;
        if (i11 != 0) {
            int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(str2) >> 2;
            argumentsAndReturnSizes = (i10 & 8) != 0 ? argumentsAndReturnSizes - 1 : argumentsAndReturnSizes;
            this.maxLocals = argumentsAndReturnSizes;
            this.currentLocals = argumentsAndReturnSizes;
            Label label = new Label();
            this.firstBasicBlock = label;
            visitLabel(label);
        }
    }

    private void addSuccessorToCurrentBasicBlock(int i10, Label label) {
        Label label2 = this.currentBasicBlock;
        label2.outgoingEdges = new Edge(i10, label, label2.outgoingEdges);
    }

    private void computeAllFrames() {
        Handler handler = this.firstHandler;
        while (true) {
            if (handler == null) {
                break;
            }
            String str = handler.catchTypeDescriptor;
            int abstractTypeFromInternalName = Frame.getAbstractTypeFromInternalName(this.symbolTable, str != null ? str : "java/lang/Throwable");
            Label canonicalInstance = handler.handlerPc.getCanonicalInstance();
            canonicalInstance.flags = (short) (canonicalInstance.flags | 2);
            Label canonicalInstance2 = handler.endPc.getCanonicalInstance();
            for (Label canonicalInstance3 = handler.startPc.getCanonicalInstance(); canonicalInstance3 != canonicalInstance2; canonicalInstance3 = canonicalInstance3.nextBasicBlock) {
                canonicalInstance3.outgoingEdges = new Edge(abstractTypeFromInternalName, canonicalInstance, canonicalInstance3.outgoingEdges);
            }
            handler = handler.nextHandler;
        }
        Frame frame = this.firstBasicBlock.frame;
        frame.setInputFrameFromDescriptor(this.symbolTable, this.accessFlags, this.descriptor, this.maxLocals);
        frame.accept(this);
        Label label = this.firstBasicBlock;
        label.nextListElement = Label.EMPTY_LIST;
        int i10 = 0;
        while (label != Label.EMPTY_LIST) {
            Label label2 = label.nextListElement;
            label.nextListElement = null;
            label.flags = (short) (label.flags | 8);
            int inputStackSize = label.frame.getInputStackSize() + label.outputStackMax;
            if (inputStackSize > i10) {
                i10 = inputStackSize;
            }
            for (Edge edge = label.outgoingEdges; edge != null; edge = edge.nextEdge) {
                Label canonicalInstance4 = edge.successor.getCanonicalInstance();
                if (label.frame.merge(this.symbolTable, canonicalInstance4.frame, edge.info) && canonicalInstance4.nextListElement == null) {
                    canonicalInstance4.nextListElement = label2;
                    label2 = canonicalInstance4;
                }
            }
            label = label2;
        }
        for (Label label3 = this.firstBasicBlock; label3 != null; label3 = label3.nextBasicBlock) {
            if ((label3.flags & 10) == 10) {
                label3.frame.accept(this);
            }
            if ((label3.flags & 8) == 0) {
                Label label4 = label3.nextBasicBlock;
                int i11 = label3.bytecodeOffset;
                int i12 = (label4 == null ? this.code.length : label4.bytecodeOffset) - 1;
                if (i12 >= i11) {
                    for (int i13 = i11; i13 < i12; i13++) {
                        this.code.data[i13] = 0;
                    }
                    this.code.data[i12] = org.eclipse.jdt.internal.compiler.codegen.Opcodes.OPC_athrow;
                    this.currentFrame[visitFrameStart(i11, 0, 1)] = Frame.getAbstractTypeFromInternalName(this.symbolTable, "java/lang/Throwable");
                    visitFrameEnd();
                    this.firstHandler = Handler.removeRange(this.firstHandler, label3, label4);
                    i10 = Math.max(i10, 1);
                }
            }
        }
        this.maxStack = i10;
    }

    private void computeMaxStackAndLocal() {
        for (Handler handler = this.firstHandler; handler != null; handler = handler.nextHandler) {
            Label label = handler.handlerPc;
            Label label2 = handler.endPc;
            for (Label label3 = handler.startPc; label3 != label2; label3 = label3.nextBasicBlock) {
                if ((label3.flags & 16) == 0) {
                    label3.outgoingEdges = new Edge(Integer.MAX_VALUE, label, label3.outgoingEdges);
                } else {
                    Edge edge = label3.outgoingEdges.nextEdge;
                    edge.nextEdge = new Edge(Integer.MAX_VALUE, label, edge.nextEdge);
                }
            }
        }
        if (this.hasSubroutines) {
            this.firstBasicBlock.markSubroutine((short) 1);
            short s10 = 1;
            for (short s11 = 1; s11 <= s10; s11 = (short) (s11 + 1)) {
                for (Label label4 = this.firstBasicBlock; label4 != null; label4 = label4.nextBasicBlock) {
                    if ((label4.flags & 16) != 0 && label4.subroutineId == s11) {
                        Label label5 = label4.outgoingEdges.nextEdge.successor;
                        if (label5.subroutineId == 0) {
                            s10 = (short) (s10 + 1);
                            label5.markSubroutine(s10);
                        }
                    }
                }
            }
            for (Label label6 = this.firstBasicBlock; label6 != null; label6 = label6.nextBasicBlock) {
                if ((label6.flags & 16) != 0) {
                    label6.outgoingEdges.nextEdge.successor.addSubroutineRetSuccessors(label6);
                }
            }
        }
        Label label7 = this.firstBasicBlock;
        label7.nextListElement = Label.EMPTY_LIST;
        int i10 = this.maxStack;
        while (label7 != Label.EMPTY_LIST) {
            Label label8 = label7.nextListElement;
            short s12 = label7.inputStackSize;
            int i11 = label7.outputStackMax + s12;
            if (i11 > i10) {
                i10 = i11;
            }
            Edge edge2 = label7.outgoingEdges;
            if ((label7.flags & 16) != 0) {
                edge2 = edge2.nextEdge;
            }
            label7 = label8;
            while (edge2 != null) {
                Label label9 = edge2.successor;
                if (label9.nextListElement == null) {
                    int i12 = edge2.info;
                    label9.inputStackSize = (short) (i12 == Integer.MAX_VALUE ? 1 : i12 + s12);
                    label9.nextListElement = label7;
                    label7 = label9;
                }
                edge2 = edge2.nextEdge;
            }
        }
        this.maxStack = i10;
    }

    private void endCurrentBasicBlockWithNoSuccessor() {
        int i10 = this.compute;
        if (i10 != 4) {
            if (i10 == 1) {
                this.currentBasicBlock.outputStackMax = (short) this.maxRelativeStackSize;
                this.currentBasicBlock = null;
                return;
            }
            return;
        }
        Label label = new Label();
        label.frame = new Frame(label);
        ByteVector byteVector = this.code;
        label.resolve(byteVector.data, byteVector.length);
        this.lastBasicBlock.nextBasicBlock = label;
        this.lastBasicBlock = label;
        this.currentBasicBlock = null;
    }

    private void putAbstractTypes(int i10, int i11) {
        while (i10 < i11) {
            Frame.putAbstractType(this.symbolTable, this.currentFrame[i10], this.stackMapTableEntries);
            i10++;
        }
    }

    private void putFrame() {
        char c10;
        int[] iArr = this.currentFrame;
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = 0;
        if (this.symbolTable.getMajorVersion() < 50) {
            this.stackMapTableEntries.putShort(this.currentFrame[0]).putShort(i10);
            int i13 = i10 + 3;
            putAbstractTypes(3, i13);
            this.stackMapTableEntries.putShort(i11);
            putAbstractTypes(i13, i11 + i13);
            return;
        }
        int i14 = this.stackMapTableNumberOfEntries == 0 ? this.currentFrame[0] : (this.currentFrame[0] - this.previousFrame[0]) - 1;
        int i15 = this.previousFrame[1];
        int i16 = i10 - i15;
        if (i11 == 0) {
            switch (i16) {
                case -3:
                case -2:
                case -1:
                    c10 = '\u00f8';
                    break;
                case 0:
                    if (i14 >= 64) {
                        c10 = '\u00fb';
                        break;
                    } else {
                        c10 = 0;
                        break;
                    }
                case 1:
                case 2:
                case 3:
                    c10 = '\u00fc';
                    break;
                default:
                    c10 = '\u00ff';
                    break;
            }
        } else {
            if (i16 == 0 && i11 == 1) {
                c10 = i14 < 63 ? '@' : '\u00f7';
            }
            c10 = '\u00ff';
        }
        if (c10 != '\u00ff') {
            int i17 = 3;
            while (true) {
                if (i12 < i15 && i12 < i10) {
                    if (this.currentFrame[i17] != this.previousFrame[i17]) {
                        c10 = '\u00ff';
                    } else {
                        i17++;
                        i12++;
                    }
                }
            }
        }
        if (c10 == 0) {
            this.stackMapTableEntries.putByte(i14);
            return;
        }
        if (c10 == '@') {
            this.stackMapTableEntries.putByte(i14 + 64);
            putAbstractTypes(i10 + 3, i10 + 4);
            return;
        }
        if (c10 == '\u00f7') {
            this.stackMapTableEntries.putByte(247).putShort(i14);
            putAbstractTypes(i10 + 3, i10 + 4);
            return;
        }
        if (c10 == '\u00f8') {
            this.stackMapTableEntries.putByte(i16 + 251).putShort(i14);
            return;
        }
        if (c10 == '\u00fb') {
            this.stackMapTableEntries.putByte(251).putShort(i14);
            return;
        }
        if (c10 == '\u00fc') {
            this.stackMapTableEntries.putByte(i16 + 251).putShort(i14);
            putAbstractTypes(i15 + 3, i10 + 3);
            return;
        }
        this.stackMapTableEntries.putByte(255).putShort(i14).putShort(i10);
        int i18 = i10 + 3;
        putAbstractTypes(3, i18);
        this.stackMapTableEntries.putShort(i11);
        putAbstractTypes(i18, i11 + i18);
    }

    private void putFrameType(Object obj) {
        if (obj instanceof Integer) {
            this.stackMapTableEntries.putByte(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.stackMapTableEntries.putByte(7).putShort(this.symbolTable.addConstantClass((String) obj).index);
        } else {
            this.stackMapTableEntries.putByte(8).putShort(((Label) obj).bytecodeOffset);
        }
    }

    private void visitSwitchInsn(Label label, Label[] labelArr) {
        Label label2 = this.currentBasicBlock;
        if (label2 != null) {
            int i10 = this.compute;
            if (i10 == 4) {
                label2.frame.execute(171, 0, null, null);
                addSuccessorToCurrentBasicBlock(0, label);
                Label canonicalInstance = label.getCanonicalInstance();
                canonicalInstance.flags = (short) (canonicalInstance.flags | 2);
                for (Label label3 : labelArr) {
                    addSuccessorToCurrentBasicBlock(0, label3);
                    Label canonicalInstance2 = label3.getCanonicalInstance();
                    canonicalInstance2.flags = (short) (canonicalInstance2.flags | 2);
                }
            } else if (i10 == 1) {
                int i11 = this.relativeStackSize - 1;
                this.relativeStackSize = i11;
                addSuccessorToCurrentBasicBlock(i11, label);
                for (Label label4 : labelArr) {
                    addSuccessorToCurrentBasicBlock(this.relativeStackSize, label4);
                }
            }
            endCurrentBasicBlockWithNoSuccessor();
        }
    }

    public boolean canCopyMethodAttributes(ClassReader classReader, boolean z10, boolean z11, int i10, int i11, int i12) {
        if (classReader == this.symbolTable.getSource() && i10 == this.descriptorIndex && i11 == this.signatureIndex) {
            if (z11 == ((this.accessFlags & 131072) != 0)) {
                if (z10 != (this.symbolTable.getMajorVersion() < 49 && (this.accessFlags & 4096) != 0)) {
                    return false;
                }
                if (i12 == 0) {
                    if (this.numberOfExceptions != 0) {
                        return false;
                    }
                } else if (classReader.readUnsignedShort(i12) == this.numberOfExceptions) {
                    int i13 = i12 + 2;
                    for (int i14 = 0; i14 < this.numberOfExceptions; i14++) {
                        if (classReader.readUnsignedShort(i13) != this.exceptionIndexTable[i14]) {
                            return false;
                        }
                        i13 += 2;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void collectAttributePrototypes(Attribute.Set set) {
        set.addAttributes(this.firstAttribute);
        set.addAttributes(this.firstCodeAttribute);
    }

    public int computeMethodInfoSize() {
        int i10;
        if (this.sourceOffset != 0) {
            return this.sourceLength + 6;
        }
        int i11 = this.code.length;
        if (i11 <= 0) {
            i10 = 8;
        } else {
            if (i11 > 65535) {
                throw new MethodTooLargeException(this.symbolTable.getClassName(), this.name, this.descriptor, this.code.length);
            }
            this.symbolTable.addConstantUtf8("Code");
            i10 = this.code.length + 16 + Handler.getExceptionTableSize(this.firstHandler) + 8;
            if (this.stackMapTableEntries != null) {
                this.symbolTable.addConstantUtf8(this.symbolTable.getMajorVersion() >= 50 ? Attributes.NAME_STACK_MAP_TABLE : "StackMap");
                i10 += this.stackMapTableEntries.length + 8;
            }
            if (this.lineNumberTable != null) {
                this.symbolTable.addConstantUtf8("LineNumberTable");
                i10 += this.lineNumberTable.length + 8;
            }
            if (this.localVariableTable != null) {
                this.symbolTable.addConstantUtf8("LocalVariableTable");
                i10 += this.localVariableTable.length + 8;
            }
            if (this.localVariableTypeTable != null) {
                this.symbolTable.addConstantUtf8("LocalVariableTypeTable");
                i10 += this.localVariableTypeTable.length + 8;
            }
            AnnotationWriter annotationWriter = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter != null) {
                i10 += annotationWriter.computeAnnotationsSize(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
            }
            AnnotationWriter annotationWriter2 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter2 != null) {
                i10 += annotationWriter2.computeAnnotationsSize(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
            }
            Attribute attribute = this.firstCodeAttribute;
            if (attribute != null) {
                SymbolTable symbolTable = this.symbolTable;
                ByteVector byteVector = this.code;
                i10 += attribute.computeAttributesSize(symbolTable, byteVector.data, byteVector.length, this.maxStack, this.maxLocals);
            }
        }
        if (this.numberOfExceptions > 0) {
            this.symbolTable.addConstantUtf8("Exceptions");
            i10 += (this.numberOfExceptions * 2) + 8;
        }
        int computeAttributesSize = i10 + Attribute.computeAttributesSize(this.symbolTable, this.accessFlags, this.signatureIndex) + AnnotationWriter.computeAnnotationsSize(this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation);
        AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
        if (annotationWriterArr != null) {
            int i12 = this.visibleAnnotableParameterCount;
            if (i12 == 0) {
                i12 = annotationWriterArr.length;
            }
            computeAttributesSize += AnnotationWriter.computeParameterAnnotationsSize("RuntimeVisibleParameterAnnotations", annotationWriterArr, i12);
        }
        AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
        if (annotationWriterArr2 != null) {
            int i13 = this.invisibleAnnotableParameterCount;
            if (i13 == 0) {
                i13 = annotationWriterArr2.length;
            }
            computeAttributesSize += AnnotationWriter.computeParameterAnnotationsSize("RuntimeInvisibleParameterAnnotations", annotationWriterArr2, i13);
        }
        if (this.defaultValue != null) {
            this.symbolTable.addConstantUtf8("AnnotationDefault");
            computeAttributesSize += this.defaultValue.length + 6;
        }
        if (this.parameters != null) {
            this.symbolTable.addConstantUtf8(Attributes.NAME_METHOD_PARAMETERS);
            computeAttributesSize += this.parameters.length + 7;
        }
        Attribute attribute2 = this.firstAttribute;
        return attribute2 != null ? computeAttributesSize + attribute2.computeAttributesSize(this.symbolTable) : computeAttributesSize;
    }

    public boolean hasAsmInstructions() {
        return this.hasAsmInstructions;
    }

    public boolean hasFrames() {
        return this.stackMapTableNumberOfEntries > 0;
    }

    public void putMethodInfo(ByteVector byteVector) {
        int i10;
        boolean z10 = this.symbolTable.getMajorVersion() < 49;
        byteVector.putShort((~(z10 ? 4096 : 0)) & this.accessFlags).putShort(this.nameIndex).putShort(this.descriptorIndex);
        if (this.sourceOffset != 0) {
            byteVector.putByteArray(this.symbolTable.getSource().classFileBuffer, this.sourceOffset, this.sourceLength);
            return;
        }
        int i11 = this.code.length > 0 ? 1 : 0;
        if (this.numberOfExceptions > 0) {
            i11++;
        }
        int i12 = this.accessFlags;
        if ((i12 & 4096) != 0 && z10) {
            i11++;
        }
        if (this.signatureIndex != 0) {
            i11++;
        }
        if ((131072 & i12) != 0) {
            i11++;
        }
        if (this.lastRuntimeVisibleAnnotation != null) {
            i11++;
        }
        if (this.lastRuntimeInvisibleAnnotation != null) {
            i11++;
        }
        if (this.lastRuntimeVisibleParameterAnnotations != null) {
            i11++;
        }
        if (this.lastRuntimeInvisibleParameterAnnotations != null) {
            i11++;
        }
        if (this.lastRuntimeVisibleTypeAnnotation != null) {
            i11++;
        }
        if (this.lastRuntimeInvisibleTypeAnnotation != null) {
            i11++;
        }
        if (this.defaultValue != null) {
            i11++;
        }
        if (this.parameters != null) {
            i11++;
        }
        Attribute attribute = this.firstAttribute;
        if (attribute != null) {
            i11 += attribute.getAttributeCount();
        }
        byteVector.putShort(i11);
        int i13 = this.code.length;
        if (i13 > 0) {
            int exceptionTableSize = i13 + 10 + Handler.getExceptionTableSize(this.firstHandler);
            ByteVector byteVector2 = this.stackMapTableEntries;
            if (byteVector2 != null) {
                exceptionTableSize += byteVector2.length + 8;
                i10 = 1;
            } else {
                i10 = 0;
            }
            ByteVector byteVector3 = this.lineNumberTable;
            if (byteVector3 != null) {
                exceptionTableSize += byteVector3.length + 8;
                i10++;
            }
            ByteVector byteVector4 = this.localVariableTable;
            if (byteVector4 != null) {
                exceptionTableSize += byteVector4.length + 8;
                i10++;
            }
            ByteVector byteVector5 = this.localVariableTypeTable;
            if (byteVector5 != null) {
                exceptionTableSize += byteVector5.length + 8;
                i10++;
            }
            AnnotationWriter annotationWriter = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter != null) {
                exceptionTableSize += annotationWriter.computeAnnotationsSize(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
                i10++;
            }
            AnnotationWriter annotationWriter2 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter2 != null) {
                exceptionTableSize += annotationWriter2.computeAnnotationsSize(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
                i10++;
            }
            Attribute attribute2 = this.firstCodeAttribute;
            if (attribute2 != null) {
                SymbolTable symbolTable = this.symbolTable;
                ByteVector byteVector6 = this.code;
                exceptionTableSize += attribute2.computeAttributesSize(symbolTable, byteVector6.data, byteVector6.length, this.maxStack, this.maxLocals);
                i10 += this.firstCodeAttribute.getAttributeCount();
            }
            ByteVector putInt = byteVector.putShort(this.symbolTable.addConstantUtf8("Code")).putInt(exceptionTableSize).putShort(this.maxStack).putShort(this.maxLocals).putInt(this.code.length);
            ByteVector byteVector7 = this.code;
            putInt.putByteArray(byteVector7.data, 0, byteVector7.length);
            Handler.putExceptionTable(this.firstHandler, byteVector);
            byteVector.putShort(i10);
            if (this.stackMapTableEntries != null) {
                ByteVector putShort = byteVector.putShort(this.symbolTable.addConstantUtf8(this.symbolTable.getMajorVersion() >= 50 ? Attributes.NAME_STACK_MAP_TABLE : "StackMap")).putInt(this.stackMapTableEntries.length + 2).putShort(this.stackMapTableNumberOfEntries);
                ByteVector byteVector8 = this.stackMapTableEntries;
                putShort.putByteArray(byteVector8.data, 0, byteVector8.length);
            }
            if (this.lineNumberTable != null) {
                ByteVector putShort2 = byteVector.putShort(this.symbolTable.addConstantUtf8("LineNumberTable")).putInt(this.lineNumberTable.length + 2).putShort(this.lineNumberTableLength);
                ByteVector byteVector9 = this.lineNumberTable;
                putShort2.putByteArray(byteVector9.data, 0, byteVector9.length);
            }
            if (this.localVariableTable != null) {
                ByteVector putShort3 = byteVector.putShort(this.symbolTable.addConstantUtf8("LocalVariableTable")).putInt(this.localVariableTable.length + 2).putShort(this.localVariableTableLength);
                ByteVector byteVector10 = this.localVariableTable;
                putShort3.putByteArray(byteVector10.data, 0, byteVector10.length);
            }
            if (this.localVariableTypeTable != null) {
                ByteVector putShort4 = byteVector.putShort(this.symbolTable.addConstantUtf8("LocalVariableTypeTable")).putInt(this.localVariableTypeTable.length + 2).putShort(this.localVariableTypeTableLength);
                ByteVector byteVector11 = this.localVariableTypeTable;
                putShort4.putByteArray(byteVector11.data, 0, byteVector11.length);
            }
            AnnotationWriter annotationWriter3 = this.lastCodeRuntimeVisibleTypeAnnotation;
            if (annotationWriter3 != null) {
                annotationWriter3.putAnnotations(this.symbolTable.addConstantUtf8(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS), byteVector);
            }
            AnnotationWriter annotationWriter4 = this.lastCodeRuntimeInvisibleTypeAnnotation;
            if (annotationWriter4 != null) {
                annotationWriter4.putAnnotations(this.symbolTable.addConstantUtf8(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS), byteVector);
            }
            Attribute attribute3 = this.firstCodeAttribute;
            if (attribute3 != null) {
                SymbolTable symbolTable2 = this.symbolTable;
                ByteVector byteVector12 = this.code;
                attribute3.putAttributes(symbolTable2, byteVector12.data, byteVector12.length, this.maxStack, this.maxLocals, byteVector);
            }
        }
        if (this.numberOfExceptions > 0) {
            byteVector.putShort(this.symbolTable.addConstantUtf8("Exceptions")).putInt((this.numberOfExceptions * 2) + 2).putShort(this.numberOfExceptions);
            for (int i14 : this.exceptionIndexTable) {
                byteVector.putShort(i14);
            }
        }
        Attribute.putAttributes(this.symbolTable, this.accessFlags, this.signatureIndex, byteVector);
        AnnotationWriter.putAnnotations(this.symbolTable, this.lastRuntimeVisibleAnnotation, this.lastRuntimeInvisibleAnnotation, this.lastRuntimeVisibleTypeAnnotation, this.lastRuntimeInvisibleTypeAnnotation, byteVector);
        if (this.lastRuntimeVisibleParameterAnnotations != null) {
            int addConstantUtf8 = this.symbolTable.addConstantUtf8("RuntimeVisibleParameterAnnotations");
            AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
            int i15 = this.visibleAnnotableParameterCount;
            if (i15 == 0) {
                i15 = annotationWriterArr.length;
            }
            AnnotationWriter.putParameterAnnotations(addConstantUtf8, annotationWriterArr, i15, byteVector);
        }
        if (this.lastRuntimeInvisibleParameterAnnotations != null) {
            int addConstantUtf82 = this.symbolTable.addConstantUtf8("RuntimeInvisibleParameterAnnotations");
            AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
            int i16 = this.invisibleAnnotableParameterCount;
            if (i16 == 0) {
                i16 = annotationWriterArr2.length;
            }
            AnnotationWriter.putParameterAnnotations(addConstantUtf82, annotationWriterArr2, i16, byteVector);
        }
        if (this.defaultValue != null) {
            ByteVector putInt2 = byteVector.putShort(this.symbolTable.addConstantUtf8("AnnotationDefault")).putInt(this.defaultValue.length);
            ByteVector byteVector13 = this.defaultValue;
            putInt2.putByteArray(byteVector13.data, 0, byteVector13.length);
        }
        if (this.parameters != null) {
            ByteVector putByte = byteVector.putShort(this.symbolTable.addConstantUtf8(Attributes.NAME_METHOD_PARAMETERS)).putInt(this.parameters.length + 1).putByte(this.parametersCount);
            ByteVector byteVector14 = this.parameters;
            putByte.putByteArray(byteVector14.data, 0, byteVector14.length);
        }
        Attribute attribute4 = this.firstAttribute;
        if (attribute4 != null) {
            attribute4.putAttributes(this.symbolTable, byteVector);
        }
    }

    public void setMethodAttributesSource(int i10, int i11) {
        this.sourceOffset = i10 + 6;
        this.sourceLength = i11 - 6;
    }

    public void visitAbstractType(int i10, int i11) {
        this.currentFrame[i10] = i11;
    }

    @Override
    public void visitAnnotableParameterCount(int i10, boolean z10) {
        if (z10) {
            this.visibleAnnotableParameterCount = i10;
        } else {
            this.invisibleAnnotableParameterCount = i10;
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
    public AnnotationVisitor visitAnnotationDefault() {
        ByteVector byteVector = new ByteVector();
        this.defaultValue = byteVector;
        return new AnnotationWriter(this.symbolTable, false, byteVector, null);
    }

    @Override
    public void visitAttribute(Attribute attribute) {
        if (attribute.isCodeAttribute()) {
            attribute.nextAttribute = this.firstCodeAttribute;
            this.firstCodeAttribute = attribute;
        } else {
            attribute.nextAttribute = this.firstAttribute;
            this.firstAttribute = attribute;
        }
    }

    @Override
    public void visitCode() {
    }

    @Override
    public void visitEnd() {
    }

    @Override
    public void visitFieldInsn(int i10, String str, String str2, String str3) {
        int i11;
        int i12;
        this.lastBytecodeOffset = this.code.length;
        Symbol addConstantFieldref = this.symbolTable.addConstantFieldref(str, str2, str3);
        this.code.put12(i10, addConstantFieldref.index);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i13 = this.compute;
            if (i13 == 4 || i13 == 3) {
                label.frame.execute(i10, 0, addConstantFieldref, this.symbolTable);
                return;
            }
            char charAt = str3.charAt(0);
            int i14 = -2;
            switch (i10) {
                case 178:
                    i11 = this.relativeStackSize + ((charAt == 'D' || charAt == 'J') ? 2 : 1);
                    break;
                case 179:
                    i12 = this.relativeStackSize;
                    if (charAt != 'D' && charAt != 'J') {
                        i14 = -1;
                    }
                    i11 = i12 + i14;
                    break;
                case 180:
                    i11 = this.relativeStackSize + ((charAt == 'D' || charAt == 'J') ? 1 : 0);
                    break;
                default:
                    i12 = this.relativeStackSize;
                    if (charAt == 'D' || charAt == 'J') {
                        i14 = -3;
                    }
                    i11 = i12 + i14;
                    break;
            }
            if (i11 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i11;
            }
            this.relativeStackSize = i11;
        }
    }

    @Override
    public void visitFrame(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        int i13;
        int i14 = this.compute;
        if (i14 == 4) {
            return;
        }
        if (i14 == 3) {
            Label label = this.currentBasicBlock;
            Frame frame = label.frame;
            if (frame == null) {
                label.frame = new CurrentFrame(label);
                this.currentBasicBlock.frame.setInputFrameFromDescriptor(this.symbolTable, this.accessFlags, this.descriptor, i11);
                this.currentBasicBlock.frame.accept(this);
            } else {
                if (i10 == -1) {
                    frame.setInputFrameFromApiFormat(this.symbolTable, i11, objArr, i12, objArr2);
                }
                this.currentBasicBlock.frame.accept(this);
            }
        } else if (i10 == -1) {
            if (this.previousFrame == null) {
                int argumentsAndReturnSizes = Type.getArgumentsAndReturnSizes(this.descriptor) >> 2;
                Frame frame2 = new Frame(new Label());
                frame2.setInputFrameFromDescriptor(this.symbolTable, this.accessFlags, this.descriptor, argumentsAndReturnSizes);
                frame2.accept(this);
            }
            this.currentLocals = i11;
            int visitFrameStart = visitFrameStart(this.code.length, i11, i12);
            int i15 = 0;
            while (i15 < i11) {
                this.currentFrame[visitFrameStart] = Frame.getAbstractTypeFromApiFormat(this.symbolTable, objArr[i15]);
                i15++;
                visitFrameStart++;
            }
            int i16 = 0;
            while (i16 < i12) {
                this.currentFrame[visitFrameStart] = Frame.getAbstractTypeFromApiFormat(this.symbolTable, objArr2[i16]);
                i16++;
                visitFrameStart++;
            }
            visitFrameEnd();
        } else {
            if (this.symbolTable.getMajorVersion() < 50) {
                throw new IllegalArgumentException("Class versions V1_5 or less must use F_NEW frames.");
            }
            if (this.stackMapTableEntries == null) {
                this.stackMapTableEntries = new ByteVector();
                i13 = this.code.length;
            } else {
                i13 = (this.code.length - this.previousFrameOffset) - 1;
                if (i13 < 0) {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i10 == 0) {
                this.currentLocals = i11;
                this.stackMapTableEntries.putByte(255).putShort(i13).putShort(i11);
                for (int i17 = 0; i17 < i11; i17++) {
                    putFrameType(objArr[i17]);
                }
                this.stackMapTableEntries.putShort(i12);
                for (int i18 = 0; i18 < i12; i18++) {
                    putFrameType(objArr2[i18]);
                }
            } else if (i10 == 1) {
                this.currentLocals += i11;
                this.stackMapTableEntries.putByte(i11 + 251).putShort(i13);
                for (int i19 = 0; i19 < i11; i19++) {
                    putFrameType(objArr[i19]);
                }
            } else if (i10 == 2) {
                this.currentLocals -= i11;
                this.stackMapTableEntries.putByte(251 - i11).putShort(i13);
            } else if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalArgumentException();
                }
                if (i13 < 64) {
                    this.stackMapTableEntries.putByte(i13 + 64);
                } else {
                    this.stackMapTableEntries.putByte(247).putShort(i13);
                }
                putFrameType(objArr2[0]);
            } else if (i13 < 64) {
                this.stackMapTableEntries.putByte(i13);
            } else {
                this.stackMapTableEntries.putByte(251).putShort(i13);
            }
            this.previousFrameOffset = this.code.length;
            this.stackMapTableNumberOfEntries++;
        }
        if (this.compute == 2) {
            this.relativeStackSize = i12;
            for (int i20 = 0; i20 < i12; i20++) {
                Object obj = objArr2[i20];
                if (obj == Opcodes.LONG || obj == Opcodes.DOUBLE) {
                    this.relativeStackSize++;
                }
            }
            int i21 = this.relativeStackSize;
            if (i21 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i21;
            }
        }
        this.maxStack = Math.max(this.maxStack, i12);
        this.maxLocals = Math.max(this.maxLocals, this.currentLocals);
    }

    public void visitFrameEnd() {
        if (this.previousFrame != null) {
            if (this.stackMapTableEntries == null) {
                this.stackMapTableEntries = new ByteVector();
            }
            putFrame();
            this.stackMapTableNumberOfEntries++;
        }
        this.previousFrame = this.currentFrame;
        this.currentFrame = null;
    }

    public int visitFrameStart(int i10, int i11, int i12) {
        int i13 = i11 + 3 + i12;
        int[] iArr = this.currentFrame;
        if (iArr == null || iArr.length < i13) {
            this.currentFrame = new int[i13];
        }
        int[] iArr2 = this.currentFrame;
        iArr2[0] = i10;
        iArr2[1] = i11;
        iArr2[2] = i12;
        return 3;
    }

    @Override
    public void visitIincInsn(int i10, int i11) {
        int i12;
        int i13;
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        if (i10 > 255 || i11 > 127 || i11 < -128) {
            byteVector.putByte(196).put12(132, i10).putShort(i11);
        } else {
            byteVector.putByte(132).put11(i10, i11);
        }
        Label label = this.currentBasicBlock;
        if (label != null && ((i13 = this.compute) == 4 || i13 == 3)) {
            label.frame.execute(132, i10, null, null);
        }
        if (this.compute == 0 || (i12 = i10 + 1) <= this.maxLocals) {
            return;
        }
        this.maxLocals = i12;
    }

    @Override
    public void visitInsn(int i10) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        byteVector.putByte(i10);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i11 = this.compute;
            if (i11 == 4 || i11 == 3) {
                label.frame.execute(i10, 0, null, null);
            } else {
                int i12 = this.relativeStackSize + STACK_SIZE_DELTA[i10];
                if (i12 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i12;
                }
                this.relativeStackSize = i12;
            }
            if ((i10 < 172 || i10 > 177) && i10 != 191) {
                return;
            }
            endCurrentBasicBlockWithNoSuccessor();
        }
    }

    @Override
    public AnnotationVisitor visitInsnAnnotation(int i10, TypePath typePath, String str, boolean z10) {
        if (z10) {
            AnnotationWriter create = AnnotationWriter.create(this.symbolTable, (i10 & (-16776961)) | (this.lastBytecodeOffset << 8), typePath, str, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = create;
            return create;
        }
        AnnotationWriter create2 = AnnotationWriter.create(this.symbolTable, (i10 & (-16776961)) | (this.lastBytecodeOffset << 8), typePath, str, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = create2;
        return create2;
    }

    @Override
    public void visitIntInsn(int i10, int i11) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        if (i10 == 17) {
            byteVector.put12(i10, i11);
        } else {
            byteVector.put11(i10, i11);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i12 = this.compute;
            if (i12 == 4 || i12 == 3) {
                label.frame.execute(i10, i11, null, null);
            } else if (i10 != 188) {
                int i13 = this.relativeStackSize + 1;
                if (i13 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i13;
                }
                this.relativeStackSize = i13;
            }
        }
    }

    @Override
    public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
        this.lastBytecodeOffset = this.code.length;
        Symbol addConstantInvokeDynamic = this.symbolTable.addConstantInvokeDynamic(str, str2, handle, objArr);
        this.code.put12(186, addConstantInvokeDynamic.index);
        this.code.putShort(0);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i10 = this.compute;
            if (i10 == 4 || i10 == 3) {
                label.frame.execute(186, 0, addConstantInvokeDynamic, this.symbolTable);
                return;
            }
            int argumentsAndReturnSizes = addConstantInvokeDynamic.getArgumentsAndReturnSizes();
            int i11 = this.relativeStackSize + ((argumentsAndReturnSizes & 3) - (argumentsAndReturnSizes >> 2)) + 1;
            if (i11 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i11;
            }
            this.relativeStackSize = i11;
        }
    }

    @Override
    public void visitJumpInsn(int i10, Label label) {
        boolean z10;
        ByteVector byteVector = this.code;
        int i11 = byteVector.length;
        this.lastBytecodeOffset = i11;
        int i12 = i10 >= 200 ? i10 - 33 : i10;
        if ((label.flags & 4) == 0 || label.bytecodeOffset - i11 >= -32768) {
            if (i12 != i10) {
                byteVector.putByte(i10);
                ByteVector byteVector2 = this.code;
                label.put(byteVector2, byteVector2.length - 1, true);
            } else {
                byteVector.putByte(i12);
                ByteVector byteVector3 = this.code;
                label.put(byteVector3, byteVector3.length - 1, false);
            }
            z10 = false;
        } else {
            if (i12 == 167) {
                byteVector.putByte(200);
            } else if (i12 == 168) {
                byteVector.putByte(201);
            } else {
                byteVector.putByte(i12 >= 198 ? i12 ^ 1 : ((i12 + 1) ^ 1) - 1);
                this.code.putShort(8);
                this.code.putByte(220);
                this.hasAsmInstructions = true;
                z10 = true;
                ByteVector byteVector4 = this.code;
                label.put(byteVector4, byteVector4.length - 1, true);
            }
            z10 = false;
            ByteVector byteVector42 = this.code;
            label.put(byteVector42, byteVector42.length - 1, true);
        }
        Label label2 = this.currentBasicBlock;
        if (label2 != null) {
            int i13 = this.compute;
            Label label3 = null;
            if (i13 == 4) {
                label2.frame.execute(i12, 0, null, null);
                Label canonicalInstance = label.getCanonicalInstance();
                canonicalInstance.flags = (short) (canonicalInstance.flags | 2);
                addSuccessorToCurrentBasicBlock(0, label);
                if (i12 != 167) {
                    label3 = new Label();
                }
            } else if (i13 == 3) {
                label2.frame.execute(i12, 0, null, null);
            } else if (i13 == 2) {
                this.relativeStackSize += STACK_SIZE_DELTA[i12];
            } else if (i12 == 168) {
                short s10 = label.flags;
                if ((s10 & 32) == 0) {
                    label.flags = (short) (s10 | 32);
                    this.hasSubroutines = true;
                }
                label2.flags = (short) (label2.flags | 16);
                addSuccessorToCurrentBasicBlock(this.relativeStackSize + 1, label);
                label3 = new Label();
            } else {
                int i14 = this.relativeStackSize + STACK_SIZE_DELTA[i12];
                this.relativeStackSize = i14;
                addSuccessorToCurrentBasicBlock(i14, label);
            }
            if (label3 != null) {
                if (z10) {
                    label3.flags = (short) (label3.flags | 2);
                }
                visitLabel(label3);
            }
            if (i12 == 167) {
                endCurrentBasicBlockWithNoSuccessor();
            }
        }
    }

    @Override
    public void visitLabel(Label label) {
        boolean z10 = this.hasAsmInstructions;
        ByteVector byteVector = this.code;
        this.hasAsmInstructions = z10 | label.resolve(byteVector.data, byteVector.length);
        short s10 = label.flags;
        if ((s10 & 1) != 0) {
            return;
        }
        int i10 = this.compute;
        if (i10 == 4) {
            Label label2 = this.currentBasicBlock;
            if (label2 != null) {
                if (label.bytecodeOffset == label2.bytecodeOffset) {
                    label2.flags = (short) ((s10 & 2) | label2.flags);
                    label.frame = label2.frame;
                    return;
                }
                addSuccessorToCurrentBasicBlock(0, label);
            }
            Label label3 = this.lastBasicBlock;
            if (label3 != null) {
                if (label.bytecodeOffset == label3.bytecodeOffset) {
                    label3.flags = (short) (label3.flags | (label.flags & 2));
                    label.frame = label3.frame;
                    this.currentBasicBlock = label3;
                    return;
                }
                label3.nextBasicBlock = label;
            }
            this.lastBasicBlock = label;
            this.currentBasicBlock = label;
            label.frame = new Frame(label);
            return;
        }
        if (i10 == 3) {
            Label label4 = this.currentBasicBlock;
            if (label4 == null) {
                this.currentBasicBlock = label;
                return;
            } else {
                label4.frame.owner = label;
                return;
            }
        }
        if (i10 != 1) {
            if (i10 == 2 && this.currentBasicBlock == null) {
                this.currentBasicBlock = label;
                return;
            }
            return;
        }
        Label label5 = this.currentBasicBlock;
        if (label5 != null) {
            label5.outputStackMax = (short) this.maxRelativeStackSize;
            addSuccessorToCurrentBasicBlock(this.relativeStackSize, label);
        }
        this.currentBasicBlock = label;
        this.relativeStackSize = 0;
        this.maxRelativeStackSize = 0;
        Label label6 = this.lastBasicBlock;
        if (label6 != null) {
            label6.nextBasicBlock = label;
        }
        this.lastBasicBlock = label;
    }

    @Override
    public void visitLdcInsn(Object obj) {
        char charAt;
        this.lastBytecodeOffset = this.code.length;
        Symbol addConstant = this.symbolTable.addConstant(obj);
        int i10 = addConstant.index;
        int i11 = addConstant.tag;
        boolean z10 = i11 == 5 || i11 == 6 || (i11 == 17 && ((charAt = addConstant.value.charAt(0)) == 'J' || charAt == 'D'));
        if (z10) {
            this.code.put12(20, i10);
        } else if (i10 >= 256) {
            this.code.put12(19, i10);
        } else {
            this.code.put11(18, i10);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i12 = this.compute;
            if (i12 == 4 || i12 == 3) {
                label.frame.execute(18, 0, addConstant, this.symbolTable);
                return;
            }
            int i13 = this.relativeStackSize + (z10 ? 2 : 1);
            if (i13 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i13;
            }
            this.relativeStackSize = i13;
        }
    }

    @Override
    public void visitLineNumber(int i10, Label label) {
        if (this.lineNumberTable == null) {
            this.lineNumberTable = new ByteVector();
        }
        this.lineNumberTableLength++;
        this.lineNumberTable.putShort(label.bytecodeOffset);
        this.lineNumberTable.putShort(i10);
    }

    @Override
    public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i10) {
        if (str3 != null) {
            if (this.localVariableTypeTable == null) {
                this.localVariableTypeTable = new ByteVector();
            }
            this.localVariableTypeTableLength++;
            this.localVariableTypeTable.putShort(label.bytecodeOffset).putShort(label2.bytecodeOffset - label.bytecodeOffset).putShort(this.symbolTable.addConstantUtf8(str)).putShort(this.symbolTable.addConstantUtf8(str3)).putShort(i10);
        }
        if (this.localVariableTable == null) {
            this.localVariableTable = new ByteVector();
        }
        this.localVariableTableLength++;
        this.localVariableTable.putShort(label.bytecodeOffset).putShort(label2.bytecodeOffset - label.bytecodeOffset).putShort(this.symbolTable.addConstantUtf8(str)).putShort(this.symbolTable.addConstantUtf8(str2)).putShort(i10);
        if (this.compute != 0) {
            char charAt = str2.charAt(0);
            int i11 = i10 + ((charAt == 'J' || charAt == 'D') ? 2 : 1);
            if (i11 > this.maxLocals) {
                this.maxLocals = i11;
            }
        }
    }

    @Override
    public AnnotationVisitor visitLocalVariableAnnotation(int i10, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z10) {
        ByteVector byteVector = new ByteVector();
        byteVector.putByte(i10 >>> 24).putShort(labelArr.length);
        for (int i11 = 0; i11 < labelArr.length; i11++) {
            byteVector.putShort(labelArr[i11].bytecodeOffset).putShort(labelArr2[i11].bytecodeOffset - labelArr[i11].bytecodeOffset).putShort(iArr[i11]);
        }
        TypePath.put(typePath, byteVector);
        byteVector.putShort(this.symbolTable.addConstantUtf8(str)).putShort(0);
        if (z10) {
            AnnotationWriter annotationWriter = new AnnotationWriter(this.symbolTable, true, byteVector, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = annotationWriter;
            return annotationWriter;
        }
        AnnotationWriter annotationWriter2 = new AnnotationWriter(this.symbolTable, true, byteVector, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = annotationWriter2;
        return annotationWriter2;
    }

    @Override
    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        byteVector.putByte(171).putByteArray(null, 0, (4 - (this.code.length % 4)) % 4);
        label.put(this.code, this.lastBytecodeOffset, true);
        this.code.putInt(labelArr.length);
        for (int i10 = 0; i10 < labelArr.length; i10++) {
            this.code.putInt(iArr[i10]);
            labelArr[i10].put(this.code, this.lastBytecodeOffset, true);
        }
        visitSwitchInsn(label, labelArr);
    }

    @Override
    public void visitMaxs(int i10, int i11) {
        int i12 = this.compute;
        if (i12 == 4) {
            computeAllFrames();
            return;
        }
        if (i12 == 1) {
            computeMaxStackAndLocal();
        } else if (i12 == 2) {
            this.maxStack = this.maxRelativeStackSize;
        } else {
            this.maxStack = i10;
            this.maxLocals = i11;
        }
    }

    @Override
    public void visitMethodInsn(int i10, String str, String str2, String str3, boolean z10) {
        this.lastBytecodeOffset = this.code.length;
        Symbol addConstantMethodref = this.symbolTable.addConstantMethodref(str, str2, str3, z10);
        if (i10 == 185) {
            this.code.put12(185, addConstantMethodref.index).put11(addConstantMethodref.getArgumentsAndReturnSizes() >> 2, 0);
        } else {
            this.code.put12(i10, addConstantMethodref.index);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i11 = this.compute;
            if (i11 == 4 || i11 == 3) {
                label.frame.execute(i10, 0, addConstantMethodref, this.symbolTable);
                return;
            }
            int argumentsAndReturnSizes = addConstantMethodref.getArgumentsAndReturnSizes();
            int i12 = (argumentsAndReturnSizes & 3) - (argumentsAndReturnSizes >> 2);
            int i13 = i10 == 184 ? this.relativeStackSize + i12 + 1 : this.relativeStackSize + i12;
            if (i13 > this.maxRelativeStackSize) {
                this.maxRelativeStackSize = i13;
            }
            this.relativeStackSize = i13;
        }
    }

    @Override
    public void visitMultiANewArrayInsn(String str, int i10) {
        this.lastBytecodeOffset = this.code.length;
        Symbol addConstantClass = this.symbolTable.addConstantClass(str);
        this.code.put12(197, addConstantClass.index).putByte(i10);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i11 = this.compute;
            if (i11 == 4 || i11 == 3) {
                label.frame.execute(197, i10, addConstantClass, this.symbolTable);
            } else {
                this.relativeStackSize += 1 - i10;
            }
        }
    }

    @Override
    public void visitParameter(String str, int i10) {
        if (this.parameters == null) {
            this.parameters = new ByteVector();
        }
        this.parametersCount++;
        this.parameters.putShort(str == null ? 0 : this.symbolTable.addConstantUtf8(str)).putShort(i10);
    }

    @Override
    public AnnotationVisitor visitParameterAnnotation(int i10, String str, boolean z10) {
        if (z10) {
            if (this.lastRuntimeVisibleParameterAnnotations == null) {
                this.lastRuntimeVisibleParameterAnnotations = new AnnotationWriter[Type.getArgumentTypes(this.descriptor).length];
            }
            AnnotationWriter[] annotationWriterArr = this.lastRuntimeVisibleParameterAnnotations;
            AnnotationWriter create = AnnotationWriter.create(this.symbolTable, str, annotationWriterArr[i10]);
            annotationWriterArr[i10] = create;
            return create;
        }
        if (this.lastRuntimeInvisibleParameterAnnotations == null) {
            this.lastRuntimeInvisibleParameterAnnotations = new AnnotationWriter[Type.getArgumentTypes(this.descriptor).length];
        }
        AnnotationWriter[] annotationWriterArr2 = this.lastRuntimeInvisibleParameterAnnotations;
        AnnotationWriter create2 = AnnotationWriter.create(this.symbolTable, str, annotationWriterArr2[i10]);
        annotationWriterArr2[i10] = create2;
        return create2;
    }

    @Override
    public void visitTableSwitchInsn(int i10, int i11, Label label, Label... labelArr) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        byteVector.putByte(170).putByteArray(null, 0, (4 - (this.code.length % 4)) % 4);
        label.put(this.code, this.lastBytecodeOffset, true);
        this.code.putInt(i10).putInt(i11);
        for (Label label2 : labelArr) {
            label2.put(this.code, this.lastBytecodeOffset, true);
        }
        visitSwitchInsn(label, labelArr);
    }

    @Override
    public AnnotationVisitor visitTryCatchAnnotation(int i10, TypePath typePath, String str, boolean z10) {
        if (z10) {
            AnnotationWriter create = AnnotationWriter.create(this.symbolTable, i10, typePath, str, this.lastCodeRuntimeVisibleTypeAnnotation);
            this.lastCodeRuntimeVisibleTypeAnnotation = create;
            return create;
        }
        AnnotationWriter create2 = AnnotationWriter.create(this.symbolTable, i10, typePath, str, this.lastCodeRuntimeInvisibleTypeAnnotation);
        this.lastCodeRuntimeInvisibleTypeAnnotation = create2;
        return create2;
    }

    @Override
    public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
        Handler handler = new Handler(label, label2, label3, str != null ? this.symbolTable.addConstantClass(str).index : 0, str);
        if (this.firstHandler == null) {
            this.firstHandler = handler;
        } else {
            this.lastHandler.nextHandler = handler;
        }
        this.lastHandler = handler;
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

    @Override
    public void visitTypeInsn(int i10, String str) {
        this.lastBytecodeOffset = this.code.length;
        Symbol addConstantClass = this.symbolTable.addConstantClass(str);
        this.code.put12(i10, addConstantClass.index);
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i11 = this.compute;
            if (i11 == 4 || i11 == 3) {
                label.frame.execute(i10, this.lastBytecodeOffset, addConstantClass, this.symbolTable);
            } else if (i10 == 187) {
                int i12 = this.relativeStackSize + 1;
                if (i12 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i12;
                }
                this.relativeStackSize = i12;
            }
        }
    }

    @Override
    public void visitVarInsn(int i10, int i11) {
        ByteVector byteVector = this.code;
        this.lastBytecodeOffset = byteVector.length;
        if (i11 < 4 && i10 != 169) {
            byteVector.putByte((i10 < 54 ? ((i10 - 21) << 2) + 26 : ((i10 - 54) << 2) + 59) + i11);
        } else if (i11 >= 256) {
            byteVector.putByte(196).put12(i10, i11);
        } else {
            byteVector.put11(i10, i11);
        }
        Label label = this.currentBasicBlock;
        if (label != null) {
            int i12 = this.compute;
            if (i12 == 4 || i12 == 3) {
                label.frame.execute(i10, i11, null, null);
            } else if (i10 == 169) {
                label.flags = (short) (label.flags | 64);
                label.outputStackSize = (short) this.relativeStackSize;
                endCurrentBasicBlockWithNoSuccessor();
            } else {
                int i13 = this.relativeStackSize + STACK_SIZE_DELTA[i10];
                if (i13 > this.maxRelativeStackSize) {
                    this.maxRelativeStackSize = i13;
                }
                this.relativeStackSize = i13;
            }
        }
        int i14 = this.compute;
        if (i14 != 0) {
            int i15 = (i10 == 22 || i10 == 24 || i10 == 55 || i10 == 57) ? i11 + 2 : i11 + 1;
            if (i15 > this.maxLocals) {
                this.maxLocals = i15;
            }
        }
        if (i10 < 54 || i14 != 4 || this.firstHandler == null) {
            return;
        }
        visitLabel(new Label());
    }
}
