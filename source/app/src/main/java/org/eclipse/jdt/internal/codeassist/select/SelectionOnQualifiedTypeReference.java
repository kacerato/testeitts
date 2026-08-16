package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedTypeReference extends QualifiedTypeReference {
    public SelectionOnQualifiedTypeReference(char[][] cArr, char[] cArr2, long[] jArr) {
        super(CharOperation.arrayConcat(cArr, cArr2), jArr);
    }

    @Override
    public void aboutToResolve(Scope scope) {
        getTypeBinding(scope.parent);
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        Binding typeOrPackage = scope.getTypeOrPackage(this.tokens);
        if (typeOrPackage.isValidBinding()) {
            throw new SelectionNodeFound(typeOrPackage);
        }
        if (typeOrPackage.problemId() == 2) {
            throw new SelectionNodeFound(typeOrPackage);
        }
        if (typeOrPackage instanceof TypeBinding) {
            scope.problemReporter().invalidType(this, (TypeBinding) typeOrPackage);
        } else if (typeOrPackage instanceof PackageBinding) {
            scope.problemReporter().invalidType(this, new ProblemReferenceBinding(((PackageBinding) typeOrPackage).compoundName, null, typeOrPackage.problemId()));
        }
        throw new SelectionNodeFound();
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnType:");
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
}
