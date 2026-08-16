package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;

public interface ICompilationUnitLocator {
    ICompilationUnit fromIFile(IFile iFile);
}
