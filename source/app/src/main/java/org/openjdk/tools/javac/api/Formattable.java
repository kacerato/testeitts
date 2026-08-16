package org.openjdk.tools.javac.api;

import java.util.Locale;

public interface Formattable {

    public static class LocalizedString implements Formattable {
        String key;

        public LocalizedString(String str) {
            this.key = str;
        }

        @Override
        public String getKind() {
            return "LocalizedString";
        }

        @Override
        public String toString(Locale locale, Messages messages) {
            return messages.getLocalizedString(locale, this.key, new Object[0]);
        }

        public String toString() {
            return this.key;
        }
    }

    String getKind();

    String toString(Locale locale, Messages messages);
}
