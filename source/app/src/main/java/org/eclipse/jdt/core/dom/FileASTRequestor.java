package org.eclipse.jdt.core.dom;

public abstract class FileASTRequestor {
    CompilationUnitResolver compilationUnitResolver = null;

    public void acceptAST(String str, CompilationUnit compilationUnit) {
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
