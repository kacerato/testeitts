package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;

public class RecoveredRequiresStatement extends RecoveredModuleStatement {
    public RecoveredRequiresStatement(RequiresStatement requiresStatement, RecoveredElement recoveredElement, int i10) {
        super(requiresStatement, recoveredElement, i10);
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered requires: " + super.toString();
    }

    public RequiresStatement updatedRequiresStatement() {
        return (RequiresStatement) this.moduleStatement;
    }
}
