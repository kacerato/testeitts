package K6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class h {
    public static String a(String text) {
        int b10 = b(text);
        if (b10 < 0) {
            return "";
        }
        int i10 = b10;
        while (i10 < text.length() && Character.isJavaIdentifierPart(text.charAt(i10))) {
            i10++;
        }
        return text.substring(b10, i10);
    }

    public static int b(String text) {
        if (text == null || text.isEmpty()) {
            return -1;
        }
        int length = text.length() - 1;
        while (length >= 0 && !Character.isJavaIdentifierPart(text.charAt(length))) {
            length--;
        }
        if (length < 0) {
            return -1;
        }
        while (length >= 0 && Character.isJavaIdentifierPart(text.charAt(length))) {
            length--;
        }
        return length + 1;
    }

    public static int c(String text) {
        char[] cArr = {';', '(', '=', '+', '-', '*', '/', JavaElement.JEM_PACKAGEDECLARATION, '!', '<', '>', '&', '|', '^', IIndexConstants.PARAMETER_SEPARATOR, '?', ':', '[', JavaElement.JEM_COMPILATIONUNIT, JavaElement.JEM_METHOD};
        int i10 = -1;
        for (int i11 = 0; i11 < 20; i11++) {
            int lastIndexOf = text.lastIndexOf(cArr[i11]);
            if (lastIndexOf > i10) {
                i10 = lastIndexOf;
            }
        }
        return i10;
    }

    public static String d(String lineText) {
        if (lineText.endsWith(".")) {
            return ".";
        }
        String[] e10 = e(lineText);
        return e10.length >= 1 ? e10[e10.length - 1] : "";
    }

    public static String[] e(String lineText) {
        if (lineText == null || lineText.isEmpty()) {
            return new String[0];
        }
        int c10 = c(lineText);
        if (c10 >= 0) {
            lineText = lineText.substring(c10 + 1);
        }
        String[] split = lineText.split("[^\\p{L}\\p{N}_]+");
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : split) {
            if (!str.isEmpty()) {
                steppedArrayList.add(str);
            }
        }
        return (String[]) steppedArrayList.toArray(new String[0]);
    }

    public static String f(String fullScript, int cursorPosition) {
        int min = Math.min(cursorPosition, fullScript.length());
        int lastIndexOf = fullScript.lastIndexOf(10, min - 1);
        return fullScript.substring(lastIndexOf == -1 ? 0 : lastIndexOf + 1, min);
    }

    public static String[] g(String lineText) {
        if (lineText == null || lineText.isEmpty()) {
            return new String[0];
        }
        String[] split = lineText.split("[^\\p{L}\\p{N}_]+");
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : split) {
            if (!str.isEmpty()) {
                steppedArrayList.add(str);
            }
        }
        return (String[]) steppedArrayList.toArray(new String[0]);
    }
}
