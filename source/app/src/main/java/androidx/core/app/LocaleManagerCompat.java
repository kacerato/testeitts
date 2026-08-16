package androidx.core.app;

import android.app.LocaleManager;
import android.content.Context;
import android.content.res.Configuration;
import android.os.LocaleList;
import android.provider.UserDictionary;
import androidx.core.os.BuildCompat;
import androidx.core.os.LocaleListCompat;
import java.util.Locale;

public final class LocaleManagerCompat {

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static String toLanguageTag(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static LocaleListCompat getLocales(Configuration configuration) {
            return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
        }
    }

    public static class Api33Impl {
        private Api33Impl() {
        }

        public static LocaleList localeManagerGetSystemLocales(Object obj) {
            return ((LocaleManager) obj).getSystemLocales();
        }
    }

    private LocaleManagerCompat() {
    }

    public static LocaleListCompat getConfigurationLocales(Configuration configuration) {
        return Api24Impl.getLocales(configuration);
    }

    private static Object getLocaleManagerForApplication(Context context) {
        return context.getSystemService(UserDictionary.Words.LOCALE);
    }

    public static LocaleListCompat getSystemLocales(Context context) {
        LocaleListCompat emptyLocaleList = LocaleListCompat.getEmptyLocaleList();
        if (!BuildCompat.isAtLeastT()) {
            return getConfigurationLocales(context.getApplicationContext().getResources().getConfiguration());
        }
        Object localeManagerForApplication = getLocaleManagerForApplication(context);
        return localeManagerForApplication != null ? LocaleListCompat.wrap(Api33Impl.localeManagerGetSystemLocales(localeManagerForApplication)) : emptyLocaleList;
    }
}
