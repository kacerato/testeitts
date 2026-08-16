package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.UsesStatement;

public class RecoveredUsesStatement extends RecoveredModuleStatement {
    public RecoveredUsesStatement(UsesStatement usesStatement, RecoveredElement recoveredElement, int i10) {
        super(usesStatement, recoveredElement, i10);
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered Uses: " + super.toString();
    }

    @Override
    public void updateParseTree() {
        updatedUsesStatement();
    }

    public UsesStatement updatedUsesStatement() {
        return (UsesStatement) this.moduleStatement;
    }
}
