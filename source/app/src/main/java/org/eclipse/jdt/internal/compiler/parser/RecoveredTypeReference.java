package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class RecoveredTypeReference extends RecoveredElement {
    public TypeReference typeReference;

    public RecoveredTypeReference(TypeReference typeReference, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.typeReference = typeReference;
    }

    @Override
    public ASTNode parseTree() {
        return this.typeReference;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered typereference: " + this.typeReference.toString();
    }

    @Override
    public void updateParseTree() {
        updatedImportReference();
    }

    public TypeReference updateTypeReference() {
        return this.typeReference;
    }

    public TypeReference updatedImportReference() {
        return this.typeReference;
    }
}
