package org.eclipse.jdt.core;

import java.io.PrintStream;
import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public class JavaModelException extends CoreException {
    private static final long serialVersionUID = -760398656505871287L;
    CoreException nestedCoreException;

    public JavaModelException(Throwable th2, int i10) {
        this((IJavaModelStatus) new JavaModelStatus(i10, th2));
    }

    public Throwable getException() {
        CoreException coreException = this.nestedCoreException;
        return coreException == null ? getStatus().getException() : coreException;
    }

    public IJavaModelStatus getJavaModelStatus() {
        IStatus status = getStatus();
        return status instanceof IJavaModelStatus ? (IJavaModelStatus) status : new JavaModelStatus(this.nestedCoreException);
    }

    public boolean isDoesNotExist() {
        IJavaModelStatus javaModelStatus = getJavaModelStatus();
        return javaModelStatus != null && javaModelStatus.isDoesNotExist();
    }

    public void printStackTrace(PrintStream printStream) {
        synchronized (printStream) {
            try {
                super.printStackTrace(printStream);
                Throwable exception = getException();
                if (exception != null) {
                    printStream.print("Caused by: ");
                    exception.printStackTrace(printStream);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Java Model Exception: ");
        if (getException() != null) {
            getException();
            stringBuffer.append(getException().toString());
        } else {
            stringBuffer.append(getStatus().toString());
        }
        return stringBuffer.toString();
    }

    public JavaModelException(CoreException coreException) {
        super(coreException.getStatus());
        this.nestedCoreException = coreException;
    }

    public JavaModelException(IJavaModelStatus iJavaModelStatus) {
        super(iJavaModelStatus);
    }

    public JavaModelException(IStatus iStatus) {
        super(iStatus);
    }

    public void printStackTrace(PrintWriter printWriter) {
        synchronized (printWriter) {
            try {
                super.printStackTrace(printWriter);
                Throwable exception = getException();
                if (exception != null) {
                    printWriter.print("Caused by: ");
                    exception.printStackTrace(printWriter);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
