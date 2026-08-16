package org.openjdk.tools.doclint;

public enum HtmlVersion {
    HTML4,
    HTML5,
    ALL;

    public static HtmlVersion getHtmlVersion(String str) {
        str.hashCode();
        if (str.equals("html4")) {
            return HTML4;
        }
        if (str.equals("html5")) {
            return HTML5;
        }
        return null;
    }
}
