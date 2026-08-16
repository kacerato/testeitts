package org.openjdk.tools.sjavac;

import b3.s;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;

public class Util {
    public static String cleanSubOptions(Set<String> set, String str) {
        StringBuilder sb2 = new StringBuilder();
        StringTokenizer stringTokenizer = new StringTokenizer(str, DocLint.SEPARATOR);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf > 0) {
                String substring = nextToken.substring(0, indexOf);
                String substring2 = nextToken.substring(indexOf + 1);
                if (set.contains(substring)) {
                    if (sb2.length() > 0) {
                        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    sb2.append(substring + "=" + substring2);
                }
            }
        }
        return sb2.toString();
    }

    public static boolean extractBooleanOption(String str, String str2, boolean z10) {
        String extractStringOption = extractStringOption(str, str2);
        if ("true".equals(extractStringOption)) {
            return true;
        }
        if ("false".equals(extractStringOption)) {
            return false;
        }
        return z10;
    }

    public static int extractIntOption(String str, String str2) {
        return extractIntOption(str, str2, 0);
    }

    public static String extractStringOption(String str, String str2) {
        return extractStringOption(str, str2, null);
    }

    public static String fileSuffix(Path path) {
        String path2 = path.getFileName().toString();
        int indexOf = path2.indexOf(46);
        return indexOf == -1 ? "" : path2.substring(indexOf);
    }

    public static String findServerSettings(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("--server:")) {
                return str;
            }
        }
        return null;
    }

    public static Stream<String> getLines(String str) {
        return str.isEmpty() ? Stream.empty() : Stream.of((Object[]) str.split(Pattern.quote(System.lineSeparator())));
    }

    public static String getStackTrace(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static <I, T> Map<I, T> indexBy(Collection<? extends T> collection, Function<? super T, ? extends I> function) {
        return (Map) collection.stream().collect(Collectors.toMap(function, new Function() {
            @Override
            public final Object apply(Object obj) {
                Object lambda$indexBy$0;
                lambda$indexBy$0 = Util.lambda$indexBy$0(obj);
                return lambda$indexBy$0;
            }
        }));
    }

    public static <E> Set<E> intersection(Collection<? extends E> collection, Collection<? extends E> collection2) {
        HashSet hashSet = new HashSet(collection);
        hashSet.retainAll(collection2);
        return hashSet;
    }

    public static String justPackageName(String str) {
        int indexOf = str.indexOf(s.f32937c);
        if (indexOf != -1) {
            return str.substring(indexOf + 1);
        }
        throw new IllegalArgumentException("Expected ':' in package name (" + str + ")");
    }

    public static Object lambda$indexBy$0(Object obj) {
        return obj;
    }

    public static String normalizeDriveLetter(String str) {
        if (str.length() > 2 && str.charAt(1) == ':') {
            return Character.toUpperCase(str.charAt(0)) + str.substring(1);
        }
        if (str.length() <= 3 || str.charAt(0) != '*' || str.charAt(2) != ':') {
            return str;
        }
        return str.substring(0, 1) + Character.toUpperCase(str.charAt(1)) + str.substring(2);
    }

    public static File pathToFile(Path path) {
        if (path == null) {
            return null;
        }
        return path.toFile();
    }

    public static String pkgNameOfClassName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return s.f32937c + (lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf));
    }

    public static Set<String> set(String... strArr) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(strArr));
        return hashSet;
    }

    public static <E> Set<E> subtract(Set<? extends E> set, Set<? extends E> set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.removeAll(set2);
        return hashSet;
    }

    public static String toFileSystemPath(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.charAt(0) == ':') {
            return str.substring(1).replace('.', File.separatorChar);
        }
        int indexOf = str.indexOf(58);
        String substring = str.substring(0, indexOf);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(substring);
        char c10 = File.separatorChar;
        sb2.append(c10);
        sb2.append(str.substring(indexOf + 1).replace('.', c10));
        return sb2.toString();
    }

    public static <E> Set<E> union(Set<? extends E> set, Set<? extends E> set2) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(set);
        hashSet.addAll(set2);
        return hashSet;
    }

    public static int extractIntOption(String str, String str2, int i10) {
        int indexOf = str2.indexOf(str + "=");
        if (indexOf == -1) {
            return i10;
        }
        int length = indexOf + str.length() + 1;
        int indexOf2 = str2.indexOf(44, length);
        if (indexOf2 == -1) {
            indexOf2 = str2.length();
        }
        try {
            return Integer.parseInt(str2.substring(length, indexOf2));
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String extractStringOption(String str, String str2, String str3) {
        int indexOf = str2.indexOf(str + "=");
        if (indexOf == -1) {
            return str3;
        }
        int length = indexOf + str.length() + 1;
        int indexOf2 = str2.indexOf(44, length);
        if (indexOf2 == -1) {
            indexOf2 = str2.length();
        }
        return str2.substring(length, indexOf2);
    }
}
