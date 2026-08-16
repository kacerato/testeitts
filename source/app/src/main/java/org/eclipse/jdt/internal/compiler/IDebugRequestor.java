package org.eclipse.jdt.internal.compiler;

public interface IDebugRequestor {
    void acceptDebugResult(CompilationResult compilationResult);

    void activate();

    void deactivate();

    boolean isActive();

    void reset();
}
