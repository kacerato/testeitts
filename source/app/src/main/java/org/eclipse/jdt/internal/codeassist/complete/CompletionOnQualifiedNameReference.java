package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnQualifiedNameReference extends QualifiedNameReference {
    public char[] completionIdentifier;
    public boolean isInsideAnnotationAttribute;

    public CompletionOnQualifiedNameReference(char[][] cArr, char[] cArr2, long[] jArr, boolean z10) {
        super(cArr, jArr, (int) (jArr[0] >>> 32), (int) jArr[jArr.length - 1]);
        this.completionIdentifier = cArr2;
        this.isInsideAnnotationAttribute = z10;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnName:");
        int i11 = 0;
        while (true) {
            char[][] cArr = this.tokens;
            if (i11 >= cArr.length) {
                stringBuffer.append(this.completionIdentifier);
                stringBuffer.append('>');
                return stringBuffer;
            }
            stringBuffer.append(cArr[i11]);
            stringBuffer.append('.');
            i11++;
        }
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        Binding binding = blockScope.getBinding(this.tokens, this);
        this.binding = binding;
        if (binding.isValidBinding()) {
            throw new CompletionNodeFound(this, this.binding, blockScope);
        }
        Binding binding2 = this.binding;
        if (binding2 instanceof ProblemFieldBinding) {
            blockScope.problemReporter().invalidField(this, (FieldBinding) this.binding);
        } else if ((binding2 instanceof ProblemReferenceBinding) || (binding2 instanceof MissingTypeBinding)) {
            blockScope.problemReporter().invalidType(this, (TypeBinding) this.binding);
        } else {
            blockScope.problemReporter().unresolvableReference(this, this.binding);
        }
        if (this.binding.problemId() == 1) {
            throw new CompletionNodeFound(this, this.binding, blockScope);
        }
        throw new CompletionNodeFound();
    }
}
