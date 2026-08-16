package org.eclipse.jdt.core;

public interface ISourceReference {
    boolean exists();

    ISourceRange getNameRange() throws JavaModelException;

    String getSource() throws JavaModelException;

    ISourceRange getSourceRange() throws JavaModelException;
}
