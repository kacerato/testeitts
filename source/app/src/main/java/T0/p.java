package T0;

import androidx.annotation.NonNull;
import h1.C13408b;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@C0.a
public class p {

    public static final Pattern f23849a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    public static final Pattern f23850b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

    public static final Pattern f23851c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    @NonNull
    @C0.a
    public static Map<String, String> a(@NonNull URI uri, @NonNull String str) {
        Map<String, String> emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            emptyMap = new HashMap<>();
            C13408b c10 = C13408b.c(h1.F.b('='));
            Iterator it = C13408b.c(h1.F.b('&')).b().d(rawQuery).iterator();
            while (it.hasNext()) {
                List f10 = c10.f((String) it.next());
                if (f10.isEmpty() || f10.size() > 2) {
                    throw new IllegalArgumentException("bad parameter");
                }
                emptyMap.put(b((String) f10.get(0), str), f10.size() == 2 ? b((String) f10.get(1), str) : null);
            }
        }
        return emptyMap;
    }

    public static String b(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
