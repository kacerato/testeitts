package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.complete.CompletionScanner;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.compiler.util.Util;

public class UnresolvedReferenceNameFinder extends ASTVisitor {
    private static final int FAKE_BLOCKS_COUNT = 20;
    private static final int MAX_LINE_COUNT = 100;
    private SimpleSetOfCharArray acceptedNames = new SimpleSetOfCharArray();
    private CompletionEngine completionEngine;
    private CompletionScanner completionScanner;
    private ASTNode[] parents;
    private int parentsPtr;
    private CompletionParser parser;
    private int[] potentialVariableNameStarts;
    private char[][] potentialVariableNames;
    private int potentialVariableNamesPtr;
    private UnresolvedReferenceNameRequestor requestor;

    public interface UnresolvedReferenceNameRequestor {
        void acceptName(char[] cArr);
    }

    public UnresolvedReferenceNameFinder(CompletionEngine completionEngine) {
        this.completionEngine = completionEngine;
        CompletionParser completionParser = completionEngine.parser;
        this.parser = completionParser;
        this.completionScanner = (CompletionScanner) completionParser.scanner;
    }

    private void acceptName(char[] cArr) {
        if (cArr == null) {
            return;
        }
        if (!CharOperation.prefixEquals(this.completionEngine.completionToken, cArr, false)) {
            CompletionEngine completionEngine = this.completionEngine;
            if (!completionEngine.options.camelCaseMatch || !CharOperation.camelCaseMatch(completionEngine.completionToken, cArr)) {
                return;
            }
        }
        if (this.acceptedNames.includes(cArr)) {
            return;
        }
        this.acceptedNames.add(cArr);
        this.requestor.acceptName(cArr);
    }

    private void endVisitPreserved(int i10, int i11) {
        int indexOfFisrtNameAfter = indexOfFisrtNameAfter(i10);
        while (indexOfFisrtNameAfter != -1) {
            int i12 = this.potentialVariableNameStarts[indexOfFisrtNameAfter];
            if (i10 < i12 && i12 < i11) {
                acceptName(this.potentialVariableNames[indexOfFisrtNameAfter]);
                removeNameAt(indexOfFisrtNameAfter);
            }
            if (i11 < i12) {
                return;
            } else {
                indexOfFisrtNameAfter = indexOfNextName(indexOfFisrtNameAfter);
            }
        }
    }

    private void endVisitRemoved(int i10, int i11) {
        int indexOfFisrtNameAfter = indexOfFisrtNameAfter(i10);
        while (indexOfFisrtNameAfter != -1) {
            int i12 = this.potentialVariableNameStarts[indexOfFisrtNameAfter];
            if (i10 < i12 && i12 < i11) {
                removeNameAt(indexOfFisrtNameAfter);
            }
            if (i11 < i12) {
                return;
            } else {
                indexOfFisrtNameAfter = indexOfNextName(indexOfFisrtNameAfter);
            }
        }
    }

    private ASTNode getEnclosingDeclaration() {
        for (int i10 = this.parentsPtr; i10 > -1; i10--) {
            ASTNode aSTNode = this.parents[i10];
            if ((aSTNode instanceof AbstractMethodDeclaration) || (aSTNode instanceof Initializer) || (aSTNode instanceof FieldDeclaration) || (aSTNode instanceof TypeDeclaration)) {
                return aSTNode;
            }
        }
        return null;
    }

    private int indexOfFisrtNameAfter(int i10) {
        int i11 = this.potentialVariableNamesPtr;
        int i12 = 0;
        while (i11 >= i12) {
            int i13 = ((i11 - i12) / 2) + i12;
            int i14 = this.potentialVariableNameStarts[i13];
            if (i14 < 0) {
                int indexOfNextName = indexOfNextName(i13);
                if (indexOfNextName < 0 || i11 < indexOfNextName) {
                    i11 = i13 - 1;
                } else {
                    int[] iArr = this.potentialVariableNameStarts;
                    int i15 = iArr[indexOfNextName];
                    if (indexOfNextName == i11) {
                        int i16 = iArr[i12];
                        if (i16 >= 0 && i16 >= i10) {
                            return i12;
                        }
                        i12 = indexOfNextName(i12);
                        if (i12 < 0) {
                            return -1;
                        }
                    } else {
                        i13 = indexOfNextName;
                        i14 = i15;
                    }
                }
            }
            if (i12 == i11) {
                if (i14 < i10) {
                    return -1;
                }
                return i13;
            }
            if (i14 < i10) {
                i12 = i13 + 1;
            } else {
                i11 = i13;
            }
        }
        return -1;
    }

