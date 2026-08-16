package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;

public class RecoveredModuleReference extends RecoveredElement {
    public ModuleReference moduleReference;

    public RecoveredModuleReference(ModuleReference moduleReference, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.moduleReference = moduleReference;
    }

    @Override
    public ASTNode parseTree() {
        return this.moduleReference;
    }

    @Override
    public int sourceEnd() {
        return this.moduleReference.sourceEnd;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered ModuleReference: " + this.moduleReference.toString();
    }

    @Override
    public void updateParseTree() {
        updatedModuleReference();
    }

    public ModuleReference updatedModuleReference() {
        return this.moduleReference;
    }
}
