package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class FieldReference extends Reference implements InvocationSite {
    public static final int READ = 0;
    public static final int WRITE = 1;
    public TypeBinding actualReceiverType;
    public FieldBinding binding;
    public TypeBinding genericCast;
    public long nameSourcePosition;
    public Expression receiver;
    public MethodBinding[] syntheticAccessors;
    public char[] token;

    public FieldReference(char[] cArr, long j10) {
        this.token = cArr;
        this.nameSourcePosition = j10;
        this.sourceStart = (int) (j10 >>> 32);
        this.sourceEnd = (int) (j10 & 4294967295L);
        this.bits |= 1;
    }

    private char[][] getThisFieldTokens(int i10) {
        if (this.receiver.isThis() && !(this.receiver instanceof QualifiedThisReference)) {
            char[][] cArr = new char[i10];
            cArr[0] = this.token;
            return cArr;
        }
        Expression expression = this.receiver;
        if (!(expression instanceof FieldReference)) {
            return null;
        }
        char[][] thisFieldTokens = ((FieldReference) expression).getThisFieldTokens(i10 + 1);
        if (thisFieldTokens != null) {
            thisFieldTokens[thisFieldTokens.length - i10] = this.token;
        }
        return thisFieldTokens;
    }

    @Override
    public FlowInfo analyseAssignment(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean z10) {
        if (z10) {
            if (this.binding.isBlankFinal() && this.receiver.isThis() && blockScope.needBlankFinalFieldInitializationCheck(this.binding) && !flowContext.getInitsForFinalBlankInitializationCheck(this.binding.declaringClass.original(), flowInfo).isDefinitelyAssigned(this.binding)) {
                blockScope.problemReporter().uninitializedBlankFinalField(this.binding, this);
            }
            manageSyntheticAccessIfNecessary(blockScope, flowInfo, true);
        }
        UnconditionalFlowInfo unconditionalInits = this.receiver.analyseCode(blockScope, flowContext, flowInfo, true ^ this.binding.isStatic()).unconditionalInits();
        this.receiver.checkNPE(blockScope, flowContext, unconditionalInits);
        Expression expression = assignment.expression;
        if (expression != null) {
            unconditionalInits = expression.analyseCode(blockScope, flowContext, unconditionalInits).unconditionalInits();
        }
        manageSyntheticAccessIfNecessary(blockScope, unconditionalInits, false);
        if (this.binding.isFinal()) {
            if (this.binding.isBlankFinal() && !z10 && this.receiver.isThis()) {
                Expression expression2 = this.receiver;
                if (!(expression2 instanceof QualifiedThisReference) && (expression2.bits & ASTNode.ParenthesizedMASK) == 0 && blockScope.allowBlankFinalFieldAssignment(this.binding)) {
                    if (unconditionalInits.isPotentiallyAssigned(this.binding)) {
                        blockScope.problemReporter().duplicateInitializationOfBlankFinalField(this.binding, this);
                    } else {
                        flowContext.recordSettingFinal(this.binding, this, unconditionalInits);
                    }
                    unconditionalInits.markAsDefinitelyAssigned(this.binding);
                }
            }
            blockScope.problemReporter().cannotAssignToFinalField(this.binding, this);
        } else if ((this.binding.isNonNull() || this.binding.type.isTypeVariable()) && !z10 && this.receiver.isThis()) {
            Expression expression3 = this.receiver;
            if (!(expression3 instanceof QualifiedThisReference) && TypeBinding.equalsEquals(expression3.resolvedType, this.binding.declaringClass) && (this.receiver.bits & ASTNode.ParenthesizedMASK) == 0) {
                unconditionalInits.markAsDefinitelyAssigned(this.binding);
            }
        }
        return unconditionalInits;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return analyseCode(blockScope, flowContext, flowInfo, true);
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        if (flowContext.isNullcheckedFieldAccess(this)) {
            return true;
        }
        return checkNullableFieldDereference(blockScope, this.binding, this.nameSourcePosition, flowContext, i10);
    }

    @Override
    public void computeConversion(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding == null || typeBinding2 == null) {
            return;
        }
        FieldBinding fieldBinding = this.binding;
        if (fieldBinding != null && fieldBinding.isValidBinding()) {
            FieldBinding original = this.binding.original();
            if (original.type.leafComponentType().isTypeVariable()) {
                TypeBinding genericCast = original.type.genericCast((typeBinding2.isBaseType() || !typeBinding.isBaseType()) ? typeBinding : typeBinding2);
                this.genericCast = genericCast;
                if (genericCast instanceof ReferenceBinding) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) genericCast;
                    if (!referenceBinding.canBeSeenBy(scope)) {
                        scope.problemReporter().invalidType(this, new ProblemReferenceBinding(CharOperation.splitOn('.', referenceBinding.shortReadableName()), referenceBinding, 2));
                    }
                }
            }
        }
        super.computeConversion(scope, typeBinding, typeBinding2);
    }

    @Override
    public FieldBinding fieldBinding() {
        return this.binding;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return null;
    }

    @Override
    public void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10) {
        int i10 = codeStream.position;
        FieldBinding original = this.binding.original();
        this.receiver.generateCode(blockScope, codeStream, !original.isStatic());
        codeStream.recordPositionsFrom(i10, this.sourceStart);
        assignment.expression.generateCode(blockScope, codeStream, true);
        MethodBinding[] methodBindingArr = this.syntheticAccessors;
        fieldStore(blockScope, codeStream, original, methodBindingArr == null ? null : methodBindingArr[1], this.actualReceiverType, this.receiver.isImplicitThis(), z10);
        if (z10) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        MethodBinding methodBinding;
        int i10 = codeStream.position;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            if (z10) {
                codeStream.generateConstant(constant, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        FieldBinding original = this.binding.original();
        boolean isStatic = original.isStatic();
        boolean z11 = this.receiver instanceof ThisReference;
        Constant constant3 = original.constant();
        if (constant3 != constant2) {
            if (!z11) {
                this.receiver.generateCode(blockScope, codeStream, !isStatic);
                if (!isStatic) {
                    codeStream.invokeObjectGetClass();
                    codeStream.pop();
                }
            }
            if (z10) {
                codeStream.generateConstant(constant3, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        if (z10 || !((z11 || blockScope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_4) && (this.implicitConversion & 1024) == 0 && this.genericCast == null)) {
            this.receiver.generateCode(blockScope, codeStream, !isStatic);
            if ((this.bits & 262144) != 0) {
                codeStream.checkcast(this.actualReceiverType);
            }
            i10 = codeStream.position;
            if (original.declaringClass == null) {
                codeStream.arraylength();
                if (z10) {
                    codeStream.generateImplicitConversion(this.implicitConversion);
                } else {
                    codeStream.pop();
                }
            } else {
                MethodBinding[] methodBindingArr = this.syntheticAccessors;
                if (methodBindingArr == null || (methodBinding = methodBindingArr[0]) == null) {
                    TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis());
                    if (isStatic) {
                        codeStream.fieldAccess(Opcodes.OPC_getstatic, original, constantPoolDeclaringClass);
                    } else {
                        codeStream.fieldAccess(Opcodes.OPC_getfield, original, constantPoolDeclaringClass);
                    }
                } else {
                    codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
                }
                TypeBinding typeBinding = this.genericCast;
                if (typeBinding != null) {
                    codeStream.checkcast(typeBinding);
                }
                if (z10) {
                    codeStream.generateImplicitConversion(this.implicitConversion);
                } else {
                    int i11 = this.implicitConversion;
                    boolean z12 = (i11 & 1024) != 0;
                    if (z12) {
                        codeStream.generateImplicitConversion(i11);
                    }
                    int i12 = (z12 ? postConversionType(blockScope) : original.type).f102482id;
                    if (i12 == 7 || i12 == 8) {
                        codeStream.pop2();
                    } else {
                        codeStream.pop();
                    }
                }
            }
        } else if (!z11) {
            this.receiver.generateCode(blockScope, codeStream, !isStatic);
            if (!isStatic) {
                codeStream.invokeObjectGetClass();
                codeStream.pop();
            }
        } else if (isStatic && TypeBinding.notEquals(this.binding.original().declaringClass, this.actualReceiverType.erasure())) {
            MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
            MethodBinding methodBinding2 = methodBindingArr2 == null ? null : methodBindingArr2[0];
            if (methodBinding2 == null) {
                codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis()));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null);
            }
            int i13 = original.type.f102482id;
            if (i13 == 7 || i13 == 8) {
                codeStream.pop2();
            } else {
                codeStream.pop();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceEnd);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        reportOnlyUselesslyReadPrivateField(blockScope, this.binding, z10);
        FieldBinding original = this.binding.original();
        Expression expression2 = this.receiver;
        boolean isStatic = original.isStatic();
        expression2.generateCode(blockScope, codeStream, !isStatic);
        if (isStatic) {
            MethodBinding[] methodBindingArr = this.syntheticAccessors;
            if (methodBindingArr == null || (methodBinding2 = methodBindingArr[0]) == null) {
                codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis()));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null);
            }
        } else {
            codeStream.dup();
            MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
            if (methodBindingArr2 == null || (methodBinding = methodBindingArr2[0]) == null) {
                codeStream.fieldAccess(Opcodes.OPC_getfield, original, CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis()));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
            }
        }
        int i12 = (this.implicitConversion & 255) >> 4;
        if (i12 == 0 || i12 == 1 || i12 == 11) {
            codeStream.generateStringConcatenationAppend(blockScope, null, expression);
        } else {
            TypeBinding typeBinding = this.genericCast;
            if (typeBinding != null) {
                codeStream.checkcast(typeBinding);
            }
            codeStream.generateImplicitConversion(this.implicitConversion);
            if (expression == IntLiteral.One) {
                codeStream.generateConstant(expression.constant, this.implicitConversion);
            } else {
                expression.generateCode(blockScope, codeStream, true);
            }
            codeStream.sendOperator(i10, i12);
            codeStream.generateImplicitConversion(i11);
        }
        MethodBinding[] methodBindingArr3 = this.syntheticAccessors;
        fieldStore(blockScope, codeStream, original, methodBindingArr3 == null ? null : methodBindingArr3[1], this.actualReceiverType, this.receiver.isImplicitThis(), z10);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        MethodBinding methodBinding;
        TypeBinding typeBinding;
        MethodBinding methodBinding2;
        reportOnlyUselesslyReadPrivateField(blockScope, this.binding, z10);
        FieldBinding original = this.binding.original();
        Expression expression = this.receiver;
        boolean isStatic = original.isStatic();
        expression.generateCode(blockScope, codeStream, !isStatic);
        if (isStatic) {
            MethodBinding[] methodBindingArr = this.syntheticAccessors;
            if (methodBindingArr == null || (methodBinding2 = methodBindingArr[0]) == null) {
                codeStream.fieldAccess(Opcodes.OPC_getstatic, original, CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis()));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null);
            }
        } else {
            codeStream.dup();
            MethodBinding[] methodBindingArr2 = this.syntheticAccessors;
            if (methodBindingArr2 == null || (methodBinding = methodBindingArr2[0]) == null) {
                codeStream.fieldAccess(Opcodes.OPC_getfield, original, CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis()));
            } else {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, null);
            }
        }
        TypeBinding typeBinding2 = this.genericCast;
        if (typeBinding2 != null) {
            codeStream.checkcast(typeBinding2);
            typeBinding = this.genericCast;
        } else {
            typeBinding = original.type;
        }
        if (z10) {
            if (isStatic) {
                int i10 = typeBinding.f102482id;
                if (i10 == 7 || i10 == 8) {
                    codeStream.dup2();
                } else {
                    codeStream.dup();
                }
            } else {
                int i11 = typeBinding.f102482id;
                if (i11 == 7 || i11 == 8) {
                    codeStream.dup2_x1();
                } else {
                    codeStream.dup_x1();
                }
            }
        }
        codeStream.generateImplicitConversion(this.implicitConversion);
        codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
        codeStream.sendOperator(compoundAssignment.operator, this.implicitConversion & 15);
        codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
        MethodBinding[] methodBindingArr3 = this.syntheticAccessors;
        fieldStore(blockScope, codeStream, original, methodBindingArr3 == null ? null : methodBindingArr3[1], this.actualReceiverType, this.receiver.isImplicitThis(), false);
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    @Override
    public boolean isEquivalent(Reference reference) {
        char[][] cArr = null;
        r1 = null;
        r1 = null;
        char[] cArr2 = null;
        if (this.receiver.isThis() && !(this.receiver instanceof QualifiedThisReference)) {
            if (reference instanceof SingleNameReference) {
                cArr2 = ((SingleNameReference) reference).token;
            } else if (reference instanceof FieldReference) {
                FieldReference fieldReference = (FieldReference) reference;
                if (fieldReference.receiver.isThis() && !(fieldReference.receiver instanceof QualifiedThisReference)) {
                    cArr2 = fieldReference.token;
                }
            }
            return cArr2 != null && CharOperation.equals(this.token, cArr2);
        }
        char[][] thisFieldTokens = getThisFieldTokens(1);
        if (thisFieldTokens == null) {
            return false;
        }
        if (reference instanceof FieldReference) {
            cArr = ((FieldReference) reference).getThisFieldTokens(1);
        } else if (reference instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) reference;
            if (qualifiedNameReference.binding instanceof LocalVariableBinding) {
                return false;
            }
            cArr = qualifiedNameReference.tokens;
        }
        return CharOperation.equals(thisFieldTokens, cArr);
    }

    @Override
    public boolean isQualifiedSuper() {
        return this.receiver.isQualifiedSuper();
    }

    @Override
    public boolean isSuperAccess() {
        return this.receiver.isSuper();
    }

    @Override
    public boolean isTypeAccess() {
        Expression expression = this.receiver;
        return expression != null && expression.isTypeReference();
    }

    @Override
    public FieldBinding lastFieldBinding() {
        return this.binding;
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo, boolean z10) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        FieldBinding original = this.binding.original();
        if (this.binding.isPrivate()) {
            if (!blockScope.enclosingSourceType().isNestmateOf(original.declaringClass) && TypeBinding.notEquals(blockScope.enclosingSourceType(), original.declaringClass) && this.binding.constant(blockScope) == Constant.NotAConstant) {
                if (this.syntheticAccessors == null) {
                    this.syntheticAccessors = new MethodBinding[2];
                }
                this.syntheticAccessors[!z10 ? 1 : 0] = ((SourceTypeBinding) original.declaringClass).addSyntheticMethod(original, z10, false);
                blockScope.problemReporter().needToEmulateFieldAccess(original, this, z10);
                return;
            }
            return;
        }
        Expression expression = this.receiver;
        if (expression instanceof QualifiedSuperReference) {
            SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) ((QualifiedSuperReference) expression).currentCompatibleType;
            if (this.syntheticAccessors == null) {
                this.syntheticAccessors = new MethodBinding[2];
            }
            this.syntheticAccessors[!z10 ? 1 : 0] = sourceTypeBinding.addSyntheticMethod(original, z10, isSuperAccess());
            blockScope.problemReporter().needToEmulateFieldAccess(original, this, z10);
            return;
        }
        if (!this.binding.isProtected() || (this.bits & ASTNode.DepthMASK) == 0) {
            return;
        }
        PackageBinding packageBinding = this.binding.declaringClass.getPackage();
        SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
        if (packageBinding != enclosingSourceType.getPackage()) {
            SourceTypeBinding sourceTypeBinding2 = (SourceTypeBinding) enclosingSourceType.enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
            if (this.syntheticAccessors == null) {
                this.syntheticAccessors = new MethodBinding[2];
            }
            this.syntheticAccessors[!z10 ? 1 : 0] = sourceTypeBinding2.addSyntheticMethod(original, z10, isSuperAccess());
            blockScope.problemReporter().needToEmulateFieldAccess(original, this, z10);
        }
    }

    @Override
    public VariableBinding nullAnnotatedVariableBinding(boolean z10) {
        FieldBinding fieldBinding = this.binding;
        if (fieldBinding == null) {
            return null;
        }
        if (z10 || (fieldBinding.tagBits & TagBits.AnnotationNullMASK) != 0) {
            return fieldBinding;
        }
        return null;
    }

    @Override
    public Constant optimizedBooleanConstant() {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null) {
            return Constant.NotAConstant;
        }
        int i10 = typeBinding.f102482id;
        if (i10 != 5 && i10 != 33) {
            return Constant.NotAConstant;
        }
        Constant constant = this.constant;
        return constant != Constant.NotAConstant ? constant : this.binding.constant();
    }

    @Override
    public TypeBinding postConversionType(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        TypeBinding typeBinding2 = this.genericCast;
        if (typeBinding2 != null) {
            typeBinding = typeBinding2;
        }
        int i10 = this.implicitConversion;
        switch ((i10 & 255) >> 4) {
            case 2:
                typeBinding = TypeBinding.CHAR;
                break;
            case 3:
                typeBinding = TypeBinding.BYTE;
                break;
            case 4:
                typeBinding = TypeBinding.SHORT;
                break;
            case 5:
                typeBinding = TypeBinding.BOOLEAN;
                break;
            case 7:
                typeBinding = TypeBinding.LONG;
                break;
            case 8:
                typeBinding = TypeBinding.DOUBLE;
                break;
            case 9:
                typeBinding = TypeBinding.FLOAT;
                break;
            case 10:
                typeBinding = TypeBinding.INT;
                break;
        }
        return (i10 & 512) != 0 ? scope.environment().computeBoxingType(typeBinding) : typeBinding;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        StringBuffer printExpression = this.receiver.printExpression(0, stringBuffer);
        printExpression.append('.');
        printExpression.append(this.token);
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        boolean z10;
        Expression expression = this.receiver;
        if (expression instanceof CastExpression) {
            expression.bits |= 32;
            z10 = true;
        } else {
            z10 = false;
        }
        TypeBinding resolveType = expression.resolveType(blockScope);
        this.actualReceiverType = resolveType;
        if (resolveType == null) {
            this.constant = Constant.NotAConstant;
            return null;
        }
        if (z10 && TypeBinding.equalsEquals(((CastExpression) this.receiver).expression.resolvedType, resolveType)) {
            blockScope.problemReporter().unnecessaryCast((CastExpression) this.receiver);
        }
        FieldBinding field = blockScope.getField(this.actualReceiverType, this.token, this);
        this.binding = field;
        if (!field.isValidBinding()) {
            this.constant = Constant.NotAConstant;
            if (this.receiver.resolvedType instanceof ProblemReferenceBinding) {
                return null;
            }
            ReferenceBinding referenceBinding = field.declaringClass;
            if (referenceBinding == null || !referenceBinding.isAnonymousType() || !(referenceBinding.superclass() instanceof MissingTypeBinding)) {
                blockScope.problemReporter().invalidField(this, this.actualReceiverType);
            }
            if (field instanceof ProblemFieldBinding) {
                ProblemFieldBinding problemFieldBinding = (ProblemFieldBinding) field;
                FieldBinding fieldBinding = problemFieldBinding.closestMatch;
                int problemId = problemFieldBinding.problemId();
                if ((problemId == 2 || problemId == 5 || problemId == 6 || problemId == 7) && fieldBinding != null) {
                    field = fieldBinding;
                }
            }
            if (!field.isValidBinding()) {
                return null;
            }
        }
        TypeBinding typeBinding = this.actualReceiverType;
        TypeBinding erasureCompatibleType = typeBinding.getErasureCompatibleType(field.declaringClass);
        this.actualReceiverType = erasureCompatibleType;
        this.receiver.computeConversion(blockScope, erasureCompatibleType, erasureCompatibleType);
        if (TypeBinding.notEquals(this.actualReceiverType, typeBinding) && TypeBinding.notEquals(this.receiver.postConversionType(blockScope), this.actualReceiverType)) {
            this.bits |= 262144;
        }
        if (isFieldUseDeprecated(field, blockScope, this.bits)) {
            blockScope.problemReporter().deprecatedField(field, this);
        }
        boolean isImplicitThis = this.receiver.isImplicitThis();
        this.constant = isImplicitThis ? field.constant(blockScope) : Constant.NotAConstant;
        if (field.isStatic()) {
            if (!isImplicitThis) {
                Expression expression2 = this.receiver;
                if (!(expression2 instanceof NameReference) || (((NameReference) expression2).bits & 4) == 0) {
                    blockScope.problemReporter().nonStaticAccessToStaticField(this, field);
                }
            }
            ReferenceBinding referenceBinding2 = this.binding.declaringClass;
            if (!isImplicitThis && TypeBinding.notEquals(referenceBinding2, this.actualReceiverType) && referenceBinding2.canBeSeenBy(blockScope)) {
                blockScope.problemReporter().indirectAccessToStaticField(this, field);
            }
            if (referenceBinding2.isEnum() && !blockScope.isModuleScope()) {
                MethodScope methodScope = blockScope.methodScope();
                SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
                if (this.constant == Constant.NotAConstant && !methodScope.isStatic && ((TypeBinding.equalsEquals(enclosingSourceType, referenceBinding2) || TypeBinding.equalsEquals(enclosingSourceType.superclass, referenceBinding2)) && methodScope.isInsideInitializerOrConstructor())) {
                    blockScope.problemReporter().enumStaticFieldUsedDuringInitialization(this.binding, this);
                }
            }
        }
        TypeBinding typeBinding2 = field.type;
        if (typeBinding2 != null) {
            if ((this.bits & 8192) == 0) {
                typeBinding2 = typeBinding2.capture(blockScope, this.sourceStart, this.sourceEnd);
            }
            this.resolvedType = typeBinding2;
            if ((typeBinding2.tagBits & 128) != 0) {
                blockScope.problemReporter().invalidType(this, typeBinding2);
                return null;
            }
        }
        return typeBinding2;
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
        this.actualReceiverType = referenceBinding;
    }

    @Override
    public void setDepth(int i10) {
        int i11 = this.bits & (-8161);
        this.bits = i11;
        if (i10 > 0) {
            this.bits = ((i10 & 255) << 5) | i11;
        }
    }

    @Override
    public void setFieldIndex(int i10) {
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.receiver.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        boolean isStatic = this.binding.isStatic();
        this.receiver.analyseCode(blockScope, flowContext, flowInfo, !isStatic);
        if (!isStatic) {
            this.receiver.checkNPE(blockScope, flowContext, flowInfo, 1);
        }
        if (z10 || blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4) {
            manageSyntheticAccessIfNecessary(blockScope, flowInfo, true);
        }
        if (blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_7) {
            FieldBinding fieldBinding = this.binding;
            if (this.receiver.isThis() && fieldBinding.isBlankFinal() && blockScope.needBlankFinalFieldInitializationCheck(fieldBinding) && !flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass.original(), flowInfo).isDefinitelyAssigned(fieldBinding)) {
                blockScope.problemReporter().uninitializedBlankFinalField(fieldBinding, this);
            }
        }
        return flowInfo;
    }
}
