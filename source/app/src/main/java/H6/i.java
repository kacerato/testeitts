package H6;

import java.util.regex.Pattern;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

public class i {
    public static boolean a(String str) {
        return !Pattern.compile("[^a-zA-Z0-9]").matcher(str).find();
    }

    public static boolean b(String str) {
        return !Pattern.compile("[^a-zA-Z]").matcher(str).find();
    }

    public static boolean c(String str) {
        return !Pattern.compile("[^0-9]").matcher(str).find();
    }

    public static boolean d(String str) {
        return str.equals("(") || str.equals(")") || str.equals("{") || str.equals(VectorFormat.DEFAULT_SUFFIX) || str.equals("/") || str.equals("*") || str.equals("+") || str.equals("-") || str.equals("|") || str.equals("&") || str.equals("!") || str.equals(".") || str.equals(";") || str.equals("[") || str.equals("]") || str.equals("=") || str.equals(JavadocConstants.ANCHOR_PREFIX_END) || str.equals(">") || str.equals("<") || str.equals(DocLint.SEPARATOR);
    }
}
