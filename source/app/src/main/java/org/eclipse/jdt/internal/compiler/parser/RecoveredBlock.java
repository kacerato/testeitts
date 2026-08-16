package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class RecoveredBlock extends RecoveredStatement implements TerminalTokens {
    public Block blockDeclaration;
    int pendingAnnotationCount;
    RecoveredAnnotation[] pendingAnnotations;
    public RecoveredLocalVariable pendingArgument;
    int pendingModifersSourceStart;
    int pendingModifiers;
    public boolean preserveContent;
    public int statementCount;
    public RecoveredStatement[] statements;

    public RecoveredBlock(Block block, RecoveredElement recoveredElement, int i10) {
        super(block, recoveredElement, i10);
        this.preserveContent = false;
        this.pendingModifersSourceStart = -1;
        this.blockDeclaration = block;
        this.foundOpeningBrace = true;
        this.preserveContent = parser().methodRecoveryActivated || parser().statementRecoveryActivated;
    }

    @Override
    public RecoveredElement add(AbstractMethodDeclaration abstractMethodDeclaration, int i10) {
        RecoveredElement recoveredElement = this.parent;
        if (recoveredElement != null && (recoveredElement instanceof RecoveredMethod)) {
            RecoveredMethod recoveredMethod = (RecoveredMethod) recoveredElement;
            if (recoveredMethod.methodBody == this && recoveredMethod.parent == null) {
                resetPendingModifiers();
                return this;
            }
        }
        return super.add(abstractMethodDeclaration, i10);
    }

    @Override
    public RecoveredElement addAnnotationName(int i10, int i11, int i12, int i13) {
        RecoveredAnnotation[] recoveredAnnotationArr = this.pendingAnnotations;
        if (recoveredAnnotationArr == null) {
            this.pendingAnnotations = new RecoveredAnnotation[5];
            this.pendingAnnotationCount = 0;
        } else {
            int i14 = this.pendingAnnotationCount;
            if (i14 == recoveredAnnotationArr.length) {
                RecoveredAnnotation[] recoveredAnnotationArr2 = new RecoveredAnnotation[i14 * 2];
                this.pendingAnnotations = recoveredAnnotationArr2;
                System.arraycopy(recoveredAnnotationArr, 0, recoveredAnnotationArr2, 0, i14);
            }
        }
        RecoveredAnnotation recoveredAnnotation = new RecoveredAnnotation(i10, i11, i12, this, i13);
        RecoveredAnnotation[] recoveredAnnotationArr3 = this.pendingAnnotations;
        int i15 = this.pendingAnnotationCount;
        this.pendingAnnotationCount = i15 + 1;
        recoveredAnnotationArr3[i15] = recoveredAnnotation;
        return recoveredAnnotation;
    }

    @Override
    public void addModifier(int i10, int i11) {
        this.pendingModifiers = i10 | this.pendingModifiers;
        if (this.pendingModifersSourceStart < 0) {
            this.pendingModifersSourceStart = i11;
        }
    }

    public void attach(RecoveredStatement recoveredStatement) {
        RecoveredStatement[] recoveredStatementArr = this.statements;
        if (recoveredStatementArr == null) {
            this.statements = new RecoveredStatement[5];
            this.statementCount = 0;
        } else {
            int i10 = this.statementCount;
            if (i10 == recoveredStatementArr.length) {
                RecoveredStatement[] recoveredStatementArr2 = new RecoveredStatement[i10 * 2];
                this.statements = recoveredStatementArr2;
                System.arraycopy(recoveredStatementArr, 0, recoveredStatementArr2, 0, i10);
            }
        }
        RecoveredStatement[] recoveredStatementArr3 = this.statements;
        int i11 = this.statementCount;
        this.statementCount = i11 + 1;
        recoveredStatementArr3[i11] = recoveredStatement;
    }

    public void attachPendingModifiers(RecoveredAnnotation[] recoveredAnnotationArr, int i10, int i11, int i12) {
        this.pendingAnnotations = recoveredAnnotationArr;
        this.pendingAnnotationCount = i10;
        this.pendingModifiers = i11;
        this.pendingModifersSourceStart = i12;
    }

    public boolean isEndKnown(Statement statement) {
        return (((statement instanceof ForeachStatement) && ((ForeachStatement) statement).action == null) || statement.sourceEnd == 0) ? false : true;
    }

    @Override
    public ASTNode parseTree() {
        return this.blockDeclaration;
    }

    @Override
    public void resetPendingModifiers() {
        this.pendingAnnotations = null;
        this.pendingAnnotationCount = 0;
        this.pendingModifiers = 0;
        this.pendingModifersSourceStart = -1;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered block:\n");
        int i11 = i10 + 1;
        this.blockDeclaration.print(i11, stringBuffer);
        if (this.statements != null) {
            for (int i12 = 0; i12 < this.statementCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.statements[i12].toString(i11));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance - 1;
        this.bracketBalance = i12;
        if (i12 > 0 || this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(i10, i11);
        RecoveredMethod enclosingMethod = enclosingMethod();
        if (enclosingMethod != null && enclosingMethod.methodBody == this) {
            return this.parent.updateOnClosingBrace(i10, i11);
        }
        RecoveredInitializer enclosingInitializer = enclosingInitializer();
        return (enclosingInitializer == null || enclosingInitializer.initializerBody != this) ? this.parent : this.parent.updateOnClosingBrace(i10, i11);
    }

    @Override
    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        Block block = new Block(0);
        block.sourceStart = parser().scanner.startPosition;
        return add(block, 1);
    }

    @Override
    public void updateParseTree() {
        updatedBlock(0, new HashSet());
    }

    public Block updatedBlock(int i10, Set<TypeDeclaration> set) {
        int i11;
        int i12;
        int i13;
        int i14;
        Expression expression;
        if (!this.preserveContent || (i11 = this.statementCount) == 0) {
            return null;
        }
        Statement[] statementArr = new Statement[i11];
        RecoveredStatement recoveredStatement = this.statements[i11 - 1];
        RecoveredMethod enclosingMethod = enclosingMethod();
        RecoveredInitializer enclosingInitializer = enclosingInitializer();
        if (enclosingMethod != null) {
            AbstractMethodDeclaration abstractMethodDeclaration = enclosingMethod.methodDeclaration;
            i12 = abstractMethodDeclaration.bodyEnd;
            if (enclosingInitializer != null) {
                int i15 = abstractMethodDeclaration.sourceStart;
                FieldDeclaration fieldDeclaration = enclosingInitializer.fieldDeclaration;
                if (i15 < fieldDeclaration.sourceStart) {
                    i12 = fieldDeclaration.declarationSourceEnd;
                }
            }
        } else {
            i12 = enclosingInitializer != null ? enclosingInitializer.fieldDeclaration.declarationSourceEnd : this.blockDeclaration.sourceEnd - 1;
        }
        if (recoveredStatement instanceof RecoveredLocalVariable) {
            LocalDeclaration localDeclaration = ((RecoveredLocalVariable) recoveredStatement).localDeclaration;
            if (localDeclaration.declarationSourceEnd == 0) {
                localDeclaration.declarationSourceEnd = i12;
                localDeclaration.declarationEnd = i12;
            }
        } else if (recoveredStatement instanceof RecoveredBlock) {
            Block block = ((RecoveredBlock) recoveredStatement).blockDeclaration;
            if (block.sourceEnd == 0) {
                block.sourceEnd = i12;
            }
        } else if (!(recoveredStatement instanceof RecoveredType)) {
            Statement statement = recoveredStatement.statement;
            if (statement.sourceEnd == 0) {
                statement.sourceEnd = i12;
            }
        }
        int i16 = this.blockDeclaration.sourceStart;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            i13 = this.statementCount;
            if (i17 >= i13) {
                break;
            }
            Statement updatedStatement = this.statements[i17].updatedStatement(i10, set);
            if (updatedStatement != null) {
                int i19 = 0;
                while (true) {
                    if (i19 >= i17) {
                        int i20 = i18 + 1;
                        statementArr[i18] = updatedStatement;
                        if (!(updatedStatement instanceof LocalDeclaration) ? !(!(updatedStatement instanceof TypeDeclaration) ? (i14 = updatedStatement.sourceEnd) <= i16 : (i14 = ((TypeDeclaration) updatedStatement).declarationSourceEnd) <= i16) : (i14 = ((LocalDeclaration) updatedStatement).declarationSourceEnd) > i16) {
                            i16 = i14;
                        }
                        i18 = i20;
                    } else {
                        Statement statement2 = statementArr[i19];
                        if (!(statement2 instanceof LocalDeclaration) || (expression = ((LocalDeclaration) statement2).initialization) == null || updatedStatement.sourceStart < expression.sourceStart || updatedStatement.sourceEnd > expression.sourceEnd) {
                            i19++;
                        }
                    }
                }
            }
            i17++;
        }
        if (i18 == 0) {
            return null;
        }
        if (i18 != i13) {
            Statement[] statementArr2 = new Statement[i18];
            this.blockDeclaration.statements = statementArr2;
            System.arraycopy(statementArr, 0, statementArr2, 0, i18);
        } else {
            this.blockDeclaration.statements = statementArr;
        }
        Block block2 = this.blockDeclaration;
        if (block2.sourceEnd == 0) {
            if (i16 < i12) {
                block2.sourceEnd = i12;
            } else {
                block2.sourceEnd = i16;
            }
        }
        return block2;
    }

    @Override
    public Statement updatedStatement(int i10, Set<TypeDeclaration> set) {
        return updatedBlock(i10, set);
    }

    @Override
    public RecoveredElement add(Block block, int i10) {
        resetPendingModifiers();
        int i11 = this.blockDeclaration.sourceEnd;
        if (i11 != 0 && block.sourceStart > i11) {
            return this.parent.add(block, i10);
        }
        RecoveredBlock recoveredBlock = new RecoveredBlock(block, this, i10);
        RecoveredStatement recoveredStatement = this.pendingArgument;
        if (recoveredStatement != null) {
            recoveredBlock.attach(recoveredStatement);
            this.pendingArgument = null;
        }
        if (parser().statementRecoveryActivated) {
            addBlockStatement(recoveredBlock);
        }
        attach(recoveredBlock);
        return block.sourceEnd == 0 ? recoveredBlock : this;
    }

    @Override
    public RecoveredElement add(LocalDeclaration localDeclaration, int i10) {
        return add(localDeclaration, i10, false);
    }

    public RecoveredElement add(LocalDeclaration localDeclaration, int i10, boolean z10) {
        if (localDeclaration.isRecoveredFromLoneIdentifier()) {
            return this;
        }
        int i11 = this.blockDeclaration.sourceEnd;
        if (i11 != 0 && localDeclaration.declarationSourceStart > i11) {
            resetPendingModifiers();
            return z10 ? this : this.parent.add(localDeclaration, i10);
        }
        RecoveredLocalVariable recoveredLocalVariable = new RecoveredLocalVariable(localDeclaration, this, i10);
        int i12 = this.pendingAnnotationCount;
        if (i12 > 0) {
            recoveredLocalVariable.attach(this.pendingAnnotations, i12, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        if (localDeclaration instanceof Argument) {
            this.pendingArgument = recoveredLocalVariable;
            return this;
        }
        attach(recoveredLocalVariable);
        return localDeclaration.declarationSourceEnd == 0 ? recoveredLocalVariable : this;
    }

    @Override
    public RecoveredElement add(Statement statement, int i10) {
        return add(statement, i10, false);
    }

    public RecoveredElement add(Statement statement, int i10, boolean z10) {
        resetPendingModifiers();
        int i11 = this.blockDeclaration.sourceEnd;
        if (i11 != 0 && statement.sourceStart > i11) {
            return z10 ? this : this.parent.add(statement, i10);
        }
        RecoveredStatement recoveredStatement = new RecoveredStatement(statement, this, i10);
        attach(recoveredStatement);
        return !isEndKnown(statement) ? recoveredStatement : this;
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        return add(typeDeclaration, i10, false);
    }

    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10, boolean z10) {
        int i11 = this.blockDeclaration.sourceEnd;
        if (i11 != 0 && typeDeclaration.declarationSourceStart > i11) {
            resetPendingModifiers();
            return z10 ? this : this.parent.add(typeDeclaration, i10);
        }
        RecoveredType recoveredType = new RecoveredType(typeDeclaration, this, i10);
        int i12 = this.pendingAnnotationCount;
        if (i12 > 0) {
            recoveredType.attach(this.pendingAnnotations, i12, this.pendingModifiers, this.pendingModifersSourceStart);
        }
        resetPendingModifiers();
        attach(recoveredType);
        return typeDeclaration.declarationSourceEnd == 0 ? recoveredType : this;
    }

    @Override
    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        TypeReference typeReference;
        resetPendingModifiers();
        if ((fieldDeclaration.modifiers & (-17)) == 0 && (typeReference = fieldDeclaration.type) != null) {
            char[][] typeName = typeReference.getTypeName();
            if (typeName.length != 1 || !CharOperation.equals(typeName[0], TypeBinding.VOID.sourceName())) {
                int i11 = this.blockDeclaration.sourceEnd;
                return (i11 == 0 || fieldDeclaration.declarationSourceStart <= i11) ? this : this.parent.add(fieldDeclaration, i10);
            }
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(fieldDeclaration.declarationSourceStart - 1));
        return this.parent.add(fieldDeclaration, i10);
    }
}
