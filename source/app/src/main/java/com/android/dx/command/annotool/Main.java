package com.android.dx.command.annotool;

import java.lang.annotation.ElementType;
import java.util.EnumSet;
import java.util.Locale;
import org.openjdk.tools.doclint.DocLint;

public class Main {

    public static class Arguments {
        String aclass;
        String[] files;
        EnumSet<ElementType> eTypes = EnumSet.noneOf(ElementType.class);
        EnumSet<PrintType> printTypes = EnumSet.noneOf(PrintType.class);

        public void parse(String[] strArr) throws InvalidArgumentException {
            int i10 = 0;
            while (true) {
                if (i10 >= strArr.length) {
                    break;
                }
                String str = strArr[i10];
                if (str.startsWith("--annotation=")) {
                    String substring = str.substring(str.indexOf(61) + 1);
                    if (this.aclass != null) {
                        throw new InvalidArgumentException("--annotation can only be specified once.");
                    }
                    this.aclass = substring.replace('.', '/');
                } else if (!str.startsWith("--element=")) {
                    if (!str.startsWith("--print=")) {
                        String[] strArr2 = new String[strArr.length - i10];
                        this.files = strArr2;
                        System.arraycopy(strArr, i10, strArr2, 0, strArr2.length);
                        break;
                    }
                    try {
                        for (String str2 : str.substring(str.indexOf(61) + 1).split(DocLint.SEPARATOR)) {
                            this.printTypes.add(PrintType.valueOf(str2.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused) {
                        throw new InvalidArgumentException("invalid --print");
                    }
                } else {
                    try {
                        for (String str3 : str.substring(str.indexOf(61) + 1).split(DocLint.SEPARATOR)) {
                            this.eTypes.add(ElementType.valueOf(str3.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused2) {
                        throw new InvalidArgumentException("invalid --element");
                    }
                }
                i10++;
            }
            if (this.aclass == null) {
                throw new InvalidArgumentException("--annotation must be specified");
            }
            if (this.printTypes.isEmpty()) {
                this.printTypes.add(PrintType.CLASS);
            }
            if (this.eTypes.isEmpty()) {
                this.eTypes.add(ElementType.TYPE);
            }
            EnumSet<ElementType> m1756clone = this.eTypes.m1756clone();
            m1756clone.remove(ElementType.TYPE);
            m1756clone.remove(ElementType.PACKAGE);
            if (!m1756clone.isEmpty()) {
                throw new InvalidArgumentException("only --element parameters 'type' and 'package' supported");
            }
        }
    }

    public static class InvalidArgumentException extends Exception {
        public InvalidArgumentException() {
        }

        public InvalidArgumentException(String str) {
            super(str);
        }
    }

    public enum PrintType {
        CLASS,
        INNERCLASS,
        METHOD,
        PACKAGE
    }

    private Main() {
    }

    public static void main(String[] strArr) {
        Arguments arguments = new Arguments();
        try {
            arguments.parse(strArr);
            new AnnotationLister(arguments).process();
        } catch (InvalidArgumentException e10) {
            System.err.println(e10.getMessage());
            throw new RuntimeException("usage");
        }
    }
}