    private int indexOfNextName(int i10) {
        int i11;
        int i12 = i10 + 1;
        int i13 = i12;
        while (true) {
            i11 = this.potentialVariableNamesPtr;
            if (i13 > i11 || this.potentialVariableNames[i13] != null) {
                break;
            }
            int i14 = -this.potentialVariableNameStarts[i13];
            i13 = i14 > 0 ? i14 : i13 + 1;
        }
        if (i11 >= i13) {
            if (i12 < i13) {
                this.potentialVariableNameStarts[i12] = -i13;
            }
            return i13;
        }
        if (i10 >= i11) {
            return -1;
        }
        this.potentialVariableNamesPtr = i10;
        return -1;
    }

    private boolean initPotentialNamesTables(char[][] cArr) {
        CompletionParser completionParser = this.parser;
        char[][] cArr2 = completionParser.potentialVariableNames;
        int[] iArr = completionParser.potentialVariableNameStarts;
        int i10 = completionParser.potentialVariableNamesPtr;
        if (i10 < 0) {
            return false;
        }
        int length = cArr == null ? 0 : cArr.length;
        int i11 = -1;
        for (int i12 = 0; i12 <= i10; i12++) {
            char[] cArr3 = cArr2[i12];
            if (cArr3 != null) {
                int i13 = 0;
                while (true) {
                    if (i13 >= length) {
                        cArr2[i12] = null;
                        i11++;
                        cArr2[i11] = cArr3;
                        iArr[i11] = iArr[i12];
                        break;
                    }
                    if (CharOperation.equals(cArr3, cArr[i13], false)) {
                        break;
                    }
                    i13++;
                }
            }
        }
        if (i11 < 0) {
            return false;
        }
        this.potentialVariableNames = cArr2;
        this.potentialVariableNameStarts = iArr;
        this.potentialVariableNamesPtr = i11;
        return true;
    }

    private void popParent() {
        this.parentsPtr--;
    }

