package org.eclipse.jdt.internal.core;

public enum CompilationGroup {
    MAIN,
    TEST;

    public static CompilationGroup[] valuesCustom() {
        CompilationGroup[] valuesCustom = values();
        int length = valuesCustom.length;
        CompilationGroup[] compilationGroupArr = new CompilationGroup[length];
        System.arraycopy(valuesCustom, 0, compilationGroupArr, 0, length);
        return compilationGroupArr;
    }
}
