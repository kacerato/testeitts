package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.codegen.TypeAnnotationCodeStream;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CodeSnippetClassFile extends ClassFile {
    public CodeSnippetClassFile(SourceTypeBinding sourceTypeBinding, ClassFile classFile, boolean z10) {
        int literalIndexForType;
        this.referenceBinding = sourceTypeBinding;
        initByteArrays(sourceTypeBinding.methods().length + sourceTypeBinding.fields().length);
        byte[] bArr = this.header;
        int i10 = this.headerOffset;
        int i11 = i10 + 1;
        this.headerOffset = i11;
        bArr[i10] = -54;
        int i12 = i10 + 2;
        this.headerOffset = i12;
        bArr[i11] = -2;
        int i13 = i10 + 3;
        this.headerOffset = i13;
        bArr[i12] = Opcodes.OPC_invokedynamic;
        this.headerOffset = i10 + 4;
        bArr[i13] = Opcodes.OPC_arraylength;
        long j10 = this.referenceBinding.scope.compilerOptions().targetJDK;
        this.targetJDK = j10;
        byte[] bArr2 = this.header;
        int i14 = this.headerOffset;
        int i15 = i14 + 1;
        this.headerOffset = i15;
        bArr2[i14] = (byte) (j10 >> 8);
        int i16 = i14 + 2;
        this.headerOffset = i16;
        bArr2[i15] = (byte) j10;
        int i17 = i14 + 3;
        this.headerOffset = i17;
        bArr2[i16] = (byte) (j10 >> 24);
        int i18 = i14 + 4;
        this.headerOffset = i18;
        bArr2[i17] = (byte) (j10 >> 16);
        this.constantPoolOffset = i18;
        this.headerOffset = i14 + 6;
        this.constantPool = new ConstantPool(this);
        int accessFlags = sourceTypeBinding.getAccessFlags();
        accessFlags = sourceTypeBinding.isInterface() ? accessFlags : accessFlags | 32;
        if (sourceTypeBinding.isNestedType()) {
            accessFlags = sourceTypeBinding.isStatic() ? accessFlags & (-9) : accessFlags;
            accessFlags = sourceTypeBinding.isPrivate() ? accessFlags & (-4) : accessFlags;
            if (sourceTypeBinding.isProtected()) {
                accessFlags = (accessFlags & (-5)) | 1;
            }
        }
        int i19 = accessFlags & (-2049);
        this.enclosingClassFile = classFile;
        byte[] bArr3 = this.contents;
        int i20 = this.contentsOffset;
        int i21 = i20 + 1;
        this.contentsOffset = i21;
        bArr3[i20] = (byte) (i19 >> 8);
        this.contentsOffset = i20 + 2;
        bArr3[i21] = (byte) i19;
        int literalIndexForType2 = this.constantPool.literalIndexForType(sourceTypeBinding);
        byte[] bArr4 = this.contents;
        int i22 = this.contentsOffset;
        int i23 = i22 + 1;
        this.contentsOffset = i23;
        bArr4[i22] = (byte) (literalIndexForType2 >> 8);
        this.contentsOffset = i22 + 2;
        bArr4[i23] = (byte) literalIndexForType2;
        if (sourceTypeBinding.isInterface()) {
            literalIndexForType = this.constantPool.literalIndexForType(ConstantPool.JavaLangObjectConstantPoolName);
        } else {
            ReferenceBinding referenceBinding = sourceTypeBinding.superclass;
            literalIndexForType = referenceBinding == null ? 0 : this.constantPool.literalIndexForType(referenceBinding);
        }
        byte[] bArr5 = this.contents;
        int i24 = this.contentsOffset;
        int i25 = i24 + 1;
        this.contentsOffset = i25;
        bArr5[i24] = (byte) (literalIndexForType >> 8);
        this.contentsOffset = i24 + 2;
        bArr5[i25] = (byte) literalIndexForType;
        ReferenceBinding[] superInterfaces = sourceTypeBinding.superInterfaces();
        int length = superInterfaces.length;
        byte[] bArr6 = this.contents;
        int i26 = this.contentsOffset;
        int i27 = i26 + 1;
        this.contentsOffset = i27;
        bArr6[i26] = (byte) (length >> 8);
        this.contentsOffset = i26 + 2;
        bArr6[i27] = (byte) length;
        for (ReferenceBinding referenceBinding2 : superInterfaces) {
            int literalIndexForType3 = this.constantPool.literalIndexForType(referenceBinding2);
            byte[] bArr7 = this.contents;
            int i28 = this.contentsOffset;
            int i29 = i28 + 1;
            this.contentsOffset = i29;
            bArr7[i28] = (byte) (literalIndexForType3 >> 8);
            this.contentsOffset = i28 + 2;
            bArr7[i29] = (byte) literalIndexForType3;
        }
        int i30 = this.referenceBinding.scope.compilerOptions().produceDebugAttributes;
        this.produceAttributes = i30;
        this.creatingProblemType = z10;
        long j11 = this.targetJDK;
        if (j11 >= ClassFileConstants.JDK1_6) {
            this.produceAttributes = i30 | 8;
            if (j11 >= ClassFileConstants.JDK1_8) {
                this.produceAttributes = i30 | 40;
                this.codeStream = new TypeAnnotationCodeStream(this);
            } else {
                this.codeStream = new StackMapFrameCodeStream(this);
            }
        } else if (j11 == ClassFileConstants.CLDC_1_1) {
            this.targetJDK = ClassFileConstants.JDK1_1;
            this.produceAttributes = i30 | 16;
            this.codeStream = new StackMapFrameCodeStream(this);
        } else {
            this.codeStream = new CodeStream(this);
        }
        this.codeStream.maxFieldCount = sourceTypeBinding.scope.outerMostClassScope().referenceType().maxFieldCount;
    }

    public static void createProblemType(TypeDeclaration typeDeclaration, CompilationResult compilationResult) {
        boolean z10;
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        ClassFile codeSnippetClassFile = new CodeSnippetClassFile(sourceTypeBinding, null, true);
        if (sourceTypeBinding.hasMemberTypes()) {
            for (TypeBinding typeBinding : sourceTypeBinding.memberTypes) {
                codeSnippetClassFile.recordInnerClasses(typeBinding);
            }
        }
        if (sourceTypeBinding.isNestedType()) {
            codeSnippetClassFile.recordInnerClasses(sourceTypeBinding);
        }
        for (TypeVariableBinding typeVariableBinding : sourceTypeBinding.typeVariables()) {
            if ((typeVariableBinding.tagBits & 2048) != 0) {
                Util.recordNestedType(codeSnippetClassFile, typeVariableBinding);
            }
        }
        FieldBinding[] fields = sourceTypeBinding.fields();
        if (fields == null || fields == Binding.NO_FIELDS) {
            byte[] bArr = codeSnippetClassFile.contents;
            int i10 = codeSnippetClassFile.contentsOffset;
            int i11 = i10 + 1;
            codeSnippetClassFile.contentsOffset = i11;
            bArr[i10] = 0;
            codeSnippetClassFile.contentsOffset = i10 + 2;
            bArr[i11] = 0;
        } else {
            codeSnippetClassFile.addFieldInfos();
        }
        codeSnippetClassFile.setForMethodInfos();
        CategorizedProblem[] errors = compilationResult.getErrors();
        if (errors == null) {
            errors = new CategorizedProblem[0];
        }
        int length = errors.length;
        CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[length];
        System.arraycopy(errors, 0, categorizedProblemArr, 0, length);
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            if (sourceTypeBinding.isInterface()) {
                z10 = sourceTypeBinding.scope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8;
                codeSnippetClassFile.addProblemClinit(categorizedProblemArr);
            } else {
                z10 = false;
            }
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                MethodBinding methodBinding = abstractMethodDeclaration.binding;
                if (methodBinding != null) {
                    if (z10) {
                        methodBinding.modifiers = 1025;
                    }
                    if (methodBinding.isConstructor()) {
                        if (!sourceTypeBinding.isInterface()) {
                            codeSnippetClassFile.addProblemConstructor(abstractMethodDeclaration, methodBinding, categorizedProblemArr);
                        }
                    } else if (methodBinding.isAbstract()) {
                        codeSnippetClassFile.addAbstractMethod(abstractMethodDeclaration, methodBinding);
                    } else {
                        codeSnippetClassFile.addProblemMethod(abstractMethodDeclaration, methodBinding, categorizedProblemArr);
                    }
                }
            }
            codeSnippetClassFile.addDefaultAbstractMethods();
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            int length2 = typeDeclarationArr.length;
            for (int i12 = 0; i12 < length2; i12++) {
                TypeDeclaration typeDeclaration2 = typeDeclaration.memberTypes[i12];
                if (typeDeclaration2.binding != null) {
                    ClassFile.createProblemType(typeDeclaration2, compilationResult);
                }
            }
        }
        codeSnippetClassFile.addAttributes();
        compilationResult.record(sourceTypeBinding.constantPoolName(), codeSnippetClassFile);
    }
}
