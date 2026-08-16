package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.IProblem;

public class ASTSyntaxErrorPropagator extends ASTVisitor {
    private CategorizedProblem[] problems;

    public ASTSyntaxErrorPropagator(CategorizedProblem[] categorizedProblemArr) {
        super(true);
        this.problems = categorizedProblemArr;
    }

    private boolean checkAndTagAsMalformed(ASTNode aSTNode) {
        int length = this.problems.length;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            CategorizedProblem categorizedProblem = this.problems[i10];
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
                                                continue;
                                        }
                                }
                        }
                }
            }
            int sourceStart = categorizedProblem.getSourceStart();
            int startPosition = aSTNode.getStartPosition();
            int length2 = aSTNode.getLength() + startPosition;
            if (startPosition <= sourceStart && sourceStart <= length2) {
                aSTNode.setFlags(aSTNode.getFlags() | 1);
                for (ASTNode parent = aSTNode.getParent(); parent != null; parent = parent.getParent()) {
                    parent.setFlags(parent.getFlags() & (-2));
                }
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        return checkAndTagAsMalformed(fieldDeclaration);
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        return checkAndTagAsMalformed(methodDeclaration);
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        return checkAndTagAsMalformed(moduleDeclaration);
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        return checkAndTagAsMalformed(packageDeclaration);
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        return checkAndTagAsMalformed(importDeclaration);
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        return checkAndTagAsMalformed(compilationUnit);
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        return checkAndTagAsMalformed(annotationTypeDeclaration);
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        return checkAndTagAsMalformed(enumDeclaration);
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        return checkAndTagAsMalformed(typeDeclaration);
    }

    @Override
    public boolean visit(Initializer initializer) {
        return checkAndTagAsMalformed(initializer);
    }
}
