package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CodeSnippetSuperReference extends SuperReference implements EvaluationConstants, InvocationSite {
    public CodeSnippetSuperReference(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return null;
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    @Override
    public boolean isSuperAccess() {
        return false;
    }

    @Override
    public boolean isTypeAccess() {
        return false;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        blockScope.problemReporter().cannotUseSuperInCodeSnippet(this.sourceStart, this.sourceEnd);
        return null;
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
    }

    @Override
    public void setDepth(int i10) {
    }

    @Override
    public void setFieldIndex(int i10) {
    }
}
