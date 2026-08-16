package org.eclipse.jdt.internal.compiler.ast;

import java.util.List;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;

public class FieldDeclaration extends AbstractVariableDeclaration {
    public FieldBinding binding;
    public int endPart1Position;
    public int endPart2Position;
    public Javadoc javadoc;

    public FieldDeclaration() {
    }

    public FlowInfo analyseCode(MethodScope methodScope, FlowContext flowContext, FlowInfo flowInfo) {
        FieldBinding fieldBinding = this.binding;
        if (fieldBinding != null && !fieldBinding.isUsed() && this.binding.isOrEnclosedByPrivateType() && !methodScope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
            methodScope.problemReporter().unusedPrivateField(this);
        }
        FieldBinding fieldBinding2 = this.binding;
        if (fieldBinding2 != null && fieldBinding2.isValidBinding() && this.binding.isStatic() && this.binding.constant(methodScope) == Constant.NotAConstant && this.binding.declaringClass.isNestedType() && !this.binding.declaringClass.isStatic()) {
            methodScope.problemReporter().unexpectedStaticModifierForField((SourceTypeBinding) this.binding.declaringClass, this);
        }
        Expression expression = this.initialization;
        if (expression != null) {
            flowInfo = expression.analyseCode(methodScope, flowContext, flowInfo).unconditionalInits();
            flowInfo.markAsDefinitelyAssigned(this.binding);
        }
        if (this.initialization != null && this.binding != null) {
            CompilerOptions compilerOptions = methodScope.compilerOptions();
            if (compilerOptions.isAnnotationBasedNullAnalysisEnabled && (this.binding.isNonNull() || compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8)) {
                int nullStatus = this.initialization.nullStatus(flowInfo, flowContext);
                FieldBinding fieldBinding3 = this.binding;
                Expression expression2 = this.initialization;
                NullAnnotationMatching.checkAssignment(methodScope, flowContext, fieldBinding3, flowInfo, nullStatus, expression2, expression2.resolvedType);
            }
            this.initialization.checkNPEbyUnboxing(methodScope, flowContext, flowInfo);
        }
        return flowInfo;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        boolean isStatic;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        if (this.initialization != null && (!(isStatic = this.binding.isStatic()) || this.binding.constant() == Constant.NotAConstant)) {
            if (!isStatic) {
                codeStream.aload_0();
            }
            this.initialization.generateCode(blockScope, codeStream, true);
            if (isStatic) {
                codeStream.fieldAccess(Opcodes.OPC_putstatic, this.binding, null);
            } else {
                codeStream.fieldAccess(Opcodes.OPC_putfield, this.binding, null);
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public void getAllAnnotationContexts(int i10, List list) {
        TypeReference.AnnotationCollector annotationCollector = new TypeReference.AnnotationCollector(this.type, i10, list);
        int length = this.annotations.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.annotations[i11].traverse(annotationCollector, (BlockScope) null);
        }
    }

    @Override
    public int getKind() {
        return this.type == null ? 3 : 1;
    }

    public boolean isFinal() {
        FieldBinding fieldBinding = this.binding;
        return fieldBinding != null ? fieldBinding.isFinal() : (this.modifiers & 16) != 0;
    }

    public boolean isStatic() {
        FieldBinding fieldBinding = this.binding;
        return fieldBinding != null ? fieldBinding.isStatic() : (this.modifiers & 8) != 0;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        Javadoc javadoc = this.javadoc;
        if (javadoc != null) {
            javadoc.print(i10, stringBuffer);
        }
        return super.printStatement(i10, stringBuffer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0084, code lost:
    
        if (r9.isStatic() != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01cb A[Catch: all -> 0x00d6, TryCatch #0 {all -> 0x00d6, blocks: (B:44:0x00a4, B:46:0x00b9, B:48:0x00bd, B:50:0x00c5, B:53:0x00d0, B:55:0x00d9, B:59:0x00dc, B:61:0x00ec, B:63:0x00f3, B:65:0x0100, B:66:0x0107, B:68:0x010b, B:74:0x0114, B:76:0x0131, B:78:0x0137, B:79:0x01e8, B:81:0x01f2, B:82:0x0146, B:84:0x014c, B:86:0x0152, B:87:0x0159, B:89:0x0161, B:92:0x0168, B:94:0x0170, B:96:0x017b, B:98:0x0181, B:99:0x01c3, B:101:0x01cb, B:102:0x0187, B:104:0x0193, B:105:0x019e, B:107:0x01a9, B:108:0x01b2, B:110:0x01b8, B:112:0x01be, B:113:0x01e3), top: B:43:0x00a4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve(MethodScope methodScope) {
        FieldBinding fieldBinding;
        Binding binding;
        FieldBinding findField;
        if ((this.bits & 16) == 0 && (fieldBinding = this.binding) != null && fieldBinding.isValidBinding()) {
            this.bits |= 16;
            ClassScope enclosingClassScope = methodScope.enclosingClassScope();
            int i10 = 0;
            if (enclosingClassScope != null) {
                SourceTypeBinding enclosingSourceType = enclosingClassScope.enclosingSourceType();
                ReferenceBinding referenceBinding = enclosingSourceType.superclass;
                if (referenceBinding == null || (findField = enclosingClassScope.findField(referenceBinding, this.name, this, false, true)) == null || !findField.isValidBinding() || findField.original() == this.binding || !findField.canBeSeenBy(enclosingSourceType, this, methodScope)) {
                    Scope scope = enclosingClassScope.parent;
                    if (scope.kind != 4 && (binding = scope.getBinding(this.name, 3, this, false)) != null && binding.isValidBinding() && binding != this.binding) {
                        if (binding instanceof FieldBinding) {
                            FieldBinding fieldBinding2 = (FieldBinding) binding;
                            if (fieldBinding2.original() != this.binding) {
                                if (!fieldBinding2.isStatic()) {
                                }
                            }
                        }
                        methodScope.problemReporter().fieldHiding(this, binding);
                    }
                } else {
                    methodScope.problemReporter().fieldHiding(this, findField);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.resolvedType = this.binding.type;
            }
            FieldBinding fieldBinding3 = methodScope.initializedField;
            int i11 = methodScope.lastVisibleFieldID;
            try {
                FieldBinding fieldBinding4 = this.binding;
                methodScope.initializedField = fieldBinding4;
                methodScope.lastVisibleFieldID = fieldBinding4.f102483id;
                ASTNode.resolveAnnotations(methodScope, this.annotations, fieldBinding4);
                Annotation[] annotationArr = this.annotations;
                if (annotationArr != null) {
                    int length = annotationArr.length;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        TypeBinding typeBinding = this.annotations[i10].resolvedType;
                        if (typeBinding != null && (typeBinding.getAnnotationTagBits() & 9007199254740992L) != 0) {
                            this.bits |= 1048576;
                            break;
                        }
                        i10++;
                    }
                }
                if ((this.binding.getAnnotationTagBits() & 70368744177664L) == 0 && (this.binding.modifiers & 1048576) != 0 && methodScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                    methodScope.problemReporter().missingDeprecatedAnnotationForField(this);
                }
                if (this.initialization == null) {
                    this.binding.setConstant(Constant.NotAConstant);
                } else {
                    FieldBinding fieldBinding5 = this.binding;
                    Constant constant = Constant.NotAConstant;
                    fieldBinding5.setConstant(constant);
                    TypeBinding typeBinding2 = this.binding.type;
                    this.initialization.setExpressionContext(ExpressionContext.ASSIGNMENT_CONTEXT);
                    this.initialization.setExpectedType(typeBinding2);
                    Expression expression = this.initialization;
                    if (expression instanceof ArrayInitializer) {
                        TypeBinding resolveTypeExpecting = expression.resolveTypeExpecting(methodScope, typeBinding2);
                        if (resolveTypeExpecting != null) {
                            Expression expression2 = this.initialization;
                            ((ArrayInitializer) expression2).binding = (ArrayBinding) resolveTypeExpecting;
                            expression2.computeConversion(methodScope, typeBinding2, resolveTypeExpecting);
                        }
                    } else {
                        TypeBinding resolveType = expression.resolveType(methodScope);
                        if (resolveType != null) {
                            if (TypeBinding.notEquals(typeBinding2, resolveType)) {
                                methodScope.compilationUnitScope().recordTypeConversion(typeBinding2, resolveType);
                            }
                            if (!this.initialization.isConstantValueOfTypeAssignableToType(resolveType, typeBinding2) && !resolveType.isCompatibleWith(typeBinding2, enclosingClassScope)) {
                                if (isBoxingCompatible(resolveType, typeBinding2, this.initialization, methodScope)) {
                                    this.initialization.computeConversion(methodScope, typeBinding2, resolveType);
                                    Expression expression3 = this.initialization;
                                    if ((expression3 instanceof CastExpression) && (expression3.bits & 16384) == 0) {
                                        CastExpression.checkNeedForAssignedCast(methodScope, typeBinding2, (CastExpression) expression3);
                                    }
                                } else if (((typeBinding2.tagBits | resolveType.tagBits) & 128) == 0) {
                                    methodScope.problemReporter().typeMismatchError(resolveType, typeBinding2, this.initialization, (ASTNode) null);
                                }
                                if (this.binding.isFinal()) {
                                    FieldBinding fieldBinding6 = this.binding;
                                    Constant constant2 = this.initialization.constant;
                                    fieldBinding6.setConstant(constant2.castTo((fieldBinding6.type.f102482id << 4) + constant2.typeID()));
                                }
                            }
                            this.initialization.computeConversion(methodScope, typeBinding2, resolveType);
                            if (resolveType.needsUncheckedConversion(typeBinding2)) {
                                methodScope.problemReporter().unsafeTypeConversion(this.initialization, resolveType, typeBinding2);
                            }
                            Expression expression4 = this.initialization;
                            if ((expression4 instanceof CastExpression) && (expression4.bits & 16384) == 0) {
                                CastExpression.checkNeedForAssignedCast(methodScope, typeBinding2, (CastExpression) expression4);
                            }
                            if (this.binding.isFinal()) {
                            }
                        } else {
                            this.binding.setConstant(constant);
                        }
                    }
                    if (this.binding == Expression.getDirectBinding(this.initialization)) {
                        methodScope.problemReporter().assignmentHasNoEffect(this, this.name);
                    }
                }
                methodScope.initializedField = fieldBinding3;
                methodScope.lastVisibleFieldID = i11;
                if (this.binding.constant(methodScope) == null) {
                    this.binding.setConstant(Constant.NotAConstant);
                }
            } catch (Throwable th2) {
                methodScope.initializedField = fieldBinding3;
                methodScope.lastVisibleFieldID = i11;
                if (this.binding.constant(methodScope) == null) {
                    this.binding.setConstant(Constant.NotAConstant);
                }
                throw th2;
            }
        }
    }

    public void resolveJavadoc(MethodScope methodScope) {
        ReferenceBinding referenceBinding;
        Javadoc javadoc = this.javadoc;
        if (javadoc != null) {
            FieldBinding fieldBinding = methodScope.initializedField;
            int i10 = methodScope.lastVisibleFieldID;
            try {
                FieldBinding fieldBinding2 = this.binding;
                methodScope.initializedField = fieldBinding2;
                if (fieldBinding2 != null) {
                    methodScope.lastVisibleFieldID = fieldBinding2.f102483id;
                }
                javadoc.resolve(methodScope);
                methodScope.initializedField = fieldBinding;
                methodScope.lastVisibleFieldID = i10;
                return;
            } catch (Throwable th2) {
                methodScope.initializedField = fieldBinding;
                methodScope.lastVisibleFieldID = i10;
                throw th2;
            }
        }
        FieldBinding fieldBinding3 = this.binding;
        if (fieldBinding3 == null || (referenceBinding = fieldBinding3.declaringClass) == null || referenceBinding.isLocalType()) {
            return;
        }
        int i11 = this.binding.modifiers & 7;
        ProblemReporter problemReporter = methodScope.problemReporter();
        int computeSeverity = problemReporter.computeSeverity(IProblem.JavadocMissing);
        if (computeSeverity != 256) {
            ClassScope enclosingClassScope = methodScope.enclosingClassScope();
            if (enclosingClassScope != null) {
                i11 = Util.computeOuterMostVisibility(enclosingClassScope.referenceType(), i11);
            }
            problemReporter.javadocMissing(this.sourceStart, this.sourceEnd, computeSeverity, (this.binding.modifiers & (-8)) | i11);
        }
    }

    public void traverse(ASTVisitor aSTVisitor, MethodScope methodScope) {
        if (aSTVisitor.visit(this, methodScope)) {
            Javadoc javadoc = this.javadoc;
            if (javadoc != null) {
                javadoc.traverse(aSTVisitor, methodScope);
            }
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, methodScope);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, methodScope);
            }
            Expression expression = this.initialization;
            if (expression != null) {
                expression.traverse(aSTVisitor, methodScope);
            }
        }
        aSTVisitor.endVisit(this, methodScope);
    }

    public FieldDeclaration(char[] cArr, int i10, int i11) {
        this.name = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }
}
