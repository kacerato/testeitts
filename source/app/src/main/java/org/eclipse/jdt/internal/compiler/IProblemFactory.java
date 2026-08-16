package org.eclipse.jdt.internal.compiler;

import java.util.Locale;
import org.eclipse.jdt.core.compiler.CategorizedProblem;

public interface IProblemFactory {
    CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14, int i15, int i16);

    CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13, int i14, int i15);

    Locale getLocale();

    String getLocalizedMessage(int i10, int i11, String[] strArr);

    String getLocalizedMessage(int i10, String[] strArr);
}
