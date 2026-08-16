package org.eclipse.jdt.internal.compiler.util;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

public final class Messages {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.compiler.messages";
    private static final String EXTENSION = ".properties";
    public static String abort_againstSourceModel;
    public static String abort_externaAnnotationFile;
    public static String abort_invalidAttribute;
    public static String abort_invalidExceptionAttribute;
    public static String abort_invalidOpcode;
    public static String abort_missingCode;
    public static String accept_cannot;
    public static String ast_missingCode;
    public static String compilation_beginningToCompile;
    public static String compilation_done;
    public static String compilation_internalError;
    public static String compilation_loadBinary;
    public static String compilation_process;
    public static String compilation_processing;
    public static String compilation_request;
    public static String compilation_unit;
    public static String compilation_units;
    public static String compilation_unresolvedProblem;
    public static String compilation_unresolvedProblems;
    public static String compilation_write;
    public static String constant_cannotCastedInto;
    public static String constant_cannotConvertedTo;
    private static String[] nlSuffixes;
    public static String output_isFile;
    public static String output_notValid;
    public static String output_notValidAll;
    public static String parser_corruptedFile;
    public static String parser_endOfConstructor;
    public static String parser_endOfFile;
    public static String parser_endOfInitializer;
    public static String parser_endOfMethod;
    public static String parser_incorrectPath;
    public static String parser_missingFile;
    public static String parser_moveFiles;
    public static String parser_regularParse;
    public static String parser_syntaxRecovery;
    public static String problem_atLine;
    public static String problem_noSourceInformation;

    public static class MessagesProperties extends Properties {
        private static final int MOD_EXPECTED = 9;
        private static final int MOD_MASK = 25;
        private static final long serialVersionUID = 1;
        private final Map fields;

        public MessagesProperties(Field[] fieldArr, String str) {
            int length = fieldArr.length;
            this.fields = new HashMap(length * 2);
            for (int i10 = 0; i10 < length; i10++) {
                this.fields.put(fieldArr[i10].getName(), fieldArr[i10]);
            }
        }

        @Override
        public synchronized Object put(Object obj, Object obj2) {
            Field field;
            try {
                field = (Field) this.fields.get(obj);
            } catch (SecurityException | Exception unused) {
            }
            if (field == null) {
                return null;
            }
            if ((field.getModifiers() & 25) != 9) {
                return null;
            }
            field.set(null, obj2);
            return null;
        }
    }

    static {
        initializeMessages(BUNDLE_NAME, Messages.class);
    }

    private Messages() {
    }

    public static String bind(String str) {
        return bind(str, (Object[]) null);
    }

    private static String[] buildVariants(String str) {
        if (nlSuffixes == null) {
            String locale = Locale.getDefault().toString();
            ArrayList arrayList = new ArrayList(4);
            while (true) {
                arrayList.add(String.valueOf('_') + locale + EXTENSION);
                int lastIndexOf = locale.lastIndexOf(95);
                if (lastIndexOf == -1) {
                    break;
                }
                locale = locale.substring(0, lastIndexOf);
            }
            arrayList.add(EXTENSION);
            nlSuffixes = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        String replace = str.replace('.', '/');
        int length = nlSuffixes.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = String.valueOf(replace) + nlSuffixes[i10];
        }
        return strArr;
    }

    public static void initializeMessages(String str, Class cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        load(str, cls.getClassLoader(), declaredFields);
        for (Field field : declaredFields) {
            if ((field.getModifiers() & 25) == 9) {
                try {
                    if (field.get(cls) == null) {
                        field.set(null, "Missing message: " + field.getName() + " in: " + str);
                    }
                } catch (IllegalAccessException | IllegalArgumentException unused) {
                }
            }
        }
    }

    public static void load(String str, ClassLoader classLoader, Field[] fieldArr) {
        String[] buildVariants = buildVariants(str);
        int length = buildVariants.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            InputStream systemResourceAsStream = classLoader == null ? ClassLoader.getSystemResourceAsStream(buildVariants[length]) : classLoader.getResourceAsStream(buildVariants[length]);
            if (systemResourceAsStream != null) {
                try {
                    new MessagesProperties(fieldArr, str).load(systemResourceAsStream);
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    try {
                        systemResourceAsStream.close();
                    } catch (IOException unused2) {
                    }
                    throw th2;
                }
                try {
                    systemResourceAsStream.close();
                } catch (IOException unused3) {
                }
            }
        }
    }

    public static String bind(String str, Object obj) {
        return bind(str, new Object[]{obj});
    }

    public static String bind(String str, Object obj, Object obj2) {
        return bind(str, new Object[]{obj, obj2});
    }

    public static String bind(String str, Object[] objArr) {
        return MessageFormat.format(str, objArr);
    }
}
