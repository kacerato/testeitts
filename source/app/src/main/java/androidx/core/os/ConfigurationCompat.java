package androidx.core.os;

import android.content.res.Configuration;
import android.os.LocaleList;

public final class ConfigurationCompat {

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static LocaleList getLocales(Configuration configuration) {
            return configuration.getLocales();
        }
    }

    private ConfigurationCompat() {
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        return LocaleListCompat.wrap(Api24Impl.getLocales(configuration));
    }
}
