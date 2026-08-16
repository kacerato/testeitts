package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;

public class RecoveredExportsStatement extends RecoveredPackageVisibilityStatement {
    public RecoveredExportsStatement(ExportsStatement exportsStatement, RecoveredElement recoveredElement, int i10) {
        super(exportsStatement, recoveredElement, i10);
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered exports stmt: " + super.toString();
    }
}
