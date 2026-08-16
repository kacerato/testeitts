package org.openjdk.tools.javac.util;

import java.lang.ref.SoftReference;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.openjdk.tools.javac.api.Messages;
import org.openjdk.tools.javac.util.Context;

public class JavacMessages implements Messages {
    private static ResourceBundle defaultBundle = null;
    private static final String defaultBundleName = "org.openjdk.tools.javac.resources.compiler";
    private static JavacMessages defaultMessages;
    public static final Context.Key<JavacMessages> messagesKey = new Context.Key<>();
    private Map<Locale, SoftReference<List<ResourceBundle>>> bundleCache;
    private List<ResourceBundleHelper> bundleHelpers;
    private List<ResourceBundle> currentBundles;
    private Locale currentLocale;

    public interface ResourceBundleHelper {
        ResourceBundle getResourceBundle(Locale locale);
    }

    public JavacMessages(Context context) {
        this(defaultBundleName, (Locale) context.get(Locale.class));
        context.put((Context.Key<Context.Key<JavacMessages>>) messagesKey, (Context.Key<JavacMessages>) this);
    }

    public static ResourceBundle getDefaultBundle() {
        try {
            if (defaultBundle == null) {
                defaultBundle = ResourceBundle.getBundle(defaultBundleName);
            }
            return defaultBundle;
        } catch (MissingResourceException e10) {
            throw new Error("Fatal: Resource for compiler is missing", e10);
        }
    }

    public static String getDefaultLocalizedString(String str, Object... objArr) {
        return getLocalizedString((List<ResourceBundle>) List.of(getDefaultBundle()), str, objArr);
    }

    @Deprecated
    public static JavacMessages getDefaultMessages() {
        if (defaultMessages == null) {
            defaultMessages = new JavacMessages(defaultBundleName);
        }
        return defaultMessages;
    }

    public static JavacMessages instance(Context context) {
        JavacMessages javacMessages = (JavacMessages) context.get(messagesKey);
        return javacMessages == null ? new JavacMessages(context) : javacMessages;
    }

    @Override
    public void add(final String str) throws MissingResourceException {
        add(new ResourceBundleHelper() {
            @Override
            public final ResourceBundle getResourceBundle(Locale locale) {
                ResourceBundle bundle;
                bundle = ResourceBundle.getBundle(String.this, locale);
                return bundle;
            }
        });
    }

    public List<ResourceBundle> getBundles(Locale locale) {
        List<ResourceBundle> list;
        if (locale == this.currentLocale && (list = this.currentBundles) != null) {
            return list;
        }
        SoftReference<List<ResourceBundle>> softReference = this.bundleCache.get(locale);
        List<ResourceBundle> list2 = softReference == null ? null : softReference.get();
        if (list2 == null) {
            list2 = List.nil();
            Iterator<ResourceBundleHelper> it = this.bundleHelpers.iterator();
            while (it.hasNext()) {
                try {
                    list2 = list2.prepend(it.next().getResourceBundle(locale));
                } catch (MissingResourceException e10) {
                    throw new InternalError("Cannot find requested resource bundle for locale " + ((Object) locale), e10);
                }
            }
            this.bundleCache.put(locale, new SoftReference<>(list2));
        }
        return list2;
    }

    public Locale getCurrentLocale() {
        return this.currentLocale;
    }

    public String getLocalizedString(String str, Object... objArr) {
        return getLocalizedString(this.currentLocale, str, objArr);
    }

    public void setCurrentLocale(Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        this.currentBundles = getBundles(locale);
        this.currentLocale = locale;
    }

    public void add(ResourceBundleHelper resourceBundleHelper) {
        this.bundleHelpers = this.bundleHelpers.prepend(resourceBundleHelper);
        if (!this.bundleCache.isEmpty()) {
            this.bundleCache.clear();
        }
        this.currentBundles = null;
    }

    @Override
    public String getLocalizedString(Locale locale, String str, Object... objArr) {
        if (locale == null) {
            locale = getCurrentLocale();
        }
        return getLocalizedString(getBundles(locale), str, objArr);
    }

    public JavacMessages(String str) throws MissingResourceException {
        this(str, null);
    }

    public JavacMessages(String str, Locale locale) throws MissingResourceException {
        this.bundleHelpers = List.nil();
        this.bundleCache = new HashMap();
        add(str);
        setCurrentLocale(locale);
    }

    private static String getLocalizedString(List<ResourceBundle> list, String str, Object... objArr) {
        String str2 = null;
        for (List<ResourceBundle> list2 = list; list2.nonEmpty() && str2 == null; list2 = list2.tail) {
            try {
                str2 = list2.head.getString(str);
            } catch (MissingResourceException unused) {
            }
        }
        if (str2 == null) {
            str2 = "compiler message file broken: key=" + str + " arguments={0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}";
        }
        return MessageFormat.format(str2, objArr);
    }

    public JavacMessages() throws MissingResourceException {
        this(defaultBundleName);
    }
}
