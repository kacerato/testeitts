package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.core.compiler.CharOperation;

public class AccessRule {
    public static final int IgnoreIfBetter = 33554432;
    public char[] pattern;
    public int problemId;

    public AccessRule(char[] cArr, int i10) {
        this(cArr, i10, false);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccessRule)) {
            return false;
        }
        AccessRule accessRule = (AccessRule) obj;
        if (this.problemId != accessRule.problemId) {
            return false;
        }
        return CharOperation.equals(this.pattern, accessRule.pattern);
    }

    public int getProblemId() {
        return this.problemId & (-33554433);
    }

    public int hashCode() {
        return (this.problemId * 17) + CharOperation.hashCode(this.pattern);
    }

    public boolean ignoreIfBetter() {
        return (this.problemId & 33554432) != 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("pattern=");
        stringBuffer.append(this.pattern);
        int problemId = getProblemId();
        if (problemId == 16777496) {
            stringBuffer.append(" (DISCOURAGED");
        } else if (problemId != 16777523) {
            stringBuffer.append(" (ACCESSIBLE");
        } else {
            stringBuffer.append(" (NON ACCESSIBLE");
        }
        if (ignoreIfBetter()) {
            stringBuffer.append(" | IGNORE IF BETTER");
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public AccessRule(char[] cArr, int i10, boolean z10) {
        this.pattern = cArr;
        this.problemId = z10 ? i10 | 33554432 : i10;
    }
}
