package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public class RecoveredStatement extends RecoveredElement {
    RecoveredBlock nestedBlock;
    public Statement statement;

    public RecoveredStatement(Statement statement, RecoveredElement recoveredElement, int i10) {
        super(recoveredElement, i10);
        this.statement = statement;
    }

    @Override
    public RecoveredElement add(Block block, int i10) {
        Statement statement = this.statement;
        if (!(statement instanceof ForeachStatement)) {
            return super.add(block, i10);
        }
        ForeachStatement foreachStatement = (ForeachStatement) statement;
        resetPendingModifiers();
        int i11 = foreachStatement.sourceEnd;
        if (i11 != 0 && foreachStatement.action != null && block.sourceStart > i11) {
            return this.parent.add(block, i10);
        }
        foreachStatement.action = block;
        RecoveredBlock recoveredBlock = new RecoveredBlock(block, this, i10);
        if (parser().statementRecoveryActivated) {
            addBlockStatement(recoveredBlock);
        }
        this.nestedBlock = recoveredBlock;
        return block.sourceEnd == 0 ? recoveredBlock : this;
    }

    @Override
    public ASTNode parseTree() {
        return this.statement;
    }

    @Override
    public int sourceEnd() {
        return this.statement.sourceEnd;
    }

    @Override
    public String toString(int i10) {
        return String.valueOf(tabString(i10)) + "Recovered statement:\n" + ((Object) this.statement.print(i10 + 1, new StringBuffer(10)));
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance - 1;
        this.bracketBalance = i12;
        if (i12 > 0 || this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(i10, i11);
        return this.parent.updateOnClosingBrace(i10, i11);
    }

    @Override
    public void updateParseTree() {
        updatedStatement(0, new HashSet());
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        Statement statement = this.statement;
        if (statement.sourceEnd == 0) {
            statement.sourceEnd = i11;
        }
    }

    public Statement updatedStatement(int i10, Set<TypeDeclaration> set) {
        RecoveredBlock recoveredBlock = this.nestedBlock;
        if (recoveredBlock != null) {
            recoveredBlock.updatedStatement(i10, set);
        }
        return this.statement;
    }
}
