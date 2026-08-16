package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class MultiTypeDeclarationPattern extends JavaSearchPattern {
    protected static char[][] CATEGORIES = {IIndexConstants.TYPE_DECL};
    public char[][] qualifications;
    public char[][] simpleNames;
    public char typeSuffix;

    public MultiTypeDeclarationPattern(char[][] cArr, char[][] cArr2, char c10, int i10) {
        this(i10);
        if (!this.isCaseSensitive && cArr != null) {
            int length = cArr.length;
            this.qualifications = new char[length];
            for (int i11 = 0; i11 < length; i11++) {
                this.qualifications[i11] = CharOperation.toLowerCase(cArr[i11]);
            }
        } else {
            this.qualifications = cArr;
        }
        if (cArr2 != null) {
            if (!this.isCaseSensitive && !this.isCamelCase) {
                int length2 = cArr2.length;
                this.simpleNames = new char[length2];
                for (int i12 = 0; i12 < length2; i12++) {
                    this.simpleNames[i12] = CharOperation.toLowerCase(cArr2[i12]);
                }
            } else {
                this.simpleNames = cArr2;
            }
        }
        this.typeSuffix = c10;
        this.mustResolve = c10 != 0;
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new QualifiedTypeDeclarationPattern(8);
    }

    @Override
    public char[][] getIndexCategories() {
        return CATEGORIES;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        QualifiedTypeDeclarationPattern qualifiedTypeDeclarationPattern = (QualifiedTypeDeclarationPattern) searchPattern;
        char c10 = this.typeSuffix;
        char c11 = qualifiedTypeDeclarationPattern.typeSuffix;
        if (c10 != c11 && c10 != 0 && !matchDifferentTypeSuffixes(c10, c11)) {
            return false;
        }
        char[][] cArr = this.qualifications;
        if (cArr != null) {
            int length = cArr.length;
            if (length == 0 && qualifiedTypeDeclarationPattern.qualification.length > 0) {
                return false;
            }
            if (length > 0) {
                int i10 = 0;
                while (i10 < length && !matchesName(this.qualifications[i10], qualifiedTypeDeclarationPattern.qualification)) {
                    i10++;
                }
                if (i10 == length) {
                    return false;
                }
            }
        }
        char[][] cArr2 = this.simpleNames;
        if (cArr2 == null) {
            return true;
        }
        int length2 = cArr2.length;
        int i11 = 0;
        while (i11 < length2 && !matchesName(this.simpleNames[i11], qualifiedTypeDeclarationPattern.simpleName)) {
            i11++;
        }
        return i11 < length2;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        char c10 = this.typeSuffix;
        if (c10 == 'A') {
            stringBuffer.append("MultiAnnotationTypeDeclarationPattern: ");
        } else if (c10 == 'C') {
            stringBuffer.append("MultiClassDeclarationPattern: ");
        } else if (c10 == 'E') {
            stringBuffer.append("MultiEnumDeclarationPattern: ");
        } else if (c10 != 'I') {
            switch (c10) {
                case '\t':
                    stringBuffer.append("MultiClassAndEnumDeclarationPattern: ");
                    break;
                case '\n':
                    stringBuffer.append("MultiClassAndInterfaceDeclarationPattern: ");
                    break;
                case 11:
                    stringBuffer.append("MultiInterfaceAndAnnotationDeclarationPattern: ");
                    break;
                default:
                    stringBuffer.append("MultiTypeDeclarationPattern: ");
                    break;
            }
        } else {
            stringBuffer.append("MultiInterfaceDeclarationPattern: ");
        }
        int i10 = 0;
        if (this.qualifications != null) {
            stringBuffer.append("qualifications: <");
            int i11 = 0;
            while (true) {
                char[][] cArr = this.qualifications;
                if (i11 >= cArr.length) {
                    stringBuffer.append("> ");
                } else {
                    stringBuffer.append(cArr[i11]);
                    if (i11 < this.qualifications.length - 1) {
                        stringBuffer.append(", ");
                    }
                    i11++;
                }
            }
        }
        if (this.simpleNames != null) {
            stringBuffer.append("simpleNames: <");
            while (true) {
                char[][] cArr2 = this.simpleNames;
                if (i10 >= cArr2.length) {
                    stringBuffer.append(">");
                } else {
                    stringBuffer.append(cArr2[i10]);
                    if (i10 < this.simpleNames.length - 1) {
                        stringBuffer.append(", ");
                    }
                    i10++;
                }
            }
        }
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) throws IOException {
        char[][] cArr = this.simpleNames;
        if (cArr == null) {
            return index.query(getIndexCategories(), null, -1);
        }
        int length = cArr.length;
        EntryResult[][] entryResultArr = length > 1 ? new EntryResult[length] : null;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            char[] cArr2 = this.simpleNames[i11];
            int matchRule = getMatchRule();
            int matchMode = getMatchMode();
            if (matchMode == 0) {
                matchRule |= 1;
                cArr2 = CharOperation.append(cArr2, '/');
            } else if (matchMode == 2 && cArr2[cArr2.length - 1] != '*') {
                cArr2 = CharOperation.concat(cArr2, IIndexConstants.ONE_STAR, '/');
            }
            EntryResult[] query = index.query(getIndexCategories(), cArr2, matchRule);
            if (query != null) {
                if (entryResultArr == null) {
                    return query;
                }
                i10++;
                entryResultArr[i10] = query;
            }
        }
        if (i10 == -1) {
            return null;
        }
        int i12 = 0;
        for (int i13 = 0; i13 <= i10; i13++) {
            i12 += entryResultArr[i13].length;
        }
        EntryResult[] entryResultArr2 = new EntryResult[i12];
        int i14 = 0;
        for (int i15 = 0; i15 <= i10; i15++) {
            EntryResult[] entryResultArr3 = entryResultArr[i15];
            System.arraycopy(entryResultArr3, 0, entryResultArr2, i14, entryResultArr3.length);
            i14 += entryResultArr3.length;
        }
        return entryResultArr2;
    }

    public MultiTypeDeclarationPattern(int i10) {
        super(8, i10);
    }
}
