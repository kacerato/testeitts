package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class JavadocFieldReference extends FieldReference {
    public MethodBinding methodBinding;
    public int tagSourceEnd;
    public int tagSourceStart;
    public int tagValue;

    public JavadocFieldReference(char[] cArr, long j10) {
        super(cArr, j10);
        this.bits |= 32768;
    }

    public TypeBinding internalResolveType(Scope scope) {
        int problemId;
        Binding binding;
        this.constant = Constant.NotAConstant;
        Expression expression = this.receiver;
        if (expression == null) {
            this.actualReceiverType = scope.enclosingReceiverType();
        } else if (scope.kind == 3) {
            this.actualReceiverType = expression.resolveType((ClassScope) scope);
        } else {
            this.actualReceiverType = expression.resolveType((BlockScope) scope);
        }
        if (this.actualReceiverType == null) {
            return null;
        }
        Expression expression2 = this.receiver;
        Binding field = (expression2 == null || !expression2.isThis()) ? scope.getField(this.actualReceiverType, this.token, this) : scope.classScope().getBinding(this.token, this.bits & 7, this, true);
        if (!field.isValidBinding() && (((problemId = field.problemId()) == 5 || problemId == 6 || problemId == 7) && (binding = ((ProblemFieldBinding) field).closestMatch) != null)) {
            field = binding;
        }
        if (field.isValidBinding() && (field instanceof FieldBinding)) {
            FieldBinding fieldBinding = (FieldBinding) field;
            this.binding = fieldBinding;
            if (isFieldUseDeprecated(fieldBinding, scope, this.bits)) {
                scope.problemReporter().javadocDeprecatedField(this.binding, this, scope.getDeclarationModifiers());
            }
            TypeBinding typeBinding = this.binding.type;
            this.resolvedType = typeBinding;
            return typeBinding;
        }
        if (this.receiver.resolvedType instanceof ProblemReferenceBinding) {
            return null;
        }
        TypeBinding typeBinding2 = this.actualReceiverType;
        if (typeBinding2 instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding2;
            char[] cArr = this.token;
            MethodBinding constructor = CharOperation.equals(typeBinding2.sourceName(), cArr) ? scope.getConstructor(referenceBinding, Binding.NO_TYPES, this) : this.receiver.isThis() ? scope.getImplicitMethod(cArr, Binding.NO_TYPES, this) : scope.getMethod(referenceBinding, cArr, Binding.NO_TYPES, this);
            if (constructor.isValidBinding()) {
                this.methodBinding = constructor;
            } else {
                MethodBinding methodBinding = ((ProblemMethodBinding) constructor).closestMatch;
                if (methodBinding == null) {
                    if (field.isValidBinding()) {
                        field = new ProblemFieldBinding(referenceBinding, field.readableName(), 1);
                    }
                    scope.problemReporter().javadocInvalidField(this, field, this.actualReceiverType, scope.getDeclarationModifiers());
                } else {
                    this.methodBinding = methodBinding;
                }
            }
        }
        return null;
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
        stringBuffer.append(this.token);
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        return internalResolveType(blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Expression expression;
        if (aSTVisitor.visit(this, blockScope) && (expression = this.receiver) != null) {
            expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope) {
        return internalResolveType(classScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        Expression expression;
        if (aSTVisitor.visit(this, classScope) && (expression = this.receiver) != null) {
            expression.traverse(aSTVisitor, classScope);
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
