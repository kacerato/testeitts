package T0;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class L {

    public static final Pattern f23819a = Pattern.compile("\\\\u[0-9a-fA-F]{4}");

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = f23819a.matcher(str);
        StringBuilder sb2 = null;
        int i10 = 0;
        while (matcher.find()) {
            if (sb2 == null) {
                sb2 = new StringBuilder();
            }
            int start = matcher.start();
            int i11 = start;
            while (i11 >= 0 && str.charAt(i11) == '\\') {
                i11--;
            }
            if ((start - i11) % 2 != 0) {
                int parseInt = Integer.parseInt(matcher.group().substring(2), 16);
                sb2.append((CharSequence) str, i10, matcher.start());
                if (parseInt == 92) {
                    sb2.append("\\\\");
                } else {
                    sb2.append(Character.toChars(parseInt));
                }
                i10 = matcher.end();
            }
        }
        if (sb2 == null) {
            return str;
        }
        if (i10 < matcher.regionEnd()) {
            sb2.append((CharSequence) str, i10, matcher.regionEnd());
        }
        return sb2.toString();
    }
}
