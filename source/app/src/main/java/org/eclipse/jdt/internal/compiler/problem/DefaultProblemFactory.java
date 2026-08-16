package org.eclipse.jdt.internal.compiler.problem;

import java.util.Enumeration;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.util.HashtableOfInt;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class DefaultProblemFactory implements IProblemFactory {
    private static HashtableOfInt DEFAULT_LOCALE_TEMPLATES;
    private Locale locale;
    public HashtableOfInt messageTemplates;
    private static final char[] DOUBLE_QUOTES = "''".toCharArray();
    private static final char[] SINGLE_QUOTE = "'".toCharArray();
    private static final char[] FIRST_ARGUMENT = "{0}".toCharArray();

    public DefaultProblemFactory() {
        this(Locale.getDefault());
    }

    private static final int keyFromID(int i10) {
        return i10 + 1;
    }

    public static HashtableOfInt loadMessageTemplates(Locale locale) {
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("org.eclipse.jdt.internal.compiler.problem.messages", locale);
            HashtableOfInt hashtableOfInt = new HashtableOfInt(700);
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                String nextElement = keys.nextElement();
                try {
                    hashtableOfInt.put(keyFromID(Integer.parseInt(nextElement)), bundle.getString(nextElement));
                } catch (NumberFormatException | MissingResourceException unused) {
                }
            }
            return hashtableOfInt;
        } catch (MissingResourceException e10) {
            System.out.println("Missing resource : " + "org.eclipse.jdt.internal.compiler.problem.messages".replace('.', '/') + ".properties for locale " + ((Object) locale));
            throw e10;
        }
    }

    @Override
    public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13, int i14, int i15) {
        return new DefaultProblem(cArr, getLocalizedMessage(i10, strArr2), i10, strArr, i11, i12, i13, i14, i15);
    }

    @Override
    public Locale getLocale() {
        return this.locale;
    }

    @Override
    public final String getLocalizedMessage(int i10, String[] strArr) {
        return getLocalizedMessage(i10, 0, strArr);
    }

    public final String localizedMessage(CategorizedProblem categorizedProblem) {
        return getLocalizedMessage(categorizedProblem.getID(), categorizedProblem.getArguments());
    }

    public void setLocale(Locale locale) {
        if (locale == this.locale) {
            return;
        }
        this.locale = locale;
        if (!Locale.getDefault().equals(locale)) {
            this.messageTemplates = loadMessageTemplates(locale);
            return;
        }
        if (DEFAULT_LOCALE_TEMPLATES == null) {
            DEFAULT_LOCALE_TEMPLATES = loadMessageTemplates(locale);
        }
        this.messageTemplates = DEFAULT_LOCALE_TEMPLATES;
    }

    public DefaultProblemFactory(Locale locale) {
        setLocale(locale);
    }

    @Override
    public final String getLocalizedMessage(int i10, int i11, String[] strArr) {
        StringBuffer stringBuffer;
        int i12 = 4194303 & i10;
        String str = (String) this.messageTemplates.get(keyFromID(i12));
        if (str == null) {
            return "Unable to retrieve the error message for problem id: " + i12 + ". Check compiler resources.";
        }
        char[] charArray = str.toCharArray();
        if (i11 != 0) {
            String str2 = (String) this.messageTemplates.get(keyFromID(i11));
            if (str2 == null) {
                return "Unable to retrieve the error message elaboration for elaboration id: " + i11 + ". Check compiler resources.";
            }
            charArray = CharOperation.replace(charArray, FIRST_ARGUMENT, str2.toCharArray());
        }
        char[] replace = CharOperation.replace(charArray, DOUBLE_QUOTES, SINGLE_QUOTE);
        if (strArr == null) {
            return new String(replace);
        }
        int length = replace.length;
        int i13 = 0;
        if ((i10 & Integer.MIN_VALUE) != 0) {
            stringBuffer = new StringBuffer(length + 10 + (strArr.length * 20));
            stringBuffer.append((String) this.messageTemplates.get(keyFromID(514)));
        } else {
            stringBuffer = null;
        }
        while (true) {
            int indexOf = CharOperation.indexOf(JavaElement.JEM_COMPILATIONUNIT, replace, i13);
            if (indexOf > -1) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer((strArr.length * 20) + length);
                }
                stringBuffer.append(replace, i13, indexOf - i13);
                int i14 = indexOf + 1;
                int indexOf2 = CharOperation.indexOf(JavaElement.JEM_ANNOTATION, replace, i14);
                if (indexOf2 > -1) {
                    int i15 = indexOf2 - indexOf;
                    try {
                        stringBuffer.append(strArr[CharOperation.parseInt(replace, i14, i15 - 1)]);
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        return "Cannot bind message for problem (id: " + i12 + ") \"" + new String(replace) + "\" with arguments: {" + Util.toString(strArr) + VectorFormat.DEFAULT_SUFFIX;
                    } catch (NumberFormatException unused2) {
                        stringBuffer.append(replace, i14, i15);
                    }
                    i13 = indexOf2 + 1;
                } else {
                    stringBuffer.append(replace, indexOf, length);
                    break;
                }
            } else {
                if (stringBuffer == null) {
                    return new String(replace);
                }
                stringBuffer.append(replace, i13, length - i13);
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14, int i15, int i16) {
        return new DefaultProblem(cArr, getLocalizedMessage(i10, i11, strArr2), i10, strArr, i12, i13, i14, i15, i16);
    }
}
