package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public class Clinit extends AbstractMethodDeclaration {
    private static int ENUM_CONSTANTS_THRESHOLD = 2000;
    private FieldBinding assertionSyntheticFieldBinding;
    private FieldBinding classLiteralSyntheticField;

    public Clinit(CompilationResult compilationResult) {
        super(compilationResult);
        this.assertionSyntheticFieldBinding = null;
        this.classLiteralSyntheticField = null;
        this.modifiers = 0;
        this.selector = TypeConstants.CLINIT;
    }

    public void analyseCode(ClassScope classScope, InitializationFlowContext initializationFlowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            ExceptionHandlingFlowContext exceptionHandlingFlowContext = new ExceptionHandlingFlowContext(initializationFlowContext.parent, this, Binding.NO_EXCEPTIONS, initializationFlowContext, this.scope, FlowInfo.DEAD_END);
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= 64;
            }
            UnconditionalFlowInfo mergedWith = flowInfo.mergedWith(initializationFlowContext.initsOnReturn);
            for (FieldBinding fieldBinding : this.scope.enclosingSourceType().fields()) {
                if (fieldBinding.isStatic() && !mergedWith.isDefinitelyAssigned(fieldBinding)) {
                    if (fieldBinding.isFinal()) {
                        this.scope.problemReporter().uninitializedBlankFinalField(fieldBinding, this.scope.referenceType().declarationOf(fieldBinding.original()));
                    } else if (fieldBinding.isNonNull()) {
                        this.scope.problemReporter().uninitializedNonNullField(fieldBinding, this.scope.referenceType().declarationOf(fieldBinding.original()));
                    }
                }
            }
            initializationFlowContext.checkInitializerExceptions(this.scope, exceptionHandlingFlowContext, mergedWith);
        } catch (AbortMethod unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    @Override
    public void generateCode(ClassScope classScope, ClassFile classFile) {
        CompilationResult compilationResult;
        int i10;
        boolean z10;
        TypeDeclaration typeDeclaration;
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        if (classScope == null || (typeDeclaration = classScope.referenceContext) == null) {
            compilationResult = null;
            i10 = 0;
        } else {
            compilationResult = typeDeclaration.compilationResult();
            i10 = compilationResult.problemCount;
        }
        int i11 = 0;
        do {
            try {
                i11 = classFile.contentsOffset;
                generateCode(classScope, classFile, i11);
            } catch (AbortMethod e10) {
                CompilationResult compilationResult2 = e10.compilationResult;
                z10 = true;
                if (compilationResult2 == CodeStream.RESTART_IN_WIDE_MODE) {
                    classFile.contentsOffset = i11;
                    classFile.methodCount--;
                    classFile.codeStream.resetInWideMode();
                    if (compilationResult != null) {
                        compilationResult.problemCount = i10;
                    }
                } else if (compilationResult2 == CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE) {
                    classFile.contentsOffset = i11;
                    classFile.methodCount--;
                    classFile.codeStream.resetForCodeGenUnusedLocals();
                    if (compilationResult != null) {
                        compilationResult.problemCount = i10;
                    }
                } else {
                    classFile.contentsOffset = i11;
                    classFile.methodCount--;
                }
            }
            z10 = false;
        } while (z10);
    }

    @Override
    public boolean isClinit() {
        return true;
    }

    @Override
    public boolean isInitializationMethod() {
        return true;
    }

    @Override
    public boolean isStatic() {
        return true;
    }

    @Override
    public void parseStatements(Parser parser, CompilationUnitDeclaration compilationUnitDeclaration) {
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<clinit>()");
        printBody(i10 + 1, stringBuffer);
        return stringBuffer;
    }

    @Override
    public void resolve(ClassScope classScope) {
        this.scope = new MethodScope(classScope, classScope.referenceContext, true);
    }

    public void setAssertionSupport(FieldBinding fieldBinding, boolean z10) {
        this.assertionSyntheticFieldBinding = fieldBinding;
        if (z10) {
            SourceTypeBinding enclosingSourceType = this.scope.outerMostClassScope().enclosingSourceType();
            if (enclosingSourceType.isInterface() || enclosingSourceType.isBaseType()) {
                return;
            }
            this.classLiteralSyntheticField = enclosingSourceType.addSyntheticFieldForClassLiteral(enclosingSourceType, this.scope);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00fb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void generateCode(ClassScope classScope, ClassFile classFile, int i10) {
        int i11;
        int i12;
        ConstantPool constantPool = classFile.constantPool;
        int i13 = constantPool.currentOffset;
        int i14 = constantPool.currentIndex;
        classFile.generateMethodInfoHeaderForClinit();
        int i15 = classFile.contentsOffset;
        classFile.generateCodeAttributeHeader();
        CodeStream codeStream = classFile.codeStream;
        resolve(classScope);
        codeStream.reset(this, classFile);
        TypeDeclaration typeDeclaration = classScope.referenceContext;
        MethodScope methodScope = typeDeclaration.staticInitializerScope;
        methodScope.computeLocalVariablePositions(0, codeStream);
        TypeBinding typeBinding = null;
        if (this.assertionSyntheticFieldBinding != null) {
            codeStream.generateClassLiteralAccessForType(classScope.outerMostClassScope().enclosingSourceType(), this.classLiteralSyntheticField);
            codeStream.invokeJavaLangClassDesiredAssertionStatus();
            BranchLabel branchLabel = new BranchLabel(codeStream);
            codeStream.ifne(branchLabel);
            codeStream.iconst_1();
            BranchLabel branchLabel2 = new BranchLabel(codeStream);
            codeStream.decrStackSize(1);
            codeStream.goto_(branchLabel2);
            branchLabel.place();
            codeStream.iconst_0();
            branchLabel2.place();
            codeStream.fieldAccess(Opcodes.OPC_putstatic, this.assertionSyntheticFieldBinding, null);
        }
        boolean z10 = classScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK9;
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        if (TypeDeclaration.kind(typeDeclaration.modifiers) == 3) {
            int i16 = typeDeclaration.enumConstantsCounter;
            if (z10 || i16 <= ENUM_CONSTANTS_THRESHOLD) {
                if (fieldDeclarationArr != null) {
                    i12 = 0;
                    for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                        if (fieldDeclaration.isStatic()) {
                            if (fieldDeclaration.getKind() == 3) {
                                fieldDeclaration.generateCode(methodScope, codeStream);
                            } else {
                                i12++;
                            }
                        }
                    }
                    codeStream.generateInlinedValue(i16);
                    codeStream.anewarray(typeDeclaration.binding);
                    if (i16 > 0 && fieldDeclarationArr != null) {
                        for (FieldDeclaration fieldDeclaration2 : fieldDeclarationArr) {
                            if (fieldDeclaration2.getKind() == 3) {
                                codeStream.dup();
                                codeStream.generateInlinedValue(fieldDeclaration2.binding.f102483id);
                                codeStream.fieldAccess(Opcodes.OPC_getstatic, fieldDeclaration2.binding, null);
                                codeStream.aastore();
                            }
                        }
                    }
                    codeStream.fieldAccess(Opcodes.OPC_putstatic, typeDeclaration.enumValuesSyntheticfield, null);
                    if (i12 == 0) {
                        int length = fieldDeclarationArr.length;
                        i11 = -1;
                        for (int i17 = 0; i17 < length && i12 >= 0; i17++) {
                            FieldDeclaration fieldDeclaration3 = fieldDeclarationArr[i17];
                            int kind = fieldDeclaration3.getKind();
                            if (kind != 1) {
                                if (kind == 2 && fieldDeclaration3.isStatic()) {
                                    i12--;
                                    i11 = ((Initializer) fieldDeclaration3).block.sourceEnd;
                                    fieldDeclaration3.generateCode(methodScope, codeStream);
                                }
                            } else if (fieldDeclaration3.binding.isStatic()) {
                                i12--;
                                i11 = fieldDeclaration3.declarationEnd;
                                fieldDeclaration3.generateCode(methodScope, codeStream);
                            }
                        }
                    } else {
                        i11 = -1;
                    }
                }
                i12 = 0;
                codeStream.generateInlinedValue(i16);
                codeStream.anewarray(typeDeclaration.binding);
                if (i16 > 0) {
                    while (r11 < r7) {
                    }
                }
                codeStream.fieldAccess(Opcodes.OPC_putstatic, typeDeclaration.enumValuesSyntheticfield, null);
                if (i12 == 0) {
                }
            } else {
                if (fieldDeclarationArr != null) {
                    int length2 = fieldDeclarationArr.length;
                    int i18 = 0;
                    int i19 = -1;
                    int i20 = 0;
                    i12 = 0;
                    while (i18 < length2) {
                        FieldDeclaration fieldDeclaration4 = fieldDeclarationArr[i18];
                        if (fieldDeclaration4.isStatic()) {
                            if (fieldDeclaration4.getKind() == 3) {
                                if (i19 == -1) {
                                    i19 = i18;
                                }
                                int i21 = i20 + 1;
                                if (i21 > ENUM_CONSTANTS_THRESHOLD) {
                                    codeStream.invoke(Opcodes.OPC_invokestatic, typeDeclaration.binding.addSyntheticMethodForEnumInitialization(i19, i18), null);
                                    i19 = i18;
                                    i20 = 1;
                                } else {
                                    i20 = i21;
                                }
                            } else {
                                i12++;
                            }
                        }
                        i18++;
                        typeBinding = null;
                    }
                    if (i20 != 0) {
                        codeStream.invoke(Opcodes.OPC_invokestatic, typeDeclaration.binding.addSyntheticMethodForEnumInitialization(i19, length2), typeBinding);
                    }
                    codeStream.generateInlinedValue(i16);
                    codeStream.anewarray(typeDeclaration.binding);
                    if (i16 > 0) {
                    }
                    codeStream.fieldAccess(Opcodes.OPC_putstatic, typeDeclaration.enumValuesSyntheticfield, null);
                    if (i12 == 0) {
                    }
                }
                i12 = 0;
                codeStream.generateInlinedValue(i16);
                codeStream.anewarray(typeDeclaration.binding);
                if (i16 > 0) {
                }
                codeStream.fieldAccess(Opcodes.OPC_putstatic, typeDeclaration.enumValuesSyntheticfield, null);
                if (i12 == 0) {
                }
            }
        } else {
            if (fieldDeclarationArr != null) {
                int length3 = fieldDeclarationArr.length;
                int i22 = 0;
                i11 = -1;
                while (i22 < length3) {
                    FieldDeclaration fieldDeclaration5 = fieldDeclarationArr[i22];
                    int kind2 = fieldDeclaration5.getKind();
                    FieldDeclaration[] fieldDeclarationArr2 = fieldDeclarationArr;
                    if (kind2 != 1) {
                        if (kind2 == 2 && fieldDeclaration5.isStatic()) {
                            i11 = ((Initializer) fieldDeclaration5).block.sourceEnd;
                            fieldDeclaration5.generateCode(methodScope, codeStream);
                        }
                    } else if (fieldDeclaration5.binding.isStatic()) {
                        i11 = fieldDeclaration5.declarationEnd;
                        fieldDeclaration5.generateCode(methodScope, codeStream);
                    }
                    i22++;
                    fieldDeclarationArr = fieldDeclarationArr2;
                }
            } else {
                i11 = -1;
            }
            if (z10) {
                typeDeclaration.binding.generateSyntheticFinalFieldInitialization(codeStream);
            }
        }
        int i23 = codeStream.position;
        if (i23 == 0) {
            classFile.contentsOffset = i10;
            classFile.methodCount--;
            constantPool.resetForClinit(i14, i13);
        } else {
            if ((this.bits & 64) != 0) {
                codeStream.return_();
                if (i11 != -1) {
                    codeStream.recordPositionsFrom(i23, i11);
                }
            }
            codeStream.recordPositionsFrom(0, typeDeclaration.sourceStart);
            classFile.completeCodeAttributeForClinit(i15);
        }
    }
}
