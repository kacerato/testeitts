package K6;

public final class d {
    public String a(String lineText) {
        int c10;
        if (lineText == null || lineText.isEmpty() || (c10 = c(lineText)) < 0) {
            return null;
        }
        String trim = lineText.substring(0, c10).trim();
        if (trim.isEmpty()) {
            return null;
        }
        String a10 = h.a(trim);
        if (a10.isEmpty()) {
            return null;
        }
        return a10;
    }

    public String b(String lineText) {
        int lastIndexOf;
        if (lineText == null || !lineText.endsWith("(") || (lastIndexOf = lineText.lastIndexOf(40)) < 0) {
            return null;
        }
        String a10 = h.a(lineText.substring(0, lastIndexOf));
        if (a10.isEmpty()) {
            return null;
        }
        return a10;
    }

    public final int c(String lineText) {
        int length = lineText.length() - 1;
        while (length >= 0) {
            if (lineText.charAt(length) == '=') {
                char charAt = length > 0 ? lineText.charAt(length - 1) : (char) 0;
                int i10 = length + 1;
                char charAt2 = i10 < lineText.length() ? lineText.charAt(i10) : (char) 0;
                if (charAt != '=' && charAt != '!' && charAt != '<' && charAt != '>' && charAt != '+' && charAt != '-' && charAt != '*' && charAt != '/' && charAt != '%' && charAt != '&' && charAt != '|' && charAt != '^' && charAt2 != '=') {
                    return length;
                }
            }
            length--;
        }
        return -1;
    }

    public boolean d(String lineText) {
        int lastIndexOf;
        if (lineText == null || lineText.isEmpty() || (lastIndexOf = lineText.lastIndexOf(46)) < 0) {
            return false;
        }
        return lastIndexOf > Math.max(lineText.lastIndexOf(32), Math.max(lineText.lastIndexOf(9), lineText.lastIndexOf(10))) || lineText.endsWith(".");
    }
}
