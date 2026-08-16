package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;

public interface IRequestor {
    boolean acceptClassFiles(ClassFile[] classFileArr, char[] cArr);

    void acceptProblem(CategorizedProblem categorizedProblem, char[] cArr, int i10);
}
