package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;

public interface ReferenceContext {
    void abort(int i10, CategorizedProblem categorizedProblem);

    CompilationResult compilationResult();

    CompilationUnitDeclaration getCompilationUnitDeclaration();

    boolean hasErrors();

    void tagAsHavingErrors();

    void tagAsHavingIgnoredMandatoryErrors(int i10);
}
