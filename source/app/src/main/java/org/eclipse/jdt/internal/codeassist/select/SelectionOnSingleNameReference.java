package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnSingleNameReference extends SingleNameReference {
    public SelectionOnSingleNameReference(char[] cArr, long j10) {
        super(cArr, j10);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnName:");
        StringBuffer printExpression = super.printExpression(0, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding typeBinding = this.actualReceiverType;
        if (typeBinding != null) {
            FieldBinding field = blockScope.getField(typeBinding, this.token, this);
            this.binding = field;
            if (field != null && field.isValidBinding()) {
                throw new SelectionNodeFound(this.binding);
            }
        }
        Binding binding = blockScope.getBinding(this.token, 23, (InvocationSite) this, true);
        this.binding = binding;
        if (binding.isValidBinding()) {
            throw new SelectionNodeFound(this.binding);
        }
        Binding binding2 = this.binding;
        if (binding2 instanceof ProblemFieldBinding) {
            if (binding2.problemId() == 2 || this.binding.problemId() == 5 || this.binding.problemId() == 6 || this.binding.problemId() == 7) {
                throw new SelectionNodeFound(this.binding);
            }
            blockScope.problemReporter().invalidField(this, (FieldBinding) this.binding);
        } else if (!(binding2 instanceof ProblemReferenceBinding) && !(binding2 instanceof MissingTypeBinding)) {
            blockScope.problemReporter().unresolvableReference(this, this.binding);
        } else {
            if (binding2.problemId() == 2) {
                throw new SelectionNodeFound(this.binding);
            }
            blockScope.problemReporter().invalidType(this, (TypeBinding) this.binding);
        }
        throw new SelectionNodeFound();
    }
}
