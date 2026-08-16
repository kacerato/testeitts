package org.eclipse.jdt.core.dom;

import java.util.List;
import java.util.Vector;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToIntArray;

public class ASTRecoveryPropagator extends DefaultASTVisitor {
    private static final int NOTHING = -1;
    private int blockDepth;
    private RecoveryScannerData data;
    HashtableOfObjectToIntArray endingTokens;
    private boolean[] insertedTokensFlagged;
    private int[] insertedTokensKind;
    private int[] insertedTokensPosition;
    private int lastEnd;
    private CategorizedProblem[] problems;
    private boolean[] removedTokensFlagged;
    private boolean[] replacedTokensFlagged;
    private Vector stack;
    private boolean[] usedOrIrrelevantProblems;

    public ASTRecoveryPropagator(CategorizedProblem[] categorizedProblemArr, RecoveryScannerData recoveryScannerData) {
        HashtableOfObjectToIntArray hashtableOfObjectToIntArray = new HashtableOfObjectToIntArray();
        this.endingTokens = hashtableOfObjectToIntArray;
        hashtableOfObjectToIntArray.put(AnonymousClassDeclaration.class, new int[]{33});
        this.endingTokens.put(ArrayAccess.class, new int[]{66});
        this.endingTokens.put(ArrayCreation.class, new int[]{-1, 66});
        this.endingTokens.put(ArrayInitializer.class, new int[]{33});
        this.endingTokens.put(ArrayType.class, new int[]{66});
        this.endingTokens.put(AssertStatement.class, new int[]{26});
        this.endingTokens.put(Block.class, new int[]{33});
        this.endingTokens.put(BooleanLiteral.class, new int[]{38, 40});
        this.endingTokens.put(BreakStatement.class, new int[]{26});
        this.endingTokens.put(CharacterLiteral.class, new int[]{45});
        this.endingTokens.put(ClassInstanceCreation.class, new int[]{33, 25});
        this.endingTokens.put(ConstructorInvocation.class, new int[]{26});
        this.endingTokens.put(ContinueStatement.class, new int[]{26});
        this.endingTokens.put(DoStatement.class, new int[]{25});
        this.endingTokens.put(EmptyStatement.class, new int[]{26});
        this.endingTokens.put(ExpressionStatement.class, new int[]{26});
        this.endingTokens.put(FieldDeclaration.class, new int[]{26});
        this.endingTokens.put(ImportDeclaration.class, new int[]{26});
        this.endingTokens.put(Initializer.class, new int[]{33});
        this.endingTokens.put(MethodDeclaration.class, new int[]{-1, 26});
        this.endingTokens.put(MethodInvocation.class, new int[]{25});
        this.endingTokens.put(ModuleDeclaration.class, new int[]{33});
        this.endingTokens.put(ModuleDirective.class, new int[]{26});
        this.endingTokens.put(NullLiteral.class, new int[]{39});
        this.endingTokens.put(NumberLiteral.class, new int[]{41, 42, 43, 44});
        this.endingTokens.put(PackageDeclaration.class, new int[]{26});
        this.endingTokens.put(ParenthesizedExpression.class, new int[]{25});
        this.endingTokens.put(PostfixExpression.class, new int[]{2, 3});
        this.endingTokens.put(PrimitiveType.class, new int[]{100, 109, 103, 107, 108, 105, 99, 104, 110});
        this.endingTokens.put(ReturnStatement.class, new int[]{26});
        this.endingTokens.put(SimpleName.class, new int[]{22});
        this.endingTokens.put(SingleVariableDeclaration.class, new int[]{26});
        this.endingTokens.put(StringLiteral.class, new int[]{46});
        this.endingTokens.put(SuperConstructorInvocation.class, new int[]{26});
        this.endingTokens.put(SuperMethodInvocation.class, new int[]{25});
        this.endingTokens.put(SwitchCase.class, new int[]{62});
        this.endingTokens.put(SwitchStatement.class, new int[]{33});
        this.endingTokens.put(SynchronizedStatement.class, new int[]{33});
        this.endingTokens.put(ThisExpression.class, new int[]{35});
        this.endingTokens.put(ThrowStatement.class, new int[]{26});
        this.endingTokens.put(TypeDeclaration.class, new int[]{33});
        this.endingTokens.put(TypeLiteral.class, new int[]{67});
        this.endingTokens.put(VariableDeclarationStatement.class, new int[]{26});
        this.blockDepth = 0;
        this.stack = new Vector();
        this.problems = categorizedProblemArr;
        this.usedOrIrrelevantProblems = new boolean[categorizedProblemArr.length];
        this.data = recoveryScannerData;
        if (recoveryScannerData != null) {
            int i10 = 0;
            for (int i11 = 0; i11 < recoveryScannerData.insertedTokensPtr + 1; i11++) {
                i10 += recoveryScannerData.insertedTokens[i11].length;
            }
            this.insertedTokensKind = new int[i10];
            this.insertedTokensPosition = new int[i10];
            this.insertedTokensFlagged = new boolean[i10];
            int i12 = 0;
            for (int i13 = 0; i13 < recoveryScannerData.insertedTokensPtr + 1; i13++) {
                int i14 = 0;
                while (true) {
                    int[] iArr = recoveryScannerData.insertedTokens[i13];
                    if (i14 >= iArr.length) {
                        break;
                    }
                    this.insertedTokensKind[i12] = iArr[i14];
                    this.insertedTokensPosition[i12] = recoveryScannerData.insertedTokensPosition[i13];
                    i12++;
                    i14++;
                }
            }
            int i15 = recoveryScannerData.removedTokensPtr;
            if (i15 != -1) {
                this.removedTokensFlagged = new boolean[i15 + 1];
            }
            int i16 = recoveryScannerData.replacedTokensPtr;
            if (i16 != -1) {
                this.replacedTokensFlagged = new boolean[i16 + 1];
            }
        }
    }

