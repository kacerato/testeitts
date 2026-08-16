package org.eclipse.jdt.core.compiler;

public abstract class CompilationProgress {
    public abstract void begin(int i10);

    public abstract void done();

    public abstract boolean isCanceled();

    public abstract void setTaskName(String str);

    public abstract void worked(int i10, int i11);
}
