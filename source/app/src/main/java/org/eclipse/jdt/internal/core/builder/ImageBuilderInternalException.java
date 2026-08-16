package org.eclipse.jdt.internal.core.builder;

import java.io.PrintStream;
import org.eclipse.core.runtime.CoreException;

public class ImageBuilderInternalException extends RuntimeException {
    private static final long serialVersionUID = 28252254530437336L;
    protected CoreException coreException;

    public ImageBuilderInternalException(CoreException coreException) {
        this.coreException = coreException;
    }

    public CoreException getThrowable() {
        return this.coreException;
    }

    @Override
    public void printStackTrace() {
        if (this.coreException == null) {
            super.printStackTrace();
            return;
        }
        PrintStream printStream = System.err;
        printStream.println(this);
        printStream.println("Stack trace of embedded core exception:");
        this.coreException.printStackTrace();
    }
}
