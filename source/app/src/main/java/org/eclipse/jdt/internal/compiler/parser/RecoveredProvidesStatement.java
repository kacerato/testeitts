package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class RecoveredProvidesStatement extends RecoveredModuleStatement {
    SingleTypeReference impl;

    public RecoveredProvidesStatement(ProvidesStatement providesStatement, RecoveredElement recoveredElement, int i10) {
        super(providesStatement, recoveredElement, i10);
    }

    public RecoveredElement add(SingleTypeReference singleTypeReference, int i10) {
        this.impl = singleTypeReference;
        return this;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered Provides: " + super.toString();
    }

    @Override
    public void updateParseTree() {
        updatedProvidesStatement();
    }

    public ProvidesStatement updatedProvidesStatement() {
        ProvidesStatement providesStatement = (ProvidesStatement) this.moduleStatement;
        if (providesStatement.implementations == null) {
            SingleTypeReference singleTypeReference = this.impl;
            providesStatement.implementations = singleTypeReference != null ? new TypeReference[]{singleTypeReference} : new TypeReference[0];
        }
        return providesStatement;
    }
}
