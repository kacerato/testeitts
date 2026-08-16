package org.eclipse.jdt.internal.compiler.lookup;

public class InferenceFailureException extends Exception {
    private static final long serialVersionUID = 1;

    public InferenceFailureException(String str) {
        super(str);
    }
}