    private void flagNodeWithInsertedTokens() {
        int[] iArr = this.insertedTokensKind;
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        int size = this.stack.size();
        for (int i10 = size - 1; i10 > -1; i10--) {
            flagNodesWithInsertedTokensAtEnd((ASTNode) this.stack.get(i10));
        }
        for (int i11 = 0; i11 < size; i11++) {
            flagNodesWithInsertedTokensInside((ASTNode) this.stack.get(i11));
        }
        this.stack = new Vector();
    }

    private boolean flagNodesWithInsertedTokensAtEnd(ASTNode aSTNode) {
        int[] iArr = this.endingTokens.get(aSTNode.getClass());
        if (iArr != null) {
            int startPosition = (aSTNode.getStartPosition() + aSTNode.getLength()) - 1;
            int length = this.insertedTokensKind.length - 1;
            boolean z10 = false;
            loop0: while (true) {
                if (length <= -1) {
                    break;
                }
                boolean[] zArr = this.insertedTokensFlagged;
                if (!zArr[length] && this.insertedTokensPosition[length] == startPosition) {
                    zArr[length] = true;
                    for (int i10 : iArr) {
                        if (i10 == this.insertedTokensKind[length]) {
                            aSTNode.setFlags(aSTNode.getFlags() | 8);
                            break loop0;
                        }
                    }
                    z10 = true;
                }
                length--;
            }
            if (z10) {
                ASTNode parent = aSTNode.getParent();
                while (parent != null) {
                    parent.setFlags(aSTNode.getFlags() | 8);
                    parent = (parent.getStartPosition() + parent.getLength()) - 1 != startPosition ? null : parent.getParent();
                }
            }
        }
        return true;
    }

    private boolean flagNodesWithInsertedTokensInside(ASTNode aSTNode) {
        int i10;
        int startPosition = aSTNode.getStartPosition();
        int length = (aSTNode.getLength() + startPosition) - 1;
        for (int i11 = 0; i11 < this.insertedTokensKind.length; i11++) {
            if (!this.insertedTokensFlagged[i11] && startPosition <= (i10 = this.insertedTokensPosition[i11]) && i10 < length) {
                aSTNode.setFlags(aSTNode.getFlags() | 8);
                this.insertedTokensFlagged[i11] = true;
            }
        }
        return true;
    }

