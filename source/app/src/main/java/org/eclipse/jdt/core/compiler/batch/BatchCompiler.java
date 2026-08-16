package org.eclipse.jdt.core.compiler.batch;

import java.io.PrintWriter;
import org.eclipse.jdt.core.compiler.CompilationProgress;
import org.eclipse.jdt.internal.compiler.batch.Main;

public final class BatchCompiler {
    private BatchCompiler() {
    }

    public static boolean compile(String str, PrintWriter printWriter, PrintWriter printWriter2, CompilationProgress compilationProgress) {
        return compile(Main.tokenize(str), printWriter, printWriter2, compilationProgress);
    }

    public static boolean compile(String[] strArr, PrintWriter printWriter, PrintWriter printWriter2, CompilationProgress compilationProgress) {
        return Main.compile(strArr, printWriter, printWriter2, compilationProgress);
    }
}
