package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import java.util.regex.Pattern;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchConstants;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class TypeDeclarationPattern extends JavaSearchPattern {
    protected static char[][] CATEGORIES = {IIndexConstants.TYPE_DECL};
    static PackageNameSet internedPackageNames = new PackageNameSet(1001);
    private boolean allowModuleRegex;
    public char[][] enclosingTypeNames;
    public int modifiers;
    public boolean moduleGraph;
    char[][] moduleGraphElements;
    public char[][] moduleNames;
    Pattern[] modulePatterns;
    public char[] pkg;
    public boolean secondary;
    public char[] simpleName;
    public char typeSuffix;

    public static class PackageNameSet {
        public int elementSize = 0;
        public char[][] names;
        public int threshold;

        public PackageNameSet(int i10) {
            this.threshold = i10;
            int i11 = (int) (i10 * 1.5f);
            this.names = new char[i10 == i11 ? i11 + 1 : i11];
        }

        public char[] add(char[] cArr) {
            int length = this.names.length;
            int hashCode = CharOperation.hashCode(cArr) % length;
            while (true) {
                char[][] cArr2 = this.names;
                char[] cArr3 = cArr2[hashCode];
                if (cArr3 == null) {
                    cArr2[hashCode] = cArr;
                    int i10 = this.elementSize + 1;
                    this.elementSize = i10;
                    if (i10 > this.threshold) {
                        rehash();
                    }
                    return cArr;
                }
                if (CharOperation.equals(cArr3, cArr)) {
                    return cArr3;
                }
                hashCode++;
                if (hashCode == length) {
                    hashCode = 0;
                }
            }
        }

        public void rehash() {
            PackageNameSet packageNameSet = new PackageNameSet(this.elementSize * 2);
            int length = this.names.length;
            while (true) {
                length--;
                if (length < 0) {
                    this.names = packageNameSet.names;
                    this.elementSize = packageNameSet.elementSize;
                    this.threshold = packageNameSet.threshold;
                    return;
                } else {
                    char[] cArr = this.names[length];
                    if (cArr != null) {
                        packageNameSet.add(cArr);
                    }
                }
            }
        }
    }

    public TypeDeclarationPattern(char[] cArr, char[] cArr2, char[][] cArr3, char[] cArr4, char c10, int i10) {
        this(i10);
        addModuleNames(cArr);
        this.pkg = this.isCaseSensitive ? cArr2 : CharOperation.toLowerCase(cArr2);
        if (!this.isCaseSensitive && cArr3 != null) {
            int length = cArr3.length;
            this.enclosingTypeNames = new char[length];
            for (int i11 = 0; i11 < length; i11++) {
                this.enclosingTypeNames[i11] = CharOperation.toLowerCase(cArr3[i11]);
            }
        } else {
            this.enclosingTypeNames = cArr3;
        }
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr4 = CharOperation.toLowerCase(cArr4);
        }
        this.simpleName = cArr4;
        this.typeSuffix = c10;
        this.mustResolve = ((this.pkg == null || this.enclosingTypeNames == null) && c10 == 0) ? false : true;
    }

    public static char[] createIndexKey(int i10, char[] cArr, char[] cArr2, char[][] cArr3, boolean z10) {
        int i11;
        int length = cArr == null ? 0 : cArr.length;
        int length2 = cArr2 == null ? 0 : cArr2.length;
        if (cArr3 != null) {
            int length3 = cArr3.length;
            int i12 = 0;
            i11 = 0;
            while (i12 < length3) {
                i11 += cArr3[i12].length;
                i12++;
                if (i12 < length3) {
                    i11++;
                }
            }
        } else {
            i11 = 0;
        }
        int i13 = length + length2 + i11;
        int i14 = i13 + 5;
        if (z10) {
            i14 = i13 + 7;
        }
        char[] cArr4 = new char[i14];
        if (length > 0) {
            System.arraycopy(cArr, 0, cArr4, 0, length);
        } else {
            length = 0;
        }
        int i15 = length + 1;
        cArr4[length] = '/';
        if (length2 > 0) {
            System.arraycopy(cArr2, 0, cArr4, i15, length2);
            i15 += length2;
        }
        int i16 = i15 + 1;
        cArr4[i15] = '/';
        if (cArr3 != null && i11 > 0) {
            int length4 = cArr3.length;
            int i17 = 0;
            while (i17 < length4) {
                char[] cArr5 = cArr3[i17];
                int length5 = cArr5.length;
                System.arraycopy(cArr5, 0, cArr4, i16, length5);
                i16 += length5;
                i17++;
                if (i17 < length4) {
                    cArr4[i16] = '.';
                    i16++;
                }
            }
        }
        cArr4[i16] = '/';
        cArr4[i16 + 1] = (char) i10;
        cArr4[i16 + 2] = (char) (i10 >> 16);
        if (z10) {
            cArr4[i16 + 3] = '/';
            cArr4[i16 + 4] = 'S';
        }
        return cArr4;
    }

    public void addModuleNames(char[] cArr) {
        String str;
        if (cArr == null) {
            return;
        }
        String str2 = new String(IJavaSearchConstants.ALL_UNNAMED);
        String[] split = new String(cArr).split(String.valueOf(CharOperation.COMMA_SEPARATOR));
        int length = split.length;
        if (!this.allowModuleRegex || length <= 0 || (str = split[0]) == null || str.length() <= 0 || split[0].charAt(0) != '0') {
            for (int i10 = 0; i10 < length; i10++) {
                String trim = split[i10].trim();
                split[i10] = trim;
                if (str2.equals(trim)) {
                    split[i10] = "";
                }
            }
        } else {
            split[0] = split[0].substring(1);
            this.modulePatterns = new Pattern[length];
            for (int i11 = 0; i11 < length; i11++) {
                this.modulePatterns[i11] = Pattern.compile(split[i11]);
            }
        }
        this.moduleNames = new char[length];
        for (int i12 = 0; i12 < length; i12++) {
            String str3 = split[i12];
            this.moduleNames[i12] = str3 != null ? str3.toCharArray() : CharOperation.NO_CHAR;
        }
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        int indexOf = CharOperation.indexOf('/', cArr, 0);
        this.simpleName = CharOperation.subarray(cArr, 0, indexOf);
        int i10 = indexOf + 1;
        if (cArr[i10] == '/') {
            this.pkg = CharOperation.NO_CHAR;
        } else {
            int indexOf2 = CharOperation.indexOf('/', cArr, i10);
            this.pkg = internedPackageNames.add(CharOperation.subarray(cArr, i10, indexOf2));
            i10 = indexOf2;
        }
        int length = cArr.length;
        int i11 = length - 1;
        boolean z10 = cArr[i11] == 'S';
        this.secondary = z10;
        if (z10) {
            i11 = length - 3;
        }
        this.modifiers = cArr[i11 - 1] + (cArr[i11] << 16);
        decodeModifiers();
        int i12 = i10 + 1;
        int i13 = i11 - 2;
        if (i12 == i13) {
            this.enclosingTypeNames = CharOperation.NO_CHAR_CHAR;
        } else if (i13 == i10 + 2 && cArr[i12] == '0') {
            this.enclosingTypeNames = IIndexConstants.ONE_ZERO_CHAR;
        } else {
            this.enclosingTypeNames = CharOperation.splitOn('.', cArr, i12, i13);
        }
    }

    public void decodeModifiers() {
        int i10 = this.modifiers & 25088;
        if (i10 == 512) {
            this.typeSuffix = 'I';
            return;
        }
        if (i10 == 8192 || i10 == 8704) {
            this.typeSuffix = IIndexConstants.ANNOTATION_TYPE_SUFFIX;
        } else if (i10 != 16384) {
            this.typeSuffix = 'C';
        } else {
            this.typeSuffix = IIndexConstants.ENUM_SUFFIX;
        }
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new TypeDeclarationPattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        TypeDeclarationPattern typeDeclarationPattern = (TypeDeclarationPattern) searchPattern;
        char c10 = this.typeSuffix;
        char c11 = typeDeclarationPattern.typeSuffix;
        if ((c10 != c11 && c10 != 0 && !matchDifferentTypeSuffixes(c10, c11)) || !matchesName(this.simpleName, typeDeclarationPattern.simpleName)) {
            return false;
        }
        char[] cArr = this.pkg;
        if (cArr != null && !CharOperation.equals(cArr, typeDeclarationPattern.pkg, isCaseSensitive())) {
            return false;
        }
        char[][] cArr2 = this.enclosingTypeNames;
        if (cArr2 == null) {
            return true;
        }
        if (cArr2.length == 0) {
            return typeDeclarationPattern.enclosingTypeNames.length == 0;
        }
        if (cArr2.length == 1) {
            char[][] cArr3 = typeDeclarationPattern.enclosingTypeNames;
            if (cArr3.length == 1) {
                return CharOperation.equals(cArr2[0], cArr3[0], isCaseSensitive());
            }
        }
        char[][] cArr4 = typeDeclarationPattern.enclosingTypeNames;
        if (cArr4 == IIndexConstants.ONE_ZERO_CHAR) {
            return true;
        }
        return CharOperation.equals(cArr2, cArr4, isCaseSensitive());
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        char c10 = this.typeSuffix;
        if (c10 == 'A') {
            stringBuffer.append("AnnotationTypeDeclarationPattern: pkg<");
        } else if (c10 == 'C') {
            stringBuffer.append("ClassDeclarationPattern: pkg<");
        } else if (c10 == 'E') {
            stringBuffer.append("EnumDeclarationPattern: pkg<");
        } else if (c10 != 'I') {
            switch (c10) {
                case '\t':
                    stringBuffer.append("ClassAndEnumDeclarationPattern: pkg<");
                    break;
                case '\n':
                    stringBuffer.append("ClassAndInterfaceDeclarationPattern: pkg<");
                    break;
                case 11:
                    stringBuffer.append("InterfaceAndAnnotationDeclarationPattern: pkg<");
                    break;
                default:
                    stringBuffer.append("TypeDeclarationPattern: pkg<");
                    break;
            }
        } else {
            stringBuffer.append("InterfaceDeclarationPattern: pkg<");
        }
        char[] cArr = this.pkg;
        if (cArr != null) {
            stringBuffer.append(cArr);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">, enclosing<");
        if (this.enclosingTypeNames != null) {
            int i10 = 0;
            while (true) {
                char[][] cArr2 = this.enclosingTypeNames;
                if (i10 < cArr2.length) {
                    stringBuffer.append(cArr2[i10]);
                    if (i10 < this.enclosingTypeNames.length - 1) {
                        stringBuffer.append('.');
                    }
                    i10++;
                }
            }
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">, type<");
        char[] cArr3 = this.simpleName;
        if (cArr3 != null) {
            stringBuffer.append(cArr3);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">");
        return super.print(stringBuffer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r2 != 2) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public EntryResult[] queryIn(Index index) throws IOException {
        char[] cArr = this.simpleName;
        int matchRule = getMatchRule();
        int matchMode = getMatchMode();
        if (matchMode == 0) {
            char[] cArr2 = this.simpleName;
            if (cArr2 != null) {
                matchRule |= 1;
                char[] cArr3 = this.pkg;
                cArr = cArr3 == null ? CharOperation.append(cArr2, '/') : CharOperation.concat(cArr2, '/', cArr3, '/', CharOperation.NO_CHAR);
            } else {
                matchRule |= 2;
                char[] cArr4 = this.pkg;
                if (cArr4 == null) {
                    char[] cArr5 = this.simpleName;
                    if (cArr5 != null && cArr5[cArr5.length - 1] != '*') {
                        cArr = CharOperation.concat(cArr5, IIndexConstants.ONE_STAR, '/');
                    }
                } else {
                    char[] cArr6 = this.simpleName;
                    if (cArr6 == null) {
                        cArr6 = IIndexConstants.ONE_STAR;
                    }
                    cArr = CharOperation.concat(cArr6, '/', cArr4, '/', IIndexConstants.ONE_STAR);
                }
            }
        }
        return index.query(getIndexCategories(), cArr, matchRule);
    }

    public TypeDeclarationPattern(char[] cArr, char[][] cArr2, char[] cArr3, char c10, int i10) {
        this(null, cArr, cArr2, cArr3, c10, i10);
    }

    public TypeDeclarationPattern(int i10) {
        super(8, i10);
        this.moduleNames = null;
        this.allowModuleRegex = false;
        this.modulePatterns = null;
        this.moduleGraph = false;
        this.moduleGraphElements = null;
        this.secondary = false;
    }
}
