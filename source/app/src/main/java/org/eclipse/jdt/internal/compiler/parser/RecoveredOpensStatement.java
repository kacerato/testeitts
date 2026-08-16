package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.OpensStatement;

public class RecoveredOpensStatement extends RecoveredPackageVisibilityStatement {
    public RecoveredOpensStatement(OpensStatement opensStatement, RecoveredElement recoveredElement, int i10) {
        super(opensStatement, recoveredElement, i10);
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered opens stmt: " + super.toString();
    }
}
