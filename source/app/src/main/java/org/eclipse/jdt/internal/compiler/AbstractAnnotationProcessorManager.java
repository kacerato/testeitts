package org.eclipse.jdt.internal.compiler;

import java.io.PrintWriter;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public abstract class AbstractAnnotationProcessorManager {
    public abstract void configure(Object obj, String[] strArr);

    public abstract void configureFromPlatform(Compiler compiler, Object obj, Object obj2, boolean z10);

    public abstract ICompilationUnit[] getDeletedUnits();

    public abstract ReferenceBinding[] getNewClassFiles();

    public abstract ICompilationUnit[] getNewUnits();

    public abstract void processAnnotations(CompilationUnitDeclaration[] compilationUnitDeclarationArr, ReferenceBinding[] referenceBindingArr, boolean z10);

    public abstract void reset();

    public abstract void setErr(PrintWriter printWriter);

    public abstract void setOut(PrintWriter printWriter);

    public abstract void setProcessors(Object[] objArr);
}
