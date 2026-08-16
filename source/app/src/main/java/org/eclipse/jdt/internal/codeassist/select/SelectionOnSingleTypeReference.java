package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnSingleTypeReference extends SingleTypeReference {
    public SelectionOnSingleTypeReference(char[] cArr, long j10) {
        super(cArr, j10);
    }

    @Override
    public void aboutToResolve(Scope scope) {
        getTypeBinding(scope.parent);
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        Binding typeOrPackage = scope.getTypeOrPackage(new char[][]{this.token});
        if (typeOrPackage.isValidBinding()) {
            throw new SelectionNodeFound(typeOrPackage);
        }
        if ((typeOrPackage instanceof ProblemReferenceBinding) && typeOrPackage.problemId() == 2) {
            throw new SelectionNodeFound(((ProblemReferenceBinding) typeOrPackage).closestMatch());
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
        stringBuffer.append(this.token);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveTypeEnclosing(BlockScope blockScope, ReferenceBinding referenceBinding) {
        super.resolveTypeEnclosing(blockScope, referenceBinding);
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null || !(typeBinding.isValidBinding() || this.resolvedType.problemId() == 2)) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.resolvedType);
    }
}
