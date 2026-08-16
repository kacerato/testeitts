package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;

public class CodeSnippetCompiler extends Compiler {
    int codeSnippetEnd;
    int codeSnippetStart;
    EvaluationContext evaluationContext;

    public CodeSnippetCompiler(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory, EvaluationContext evaluationContext, int i10, int i11) {
        super(iNameEnvironment, iErrorHandlingPolicy, compilerOptions, iCompilerRequestor, iProblemFactory);
        this.codeSnippetStart = i10;
        this.codeSnippetEnd = i11;
        this.evaluationContext = evaluationContext;
        this.parser = new CodeSnippetParser(this.problemReporter, evaluationContext, this.options.parseLiteralExpressionsAsConstants, i10, i11);
        this.parseThreshold = 1;
    }

    @Override
    public void initializeParser() {
        this.parser = new CodeSnippetParser(this.problemReporter, this.evaluationContext, this.options.parseLiteralExpressionsAsConstants, this.codeSnippetStart, this.codeSnippetEnd);
    }
}
