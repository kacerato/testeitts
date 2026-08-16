package org.openjdk.tools.javac.util;

import java.util.regex.Pattern;
import org.openjdk.javax.lang.model.SourceVersion;

public class MatchingUtils {
    private static final String allMatchesString = ".*";
    private static final Pattern allMatches = Pattern.compile(allMatchesString);

    public static boolean isValidImportString(String str) {
        if (str.equals("*")) {
            return true;
        }
        int indexOf = str.indexOf(42);
        if (indexOf != -1) {
            if (indexOf != str.length() - 1) {
                return false;
            }
            int i10 = indexOf - 1;
            if (i10 >= 0) {
                r1 = str.charAt(i10) == '.';
                str = str.substring(0, str.length() - 2);
            }
        }
        if (r1) {
            for (String str2 : str.split("\\.", str.length() + 2)) {
                r1 &= SourceVersion.isIdentifier(str2);
            }
        }
        return r1;
    }

    public static Pattern validImportStringToPattern(String str) {
        String validImportStringToPatternString = validImportStringToPatternString(str);
        return validImportStringToPatternString == allMatchesString ? allMatches : Pattern.compile(validImportStringToPatternString);
    }

    public static String validImportStringToPatternString(String str) {
        if (str.equals("*")) {
            return allMatchesString;
        }
        String replace = str.replace(".", "\\.");
        if (!replace.endsWith("*")) {
            return replace;
        }
        return replace.substring(0, replace.length() - 1) + ".+";
    }
}
