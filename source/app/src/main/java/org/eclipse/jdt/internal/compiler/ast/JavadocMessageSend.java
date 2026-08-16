package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class JavadocMessageSend extends MessageSend {
    public int tagSourceEnd;
    public int tagSourceStart;
    public int tagValue;

    public JavadocMessageSend(char[] cArr, long j10) {
        this.selector = cArr;
        this.nameSourcePosition = j10;
        this.sourceStart = (int) (j10 >>> 32);
        this.sourceEnd = (int) j10;
        this.bits |= 32768;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [org.eclipse.jdt.internal.compiler.lookup.Binding, org.eclipse.jdt.internal.compiler.lookup.TypeBinding] */
    /* JADX WARN: Type inference failed for: r0v47, types: [org.eclipse.jdt.internal.compiler.lookup.TypeBinding] */
    /* JADX WARN: Type inference failed for: r0v49, types: [org.eclipse.jdt.internal.compiler.lookup.Binding, org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.eclipse.jdt.internal.compiler.lookup.Scope] */
    private TypeBinding internalResolveType(Scope scope) {
        boolean z10;
        MethodBinding methodBinding;
        int problemId;
        MethodBinding methodBinding2;
        this.constant = Constant.NotAConstant;
        Expression expression = this.receiver;
        if (expression == null) {
            this.actualReceiverType = scope.enclosingReceiverType();
        } else if (scope.kind == 3) {
            this.actualReceiverType = expression.resolveType((ClassScope) scope);
        } else {
            this.actualReceiverType = expression.resolveType((BlockScope) scope);
        }
        Expression[] expressionArr = this.arguments;
        int i10 = 0;
        if (expressionArr != null) {
            this.argumentsHaveErrors = false;
            int length = expressionArr.length;
            this.argumentTypes = new TypeBinding[length];
            z10 = false;
            for (int i11 = 0; i11 < length; i11++) {
                Expression expression2 = this.arguments[i11];
                if (scope.kind == 3) {
                    this.argumentTypes[i11] = expression2.resolveType((ClassScope) scope);
                } else {
                    this.argumentTypes[i11] = expression2.resolveType((BlockScope) scope);
                }
                TypeBinding typeBinding = this.argumentTypes[i11];
                if (typeBinding == null) {
                    this.argumentsHaveErrors = true;
                } else if (!z10) {
                    z10 = typeBinding.isTypeVariable();
                }
            }
            if (this.argumentsHaveErrors) {
                return null;
            }
        } else {
            z10 = false;
        }
        if (this.actualReceiverType == null) {
            return null;
        }
        this.actualReceiverType = scope.environment().convertToRawType(this.receiver.resolvedType, true);
        ReferenceBinding enclosingReceiverType = scope.enclosingReceiverType();
        if (enclosingReceiverType != null && enclosingReceiverType.isCompatibleWith(this.actualReceiverType)) {
            this.bits |= 16384;
        }
        if (this.actualReceiverType.isBaseType()) {
            scope.problemReporter().javadocErrorNoMethodFor(this, this.actualReceiverType, this.argumentTypes, scope.getDeclarationModifiers());
            return null;
        }
        MethodBinding method = scope.getMethod(this.actualReceiverType, this.selector, this.argumentTypes, this);
        this.binding = method;
        if (!method.isValidBinding()) {
            TypeBinding typeBinding2 = this.actualReceiverType;
            MethodBinding methodBinding3 = this.binding;
            while (!methodBinding3.isValidBinding() && (typeBinding2.isMemberType() || typeBinding2.isLocalType())) {
                typeBinding2 = typeBinding2.enclosingType();
                methodBinding3 = scope.getMethod(typeBinding2, this.selector, this.argumentTypes, this);
            }
            if (methodBinding3.isValidBinding()) {
                this.binding = methodBinding3;
            } else {
                ?? r02 = this.actualReceiverType;
                MethodBinding methodBinding4 = this.binding;
                if (!methodBinding4.isValidBinding() && CharOperation.equals(this.selector, r02.shortReadableName())) {
                    methodBinding4 = scope.getConstructor((ReferenceBinding) r02, this.argumentTypes, this);
                }
                while (!methodBinding4.isValidBinding() && (r02.isMemberType() || r02.isLocalType())) {
                    r02 = r02.enclosingType();
                    if (CharOperation.equals(this.selector, r02.shortReadableName())) {
                        methodBinding4 = scope.getConstructor(r02, this.argumentTypes, this);
                    }
                }
                if (methodBinding4.isValidBinding()) {
                    this.binding = methodBinding4;
                }
            }
        }
        if (!this.binding.isValidBinding() && (((problemId = this.binding.problemId()) == 3 || problemId == 5 || problemId == 6 || problemId == 7) && (methodBinding2 = ((ProblemMethodBinding) this.binding).closestMatch) != null)) {
            this.binding = methodBinding2;
        }
        if (!this.binding.isValidBinding()) {
            if (this.receiver.resolvedType instanceof ProblemReferenceBinding) {
                return null;
            }
            MethodBinding methodBinding5 = this.binding;
            if (methodBinding5.declaringClass == null) {
                TypeBinding typeBinding3 = this.actualReceiverType;
                if (!(typeBinding3 instanceof ReferenceBinding)) {
                    scope.problemReporter().javadocErrorNoMethodFor(this, this.actualReceiverType, this.argumentTypes, scope.getDeclarationModifiers());
                    return null;
                }
                methodBinding5.declaringClass = (ReferenceBinding) typeBinding3;
            }
            scope.problemReporter().javadocInvalidMethod(this, this.binding, scope.getDeclarationModifiers());
            MethodBinding methodBinding6 = this.binding;
            if ((methodBinding6 instanceof ProblemMethodBinding) && (methodBinding = ((ProblemMethodBinding) methodBinding6).closestMatch) != null) {
                this.binding = methodBinding;
            }
            MethodBinding methodBinding7 = this.binding;
            TypeBinding typeBinding4 = methodBinding7 != null ? methodBinding7.returnType : null;
            this.resolvedType = typeBinding4;
            return typeBinding4;
        }
        if (z10) {
            scope.problemReporter().javadocInvalidMethod(this, new ProblemMethodBinding(this.binding, this.selector, this.argumentTypes, 1), scope.getDeclarationModifiers());
        } else if (!this.binding.isVarargs()) {
            int length2 = this.argumentTypes.length;
            while (true) {
                if (i10 >= length2) {
                    break;
                }
                if (TypeBinding.notEquals(this.binding.parameters[i10].erasure(), this.argumentTypes[i10].erasure())) {
                    scope.problemReporter().javadocInvalidMethod(this, new ProblemMethodBinding(this.binding, this.selector, this.argumentTypes, 1), scope.getDeclarationModifiers());
                    break;
                }
                i10++;
            }
        } else {
            TypeBinding[] typeBindingArr = this.argumentTypes;
            int length3 = typeBindingArr.length;
            if (this.binding.parameters.length != length3 || !typeBindingArr[length3 - 1].isArrayType()) {
                scope.problemReporter().javadocInvalidMethod(this, new ProblemMethodBinding(this.binding, this.selector, this.argumentTypes, 1), scope.getDeclarationModifiers());
            }
        }
        if (isMethodUseDeprecated(this.binding, scope, true, this)) {
            scope.problemReporter().javadocDeprecatedMethod(this.binding, this, scope.getDeclarationModifiers());
        }
        TypeBinding typeBinding5 = this.binding.returnType;
        this.resolvedType = typeBinding5;
        return typeBinding5;
    }

    @Override
    public boolean isSuperAccess() {
        return (this.bits & 16384) != 0;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        Expression expression = this.receiver;
        if (expression != null) {
            expression.printExpression(0, stringBuffer);
        }
        stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
        stringBuffer.append(this.selector);
        stringBuffer.append('(');
        if (this.arguments != null) {
            for (int i11 = 0; i11 < this.arguments.length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i11].printExpression(0, stringBuffer);
            }
        }
        stringBuffer.append(')');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        return internalResolveType(blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Expression expression = this.receiver;
            if (expression != null) {
                expression.traverse(aSTVisitor, blockScope);
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length = expressionArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.arguments[i10].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope) {
        return internalResolveType(classScope);
    }

    public JavadocMessageSend(char[] cArr, long j10, JavadocArgumentExpression[] javadocArgumentExpressionArr) {
        this(cArr, j10);
        this.arguments = javadocArgumentExpressionArr;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Expression expression = this.receiver;
            if (expression != null) {
                expression.traverse(aSTVisitor, classScope);
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length = expressionArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.arguments[i10].traverse(aSTVisitor, classScope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
