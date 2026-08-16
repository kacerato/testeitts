package org.openjdk.tools.javac.api;

import java.util.Locale;
import java.util.MissingResourceException;

public interface Messages {
    void add(String str) throws MissingResourceException;

    String getLocalizedString(Locale locale, String str, Object... objArr);
}
