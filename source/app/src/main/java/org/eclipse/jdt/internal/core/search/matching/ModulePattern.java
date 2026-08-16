package org.eclipse.jdt.internal.core.search.matching;

import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class ModulePattern extends JavaSearchPattern {
    protected static char[][] DECL_CATEGORIES;
    protected static char[][] REF_AND_DECL_CATEGORIES;
    protected static char[][] REF_CATEGORIES;
    private static char[] regexPrefix;
    boolean findDeclarations;
    boolean findReferences;
    char[] name;

    static {
        char[] cArr = IIndexConstants.MODULE_REF;
        REF_CATEGORIES = new char[][]{cArr};
        char[] cArr2 = IIndexConstants.MODULE_DECL;
        REF_AND_DECL_CATEGORIES = new char[][]{cArr, cArr2};
        DECL_CATEGORIES = new char[][]{cArr2};
        regexPrefix = new char[]{'/', 'r', C15883c.f126249O};
    }

    public ModulePattern(int i10) {
        super(8192, i10);
        this.findDeclarations = true;
        this.findReferences = true;
    }

    public static char[] createIndexKey(char[] cArr) {
        return cArr;
    }

    private static char[] trapDoorRegexExtractModuleName(char[] cArr) {
        int indexOf = CharOperation.indexOf(regexPrefix, cArr, false);
        return indexOf >= 0 ? CharOperation.subarray(cArr, indexOf + regexPrefix.length, cArr.length) : cArr;
    }

    private static int trapDoorRegexMatchRule(char[] cArr, int i10) {
        if (CharOperation.indexOf(regexPrefix, cArr, false) == 0) {
            return 4;
        }
        return i10;
    }

    @Override
    public void decodeIndexKey(char[] cArr) {
        this.name = cArr;
    }

    @Override
    public SearchPattern getBlankPattern() {
        return new ModulePattern(0);
    }

    @Override
    public char[][] getIndexCategories() {
        return this.findReferences ? this.findDeclarations ? REF_AND_DECL_CATEGORIES : REF_CATEGORIES : this.findDeclarations ? DECL_CATEGORIES : CharOperation.NO_CHAR_CHAR;
    }

    @Override
    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        return matchesName(this.name, ((ModulePattern) searchPattern).name);
    }

    public boolean mustResolve() {
        return true;
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        if (this.findDeclarations) {
            stringBuffer.append(this.findReferences ? "ModuleCombinedPattern: " : "ModuleDeclarationPattern: ");
        } else {
            stringBuffer.append("ModuleReferencePattern: ");
        }
        stringBuffer.append("module ");
        stringBuffer.append(this.name);
        return super.print(stringBuffer);
    }

    @Override
    public EntryResult[] queryIn(Index index) throws IOException {
        char[] cArr;
        char[] cArr2 = this.name;
        int matchRule = getMatchRule();
        int matchMode = getMatchMode();
        if (matchMode == 0) {
            char[] cArr3 = this.name;
            if (cArr3 != null) {
                cArr2 = createIndexKey(cArr3);
            } else {
                matchRule |= 1;
            }
        } else if (matchMode == 2 && (cArr = this.name) != null) {
            cArr2 = createIndexKey(cArr);
        }
        return index.query(getIndexCategories(), cArr2, matchRule);
    }

    public ModulePattern(char[] cArr, int i10, int i11) {
        this(trapDoorRegexMatchRule(cArr, i11));
        this.name = trapDoorRegexExtractModuleName(cArr);
        int i12 = i10 & 15;
        if (i12 == 0) {
            this.findReferences = false;
        } else if (i12 != 2) {
            if (i12 == 3 && (getMatchRule() & 4) != 0) {
                this.findReferences = false;
            }
        } else {
            this.findDeclarations = false;
        }
        this.mustResolve = mustResolve();
    }
}
