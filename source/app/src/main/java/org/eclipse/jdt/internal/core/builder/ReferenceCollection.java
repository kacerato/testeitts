package org.eclipse.jdt.internal.core.builder;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.openjdk.tools.doclint.DocLint;

public class ReferenceCollection {
    private static final int BINARY_SEARCH_THRESHOLD = 16;
    private static final Comparator<char[]> CHAR_ARR_COMPARATOR;
    private static final Comparator<char[][]> CHAR_CHAR_ARR_COMPARATOR;
    static final char[][][] EmptyQualifiedNames;
    static final char[][] EmptySimpleNames;
    static QualifiedNameSet[] InternedQualifiedNames = null;
    static NameSet[] InternedSimpleNames = null;
    static final int MaxQualifiedNames = 7;
    static final int MaxSimpleNames = 30;
    public static boolean REFERENCE_COLLECTION_DEBUG;
    static final char[][][] WellKnownQualifiedNames;
    static final char[][] WellKnownSimpleNames;
    char[][][] qualifiedNameReferences;
    char[][] rootReferences;
    char[][] simpleNameReferences;

    static {
        char[][] cArr = TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION;
        char[][] cArr2 = TypeConstants.JAVA_LANG_THROWABLE;
        char[][] cArr3 = TypeConstants.JAVA_LANG_OBJECT;
        char[][] cArr4 = TypeConstants.JAVA_LANG;
        char[] cArr5 = TypeConstants.JAVA;
        char[][] cArr6 = CharOperation.NO_CHAR_CHAR;
        WellKnownQualifiedNames = new char[][][]{cArr, cArr2, cArr3, cArr4, new char[][]{cArr5}, new char[][]{new char[]{'o', 'r', 'g'}}, new char[][]{new char[]{'c', 'o', 'm'}}, cArr6};
        WellKnownSimpleNames = new char[][]{cArr[2], cArr2[2], cArr3[2], cArr5, TypeConstants.LANG, new char[]{'o', 'r', 'g'}, new char[]{'c', 'o', 'm'}};
        EmptyQualifiedNames = new char[0][];
        EmptySimpleNames = cArr6;
        InternedQualifiedNames = new QualifiedNameSet[7];
        InternedSimpleNames = new NameSet[30];
        for (int i10 = 0; i10 < 7; i10++) {
            InternedQualifiedNames[i10] = new QualifiedNameSet(37);
        }
        for (int i11 = 0; i11 < 30; i11++) {
            InternedSimpleNames[i11] = new NameSet(37);
        }
        CHAR_ARR_COMPARATOR = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compareCharArray;
                compareCharArray = ReferenceCollection.compareCharArray((char[]) obj, (char[]) obj2);
                return compareCharArray;
            }
        };
        CHAR_CHAR_ARR_COMPARATOR = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ReferenceCollection.compareCharCharArray((char[][]) obj, (char[][]) obj2);
            }
        };
        REFERENCE_COLLECTION_DEBUG = false;
    }

    public ReferenceCollection(char[][][] cArr, char[][] cArr2, char[][] cArr3) {
        this.qualifiedNameReferences = internQualifiedNames(cArr, false);
        this.simpleNameReferences = internSimpleNames(cArr2, true);
        this.rootReferences = internSimpleNames(cArr3, false);
    }

    private void assertIncludes(boolean z10, char[] cArr) {
        if (z10 != debugIncludes(cArr)) {
            StringBuilder sb2 = new StringBuilder("Mismatch: ");
            sb2.append(String.valueOf(cArr));
            sb2.append(z10 ? " should not " : " should ");
            sb2.append(" be included in ");
            sb2.append((Object) Arrays.asList(CharOperation.toStrings(this.simpleNameReferences)));
            throw new IllegalStateException(sb2.toString());
        }
    }

    public static int compareCharArray(char[] cArr, char[] cArr2) {
        if (cArr == cArr2) {
            return 0;
        }
        int length = cArr.length;
        int length2 = cArr2.length - length;
        if (length2 == 0) {
            for (int i10 = 0; i10 < length; i10++) {
                length2 = cArr[i10] - cArr2[i10];
                if (length2 != 0) {
                    break;
                }
            }
        }
        return length2;
    }

    public static int compareCharCharArray(char[][] cArr, char[][] cArr2) {
        if (cArr == cArr2) {
            return 0;
        }
        int length = cArr.length;
        int length2 = cArr2.length - length;
        if (length2 == 0) {
            for (int i10 = 0; i10 < length; i10++) {
                length2 = compareCharArray(cArr[i10], cArr2[i10]);
                if (length2 != 0) {
                    break;
                }
            }
        }
        return length2;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean debugIncludes(char[][][] cArr, char[][] cArr2, char[][] cArr3) {
        int i10;
        if (cArr3 != null) {
            int length = cArr3.length;
            boolean z10 = false;
            for (int i11 = 0; !z10 && i11 < length; i11++) {
                z10 = debugInsideRoot(cArr3[i11]);
            }
            if (!z10) {
                return false;
            }
        }
        if (cArr2 == null || cArr == null) {
            if (cArr2 == null && cArr == null) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Found well known match");
                }
                return true;
            }
            if (cArr == null) {
                int length2 = cArr2.length;
                for (int i12 = 0; i12 < length2; i12++) {
                    if (debugIncludes(cArr2[i12])) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found match in well known package to " + new String(cArr2[i12]));
                        }
                        return true;
                    }
                }
            } else {
                for (char[][] cArr4 : cArr) {
                    if (cArr4.length == 1) {
                        if (debugIncludes(cArr4[0])) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Found well known match in " + CharOperation.toString(cArr4));
                            }
                            return true;
                        }
                    } else {
                        if (debugIncludes(cArr4)) {
                            if (JavaBuilder.DEBUG) {
                            }
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        int length3 = cArr2.length;
        if (length3 <= cArr.length) {
            for (int i13 = 0; i13 < length3; i13++) {
                if (debugIncludes(cArr2[i13])) {
                    for (char[][] cArr5 : cArr) {
                        if (cArr5.length == 1) {
                            if (debugIncludes(cArr5[0])) {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Found match in " + CharOperation.toString(cArr5) + " to " + new String(cArr2[i13]));
                                }
                                return true;
                            }
                        } else {
                            if (debugIncludes(cArr5)) {
                                if (JavaBuilder.DEBUG) {
                                }
                                return true;
                            }
                        }
                    }
                    return false;
                }
            }
        } else {
            for (char[][] cArr6 : cArr) {
                if (cArr6.length == 1) {
                    if (debugIncludes(cArr6[0])) {
                        for (i10 = 0; i10 < length3; i10++) {
                            if (debugIncludes(cArr2[i10])) {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Found match in " + CharOperation.toString(cArr6) + " to " + new String(cArr2[i10]));
                                }
                                return true;
                            }
                        }
                        return false;
                    }
                } else {
                    if (debugIncludes(cArr6)) {
                        while (i10 < length3) {
                        }
                        return false;
                    }
                }
            }
        }
        return false;
    }

    private boolean debugInsideRoot(char[] cArr) {
        int length = this.rootReferences.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr == this.rootReferences[i10]) {
                return true;
            }
        }
        return false;
    }

    private boolean doIncludes(char[][][] cArr, char[][] cArr2, char[][] cArr3) {
        if (cArr3 != null && !includesRootName(cArr3)) {
            return false;
        }
        if (cArr2 != null && cArr != null) {
            return cArr2.length <= cArr.length ? includesSimpleName(cArr2) && includesQualifiedName(cArr) : includesQualifiedName(cArr) && includesSimpleName(cArr2);
        }
        if (cArr2 != null || cArr != null) {
            return cArr == null ? includesSimpleName(cArr2) : includesQualifiedName(cArr);
        }
        if (JavaBuilder.DEBUG) {
            System.out.println("Found well known match");
        }
        return true;
    }

    private static char[][] ensureContainedInSortedOrder(char[][] cArr, char[] cArr2) {
        int binarySearch = Arrays.binarySearch(cArr, cArr2, CHAR_ARR_COMPARATOR);
        if (binarySearch >= 0) {
            return cArr;
        }
        char[][] cArr3 = new char[cArr.length + 1];
        insertIntoArray(cArr, cArr3, cArr2, -(binarySearch + 1));
        return cArr3;
    }

    private boolean includesQualifiedName(char[][][] cArr) {
        if (intersects(cArr, this.qualifiedNameReferences, CHAR_CHAR_ARR_COMPARATOR)) {
            return true;
        }
        for (int length = cArr.length - 1; length >= 0; length--) {
            char[][] cArr2 = cArr[length];
            if (cArr2.length != 1) {
                break;
            }
            if (includes(cArr2[0])) {
                return true;
            }
        }
        return false;
    }

    private boolean includesRootName(char[][] cArr) {
        return intersects(cArr, this.rootReferences, CHAR_ARR_COMPARATOR);
    }

    private boolean includesSimpleName(char[][] cArr) {
        return intersects(cArr, this.simpleNameReferences, CHAR_ARR_COMPARATOR);
    }

    private static void insertIntoArray(Object[] objArr, Object[] objArr2, Object obj, int i10) {
        System.arraycopy(objArr, 0, objArr2, 0, i10);
        objArr2[i10] = obj;
        System.arraycopy(objArr, i10, objArr2, i10 + 1, objArr.length - i10);
    }

    public static char[][][] internQualifiedNames(Set<String> set) {
        if (set == null) {
            return EmptyQualifiedNames;
        }
        int size = set.size();
        if (size == 0) {
            return EmptyQualifiedNames;
        }
        char[][][] cArr = new char[size][];
        for (String str : set) {
            if (str != null) {
                size--;
                cArr[size] = CharOperation.splitOn('/', str.toCharArray());
            }
        }
        return internQualifiedNames(cArr, false);
    }

    public static char[][] internSimpleNames(Set<String> set) {
        return internSimpleNames(set, true);
    }

    private static <T> boolean intersects(T[] tArr, T[] tArr2, Comparator<? super T> comparator) {
        int length = tArr.length;
        int length2 = tArr2.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length && i11 < length2) {
            T t10 = tArr[i10];
            T t11 = tArr2[i11];
            int compare = comparator.compare(t10, t11);
            if (compare == 0) {
                return true;
            }
            if (compare < 0) {
                i10++;
                if (length - i10 <= 16) {
                    continue;
                } else {
                    int binarySearch = Arrays.binarySearch(tArr, i10, length, t11, comparator);
                    if (binarySearch >= 0) {
                        return true;
                    }
                    i10 = -(binarySearch + 1);
                }
            } else {
                i11++;
                if (length2 - i11 <= 16) {
                    continue;
                } else {
                    int binarySearch2 = Arrays.binarySearch(tArr2, i11, length2, t10, comparator);
                    if (binarySearch2 >= 0) {
                        return true;
                    }
                    i11 = -(binarySearch2 + 1);
                }
            }
        }
        return false;
    }

    private static boolean isWellKnownQualifiedName(char[][] cArr) {
        int length = WellKnownQualifiedNames.length;
        int length2 = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            char[][] cArr2 = WellKnownQualifiedNames[i10];
            if (length2 > cArr2.length) {
                break;
            }
            if (CharOperation.equals(cArr, cArr2)) {
                return true;
            }
        }
        return false;
    }

    private static String qualifiedNamesToString(char[][][] cArr) {
        return cArr == null ? "null" : (String) Arrays.stream(cArr).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return CharOperation.toString((char[][]) obj);
            }
        }).collect(Collectors.joining(DocLint.SEPARATOR));
    }

    private static <T> boolean sortedArrayContains(T[] tArr, T t10, Comparator<? super T> comparator) {
        if (tArr.length >= 16) {
            return Arrays.binarySearch(tArr, t10, comparator) >= 0;
        }
        for (T t11 : tArr) {
            if (t10 == t11) {
                return true;
            }
        }
        return false;
    }

    public void addDependencies(String[] strArr) {
        for (String str : strArr) {
            char[][] splitOn = CharOperation.splitOn('.', str.toCharArray());
            if (!isWellKnownQualifiedName(splitOn)) {
                int length = splitOn.length;
                char[][] add = InternedQualifiedNames[length <= 7 ? length - 1 : 0].add(internSimpleNames(splitOn, false, false));
                while (true) {
                    int binarySearch = Arrays.binarySearch(this.qualifiedNameReferences, add, CHAR_CHAR_ARR_COMPARATOR);
                    if (binarySearch >= 0) {
                        break;
                    }
                    this.simpleNameReferences = ensureContainedInSortedOrder(this.simpleNameReferences, add[add.length - 1]);
                    this.rootReferences = ensureContainedInSortedOrder(this.rootReferences, add[0]);
                    char[][][] cArr = this.qualifiedNameReferences;
                    char[][][] cArr2 = new char[cArr.length + 1][];
                    this.qualifiedNameReferences = cArr2;
                    insertIntoArray(cArr, cArr2, add, -(binarySearch + 1));
                    char[][][] internQualifiedNames = internQualifiedNames(new char[][][]{CharOperation.subarray(add, 0, add.length - 1)}, false);
                    if (internQualifiedNames == EmptyQualifiedNames) {
                        break;
                    } else {
                        add = internQualifiedNames[0];
                    }
                }
            }
        }
    }

    public boolean includes(char[] cArr) {
        boolean sortedArrayContains = sortedArrayContains(this.simpleNameReferences, cArr, CHAR_ARR_COMPARATOR);
        if (REFERENCE_COLLECTION_DEBUG) {
            assertIncludes(sortedArrayContains, cArr);
        }
        return sortedArrayContains;
    }

    public boolean insideRoot(char[] cArr) {
        boolean sortedArrayContains = sortedArrayContains(this.rootReferences, cArr, CHAR_ARR_COMPARATOR);
        if (!REFERENCE_COLLECTION_DEBUG || sortedArrayContains == debugIncludes(cArr)) {
            return sortedArrayContains;
        }
        StringBuilder sb2 = new StringBuilder("Mismatch: ");
        sb2.append(String.valueOf(cArr));
        sb2.append(sortedArrayContains ? " should not " : " should ");
        sb2.append(" be included in ");
        sb2.append((Object) Arrays.asList(CharOperation.toStrings(this.rootReferences)));
        throw new IllegalStateException(sb2.toString());
    }

    public static char[][] internSimpleNames(Set<String> set, boolean z10) {
        if (set == null) {
            return EmptySimpleNames;
        }
        int size = set.size();
        if (size == 0) {
            return EmptySimpleNames;
        }
        char[][] cArr = new char[size];
        for (String str : set) {
            if (str != null) {
                size--;
                cArr[size] = str.toCharArray();
            }
        }
        return internSimpleNames(cArr, z10);
    }

    public boolean includes(char[][] cArr) {
        boolean sortedArrayContains = sortedArrayContains(this.qualifiedNameReferences, cArr, CHAR_CHAR_ARR_COMPARATOR);
        if (REFERENCE_COLLECTION_DEBUG) {
            assertIncludes(sortedArrayContains, cArr);
        }
        return sortedArrayContains;
    }

    private void assertIncludes(boolean z10, char[][] cArr) {
        if (z10 != debugIncludes(cArr)) {
            StringBuilder sb2 = new StringBuilder("Mismatch: ");
            sb2.append(CharOperation.toString(cArr));
            sb2.append(z10 ? " should not " : " should ");
            sb2.append(" be included in ");
            sb2.append(qualifiedNamesToString(this.qualifiedNameReferences));
            throw new IllegalStateException(sb2.toString());
        }
    }

    public boolean includes(char[][][] cArr, char[][] cArr2) {
        return includes(cArr, cArr2, null);
    }

    public boolean includes(char[][][] cArr, char[][] cArr2, char[][] cArr3) {
        boolean doIncludes = doIncludes(cArr, cArr2, cArr3);
        if (REFERENCE_COLLECTION_DEBUG) {
            assertIncludes(doIncludes, cArr, cArr2, cArr3);
        }
        return doIncludes;
    }

    public static char[][][] internQualifiedNames(StringSet stringSet) {
        if (stringSet == null) {
            return EmptyQualifiedNames;
        }
        int i10 = stringSet.elementSize;
        if (i10 == 0) {
            return EmptyQualifiedNames;
        }
        char[][][] cArr = new char[i10][];
        for (String str : stringSet.values) {
            if (str != null) {
                i10--;
                cArr[i10] = CharOperation.splitOn('/', str.toCharArray());
            }
        }
        return internQualifiedNames(cArr, false);
    }

    public static char[][] internSimpleNames(StringSet stringSet, boolean z10) {
        if (stringSet == null) {
            return EmptySimpleNames;
        }
        int i10 = stringSet.elementSize;
        if (i10 == 0) {
            return EmptySimpleNames;
        }
        char[][] cArr = new char[i10];
        for (String str : stringSet.values) {
            if (str != null) {
                i10--;
                cArr[i10] = str.toCharArray();
            }
        }
        return internSimpleNames(cArr, z10);
    }

    private void assertIncludes(boolean z10, char[][][] cArr, char[][] cArr2, char[][] cArr3) {
        if (z10 != debugIncludes(cArr, cArr2, cArr3)) {
            throw new IllegalStateException(String.format("Mismatched includes(..): ReferenceCollection([%s], %s, %s).includes([%s], %s, %s)", qualifiedNamesToString(this.qualifiedNameReferences), Arrays.toString(CharOperation.toStrings(this.simpleNameReferences)), Arrays.toString(CharOperation.toStrings(this.rootReferences)), qualifiedNamesToString(cArr), Arrays.toString(CharOperation.toStrings(cArr2)), Arrays.toString(CharOperation.toStrings(cArr3))));
        }
    }

    public static char[][][] internQualifiedNames(char[][][] cArr) {
        return internQualifiedNames(cArr, false);
    }

    public static char[][][] internQualifiedNames(char[][][] cArr, boolean z10) {
        return internQualifiedNames(cArr, z10, true);
    }

    public static char[][] internSimpleNames(char[][] cArr, boolean z10) {
        return internSimpleNames(cArr, z10, true);
    }

    public static char[][][] internQualifiedNames(char[][][] cArr, boolean z10, boolean z11) {
        if (cArr == null) {
            return EmptyQualifiedNames;
        }
        int length = cArr.length;
        if (length == 0) {
            return EmptyQualifiedNames;
        }
        char[][][] cArr2 = new char[length][];
        boolean z12 = true;
        char[][] cArr3 = null;
        int i10 = 0;
        for (char[][] cArr4 : cArr) {
            int length2 = cArr4.length;
            int length3 = WellKnownQualifiedNames.length;
            for (int i11 = 0; i11 < length3; i11++) {
                char[][] cArr5 = WellKnownQualifiedNames[i11];
                if (length2 > cArr5.length) {
                    break;
                }
                if (CharOperation.equals(cArr4, cArr5)) {
                    if (z10) {
                        if (z11 && z12) {
                            if (cArr3 != null && compareCharCharArray(cArr3, cArr4) > 0) {
                                z12 = false;
                            }
                            cArr3 = cArr4;
                        }
                        cArr2[i10] = cArr5;
                        i10++;
                    }
                }
            }
            QualifiedNameSet qualifiedNameSet = InternedQualifiedNames[length2 <= 7 ? length2 - 1 : 0];
            char[][] internSimpleNames = internSimpleNames(cArr4, false, false);
            if (z11 && z12) {
                if (cArr3 != null && compareCharCharArray(cArr3, internSimpleNames) > 0) {
                    z12 = false;
                }
                cArr3 = internSimpleNames;
            }
            cArr2[i10] = qualifiedNameSet.add(internSimpleNames);
            i10++;
        }
        if (length > i10) {
            if (i10 == 0) {
                return EmptyQualifiedNames;
            }
            char[][][] cArr6 = new char[i10][];
            System.arraycopy(cArr2, 0, cArr6, 0, i10);
            cArr2 = cArr6;
        }
        if (z11 && !z12) {
            Arrays.sort(cArr2, CHAR_CHAR_ARR_COMPARATOR);
        }
        return cArr2;
    }

    public static char[][] internSimpleNames(char[][] cArr, boolean z10, boolean z11) {
        if (cArr == null) {
            return EmptySimpleNames;
        }
        int length = cArr.length;
        if (length == 0) {
            return EmptySimpleNames;
        }
        char[][] cArr2 = new char[length];
        boolean z12 = true;
        char[] cArr3 = null;
        int i10 = 0;
        for (char[] cArr4 : cArr) {
            int length2 = cArr4.length;
            int length3 = WellKnownSimpleNames.length;
            for (int i11 = 0; i11 < length3; i11++) {
                char[] cArr5 = WellKnownSimpleNames[i11];
                if (length2 > cArr5.length) {
                    break;
                }
                if (CharOperation.equals(cArr4, cArr5)) {
                    if (!z10) {
                        int i12 = i10 + 1;
                        cArr2[i10] = cArr5;
                        if (z11 && z12) {
                            if (cArr3 != null && compareCharArray(cArr3, cArr4) > 0) {
                                z12 = false;
                            }
                            cArr3 = cArr4;
                        }
                        i10 = i12;
                    }
                }
            }
            NameSet[] nameSetArr = InternedSimpleNames;
            if (length2 >= 30) {
                length2 = 0;
            }
            NameSet nameSet = nameSetArr[length2];
            int i13 = i10 + 1;
            cArr2[i10] = nameSet.add(cArr4);
            if (z11 && z12) {
                if (cArr3 != null && compareCharArray(cArr3, cArr4) > 0) {
                    z12 = false;
                }
                cArr3 = cArr4;
            }
            i10 = i13;
        }
        if (length > i10) {
            if (i10 == 0) {
                return EmptySimpleNames;
            }
            char[][] cArr6 = new char[i10];
            System.arraycopy(cArr2, 0, cArr6, 0, i10);
            cArr2 = cArr6;
        }
        if (z11 && !z12) {
            Arrays.sort(cArr2, CHAR_ARR_COMPARATOR);
        }
        return cArr2;
    }

    private boolean debugIncludes(char[] cArr) {
        int length = this.simpleNameReferences.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr == this.simpleNameReferences[i10]) {
                return true;
            }
        }
        return false;
    }

    private boolean debugIncludes(char[][] cArr) {
        int length = this.qualifiedNameReferences.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr == this.qualifiedNameReferences[i10]) {
                return true;
            }
        }
        return false;
    }
}