    private boolean markIncludedProblems(int i10, int i11) {
        int length = this.problems.length;
        boolean z10 = false;
        for (int i12 = 0; i12 < length; i12++) {
            CategorizedProblem categorizedProblem = this.problems[i12];
            if (!this.usedOrIrrelevantProblems[i12]) {
                int id2 = categorizedProblem.getID();
                if (id2 != 1610612998) {
                    switch (id2) {
                        case IProblem.ParsingError:
                        case IProblem.ParsingErrorNoSuggestion:
                            break;
                        default:
                            switch (id2) {
                                case IProblem.ParsingErrorOnKeyword:
                                case IProblem.ParsingErrorOnKeywordNoSuggestion:
                                    break;
                                default:
                                    switch (id2) {
                                        case IProblem.ParsingErrorInsertTokenBefore:
                                        case IProblem.ParsingErrorInsertTokenAfter:
                                        case IProblem.ParsingErrorDeleteToken:
                                        case IProblem.ParsingErrorDeleteTokens:
                                        case IProblem.ParsingErrorMergeTokens:
                                        case IProblem.ParsingErrorInvalidToken:
                                        case IProblem.ParsingErrorMisplacedConstruct:
                                        case IProblem.ParsingErrorReplaceTokens:
                                        case IProblem.ParsingErrorNoSuggestionForTokens:
                                        case IProblem.ParsingErrorUnexpectedEOF:
                                        case IProblem.ParsingErrorInsertToComplete:
                                        case IProblem.ParsingErrorInsertToCompleteScope:
                                        case IProblem.ParsingErrorInsertToCompletePhrase:
                                            break;
                                        default:
                                            switch (id2) {
                                                case IProblem.EndOfSource:
                                                case IProblem.InvalidHexa:
                                                case IProblem.InvalidOctal:
                                                case IProblem.InvalidCharacterConstant:
                                                case IProblem.InvalidEscape:
                                                case IProblem.InvalidInput:
                                                case IProblem.InvalidUnicodeEscape:
                                                case IProblem.InvalidFloat:
                                                case IProblem.NullSourceString:
                                                case IProblem.UnterminatedString:
                                                case IProblem.UnterminatedComment:
                                                    break;
                                                default:
                                                    this.usedOrIrrelevantProblems[i12] = true;
                                                    continue;
                                            }
                                    }
                            }
                    }
                }
                int sourceStart = categorizedProblem.getSourceStart();
                int sourceEnd = categorizedProblem.getSourceEnd();
                if ((i10 <= sourceStart && sourceStart <= i11) || (i10 <= sourceEnd && sourceEnd <= i11)) {
                    this.usedOrIrrelevantProblems[i12] = true;
                    z10 = true;
                }
            }
        }
        return z10;
    }

    @Override
    public void endVisit(Block block) {
        int i10 = this.blockDepth - 1;
        this.blockDepth = i10;
        if (i10 <= 0) {
            flagNodeWithInsertedTokens();
        }
        super.endVisit(block);
    }

    @Override
    public void endVisitNode(ASTNode aSTNode) {
        int startPosition = aSTNode.getStartPosition();
        int length = (aSTNode.getLength() + startPosition) - 1;
        if (this.blockDepth < 1) {
            switch (aSTNode.getNodeType()) {
                case 8:
                case 15:
                case 23:
                case 26:
                case 28:
                case 31:
                case 35:
                case 55:
                case 71:
                case 77:
                case 78:
                case 79:
                case 81:
                case 93:
                    if (markIncludedProblems(startPosition, length)) {
                        aSTNode.setFlags(aSTNode.getFlags() | 8);
                        break;
                    }
                    break;
            }
        } else {
            markIncludedProblems(startPosition, length);
            if (this.insertedTokensFlagged != null) {
                if (this.lastEnd != length) {
                    flagNodeWithInsertedTokens();
                }
                this.stack.add(aSTNode);
            }
            int i10 = 0;
            if (this.removedTokensFlagged != null) {
                int i11 = 0;
                while (true) {
                    RecoveryScannerData recoveryScannerData = this.data;
                    if (i11 > recoveryScannerData.removedTokensPtr) {
                        break;
                    }
                    if (!this.removedTokensFlagged[i11] && recoveryScannerData.removedTokensStart[i11] >= startPosition && recoveryScannerData.removedTokensEnd[i11] <= length) {
                        aSTNode.setFlags(aSTNode.getFlags() | 8);
                        this.removedTokensFlagged[i11] = true;
                    }
                    i11++;
                }
            }
            if (this.replacedTokensFlagged != null) {
                while (true) {
                    RecoveryScannerData recoveryScannerData2 = this.data;
                    if (i10 > recoveryScannerData2.replacedTokensPtr) {
                        break;
                    }
                    if (!this.replacedTokensFlagged[i10] && recoveryScannerData2.replacedTokensStart[i10] >= startPosition && recoveryScannerData2.replacedTokensEnd[i10] <= length) {
                        aSTNode.setFlags(aSTNode.getFlags() | 8);
                        this.replacedTokensFlagged[i10] = true;
                    }
                    i10++;
                }
            }
        }
        this.lastEnd = length;
    }

    @Override
    public boolean visit(Block block) {
        boolean visit = super.visit(block);
        this.blockDepth++;
        return visit;
    }

