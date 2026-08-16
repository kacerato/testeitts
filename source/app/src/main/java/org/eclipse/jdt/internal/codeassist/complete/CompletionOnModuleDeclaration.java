package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;

public class CompletionOnModuleDeclaration extends ModuleDeclaration {
    public CompletionOnModuleDeclaration(CompilationResult compilationResult, char[][] cArr, long[] jArr) {
        super(compilationResult, cArr, jArr);
    }
}
