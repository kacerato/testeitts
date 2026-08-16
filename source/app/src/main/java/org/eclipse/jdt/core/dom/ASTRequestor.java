package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.ICompilationUnit;

public abstract class ASTRequestor {
    CompilationUnitResolver compilationUnitResolver = null;

    public void acceptAST(ICompilationUnit iCompilationUnit, CompilationUnit compilationUnit) {
    }

    public void acceptBinding(String str, IBinding iBinding) {
    }

    public final IBinding[] createBindings(String[] strArr) {
        int length = strArr.length;
        IBinding[] iBindingArr = new IBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            iBindingArr[i10] = null;
            CompilationUnitResolver compilationUnitResolver = this.compilationUnitResolver;
            if (compilationUnitResolver != null) {
                iBindingArr[i10] = compilationUnitResolver.createBinding(strArr[i10]);
            }
        }
        return iBindingArr;
    }
}
