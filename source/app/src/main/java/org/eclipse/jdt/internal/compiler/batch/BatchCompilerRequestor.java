package org.eclipse.jdt.internal.compiler.batch;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;

public class BatchCompilerRequestor implements ICompilerRequestor {
    private Main compiler;
    private int lineDelta = 0;

    public BatchCompilerRequestor(Main main) {
        this.compiler = main;
    }

    @Override
    public void acceptResult(CompilationResult compilationResult) {
        int[] iArr = compilationResult.lineSeparatorPositions;
        if (iArr != null) {
            int length = this.lineDelta + iArr.length;
            this.lineDelta = length;
            Main main = this.compiler;
            if (main.showProgress && length > 2000) {
                main.logger.logProgress();
                this.lineDelta = 0;
            }
        }
        this.compiler.logger.startLoggingSource(compilationResult);
        if (compilationResult.hasProblems() || compilationResult.hasTasks()) {
            this.compiler.logger.logProblems(compilationResult.getAllProblems(), compilationResult.compilationUnit.getContents(), this.compiler);
            reportProblems(compilationResult);
        }
        this.compiler.outputClassFiles(compilationResult);
        this.compiler.logger.endLoggingSource();
    }

    public void reportProblems(CompilationResult compilationResult) {
    }
}
