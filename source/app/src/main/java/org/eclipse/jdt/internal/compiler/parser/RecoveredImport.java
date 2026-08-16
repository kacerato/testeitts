package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class RecoveredImport extends RecoveredElement {
    public ImportReference importReference;

    public RecoveredImport(ImportReference importReference, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.importReference = importReference;
    }

    @Override
    public ASTNode parseTree() {
        return this.importReference;
    }

    @Override
    public int sourceEnd() {
        return this.importReference.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered import: " + this.importReference.toString();
    }

    @Override
    public void updateParseTree() {
        updatedImportReference();
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        ImportReference importReference = this.importReference;
        if (importReference.declarationSourceEnd == 0) {
            importReference.declarationSourceEnd = i11;
            importReference.declarationEnd = i11;
        }
    }

    public ImportReference updatedImportReference() {
        return this.importReference;
    }
}
