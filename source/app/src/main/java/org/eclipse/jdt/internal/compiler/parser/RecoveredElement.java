package org.eclipse.jdt.internal.compiler.parser;

import com.bumptech.glide.load.engine.GlideException;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleStatement;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.util.Util;

public class RecoveredElement {
    public int bracketBalance;
    public boolean foundOpeningBrace;
    public int lambdaNestLevel;
    public RecoveredElement parent;
    protected Parser recoveringParser;

    public RecoveredElement(RecoveredElement recoveredElement, int i10) {
        this(recoveredElement, i10, null);
    }

    public RecoveredElement add(AbstractMethodDeclaration abstractMethodDeclaration, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(abstractMethodDeclaration.declarationSourceStart - 1));
        return this.parent.add(abstractMethodDeclaration, i10);
    }

    public RecoveredElement addAnnotationName(int i10, int i11, int i12, int i13) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(i12 - 1));
        return this.parent.addAnnotationName(i10, i11, i12, i13);
    }

    public void addBlockStatement(RecoveredBlock recoveredBlock) {
        Statement[] statementArr = recoveredBlock.blockDeclaration.statements;
        if (statementArr != null) {
            for (Statement statement : statementArr) {
                recoveredBlock.add(statement, 0);
            }
        }
    }

    public void addModifier(int i10, int i11) {
    }

    public int depth() {
        int i10 = 0;
        RecoveredElement recoveredElement = this;
        while (true) {
            recoveredElement = recoveredElement.parent;
            if (recoveredElement == null) {
                return i10;
            }
            i10++;
        }
    }

    public RecoveredInitializer enclosingInitializer() {
        for (RecoveredElement recoveredElement = this; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            if (recoveredElement instanceof RecoveredInitializer) {
                return (RecoveredInitializer) recoveredElement;
            }
        }
        return null;
    }

    public RecoveredMethod enclosingMethod() {
        for (RecoveredElement recoveredElement = this; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            if (recoveredElement instanceof RecoveredMethod) {
                return (RecoveredMethod) recoveredElement;
            }
        }
        return null;
    }

    public RecoveredType enclosingType() {
        for (RecoveredElement recoveredElement = this; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            if (recoveredElement instanceof RecoveredType) {
                return (RecoveredType) recoveredElement;
            }
        }
        return null;
    }

    public int getLastStart() {
        ASTNode parseTree = parseTree();
        if (parseTree == null) {
            return -1;
        }
        return parseTree.sourceStart;
    }

    public ASTNode parseTree() {
        return null;
    }

    public Parser parser() {
        for (RecoveredElement recoveredElement = this; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            Parser parser = recoveredElement.recoveringParser;
            if (parser != null) {
                return parser;
            }
        }
        return null;
    }

    public void preserveEnclosingBlocks() {
        for (RecoveredElement recoveredElement = this; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            if (recoveredElement instanceof RecoveredBlock) {
                ((RecoveredBlock) recoveredElement).preserveContent = true;
            }
            if (recoveredElement instanceof RecoveredType) {
                ((RecoveredType) recoveredElement).preserveContent = true;
            }
        }
    }

    public int previousAvailableLineEnd(int i10) {
        Scanner scanner;
        int[] iArr;
        int lineNumber;
        Parser parser = parser();
        if (parser == null || (iArr = (scanner = parser.scanner).lineEnds) == null || (lineNumber = Util.getLineNumber(i10, iArr, 0, scanner.linePtr)) < 2) {
            return i10;
        }
        int i11 = scanner.lineEnds[lineNumber - 2];
        char[] cArr = scanner.source;
        for (int i12 = i11 + 1; i12 < i10; i12++) {
            char c10 = cArr[i12];
            if (c10 != ' ' && c10 != '\t') {
                return i10;
            }
        }
        return i11;
    }

    public void resetPendingModifiers() {
    }

    public int sourceEnd() {
        return 0;
    }

    public String tabString(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        while (i10 > 0) {
            stringBuffer.append(GlideException.a.f59088e);
            i10--;
        }
        return stringBuffer.toString();
    }

    public String toString() {
        return toString(0);
    }

    public RecoveredElement topElement() {
        RecoveredElement recoveredElement = this;
        while (true) {
            RecoveredElement recoveredElement2 = recoveredElement.parent;
            if (recoveredElement2 == null) {
                return recoveredElement;
            }
            recoveredElement = recoveredElement2;
        }
    }

    public RecoveredType type() {
        for (RecoveredElement recoveredElement = this; recoveredElement != null; recoveredElement = recoveredElement.parent) {
            if (recoveredElement instanceof RecoveredType) {
                return (RecoveredType) recoveredElement;
            }
        }
        return null;
    }

    public void updateBodyStart(int i10) {
        this.foundOpeningBrace = true;
    }

    public void updateFromParserState() {
    }

    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance - 1;
        this.bracketBalance = i12;
        if (i12 > 0 || this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(i10, i11);
        return this.parent;
    }

    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        int i12 = this.bracketBalance;
        this.bracketBalance = i12 + 1;
        if (i12 != 0) {
            return null;
        }
        updateBodyStart(i11 + 1);
        return this;
    }

    public void updateParseTree() {
    }

    public void updateSourceEndIfNecessary(int i10, int i11) {
    }

    public RecoveredElement(RecoveredElement recoveredElement, int i10, Parser parser) {
        this.parent = recoveredElement;
        this.bracketBalance = i10;
        this.recoveringParser = parser;
    }

    public String toString(int i10) {
        return super.toString();
    }

    public void updateSourceEndIfNecessary(int i10) {
        updateSourceEndIfNecessary(i10 + 1, i10);
    }

    public RecoveredElement add(Block block, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(block.sourceStart - 1));
        return this.parent.add(block, i10);
    }

    public RecoveredElement add(ModuleStatement moduleStatement, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(moduleStatement.declarationSourceStart - 1));
        return this.parent.add(moduleStatement, i10);
    }

    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(fieldDeclaration.declarationSourceStart - 1));
        return this.parent.add(fieldDeclaration, i10);
    }

    public RecoveredElement add(ImportReference importReference, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(importReference.declarationSourceStart - 1));
        return this.parent.add(importReference, i10);
    }

    public RecoveredElement add(LocalDeclaration localDeclaration, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(localDeclaration.declarationSourceStart - 1));
        return this.parent.add(localDeclaration, i10);
    }

    public RecoveredElement add(Statement statement, int i10) {
        TypeDeclaration typeDeclaration;
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        if ((this instanceof RecoveredType) && (typeDeclaration = ((RecoveredType) this).typeDeclaration) != null && (typeDeclaration.bits & 512) != 0 && statement.sourceStart > typeDeclaration.sourceStart && statement.sourceEnd < typeDeclaration.sourceEnd) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(statement.sourceStart - 1));
        return this.parent.add(statement, i10);
    }

    public RecoveredElement add(ModuleDeclaration moduleDeclaration, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(moduleDeclaration.declarationSourceStart - 1));
        return this.parent.add(moduleDeclaration, i10);
    }

    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        resetPendingModifiers();
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(typeDeclaration.declarationSourceStart - 1));
        return this.parent.add(typeDeclaration, i10);
    }
}
