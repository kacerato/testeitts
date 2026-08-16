package org.eclipse.jdt.internal.core.util;

import java.util.Locale;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class CodeSnippetParsingUtil {
    public boolean ignoreMethodBodies;
    public RecordedParsingInformation recordedParsingInformation;

    public CodeSnippetParsingUtil(boolean z10) {
        this.ignoreMethodBodies = z10;
    }

    private RecordedParsingInformation getRecordedParsingInformation(CompilationResult compilationResult, int[][] iArr) {
        CategorizedProblem[] categorizedProblemArr;
        int i10 = compilationResult.problemCount;
        if (i10 != 0) {
            categorizedProblemArr = compilationResult.problems;
            if (categorizedProblemArr.length != i10) {
                CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[i10];
                System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, i10);
                categorizedProblemArr = categorizedProblemArr2;
            }
        } else {
            categorizedProblemArr = null;
        }
        return new RecordedParsingInformation(categorizedProblemArr, compilationResult.getLineSeparatorPositions(), iArr);
    }

    public ASTNode[] parseClassBodyDeclarations(char[] cArr, Map<String, String> map, boolean z10) {
        return parseClassBodyDeclarations(cArr, 0, cArr.length, map, z10, false);
    }

    public CompilationUnitDeclaration parseCompilationUnit(char[] cArr, Map<String, String> map, boolean z10) {
        if (cArr == null) {
            throw new IllegalArgumentException();
        }
        CompilerOptions compilerOptions = new CompilerOptions(map);
        compilerOptions.ignoreMethodBodies = this.ignoreMethodBodies;
        CommentRecorderParser commentRecorderParser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault())), false);
        CompilationUnit compilationUnit = new CompilationUnit(cArr, "", compilerOptions.defaultEncoding);
        CompilationResult compilationResult = new CompilationResult(compilationUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration dietParse = commentRecorderParser.dietParse(compilationUnit, compilationResult);
        if (z10) {
            this.recordedParsingInformation = getRecordedParsingInformation(compilationResult, dietParse.comments);
        }
        if (dietParse.ignoreMethodBodies) {
            dietParse.ignoreFurtherInvestigation = true;
            return dietParse;
        }
        commentRecorderParser.scanner.setSource(compilationResult);
        TypeDeclaration[] typeDeclarationArr = dietParse.types;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration : typeDeclarationArr) {
                typeDeclaration.parseMethods(commentRecorderParser, dietParse);
            }
        }
        if (z10) {
            this.recordedParsingInformation.updateRecordedParsingInformation(compilationResult);
        }
        return dietParse;
    }

    public Expression parseExpression(char[] cArr, Map<String, String> map, boolean z10) {
        return parseExpression(cArr, 0, cArr.length, map, z10);
    }

    public ConstructorDeclaration parseStatements(char[] cArr, Map<String, String> map, boolean z10, boolean z11) {
        return parseStatements(cArr, 0, cArr.length, map, z10, z11);
    }

    public ASTNode[] parseClassBodyDeclarations(char[] cArr, int i10, int i11, Map<String, String> map, boolean z10, boolean z11) {
        if (cArr != null) {
            CompilerOptions compilerOptions = new CompilerOptions(map);
            compilerOptions.ignoreMethodBodies = this.ignoreMethodBodies;
            ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault()));
            CommentRecorderParser commentRecorderParser = new CommentRecorderParser(problemReporter, false);
            commentRecorderParser.setMethodsFullRecovery(false);
            commentRecorderParser.setStatementsRecovery(z11);
            CompilationResult compilationResult = new CompilationResult(new CompilationUnit(cArr, "", compilerOptions.defaultEncoding), 0, 0, compilerOptions.maxProblemsPerUnit);
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter, compilationResult, cArr.length);
            ASTNode[] parseClassBodyDeclarations = commentRecorderParser.parseClassBodyDeclarations(cArr, i10, i11, compilationUnitDeclaration);
            if (z10) {
                this.recordedParsingInformation = getRecordedParsingInformation(compilationResult, compilationUnitDeclaration.comments);
            }
            return parseClassBodyDeclarations;
        }
        throw new IllegalArgumentException();
    }

    public Expression parseExpression(char[] cArr, int i10, int i11, Map<String, String> map, boolean z10) {
        if (cArr != null) {
            CompilerOptions compilerOptions = new CompilerOptions(map);
            ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault()));
            CommentRecorderParser commentRecorderParser = new CommentRecorderParser(problemReporter, false);
            CompilationResult compilationResult = new CompilationResult(new CompilationUnit(cArr, "", compilerOptions.defaultEncoding), 0, 0, compilerOptions.maxProblemsPerUnit);
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter, compilationResult, cArr.length);
            Expression parseExpression = commentRecorderParser.parseExpression(cArr, i10, i11, compilationUnitDeclaration, true);
            if (z10) {
                this.recordedParsingInformation = getRecordedParsingInformation(compilationResult, compilationUnitDeclaration.comments);
            }
            return parseExpression;
        }
        throw new IllegalArgumentException();
    }

    public ConstructorDeclaration parseStatements(char[] cArr, int i10, int i11, Map<String, String> map, boolean z10, boolean z11) {
        if (cArr != null) {
            CompilerOptions compilerOptions = new CompilerOptions(map);
            ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault()));
            CommentRecorderParser commentRecorderParser = new CommentRecorderParser(problemReporter, false);
            commentRecorderParser.setMethodsFullRecovery(false);
            commentRecorderParser.setStatementsRecovery(z11);
            CompilationResult compilationResult = new CompilationResult(new CompilationUnit(cArr, "", compilerOptions.defaultEncoding), 0, 0, compilerOptions.maxProblemsPerUnit);
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter, compilationResult, i11);
            ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(compilationResult);
            constructorDeclaration.sourceEnd = -1;
            int i12 = i11 + i10;
            int i13 = i12 - 1;
            constructorDeclaration.declarationSourceEnd = i13;
            constructorDeclaration.bodyStart = i10;
            constructorDeclaration.bodyEnd = i13;
            commentRecorderParser.scanner.setSource(compilationResult);
            commentRecorderParser.scanner.resetTo(i10, i12);
            commentRecorderParser.parse(constructorDeclaration, compilationUnitDeclaration, true);
            if (z10) {
                this.recordedParsingInformation = getRecordedParsingInformation(compilationResult, compilationUnitDeclaration.comments);
            }
            return constructorDeclaration;
        }
        throw new IllegalArgumentException();
    }

    public CodeSnippetParsingUtil() {
        this(false);
    }
}
