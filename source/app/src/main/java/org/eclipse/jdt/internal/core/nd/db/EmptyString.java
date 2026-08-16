package org.eclipse.jdt.internal.core.nd.db;

public class EmptyString implements IString {
    private static EmptyString theEmptyString = new EmptyString();
    private int compareResult = -1;

    private EmptyString() {
    }

    public static EmptyString create() {
        return theEmptyString;
    }

    @Override
    public int compare(IString iString, boolean z10) {
        if (iString.length() == 0) {
            return 0;
        }
        return this.compareResult;
    }

    @Override
    public int compareCompatibleWithIgnoreCase(IString iString) {
        if (iString.length() == 0) {
            return 0;
        }
        return this.compareResult;
    }

    @Override
    public int comparePrefix(char[] cArr, boolean z10) {
        if (cArr.length == 0) {
            return 0;
        }
        return this.compareResult;
    }

    @Override
    public void delete() {
    }

    @Override
    public char[] getChars() {
        return new char[0];
    }

    @Override
    public long getRecord() {
        return 0L;
    }

    @Override
    public String getString() {
        return "";
    }

    @Override
    public int length() {
        return 0;
    }

    @Override
    public int compare(String str, boolean z10) {
        if (str.length() == 0) {
            return 0;
        }
        return this.compareResult;
    }

    @Override
    public int compareCompatibleWithIgnoreCase(char[] cArr) {
        if (cArr.length == 0) {
            return 0;
        }
        return this.compareResult;
    }

    @Override
    public int compare(char[] cArr, boolean z10) {
        if (cArr.length == 0) {
            return 0;
        }
        return this.compareResult;
    }
}
