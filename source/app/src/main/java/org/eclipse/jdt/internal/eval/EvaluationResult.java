package org.eclipse.jdt.internal.eval;

import android.provider.MediaStore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;

public class EvaluationResult {
    static final CategorizedProblem[] NO_PROBLEMS = new CategorizedProblem[0];
    public static final int T_CODE_SNIPPET = 2;
    public static final int T_IMPORT = 3;
    public static final int T_INTERNAL = 5;
    public static final int T_PACKAGE = 4;
    public static final int T_VARIABLE = 1;
    char[] displayString;
    char[] evaluationID;
    int evaluationType;
    CategorizedProblem[] problems;
    char[] typeName;

    public EvaluationResult(char[] cArr, int i10, char[] cArr2, char[] cArr3) {
        this.evaluationID = cArr;
        this.evaluationType = i10;
        this.displayString = cArr2;
        this.typeName = cArr3;
        this.problems = NO_PROBLEMS;
    }

    public void addProblem(CategorizedProblem categorizedProblem) {
        CategorizedProblem[] categorizedProblemArr = this.problems;
        int length = categorizedProblemArr.length;
        CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[length + 1];
        this.problems = categorizedProblemArr2;
        System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr2, 0, length);
        this.problems[length] = categorizedProblem;
    }

    public char[] getEvaluationID() {
        return this.evaluationID;
    }

    public int getEvaluationType() {
        return this.evaluationType;
    }

    public CategorizedProblem[] getProblems() {
        return this.problems;
    }

    public Object getValue() {
        return null;
    }

    public char[] getValueDisplayString() {
        return this.displayString;
    }

    public char[] getValueTypeName() {
        return this.typeName;
    }

    public boolean hasErrors() {
        if (this.problems == null) {
            return false;
        }
        int i10 = 0;
        while (true) {
            CategorizedProblem[] categorizedProblemArr = this.problems;
            if (i10 >= categorizedProblemArr.length) {
                return false;
            }
            if (categorizedProblemArr[i10].isError()) {
                return true;
            }
            i10++;
        }
    }

    public boolean hasProblems() {
        CategorizedProblem[] categorizedProblemArr = this.problems;
        return (categorizedProblemArr == null || categorizedProblemArr.length == 0) ? false : true;
    }

    public boolean hasValue() {
        return this.displayString != null;
    }

    public boolean hasWarnings() {
        if (this.problems == null) {
            return false;
        }
        int i10 = 0;
        while (true) {
            CategorizedProblem[] categorizedProblemArr = this.problems;
            if (i10 >= categorizedProblemArr.length) {
                return false;
            }
            if (categorizedProblemArr[i10].isWarning()) {
                return true;
            }
            i10++;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = this.evaluationType;
        if (i10 == 1) {
            stringBuffer.append("Global variable");
        } else if (i10 == 2) {
            stringBuffer.append("Code snippet");
        } else if (i10 == 3) {
            stringBuffer.append("Import");
        } else if (i10 == 4) {
            stringBuffer.append("Package");
        } else if (i10 == 5) {
            stringBuffer.append("Internal problem");
        }
        stringBuffer.append(": ");
        char[] cArr = this.evaluationID;
        if (cArr == null) {
            cArr = MediaStore.UNKNOWN_STRING.toCharArray();
        }
        stringBuffer.append(cArr);
        stringBuffer.append("\n");
        if (hasProblems()) {
            stringBuffer.append("Problems:\n");
            int i11 = 0;
            while (true) {
                CategorizedProblem[] categorizedProblemArr = this.problems;
                if (i11 >= categorizedProblemArr.length) {
                    break;
                }
                stringBuffer.append(categorizedProblemArr[i11].toString());
                i11++;
            }
        } else if (hasValue()) {
            stringBuffer.append("(");
            stringBuffer.append(this.typeName);
            stringBuffer.append(") ");
            stringBuffer.append(this.displayString);
        } else {
            stringBuffer.append("(No explicit return value)");
        }
        return stringBuffer.toString();
    }

    public EvaluationResult(char[] cArr, int i10, CategorizedProblem[] categorizedProblemArr) {
        this.evaluationID = cArr;
        this.evaluationType = i10;
        this.problems = categorizedProblemArr;
    }
}
