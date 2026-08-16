package d8;

import k8.C13950c;

public class g {

    public static final String f84386a = "[I-S]";

    public static final String f84387b = "[I-E]";

    public static final String f84388c = "LN=";

    public static String a(String line) {
        return line.endsWith(f84387b) ? line.substring(line.indexOf("//[I-S]")) : line;
    }

    public static int c(String[] lines, int lineNumber) {
        try {
            String str = lines[lineNumber];
            if (str.contains("//[I-S]LN=")) {
                String substring = str.substring(str.indexOf("//[I-S]LN=") + 10);
                return Nc.b.w1(substring.substring(0, substring.indexOf(";")));
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public static String d(String text) {
        if (text == null || text.trim().isEmpty()) {
            return text;
        }
        String[] split = text.split("\n");
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < split.length; i10++) {
            String str = split[i10];
            try {
                try {
                    if (str.endsWith(f84387b)) {
                        str = str.substring(0, str.indexOf("//[I-S]"));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (Exception unused) {
                if (str.endsWith(f84387b)) {
                    str = str.substring(0, str.indexOf(f84386a));
                }
            }
            if (i10 > 0) {
                sb2.append("\n");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public void b(C13950c javaCode) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < javaCode.f(); i10++) {
            sb2.append(javaCode.e(i10) + (" //[I-S]LN=" + i10 + ";" + f84387b));
            sb2.append("\n");
        }
        javaCode.i(sb2.toString());
    }
}
