package com.google.gson;

import java.lang.constant.ConstantDescs;
import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY {
        @Override
        public String translateName(Field f10) {
            return f10.getName();
        }
    },
    UPPER_CAMEL_CASE {
        @Override
        public String translateName(Field f10) {
            return upperCaseFirstLetter(f10.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES {
        @Override
        public String translateName(Field f10) {
            return upperCaseFirstLetter(separateCamelCase(f10.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES {
        @Override
        public String translateName(Field f10) {
            return separateCamelCase(f10.getName(), ConstantDescs.DEFAULT_NAME).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES {
        @Override
        public String translateName(Field f10) {
            return separateCamelCase(f10.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS {
        @Override
        public String translateName(Field f10) {
            return separateCamelCase(f10.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    static String separateCamelCase(String name, String separator) {
        StringBuilder translation = new StringBuilder();
        int length = name.length();
        for (int i10 = 0; i10 < length; i10++) {
            char character = name.charAt(i10);
            if (Character.isUpperCase(character) && translation.length() != 0) {
                translation.append(separator);
            }
            translation.append(character);
        }
        return translation.toString();
    }

    static String upperCaseFirstLetter(String name) {
        int firstLetterIndex = 0;
        int limit = name.length() - 1;
        while (!Character.isLetter(name.charAt(firstLetterIndex)) && firstLetterIndex < limit) {
            firstLetterIndex++;
        }
        char firstLetter = name.charAt(firstLetterIndex);
        if (Character.isUpperCase(firstLetter)) {
            return name;
        }
        char uppercased = Character.toUpperCase(firstLetter);
        if (firstLetterIndex == 0) {
            return uppercased + name.substring(1);
        }
        return name.substring(0, firstLetterIndex) + uppercased + name.substring(firstLetterIndex + 1);
    }
}
