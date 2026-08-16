package org.eclipse.jdt.internal.compiler;

public interface IErrorHandlingPolicy {
    boolean ignoreAllErrors();

    boolean proceedOnErrors();

    boolean stopOnFirstError();
}
