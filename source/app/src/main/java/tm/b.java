package Tm;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b {

    public static final Map<String, String> f25531a = b();

    public static final Pattern f25532b = Pattern.compile("^&#[Xx]?");

    public static final String f25533c = "/org/commonmark/internal/util/entities.properties";

    public static String a(String str) {
        Matcher matcher = f25532b.matcher(str);
        if (!matcher.find()) {
            String str2 = f25531a.get(str.substring(1, str.length() - 1));
            return str2 != null ? str2 : str;
        }
        try {
            int parseInt = Integer.parseInt(str.substring(matcher.end(), str.length() - 1), matcher.end() == 2 ? 10 : 16);
            return parseInt == 0 ? "\ufffd" : new String(Character.toChars(parseInt));
        } catch (IllegalArgumentException unused) {
            return "\ufffd";
        }
    }

    public static Map<String, String> b() {
        HashMap hashMap = new HashMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(b.class.getResourceAsStream(f25533c), Charset.forName("UTF-8")));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        hashMap.put("NewLine", "\n");
                        return hashMap;
                    }
                    if (readLine.length() != 0) {
                        int indexOf = readLine.indexOf("=");
                        hashMap.put(readLine.substring(0, indexOf), readLine.substring(indexOf + 1));
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } finally {
                    }
                }
            }
        } catch (IOException e10) {
            throw new IllegalStateException("Failed reading data for HTML named character references", e10);
        }
    }
}
