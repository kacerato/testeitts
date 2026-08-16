package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.core.compiler.CharOperation;

public class AccessRuleSet {
    private AccessRule[] accessRules;
    public String classpathEntryName;
    public byte classpathEntryType;

    public AccessRuleSet(AccessRule[] accessRuleArr, byte b10, String str) {
        this.accessRules = accessRuleArr;
        this.classpathEntryType = b10;
        this.classpathEntryName = str;
    }

    public boolean equals(Object obj) {
        String str;
        int length;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessRuleSet)) {
            return false;
        }
        AccessRuleSet accessRuleSet = (AccessRuleSet) obj;
        if (this.classpathEntryType != accessRuleSet.classpathEntryType || (((str = this.classpathEntryName) == null && accessRuleSet.classpathEntryName != null) || !str.equals(accessRuleSet.classpathEntryName) || (length = this.accessRules.length) != accessRuleSet.accessRules.length)) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.accessRules[i10].equals(accessRuleSet.accessRules[i10])) {
                return false;
            }
        }
        return true;
    }

    public AccessRule[] getAccessRules() {
        return this.accessRules;
    }

    public AccessRestriction getViolatedRestriction(char[] cArr) {
        int length = this.accessRules.length;
        for (int i10 = 0; i10 < length; i10++) {
            AccessRule accessRule = this.accessRules[i10];
            if (CharOperation.pathMatch(accessRule.pattern, cArr, true, '/')) {
                int problemId = accessRule.getProblemId();
                if (problemId == 16777496 || problemId == 16777523) {
                    return new AccessRestriction(accessRule, this.classpathEntryType, this.classpathEntryName);
                }
                return null;
            }
        }
        return null;
    }

    public int hashCode() {
        int hashCode = (hashCode(this.accessRules) + 31) * 31;
        String str = this.classpathEntryName;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.classpathEntryType;
    }

    public String toString() {
        return toString(true);
    }

    public String toString(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(200);
        stringBuffer.append("AccessRuleSet {");
        if (z10) {
            stringBuffer.append('\n');
        }
        int length = this.accessRules.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (z10) {
                stringBuffer.append('\t');
            }
            stringBuffer.append((Object) this.accessRules[i10]);
            if (z10) {
                stringBuffer.append('\n');
            } else if (i10 < length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("} [classpath entry: ");
        stringBuffer.append(this.classpathEntryName);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    private int hashCode(AccessRule[] accessRuleArr) {
        if (accessRuleArr == null) {
            return 0;
        }
        int length = accessRuleArr.length;
        int i10 = 1;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = i10 * 31;
            AccessRule accessRule = accessRuleArr[i11];
            i10 = i12 + (accessRule == null ? 0 : accessRule.hashCode());
        }
        return i10;
    }
}
