package org.eclipse.jdt.core.util;

import java.util.Comparator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.core.SortElementsOperation;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public final class CompilationUnitSorter {
    public static final String RELATIVE_ORDER = "relativeOrder";

    private CompilationUnitSorter() {
    }

    private static void checkASTLevel(int i10) {
        if (i10 == 2 || i10 == 3 || i10 == 4) {
            return;
        }
        switch (i10) {
            case 8:
            case 9:
            case 10:
                return;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static void sort(ICompilationUnit iCompilationUnit, int[] iArr, Comparator comparator, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        sort(2, iCompilationUnit, iArr, comparator, i10, iProgressMonitor);
    }

    public static void sort(int i10, ICompilationUnit iCompilationUnit, int[] iArr, Comparator comparator, int i11, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iCompilationUnit != null && comparator != null) {
            checkASTLevel(i10);
            new SortElementsOperation(i10, new ICompilationUnit[]{iCompilationUnit}, iArr, comparator).runOperation(iProgressMonitor);
            return;
        }
        throw new IllegalArgumentException();
    }

    public static TextEdit sort(CompilationUnit compilationUnit, Comparator comparator, int i10, TextEditGroup textEditGroup, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (compilationUnit != null && comparator != null) {
            return new SortElementsOperation(compilationUnit.getAST().apiLevel(), new IJavaElement[]{compilationUnit.getJavaElement()}, null, comparator).calculateEdit(compilationUnit, textEditGroup);
        }
        throw new IllegalArgumentException();
    }
}
