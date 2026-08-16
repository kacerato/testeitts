package com.github.javaparser.utils;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.UnaryExpr;
import java.io.IOException;
import java.io.Reader;
import java.lang.constant.ConstantDescs;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public class Utils {
    public static String assertNonEmpty(String string) {
        if (string == null || string.isEmpty()) {
            throw new AssertionError((Object) "A string was unexpectedly empty.");
        }
        return string;
    }

    public static <T extends Number> T assertNonNegative(T number) {
        if (number.longValue() >= 0) {
            return number;
        }
        throw new AssertionError((Object) "A number was unexpectedly negative.");
    }

    public static <T> T assertNotNull(T o10) {
        if (o10 != null) {
            return o10;
        }
        throw new AssertionError((Object) "A reference was unexpectedly null.");
    }

    public static <T extends Number> T assertPositive(T number) {
        if (number.longValue() > 0) {
            return number;
        }
        throw new AssertionError((Object) "A number was unexpectedly non-positive.");
    }

    public static String camelCaseToScreaming(String input) {
        if (input.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(input.substring(0, 1).toUpperCase());
        for (char c10 : input.substring(1).toCharArray()) {
            if (Character.isUpperCase(c10)) {
                sb2.append(ConstantDescs.DEFAULT_NAME);
            }
            sb2.append(Character.toUpperCase(c10));
        }
        return sb2.toString();
    }

    public static String capitalize(String s10) {
        return stringTransformer(s10, "capitalize", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((String) obj).toUpperCase();
            }
        });
    }

    public static String decapitalize(String s10) {
        return stringTransformer(s10, "decapitalize", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((String) obj).toLowerCase();
            }
        });
    }

    public static String escapeEndOfLines(String string) {
        StringBuilder sb2 = new StringBuilder();
        for (char c10 : string.toCharArray()) {
            if (c10 == '\n') {
                sb2.append("\\n");
            } else if (c10 != '\r') {
                sb2.append(c10);
            } else {
                sb2.append("\\r");
            }
        }
        return sb2.toString();
    }

    public static boolean hasUnaryMinusAsParent(Node n10) {
        return ((Boolean) n10.getParentNode().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$hasUnaryMinusAsParent$0;
                lambda$hasUnaryMinusAsParent$0 = Utils.lambda$hasUnaryMinusAsParent$0((Node) obj);
                return lambda$hasUnaryMinusAsParent$0;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                UnaryExpr lambda$hasUnaryMinusAsParent$1;
                lambda$hasUnaryMinusAsParent$1 = Utils.lambda$hasUnaryMinusAsParent$1((Node) obj);
                return lambda$hasUnaryMinusAsParent$1;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$hasUnaryMinusAsParent$2;
                lambda$hasUnaryMinusAsParent$2 = Utils.lambda$hasUnaryMinusAsParent$2((UnaryExpr) obj);
                return lambda$hasUnaryMinusAsParent$2;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public static StringBuilder indent(StringBuilder builder, int indentLevel) {
        for (int i10 = 0; i10 < indentLevel; i10++) {
            builder.append("\t");
        }
        return builder;
    }

    public static <E> int indexOfElementByObjectIdentity(List<E> list, E o10) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (o10 == list.get(i10)) {
                return i10;
            }
        }
        return -1;
    }

    public static <E> boolean isNullOrEmpty(Collection<E> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean lambda$hasUnaryMinusAsParent$0(Node parent) {
        return parent instanceof UnaryExpr;
    }

    public static UnaryExpr lambda$hasUnaryMinusAsParent$1(Node parent) {
        return (UnaryExpr) parent;
    }

    public static Boolean lambda$hasUnaryMinusAsParent$2(UnaryExpr unaryExpr) {
        return Boolean.valueOf(unaryExpr.getOperator() == UnaryExpr.Operator.MINUS);
    }

    public static String nextWord(String string) {
        int i10 = 0;
        while (i10 < string.length() && !Character.isWhitespace(string.charAt(i10))) {
            i10++;
        }
        return string.substring(0, i10);
    }

    public static String normalizeEolInTextBlock(String content, String desiredEndOfLineCharacter) {
        return content.replaceAll("\\R", desiredEndOfLineCharacter);
    }

    public static String readerToString(Reader reader) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        char[] cArr = new char[8192];
        while (true) {
            int read = reader.read(cArr, 0, 8192);
            if (read <= 0) {
                return sb2.toString();
            }
            sb2.append(cArr, 0, read);
        }
    }

    public static <E> void removeElementByObjectIdentity(List<E> list, E o10) {
        int indexOfElementByObjectIdentity = indexOfElementByObjectIdentity(list, o10);
        if (indexOfElementByObjectIdentity == -1) {
            return;
        }
        list.remove(indexOfElementByObjectIdentity);
    }

    public static String removeFileExtension(String filename) {
        int lastIndexOf = filename.lastIndexOf(".");
        return lastIndexOf == -1 ? filename : filename.substring(0, lastIndexOf);
    }

    public static <E> void replaceElementByObjectIdentity(List<E> list, E oldObject, E newObject) {
        int indexOfElementByObjectIdentity = indexOfElementByObjectIdentity(list, oldObject);
        if (indexOfElementByObjectIdentity == -1) {
            return;
        }
        list.set(indexOfElementByObjectIdentity, newObject);
    }

    public static String screamingToCamelCase(String original) {
        StringBuilder sb2 = new StringBuilder();
        String[] split = original.toLowerCase().split(ConstantDescs.DEFAULT_NAME);
        int i10 = 0;
        while (i10 < split.length) {
            sb2.append(i10 == 0 ? split[i10] : capitalize(split[i10]));
            i10++;
        }
        return sb2.toString();
    }

    @SafeVarargs
    public static <T> Set<T> set(T... items) {
        return new HashSet(Arrays.asList(items));
    }

    private static String stringTransformer(String s10, String operationDescription, Function<String, String> transformation) {
        if (s10.isEmpty()) {
            throw new IllegalArgumentException(String.format("You cannot %s an empty string", operationDescription));
        }
        return transformation.apply(s10.substring(0, 1)) + s10.substring(1);
    }

    @Deprecated
    public static String toCamelCase(String original) {
        return screamingToCamelCase(original);
    }

    public static String trimTrailingSpaces(String line) {
        while (line.length() > 0 && line.charAt(line.length() - 1) <= ' ') {
            line = line.substring(0, line.length() - 1);
        }
        return line;
    }

    public static boolean valueIsNullOrEmpty(Object value) {
        if (value == null) {
            return true;
        }
        if (value instanceof Optional) {
            Optional optional = (Optional) value;
            if (!optional.isPresent()) {
                return true;
            }
            value = optional.get();
        }
        return (value instanceof Collection) && ((Collection) value).isEmpty();
    }

    public static boolean valueIsNullOrEmptyStringOrOptional(Object value) {
        if (value == null) {
            return true;
        }
        return (value instanceof Optional) && !((Optional) value).isPresent();
    }

    public static String normalizeEolInTextBlock(String content, LineSeparator desiredEndOfLineCharacter) {
        return normalizeEolInTextBlock(content, desiredEndOfLineCharacter.asRawString());
    }
}
