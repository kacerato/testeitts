package org.openjdk.tools.javac.processing;

public class AnnotationProcessingError extends Error {
    static final long serialVersionUID = 305337707019230790L;

    public AnnotationProcessingError(Throwable th2) {
        super(th2);
    }
}
