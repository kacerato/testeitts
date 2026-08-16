package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class QualifiedTypeDeclarationPattern extends TypeDeclarationPattern {
    public int packageIndex;
    PackageDeclarationPattern packagePattern;
    public char[] qualification;

    public QualifiedTypeDeclarationPattern(char[] cArr, char[] cArr2, char[] cArr3, char c10, int i10) {
        this(i10);
        addModuleNames(cArr);
        this.qualification = this.isCaseSensitive ? cArr2 : CharOperation.toLowerCase(cArr2);
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr3 = CharOperation.toLowerCase(cArr3);
        }
        this.simpleName = cArr3;
        this.typeSuffix = c10;
        this.mustResolve = (this.qualification == null && c10 == 0 && cArr == null) ? false : true;
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
            this.pkg = TypeDeclarationPattern.internedPackageNames.add(CharOperation.subarray(cArr, i10, indexOf2));
            i10 = indexOf2;
        }
        this.qualification = this.pkg;
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
            return;
        }
        char[] cArr2 = this.qualification;
        int length2 = cArr2.length;
        int i14 = i13 - i12;
        int i15 = length2 + 1;
        char[] cArr3 = new char[i15 + i14];
        this.qualification = cArr3;
        System.arraycopy(cArr2, 0, cArr3, 0, length2);
        char[] cArr4 = this.qualification;
        cArr4[length2] = '.';
        if (i13 == i10 + 2 && cArr[i12] == '0') {
            this.enclosingTypeNames = IIndexConstants.ONE_ZERO_CHAR;
            cArr4[i15] = '0';
        } else {
            this.enclosingTypeNames = CharOperation.splitOn('.', cArr, i12, i13);
            System.arraycopy(cArr, i12, this.qualification, i15, i14);
        }
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new QualifiedTypeDeclarationPattern(8);
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        char[] cArr;
        PackageDeclarationPattern packageDeclarationPattern;
        QualifiedTypeDeclarationPattern qualifiedTypeDeclarationPattern = (QualifiedTypeDeclarationPattern) searchPattern;
        char c10 = this.typeSuffix;
        char c11 = qualifiedTypeDeclarationPattern.typeSuffix;
        return (c10 == c11 || c10 == 0 || matchDifferentTypeSuffixes(c10, c11)) && matchesName(this.simpleName, qualifiedTypeDeclarationPattern.simpleName) && ((cArr = this.qualification) == null || (packageDeclarationPattern = this.packagePattern) == null || packageDeclarationPattern.matchesName(cArr, qualifiedTypeDeclarationPattern.qualification));
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        char c10 = this.typeSuffix;
        if (c10 == 'A') {
            stringBuffer.append("AnnotationTypeDeclarationPattern: qualification<");
        } else if (c10 == 'C') {
            stringBuffer.append("ClassDeclarationPattern: qualification<");
        } else if (c10 == 'E') {
            stringBuffer.append("EnumDeclarationPattern: qualification<");
        } else if (c10 != 'I') {
            switch (c10) {
                case '\t':
                    stringBuffer.append("ClassAndEnumDeclarationPattern: qualification<");
                    break;
                case '\n':
                    stringBuffer.append("ClassAndInterfaceDeclarationPattern: qualification<");
                    break;
                case 11:
                    stringBuffer.append("InterfaceAndAnnotationDeclarationPattern: qualification<");
                    break;
                default:
                    stringBuffer.append("TypeDeclarationPattern: qualification<");
                    break;
            }
        } else {
            stringBuffer.append("InterfaceDeclarationPattern: qualification<");
        }
        char[] cArr = this.qualification;
        if (cArr != null) {
            stringBuffer.append(cArr);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append(">, type<");
        char[] cArr2 = this.simpleName;
        if (cArr2 != null) {
            stringBuffer.append(cArr2);
        } else {
            stringBuffer.append("*");
        }
        stringBuffer.append("> ");
        return super.print(stringBuffer);
    }

    public QualifiedTypeDeclarationPattern(char[] cArr, char[] cArr2, char c10, int i10) {
        this((char[]) null, cArr, cArr2, c10, i10);
    }

    public QualifiedTypeDeclarationPattern(char[] cArr, int i10, char[] cArr2, char c10, int i11) {
        this(cArr, cArr2, c10, i11);
        this.packagePattern = new PackageDeclarationPattern(cArr, i10);
    }

    public QualifiedTypeDeclarationPattern(int i10) {
        super(i10);
        this.packageIndex = -1;
    }
}
