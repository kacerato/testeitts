package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ModuleStatement;

public abstract class RecoveredModuleStatement extends RecoveredElement {
    public ModuleStatement moduleStatement;

    public RecoveredModuleStatement(ModuleStatement moduleStatement, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.moduleStatement = moduleStatement;
    }

    @Override
    public ASTNode parseTree() {
        return this.moduleStatement;
    }

    @Override
    public int sourceEnd() {
        return this.moduleStatement.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        return this.moduleStatement.toString();
    }

    @Override
    public void updateParseTree() {
        updatedModuleStatement();
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        ModuleStatement moduleStatement = this.moduleStatement;
        if (moduleStatement.declarationSourceEnd == 0) {
            moduleStatement.declarationSourceEnd = i11;
            moduleStatement.declarationEnd = i11;
        }
    }

    public ModuleStatement updatedModuleStatement() {
        return this.moduleStatement;
    }
}
