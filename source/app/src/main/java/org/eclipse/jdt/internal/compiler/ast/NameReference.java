package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public abstract class NameReference extends Reference implements InvocationSite {
    public TypeBinding actualReceiverType;
    public Binding binding;

    public NameReference() {
        this.bits |= 7;
    }

    public void checkEffectiveFinality(VariableBinding variableBinding, Scope scope) {
        if ((this.bits & 524288) == 0 || variableBinding.isFinal() || variableBinding.isEffectivelyFinal()) {
            return;
        }
        scope.problemReporter().cannotReferToNonEffectivelyFinalOuterLocal(variableBinding, this);
        throw new AbortMethod(scope.referenceCompilationUnit().compilationResult, null);
    }

    @Override
    public FieldBinding fieldBinding() {
        return (FieldBinding) this.binding;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return null;
    }

    public abstract char[][] getName();

    @Override
    public boolean isSuperAccess() {
        return false;
    }

    @Override
    public boolean isTypeAccess() {
        Binding binding = this.binding;
        return binding == null || (binding instanceof ReferenceBinding);
    }

    @Override
    public boolean isTypeReference() {
        return this.binding instanceof ReferenceBinding;
    }

    @Override
    public FieldBinding lastFieldBinding() {
        if ((this.bits & 7) == 1) {
            return fieldBinding();
        }
        return null;
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
        if (referenceBinding == null) {
            return;
        }
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

    public abstract String unboundReferenceErrorName();
}
