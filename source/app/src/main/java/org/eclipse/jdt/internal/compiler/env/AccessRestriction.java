package org.eclipse.jdt.internal.compiler.env;

public class AccessRestriction {
    public static final byte COMMAND_LINE = 0;
    public static final byte LIBRARY = 2;
    public static final byte PROJECT = 1;
    private AccessRule accessRule;
    public String classpathEntryName;
    public byte classpathEntryType;

    public AccessRestriction(AccessRule accessRule, byte b10, String str) {
        this.accessRule = accessRule;
        this.classpathEntryName = str;
        this.classpathEntryType = b10;
    }

    public int getProblemId() {
        return this.accessRule.getProblemId();
    }

    public boolean ignoreIfBetter() {
        return this.accessRule.ignoreIfBetter();
    }
}
