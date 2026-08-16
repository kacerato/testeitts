package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class CodeSnippetMessageSend extends MessageSend {
    FieldBinding delegateThis;
    EvaluationContext evaluationContext;

    public CodeSnippetMessageSend(EvaluationContext evaluationContext) {
        this.evaluationContext = evaluationContext;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        MethodBinding original = this.binding.original();
        if (original.canBeSeenBy(this.actualReceiverType.original(), this, blockScope)) {
            boolean isStatic = original.isStatic();
            if (isStatic || (this.bits & ASTNode.DepthMASK) == 0) {
                this.receiver.generateCode(blockScope, codeStream, !isStatic);
                if ((262144 & this.bits) != 0) {
                    codeStream.checkcast(this.actualReceiverType);
                }
                codeStream.recordPositionsFrom(i10, this.sourceStart);
            } else {
                ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
                Object[] emulationPath = blockScope.getEmulationPath(enclosingTypeAt, true, false);
                if (emulationPath == null) {
                    blockScope.problemReporter().needImplementation(this);
                } else {
                    codeStream.generateOuterAccess(emulationPath, this, enclosingTypeAt, blockScope);
                }
            }
            generateArguments(this.binding, this.arguments, blockScope, codeStream);
            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, original, this.actualReceiverType, this.receiver.isImplicitThis());
            if (isStatic) {
                codeStream.invoke(Opcodes.OPC_invokestatic, original, constantPoolDeclaringClass, this.typeArguments);
            } else if (this.receiver.isSuper() || original.isPrivate()) {
                codeStream.invoke(Opcodes.OPC_invokespecial, original, constantPoolDeclaringClass, this.typeArguments);
            } else if (constantPoolDeclaringClass.isInterface()) {
                codeStream.invoke(Opcodes.OPC_invokeinterface, original, constantPoolDeclaringClass, this.typeArguments);
            } else {
                codeStream.invoke(Opcodes.OPC_invokevirtual, original, constantPoolDeclaringClass, this.typeArguments);
            }
        } else {
            codeStream.generateEmulationForMethod(blockScope, original);
            boolean isStatic2 = original.isStatic();
            if (isStatic2 || (this.bits & ASTNode.DepthMASK) == 0) {
                this.receiver.generateCode(blockScope, codeStream, !isStatic2);
                if ((262144 & this.bits) != 0) {
                    codeStream.checkcast(this.actualReceiverType);
                }
                codeStream.recordPositionsFrom(i10, this.sourceStart);
            } else {
                blockScope.problemReporter().needImplementation(this);
            }
            if (isStatic2) {
                codeStream.aconst_null();
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length = expressionArr.length;
                codeStream.generateInlinedValue(length);
                codeStream.newArray(blockScope.createArrayType(blockScope.getType(TypeConstants.JAVA_LANG_OBJECT, 3), 1));
                codeStream.dup();
                for (int i11 = 0; i11 < length; i11++) {
                    codeStream.generateInlinedValue(i11);
                    this.arguments[i11].generateCode(blockScope, codeStream, true);
                    TypeBinding typeBinding = original.parameters[i11];
                    if (typeBinding.isBaseType() && typeBinding != TypeBinding.NULL) {
                        codeStream.generateBoxingConversion(original.parameters[i11].f102482id);
                    }
                    codeStream.aastore();
                    if (i11 < length - 1) {
                        codeStream.dup();
                    }
                }
            } else {
                codeStream.generateInlinedValue(0);
                codeStream.newArray(blockScope.createArrayType(blockScope.getType(TypeConstants.JAVA_LANG_OBJECT, 3), 1));
            }
            codeStream.invokeJavaLangReflectMethodInvoke();
            if (original.returnType.isBaseType()) {
                int i12 = original.returnType.f102482id;
                if (i12 == 6) {
                    codeStream.pop();
                }
                codeStream.checkcast(i12);
                codeStream.getBaseTypeValue(i12);
            } else {
                codeStream.checkcast(original.returnType);
            }
        }
        TypeBinding typeBinding2 = this.valueCast;
        if (typeBinding2 != null) {
            codeStream.checkcast(typeBinding2);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            int i13 = this.implicitConversion;
            boolean z11 = (i13 & 1024) != 0;
            if (z11) {
                codeStream.generateImplicitConversion(i13);
            }
            int i14 = (z11 ? postConversionType(blockScope) : original.returnType).f102482id;
            if (i14 != 6) {
                if (i14 == 7 || i14 == 8) {
                    codeStream.pop2();
                } else {
                    codeStream.pop();
                }
            }
        }
        codeStream.recordPositionsFrom(i10, (int) (this.nameSourcePosition >>> 32));
    }

    @Override
    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        MethodBinding original;
        if ((flowInfo.tagBits & 1) == 0 && (original = this.binding.original()) != this.binding && original.returnType.isTypeVariable() && TypeBinding.notEquals(((TypeVariableBinding) original.returnType).firstBound, this.binding.returnType)) {
            this.valueCast = this.binding.returnType;
        }
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        boolean z10;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            this.constant = constant2;
            Expression expression = this.receiver;
            if (expression instanceof CastExpression) {
                expression.bits |= 32;
                z10 = true;
            } else {
                z10 = false;
            }
            TypeBinding resolveType = expression.resolveType(blockScope);
            this.actualReceiverType = resolveType;
            if (z10 && resolveType != null && TypeBinding.equalsEquals(((CastExpression) this.receiver).expression.resolvedType, resolveType)) {
                blockScope.problemReporter().unnecessaryCast((CastExpression) this.receiver);
            }
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                this.argumentsHaveErrors = false;
                this.genericTypeArguments = new TypeBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    TypeBinding[] typeBindingArr = this.genericTypeArguments;
                    TypeBinding resolveType2 = this.typeArguments[i10].resolveType(blockScope, true);
                    typeBindingArr[i10] = resolveType2;
                    if (resolveType2 == null) {
                        this.argumentsHaveErrors = true;
                    }
                }
                if (this.argumentsHaveErrors) {
                    return null;
                }
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                this.argumentsHaveErrors = false;
                int length2 = expressionArr.length;
                this.argumentTypes = new TypeBinding[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    Expression expression2 = this.arguments[i11];
                    if (expression2 instanceof CastExpression) {
                        expression2.bits |= 32;
                        this.argsContainCast = true;
                    }
                    expression2.setExpressionContext(ExpressionContext.INVOCATION_CONTEXT);
                    TypeBinding[] typeBindingArr2 = this.argumentTypes;
                    TypeBinding resolveType3 = this.arguments[i11].resolveType(blockScope);
                    typeBindingArr2[i11] = resolveType3;
                    if (resolveType3 == null) {
                        this.argumentsHaveErrors = true;
                    }
                }
                if (this.argumentsHaveErrors) {
                    TypeBinding typeBinding = this.actualReceiverType;
                    if (typeBinding instanceof ReferenceBinding) {
                        this.binding = blockScope.findMethod((ReferenceBinding) typeBinding, this.selector, new TypeBinding[0], this, false);
                    }
                    return null;
                }
            }
            TypeBinding typeBinding2 = this.actualReceiverType;
            if (typeBinding2 == null) {
                return null;
            }
            if (typeBinding2.isBaseType()) {
                blockScope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, this.argumentTypes);
                return null;
            }
        }
        findMethodBinding(blockScope);
        if (!this.binding.isValidBinding()) {
            MethodBinding methodBinding = this.binding;
            if (!(methodBinding instanceof ProblemMethodBinding) || ((ProblemMethodBinding) methodBinding).problemId() != 2) {
                MethodBinding methodBinding2 = this.binding;
                if (methodBinding2.declaringClass == null) {
                    TypeBinding typeBinding3 = this.actualReceiverType;
                    if (!(typeBinding3 instanceof ReferenceBinding)) {
                        blockScope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, this.argumentTypes);
                        return null;
                    }
                    methodBinding2.declaringClass = (ReferenceBinding) typeBinding3;
                }
                blockScope.problemReporter().invalidMethod(this, this.binding, blockScope);
                return null;
            }
            if (this.evaluationContext.declaringTypeName == null) {
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidMethod(this, this.binding, blockScope);
                return null;
            }
            FieldBinding field = blockScope.getField(blockScope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
            this.delegateThis = field;
            if (field == null) {
                this.constant = Constant.NotAConstant;
                blockScope.problemReporter().invalidMethod(this, this.binding, blockScope);
                return null;
            }
            CodeSnippetScope codeSnippetScope = new CodeSnippetScope(blockScope);
            Expression expression3 = this.receiver;
            MethodBinding implicitMethod = ((expression3 instanceof CodeSnippetThisReference) && ((CodeSnippetThisReference) expression3).isImplicit) ? codeSnippetScope.getImplicitMethod((ReferenceBinding) this.delegateThis.type, this.selector, this.argumentTypes, this) : codeSnippetScope.getMethod(this.delegateThis.type, this.selector, this.argumentTypes, this);
            if (!implicitMethod.isValidBinding()) {
                MethodBinding methodBinding3 = this.binding;
                if (methodBinding3.declaringClass == null) {
                    TypeBinding typeBinding4 = this.actualReceiverType;
                    if (!(typeBinding4 instanceof ReferenceBinding)) {
                        blockScope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, this.argumentTypes);
                        return null;
                    }
                    methodBinding3.declaringClass = (ReferenceBinding) typeBinding4;
                }
                blockScope.problemReporter().invalidMethod(this, this.binding, blockScope);
                return null;
            }
            this.binding = implicitMethod;
        }
        if (!this.binding.isStatic()) {
            Expression expression4 = this.receiver;
            if (!(expression4 instanceof NameReference) || (((NameReference) expression4).bits & 4) == 0) {
                TypeBinding typeBinding5 = this.actualReceiverType;
                TypeBinding erasureCompatibleType = typeBinding5.getErasureCompatibleType(this.binding.declaringClass);
                this.actualReceiverType = erasureCompatibleType;
                this.receiver.computeConversion(blockScope, erasureCompatibleType, erasureCompatibleType);
                if (TypeBinding.notEquals(this.actualReceiverType, typeBinding5) && TypeBinding.notEquals(this.receiver.postConversionType(blockScope), this.actualReceiverType)) {
                    this.bits |= 262144;
                }
            } else {
                blockScope.problemReporter().mustUseAStaticMethod(this, this.binding);
            }
        }
        if (ASTNode.checkInvocationArguments(blockScope, this.receiver, this.actualReceiverType, this.binding, this.arguments, this.argumentTypes, this.argsContainCast, this)) {
            this.bits |= 65536;
        }
        if (this.binding.isAbstract() && this.receiver.isSuper()) {
            blockScope.problemReporter().cannotDireclyInvokeAbstractMethod(this, this.binding);
        }
        if (isMethodUseDeprecated(this.binding, blockScope, true, this)) {
            blockScope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (this.actualReceiverType.isArrayType() && this.binding.parameters == Binding.NO_PARAMETERS && blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_5 && CharOperation.equals(this.binding.selector, TypeConstants.CLONE)) {
            this.resolvedType = this.actualReceiverType;
        } else {
            TypeBinding typeBinding6 = this.binding.returnType;
            if (typeBinding6 != null) {
                if ((65536 & this.bits) != 0 && this.genericTypeArguments == null) {
                    typeBinding6 = blockScope.environment().convertToRawType(typeBinding6.erasure(), true);
                }
                typeBinding6 = typeBinding6.capture(blockScope, this.sourceStart, this.sourceEnd);
            }
            this.resolvedType = typeBinding6;
        }
        return this.resolvedType;
    }
}