    private void pushParent(ASTNode aSTNode) {
        ASTNode[] aSTNodeArr = this.parents;
        int length = aSTNodeArr.length;
        if (this.parentsPtr >= length - 1) {
            ASTNode[] aSTNodeArr2 = new ASTNode[length * 2];
            this.parents = aSTNodeArr2;
            System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, length);
        }
        ASTNode[] aSTNodeArr3 = this.parents;
        int i10 = this.parentsPtr + 1;
        this.parentsPtr = i10;
        aSTNodeArr3[i10] = aSTNode;
    }

    private void removeFields(TypeDeclaration typeDeclaration) {
        int i10 = typeDeclaration.declarationSourceStart;
        int i11 = typeDeclaration.declarationSourceEnd;
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        if (fieldDeclarationArr != null) {
            for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                int indexOfFisrtNameAfter = indexOfFisrtNameAfter(i10);
                while (indexOfFisrtNameAfter != -1) {
                    int i12 = this.potentialVariableNameStarts[indexOfFisrtNameAfter];
                    if (i10 <= i12 && i12 <= i11 && CharOperation.equals(this.potentialVariableNames[indexOfFisrtNameAfter], fieldDeclaration.name, false)) {
                        removeNameAt(indexOfFisrtNameAfter);
                    }
                    if (i11 < i12) {
                        break;
                    } else {
                        indexOfFisrtNameAfter = indexOfNextName(indexOfFisrtNameAfter);
                    }
                }
            }
        }
    }

    private void removeLocals(Statement[] statementArr, int i10, int i11) {
        if (statementArr != null) {
            for (Statement statement : statementArr) {
                if (statement instanceof LocalDeclaration) {
                    LocalDeclaration localDeclaration = (LocalDeclaration) statement;
                    int indexOfFisrtNameAfter = indexOfFisrtNameAfter(i10);
                    while (indexOfFisrtNameAfter != -1) {
                        int i12 = this.potentialVariableNameStarts[indexOfFisrtNameAfter];
                        if (i10 <= i12 && i12 <= i11 && CharOperation.equals(this.potentialVariableNames[indexOfFisrtNameAfter], localDeclaration.name, false)) {
                            removeNameAt(indexOfFisrtNameAfter);
                        }
                        if (i11 < i12) {
                            break;
                        } else {
                            indexOfFisrtNameAfter = indexOfNextName(indexOfFisrtNameAfter);
                        }
                    }
                }
            }
        }
    }

    private void removeNameAt(int i10) {
        this.potentialVariableNames[i10] = null;
        int indexOfNextName = indexOfNextName(i10);
        if (indexOfNextName != -1) {
            this.potentialVariableNameStarts[i10] = -indexOfNextName;
        } else {
            this.potentialVariableNamesPtr = i10 - 1;
        }
    }

    @Override
    public void endVisit(Block block, BlockScope blockScope) {
        popParent();
    }

    public void find(char[] cArr, Initializer initializer, ClassScope classScope, int i10, char[][] cArr2, UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor) {
        MethodDeclaration findAfter = findAfter(cArr, classScope, i10, initializer.bodyEnd, 100, false, cArr2, unresolvedReferenceNameRequestor);
        if (findAfter != null) {
            findAfter.traverse(this, classScope);
        }
    }

    public void findAfter(char[] cArr, Scope scope, ClassScope classScope, int i10, int i11, char[][] cArr2, UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor) {
        MethodDeclaration findAfter = findAfter(cArr, scope, i10, i11, 50, true, cArr2, unresolvedReferenceNameRequestor);
        if (findAfter != null) {
            findAfter.traverse(this, classScope);
        }
    }

    public void findBefore(char[] cArr, Scope scope, ClassScope classScope, int i10, int i11, int i12, char[][] cArr2, UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor) {
        MethodDeclaration findBefore = findBefore(cArr, scope, i10, i11, i12, 50, cArr2, unresolvedReferenceNameRequestor);
        if (findBefore != null) {
            findBefore.traverse(this, classScope);
        }
    }

    @Override
    public boolean visit(Block block, BlockScope blockScope) {
        removeLocals(block.statements, getEnclosingDeclaration().sourceStart, block.sourceEnd);
        pushParent(block);
        return true;
    }

    @Override
    public void endVisit(Argument argument, BlockScope blockScope) {
        endVisitRemoved(argument.declarationSourceStart, argument.sourceEnd);
    }

    private MethodDeclaration findAfter(char[] cArr, Scope scope, int i10, int i11, int i12, boolean z10, char[][] cArr2, UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor) {
        this.requestor = unresolvedReferenceNameRequestor;
        CompletionScanner completionScanner = this.completionScanner;
        completionScanner.cursorLocation = 0;
        if (!z10) {
            completionScanner.resetTo(i10 + 1, i11);
            this.completionScanner.jumpOverBlock();
            i11 = this.completionScanner.startPosition - 1;
        }
        CompletionScanner completionScanner2 = this.completionScanner;
        int lineEnd = completionScanner2.getLineEnd(Util.getLineNumber(i10, completionScanner2.lineEnds, 0, completionScanner2.linePtr) + i12);
        if (lineEnd >= 0 && lineEnd < i11) {
            i11 = lineEnd;
        }
        this.parser.startRecordingIdentifiers(i10, i11);
        MethodDeclaration parseSomeStatements = this.parser.parseSomeStatements(i10, i11, z10 ? 20 : 0, scope.compilationUnitScope().referenceContext);
        this.parser.stopRecordingIdentifiers();
        if (!initPotentialNamesTables(cArr2)) {
            return null;
        }
        this.parentsPtr = -1;
        this.parents = new ASTNode[10];
        return parseSomeStatements;
    }

    private MethodDeclaration findBefore(char[] cArr, Scope scope, int i10, int i11, int i12, int i13, char[][] cArr2, UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor) {
        this.requestor = unresolvedReferenceNameRequestor;
        CompletionScanner completionScanner = this.completionScanner;
        int i14 = 0;
        completionScanner.cursorLocation = 0;
        int lineStart = completionScanner.getLineStart(Util.getLineNumber(i11, completionScanner.lineEnds, 0, completionScanner.linePtr) - i13);
        if (lineStart > i10) {
            i14 = 20;
            i10 = lineStart;
        }
        this.parser.startRecordingIdentifiers(i10, i11);
        MethodDeclaration parseSomeStatements = this.parser.parseSomeStatements(i10, i12, i14, scope.compilationUnitScope().referenceContext);
        this.parser.stopRecordingIdentifiers();
        if (!initPotentialNamesTables(cArr2)) {
            return null;
        }
        this.parentsPtr = -1;
        this.parents = new ASTNode[10];
        return parseSomeStatements;
    }

    @Override
    public void endVisit(Argument argument, ClassScope classScope) {
        endVisitRemoved(argument.declarationSourceStart, argument.sourceEnd);
    }

    public void find(char[] cArr, AbstractMethodDeclaration abstractMethodDeclaration, int i10, char[][] cArr2, UnresolvedReferenceNameRequestor unresolvedReferenceNameRequestor) {
        MethodDeclaration findAfter = findAfter(cArr, abstractMethodDeclaration.scope, i10, abstractMethodDeclaration.bodyEnd, 100, false, cArr2, unresolvedReferenceNameRequestor);
        if (findAfter != null) {
            findAfter.traverse(this, abstractMethodDeclaration.scope.classScope());
        }
    }

    @Override
    public void endVisit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
        if ((constructorDeclaration.bits & 128) == 0 && !constructorDeclaration.isClinit()) {
            endVisitPreserved(constructorDeclaration.bodyStart, constructorDeclaration.bodyEnd);
        }
        popParent();
    }

    @Override
    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
        if ((constructorDeclaration.bits & 128) == 0 && !constructorDeclaration.isClinit()) {
            removeLocals(constructorDeclaration.arguments, constructorDeclaration.declarationSourceStart, constructorDeclaration.declarationSourceEnd);
            removeLocals(constructorDeclaration.statements, constructorDeclaration.declarationSourceStart, constructorDeclaration.declarationSourceEnd);
        }
        pushParent(constructorDeclaration);
        return true;
    }

    @Override
    public void endVisit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
        endVisitRemoved(fieldDeclaration.declarationSourceStart, fieldDeclaration.sourceEnd);
        endVisitPreserved(fieldDeclaration.sourceEnd, fieldDeclaration.declarationEnd);
        popParent();
    }

    @Override
    public void endVisit(Initializer initializer, MethodScope methodScope) {
        endVisitPreserved(initializer.bodyStart, initializer.bodyEnd);
        popParent();
    }

    @Override
    public void endVisit(LocalDeclaration localDeclaration, BlockScope blockScope) {
        endVisitRemoved(localDeclaration.declarationSourceStart, localDeclaration.sourceEnd);
    }

    @Override
    public void endVisit(MethodDeclaration methodDeclaration, ClassScope classScope) {
        endVisitPreserved(methodDeclaration.bodyStart, methodDeclaration.bodyEnd);
        popParent();
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
        pushParent(fieldDeclaration);
        return true;
    }

    @Override
    public boolean visit(Initializer initializer, MethodScope methodScope) {
        pushParent(initializer);
        return true;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
        removeLocals(methodDeclaration.arguments, methodDeclaration.declarationSourceStart, methodDeclaration.declarationSourceEnd);
        removeLocals(methodDeclaration.statements, methodDeclaration.declarationSourceStart, methodDeclaration.declarationSourceEnd);
        pushParent(methodDeclaration);
        return true;
    }

    @Override
    public void endVisit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
        endVisitRemoved(typeDeclaration.sourceStart, typeDeclaration.declarationSourceEnd);
        popParent();
    }

    @Override
    public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
        endVisitRemoved(typeDeclaration.sourceStart, typeDeclaration.declarationSourceEnd);
        popParent();
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
        removeFields(typeDeclaration);
        pushParent(typeDeclaration);
        return true;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
        removeFields(typeDeclaration);
        pushParent(typeDeclaration);
        return true;
    }
}
