package oh;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class h1 {

    public static final Map f98890a = new HashMap();

    public static Locale f98891b = b();

    public static Date a(Date date) throws ParseException {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return date;
        }
        Map map = f98890a;
        synchronized (map) {
            try {
                Long l10 = (Long) map.get(locale);
                if (l10 == null) {
                    l10 = c(new SimpleDateFormat("yyyyMMddHHmmssz").parse("19700101000000GMT+00:00").getTime());
                    map.put(locale, l10);
                }
                if (l10.longValue() == 0) {
                    return date;
                }
                return new Date(date.getTime() - l10.longValue());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Locale b() {
        if ("en".equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i10 = 0; i10 != availableLocales.length; i10++) {
            if ("en".equalsIgnoreCase(availableLocales[i10].getLanguage())) {
                return availableLocales[i10];
            }
        }
        return Locale.getDefault();
    }

    public static Long c(long j10) {
        return org.bouncycastle.util.m.i(j10);
    }
}
