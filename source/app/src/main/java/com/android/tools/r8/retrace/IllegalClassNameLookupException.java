package com.android.tools.r8.retrace;

public class IllegalClassNameLookupException extends RuntimeException {

    private final String f56262b;

    public IllegalClassNameLookupException(String str) {
        this.f56262b = str;
    }

    @Override
    public String getMessage() {
        return "Illegal lookup of " + this.f56262b + ".";
    }
}
