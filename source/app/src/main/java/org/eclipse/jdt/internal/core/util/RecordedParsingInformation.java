package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;

public class RecordedParsingInformation {
    public int[][] commentPositions;
    public int[] lineEnds;
    public CategorizedProblem[] problems;
    public int problemsCount;

    public RecordedParsingInformation(CategorizedProblem[] categorizedProblemArr, int[] iArr, int[][] iArr2) {
        this.problems = categorizedProblemArr;
        this.lineEnds = iArr;
        this.commentPositions = iArr2;
        this.problemsCount = categorizedProblemArr != null ? categorizedProblemArr.length : 0;
    }

    public void updateRecordedParsingInformation(CompilationResult compilationResult) {
        CategorizedProblem[] categorizedProblemArr = compilationResult.problems;
        if (categorizedProblemArr != null) {
            this.problems = categorizedProblemArr;
            this.problemsCount = categorizedProblemArr.length;
        }
    }
}
