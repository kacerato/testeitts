package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedNameReference extends QualifiedNameReference {
    public SelectionOnQualifiedNameReference(char[][] cArr, char[] cArr2, long[] jArr) {
        super(CharOperation.arrayConcat(cArr, cArr2), jArr, (int) (jArr[0] >>> 32), (int) jArr[jArr.length - 1]);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnName:");
        int length = this.tokens.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        Binding binding = blockScope.getBinding(this.tokens, this);
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
