package Wk;

public class c implements a {
    @Override
    public String a(String str) {
        int i10;
        String str2;
        StringBuffer stringBuffer = new StringBuffer(str);
        int i11 = 0;
        while (i11 < stringBuffer.length()) {
            char charAt = stringBuffer.charAt(i11);
            if (charAt == '\n') {
                i10 = i11 + 1;
                str2 = "\\n";
            } else if (charAt == '\r') {
                i10 = i11 + 1;
                str2 = "\\r";
            } else if (charAt == '\"') {
                i10 = i11 + 1;
                str2 = "\\\"";
            } else if (charAt == '\'') {
                i10 = i11 + 1;
                str2 = "\\'";
            } else if (charAt == '-') {
                i10 = i11 + 1;
                str2 = "\\-";
            } else if (charAt == '/') {
                i10 = i11 + 1;
                str2 = "\\/";
            } else if (charAt == ';') {
                i10 = i11 + 1;
                str2 = "\\;";
            } else if (charAt == '=') {
                i10 = i11 + 1;
                str2 = "\\=";
            } else if (charAt != '\\') {
                i11++;
            } else {
                i10 = i11 + 1;
                str2 = "\\\\";
            }
            stringBuffer.replace(i11, i10, str2);
            i11 = i10;
            i11++;
        }
        return stringBuffer.toString();
    }

    @Override
    public String b(String str) {
        return a(str);
    }
}
