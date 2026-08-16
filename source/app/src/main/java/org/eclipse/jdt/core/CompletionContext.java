package org.eclipse.jdt.core;

public class CompletionContext {
    public static final int TL_CONSTRUCTOR_START = 4;
    public static final int TL_MEMBER_START = 1;
    public static final int TL_STATEMENT_START = 2;
    public static final int TOKEN_KIND_NAME = 1;
    public static final int TOKEN_KIND_STRING_LITERAL = 2;
    public static final int TOKEN_KIND_UNKNOWN = 0;

    public IJavaElement getEnclosingElement() {
        return null;
    }

    public char[][] getExpectedTypesKeys() {
        return null;
    }

    public char[][] getExpectedTypesSignatures() {
        return null;
    }

    public int getOffset() {
        return -1;
    }

    public char[] getToken() {
        return null;
    }

    public int getTokenEnd() {
        return -1;
    }

    public int getTokenKind() {
        return -1;
    }

    public int getTokenLocation() {
        return -1;
    }

    public int getTokenStart() {
        return -1;
    }

    public IJavaElement[] getVisibleElements(String str) {
        return null;
    }

    public boolean isExtended() {
        return false;
    }

    public boolean isInJavadoc() {
        return false;
    }

    public boolean isInJavadocFormalReference() {
        return false;
    }

    public boolean isInJavadocText() {
        return false;
    }
}
