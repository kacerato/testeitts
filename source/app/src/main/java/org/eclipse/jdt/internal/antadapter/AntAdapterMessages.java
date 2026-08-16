package org.eclipse.jdt.internal.antadapter;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class AntAdapterMessages {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.antadapter.messages";
    private static ResourceBundle RESOURCE_BUNDLE;

    static {
        try {
            RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME, Locale.getDefault());
        } catch (MissingResourceException e10) {
            System.out.println("Missing resource : " + BUNDLE_NAME.replace('.', '/') + ".properties for locale " + ((Object) Locale.getDefault()));
            throw e10;
        }
    }

    private AntAdapterMessages() {
    }

    public static String getString(String key) {
        try {
            return RESOURCE_BUNDLE.getString(key);
        } catch (MissingResourceException unused) {
            return String.valueOf('!') + key + '!';
        }
    }

    public static String getString(String key, String argument) {
        try {
            String message = RESOURCE_BUNDLE.getString(key);
            MessageFormat messageFormat = new MessageFormat(message);
            return messageFormat.format(new String[]{argument});
        } catch (MissingResourceException unused) {
            return String.valueOf('!') + key + '!';
        }
    }
}