    @Override
    public boolean visitNode(ASTNode aSTNode) {
        if (this.blockDepth <= 0) {
            return true;
        }
        int startPosition = aSTNode.getStartPosition();
        int length = (aSTNode.getLength() + startPosition) - 1;
        if (this.insertedTokensFlagged != null) {
            for (int i10 = 0; i10 < this.insertedTokensFlagged.length; i10++) {
                int i11 = this.insertedTokensPosition[i10];
                if (i11 >= startPosition && i11 <= length) {
                    return true;
                }
            }
        }
        if (this.removedTokensFlagged != null) {
            int i12 = 0;
            while (true) {
                RecoveryScannerData recoveryScannerData = this.data;
                if (i12 > recoveryScannerData.removedTokensPtr) {
                    break;
                }
                if (recoveryScannerData.removedTokensStart[i12] >= startPosition && recoveryScannerData.removedTokensEnd[i12] <= length) {
                    return true;
                }
                i12++;
            }
        }
        if (this.replacedTokensFlagged != null) {
            int i13 = 0;
            while (true) {
                RecoveryScannerData recoveryScannerData2 = this.data;
                if (i13 > recoveryScannerData2.replacedTokensPtr) {
                    break;
                }
                if (recoveryScannerData2.replacedTokensStart[i13] >= startPosition && recoveryScannerData2.replacedTokensEnd[i13] <= length) {
                    return true;
                }
                i13++;
            }
        }
        return false;
    }

    @Override
    public void endVisit(ExpressionStatement expressionStatement) {
        endVisitNode(expressionStatement);
        if ((expressionStatement.getFlags() & 8) == 0) {
            return;
        }
        Expression expression = expressionStatement.getExpression();
        if (expression.getNodeType() == 7) {
            Assignment assignment = (Assignment) expression;
            Expression rightHandSide = assignment.getRightHandSide();
            if (rightHandSide.getNodeType() == 42 && CharOperation.equals(RecoveryScanner.FAKE_IDENTIFIER, ((SimpleName) rightHandSide).getIdentifier().toCharArray())) {
                Expression leftHandSide = assignment.getLeftHandSide();
                leftHandSide.setParent(null, null);
                leftHandSide.setFlags(leftHandSide.getFlags() | 8);
                expressionStatement.setExpression(leftHandSide);
            }
        }
    }

    @Override
    public void endVisit(ForStatement forStatement) {
        endVisitNode(forStatement);
        List initializers = forStatement.initializers();
        if (initializers.size() == 1) {
            Expression expression = (Expression) initializers.get(0);
            if (expression.getNodeType() == 58) {
                VariableDeclarationExpression variableDeclarationExpression = (VariableDeclarationExpression) expression;
                List fragments = variableDeclarationExpression.fragments();
                int size = fragments.size();
                for (int i10 = 0; i10 < size; i10++) {
                    VariableDeclarationFragment variableDeclarationFragment = (VariableDeclarationFragment) fragments.get(i10);
                    if (CharOperation.equals(RecoveryScanner.FAKE_IDENTIFIER, variableDeclarationFragment.getName().getIdentifier().toCharArray())) {
                        fragments.remove(variableDeclarationFragment);
                        variableDeclarationExpression.setFlags(variableDeclarationExpression.getFlags() | 8);
                    }
                }
            }
        }
    }

    @Override
    public void endVisit(VariableDeclarationStatement variableDeclarationStatement) {
        endVisitNode(variableDeclarationStatement);
        List fragments = variableDeclarationStatement.fragments();
        int size = fragments.size();
        for (int i10 = 0; i10 < size; i10++) {
            VariableDeclarationFragment variableDeclarationFragment = (VariableDeclarationFragment) fragments.get(i10);
            Expression initializer = variableDeclarationFragment.getInitializer();
            if (initializer != null && (initializer.getFlags() & 8) != 0 && initializer.getNodeType() == 42 && CharOperation.equals(RecoveryScanner.FAKE_IDENTIFIER, ((SimpleName) initializer).getIdentifier().toCharArray())) {
                variableDeclarationFragment.setInitializer(null);
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 8);
            }
        }
    }

    @Override
    public void endVisit(NormalAnnotation normalAnnotation) {
        List values;
        int size;
        endVisitNode(normalAnnotation);
        if (this.blockDepth >= 1 || (size = (values = normalAnnotation.values()).size()) <= 0) {
            return;
        }
        MemberValuePair memberValuePair = (MemberValuePair) values.get(size - 1);
        if (normalAnnotation.getStartPosition() + normalAnnotation.getLength() == memberValuePair.getStartPosition() + memberValuePair.getLength()) {
            normalAnnotation.setFlags(normalAnnotation.getFlags() | 8);
        }
    }

    @Override
    public void endVisit(SingleMemberAnnotation singleMemberAnnotation) {
        endVisitNode(singleMemberAnnotation);
        if (this.blockDepth < 1) {
            Expression value = singleMemberAnnotation.getValue();
            if (singleMemberAnnotation.getStartPosition() + singleMemberAnnotation.getLength() == value.getStartPosition() + value.getLength()) {
                singleMemberAnnotation.setFlags(singleMemberAnnotation.getFlags() | 8);
            }
        }
    }
}
