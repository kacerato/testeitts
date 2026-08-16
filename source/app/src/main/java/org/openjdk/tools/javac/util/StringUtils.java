package org.openjdk.tools.javac.util;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils {
    public static int indexOfIgnoreCase(String str, String str2) {
        return indexOfIgnoreCase(str, str2, 0);
    }

    public static String toLowerCase(String str) {
        return str.toLowerCase(Locale.US);
    }

    public static String toUpperCase(String str) {
        return str.toUpperCase(Locale.US);
    }

    public static int indexOfIgnoreCase(String str, String str2, int i10) {
        Matcher matcher = Pattern.compile(Pattern.quote(str2), 2).matcher(str);
        if (matcher.find(i10)) {
            return matcher.start();
        }
        return -1;
    }
}
