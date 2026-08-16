package org.eclipse.jdt.internal.core.search.matching;

import okhttp3.C14587g;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class FieldPattern extends VariablePattern {
    protected static char[][] DECL_CATEGORIES;
    protected static char[][] REF_AND_DECL_CATEGORIES;
    protected static char[][] REF_CATEGORIES;
    protected char[] declaringQualification;
    protected char[] declaringSimpleName;
    protected char[] typeQualification;
    protected char[] typeSimpleName;

    static {
        char[] cArr = IIndexConstants.REF;
        REF_CATEGORIES = new char[][]{cArr};
        char[] cArr2 = IIndexConstants.FIELD_DECL;
        REF_AND_DECL_CATEGORIES = new char[][]{cArr, cArr2};
        DECL_CATEGORIES = new char[][]{cArr2};
    }

    public FieldPattern(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, int i10, int i11) {
        super(64, cArr, i10, i11);
        this.declaringQualification = this.isCaseSensitive ? cArr2 : CharOperation.toLowerCase(cArr2);
        this.declaringSimpleName = this.isCaseSensitive ? cArr3 : CharOperation.toLowerCase(cArr3);
        this.typeQualification = this.isCaseSensitive ? cArr4 : CharOperation.toLowerCase(cArr4);
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr5 = CharOperation.toLowerCase(cArr5);
        }
        this.typeSimpleName = cArr5;
        this.mustResolve = mustResolve();
    }

    public static char[] createIndexKey(char[] cArr) {
        return cArr;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        this.name = cArr;
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new FieldPattern(null, null, null, null, null, 0, 8);
    }

    @Override
    public char[][] getIndexCategories() {
        return (this.findReferences || this.fineGrain != 0) ? (this.findDeclarations || this.writeAccess) ? REF_AND_DECL_CATEGORIES : REF_CATEGORIES : this.findDeclarations ? DECL_CATEGORIES : CharOperation.NO_CHAR_CHAR;
    }

    @Override
    public char[] getIndexKey() {
        return this.name;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        return true;
    }

    @Override
    public boolean mustResolve() {
        if (this.declaringSimpleName == null && this.declaringQualification == null && this.typeSimpleName == null && this.typeQualification == null) {
            return super.mustResolve();
        }
        return true;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        if (this.findDeclarations) {
            stringBuffer.append(this.findReferences ? "FieldCombinedPattern: " : "FieldDeclarationPattern: ");
        } else {
            stringBuffer.append("FieldReferencePattern: ");
        }
        char[] cArr = this.declaringQualification;
        if (cArr != null) {
            stringBuffer.append(cArr);
            stringBuffer.append('.');
        }
        char[] cArr2 = this.declaringSimpleName;
        if (cArr2 != null) {
            stringBuffer.append(cArr2);
            stringBuffer.append('.');
        } else if (this.declaringQualification != null) {
            stringBuffer.append(C14587g.b.f99238e);
        }
        char[] cArr3 = this.name;
        if (cArr3 == null) {
            stringBuffer.append("*");
        } else {
            stringBuffer.append(cArr3);
        }
        if (this.typeQualification != null) {
            stringBuffer.append(" --> ");
            stringBuffer.append(this.typeQualification);
            stringBuffer.append('.');
        } else if (this.typeSimpleName != null) {
            stringBuffer.append(" --> ");
        }
        char[] cArr4 = this.typeSimpleName;
        if (cArr4 != null) {
            stringBuffer.append(cArr4);
        } else if (this.typeQualification != null) {
            stringBuffer.append("*");
        }
        return super.print(stringBuffer);
    }

    public FieldPattern(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, String str, int i10, int i11) {
        this(cArr, cArr2, cArr3, cArr4, cArr5, i10, i11);
        if (str != null) {
            char[][] splitTypeLevelsSignature = Util.splitTypeLevelsSignature(str);
            this.typeSignatures = splitTypeLevelsSignature;
            setTypeArguments(Util.getAllTypeArguments(splitTypeLevelsSignature));
        }
    }
}
