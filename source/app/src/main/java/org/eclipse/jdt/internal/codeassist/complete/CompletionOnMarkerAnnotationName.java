package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMarkerAnnotationName extends MarkerAnnotation {
    public CompletionOnMarkerAnnotationName(TypeReference typeReference, int i10) {
        super(typeReference, i10);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeReference typeReference = this.type;
        if (!(typeReference instanceof QualifiedTypeReference)) {
            throw new CompletionNodeFound(this, (Binding) null, blockScope);
        }
        Binding typeOrPackage = blockScope.parent.getTypeOrPackage(((QualifiedTypeReference) typeReference).tokens);
        if (typeOrPackage.isValidBinding()) {
            throw new CompletionNodeFound(this, typeOrPackage, blockScope);
        }
        blockScope.problemReporter().invalidType(this, (TypeBinding) typeOrPackage);
        throw new CompletionNodeFound();
    }
}
