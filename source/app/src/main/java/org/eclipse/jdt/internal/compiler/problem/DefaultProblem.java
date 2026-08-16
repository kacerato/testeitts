package org.eclipse.jdt.internal.compiler.problem;

import j3.C13804a;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;
import w2.C15883c;

public class DefaultProblem extends CategorizedProblem {
    public static final Object[] EMPTY_VALUES = new Object[0];
    private static final String MARKER_TYPE_PROBLEM = "org.eclipse.jdt.core.problem";
    private static final String MARKER_TYPE_TASK = "org.eclipse.jdt.core.task";
    private String[] arguments;
    public int column;
    private int endPosition;
    private char[] fileName;

    private int f102507id;
    private int line;
    private String message;
    public int severity;
    private int startPosition;

    public DefaultProblem(char[] cArr, String str, int i10, String[] strArr, int i11, int i12, int i13, int i14, int i15) {
        this.fileName = cArr;
        this.message = str;
        this.f102507id = i10;
        this.arguments = strArr;
        this.severity = i11;
        this.startPosition = i12;
        this.endPosition = i13;
        this.line = i14;
        this.column = i15;
    }

    public String errorReportSource(char[] cArr) {
        int i10;
        char c10;
        char c11;
        int i11 = this.startPosition;
        int i12 = this.endPosition;
        if (i11 > i12 || ((i11 < 0 && i12 < 0) || cArr.length == 0)) {
            return Messages.problem_noSourceInformation;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(Messages.bind(Messages.problem_atLine, String.valueOf(this.line)));
        stringBuffer.append(Util.LINE_SEPARATOR);
        stringBuffer.append('\t');
        int length = cArr.length;
        int i13 = this.startPosition;
        if (i13 >= length) {
            i13 = length - 1;
        }
        while (i13 > 0 && (c11 = cArr[i13 - 1]) != '\n' && c11 != '\r') {
            i13--;
        }
        int i14 = this.endPosition;
        if (i14 >= length) {
            i14 = length - 1;
        }
        while (true) {
            int i15 = i14 + 1;
            if (i15 < length && (c10 = cArr[i15]) != '\r' && c10 != '\n') {
                i14 = i15;
            }
        }
        while (true) {
            char c12 = cArr[i13];
            if (c12 != ' ' && c12 != '\t') {
                break;
            }
            i13++;
        }
        stringBuffer.append(cArr, i13, (i14 - i13) + 1);
        stringBuffer.append(Util.LINE_SEPARATOR);
        stringBuffer.append("\t");
        while (true) {
            i10 = this.startPosition;
            if (i13 >= i10) {
                break;
            }
            stringBuffer.append(cArr[i13] == '\t' ? '\t' : ' ');
            i13++;
        }
        while (true) {
            int i16 = this.endPosition;
            if (i16 >= length) {
                i16 = length - 1;
            }
            if (i10 > i16) {
                return stringBuffer.toString();
            }
            stringBuffer.append('^');
            i10++;
        }
    }

    @Override
    public String[] getArguments() {
        return this.arguments;
    }

    @Override
    public int getCategoryID() {
        return ProblemReporter.getProblemCategory(this.severity, this.f102507id);
    }

    @Override
    public int getID() {
        return this.f102507id;
    }

    public String getInternalCategoryMessage() {
        switch (getCategoryID()) {
            case 0:
                return C13804a.f92557d;
            case 10:
                return "buildpath";
            case 20:
                return "syntax";
            case 30:
                return "import";
            case 40:
                return "type";
            case 50:
                return "member";
            case 60:
                return "internal";
            case 70:
                return "javadoc";
            case 80:
                return "code style";
            case 90:
                return "potential programming problem";
            case 100:
                return "name shadowing conflict";
            case 110:
                return "deprecation";
            case 120:
                return "unnecessary code";
            case 130:
                return "unchecked/raw";
            case 140:
                return "nls";
            case 150:
                return "restriction";
            case 160:
                return IClasspathAttribute.MODULE;
            default:
                return null;
        }
    }

    @Override
    public String getMarkerType() {
        return this.f102507id == 536871362 ? "org.eclipse.jdt.core.task" : "org.eclipse.jdt.core.problem";
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public char[] getOriginatingFileName() {
        return this.fileName;
    }

    public int getSourceColumnNumber() {
        return this.column;
    }

    @Override
    public int getSourceEnd() {
        return this.endPosition;
    }

    @Override
    public int getSourceLineNumber() {
        return this.line;
    }

    @Override
    public int getSourceStart() {
        return this.startPosition;
    }

    @Override
    public boolean isError() {
        return (this.severity & 1) != 0;
    }

    @Override
    public boolean isInfo() {
        return (this.severity & 1024) != 0;
    }

    @Override
    public boolean isWarning() {
        int i10 = this.severity;
        return (i10 & 1) == 0 && (i10 & 1024) == 0;
    }

    public void reportError() {
    }

    public void setOriginatingFileName(char[] cArr) {
        this.fileName = cArr;
    }

    @Override
    public void setSourceEnd(int i10) {
        this.endPosition = i10;
    }

    @Override
    public void setSourceLineNumber(int i10) {
        this.line = i10;
    }

    @Override
    public void setSourceStart(int i10) {
        this.startPosition = i10;
    }

    public String toString() {
        String str = "Pb(" + (this.f102507id & 4194303) + ") ";
        if (this.message != null) {
            return String.valueOf(str) + this.message;
        }
        if (this.arguments == null) {
            return str;
        }
        for (int i10 = 0; i10 < this.arguments.length; i10++) {
            str = String.valueOf(str) + " " + this.arguments[i10];
        }
        return str;
    }
}
