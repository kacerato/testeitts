package org.eclipse.jdt.core.search;

import com.tonyodev.fetch2core.server.FileRequest;
import java.io.IOException;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModularClassFile;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.HierarchyScope;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.search.StringOperation;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.AndPattern;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.LocalVariablePattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.ModulePattern;
import org.eclipse.jdt.internal.core.search.matching.OrPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeParameterPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeReferencePattern;

public abstract class SearchPattern {
    private static final int MODE_MASK = 391;
    public static final int R_CAMELCASE_MATCH = 128;
    public static final int R_CAMELCASE_SAME_PART_COUNT_MATCH = 256;
    public static final int R_CASE_SENSITIVE = 8;
    public static final int R_EQUIVALENT_MATCH = 32;
    public static final int R_ERASURE_MATCH = 16;
    public static final int R_EXACT_MATCH = 0;
    public static final int R_FULL_MATCH = 64;
    public static final int R_PATTERN_MATCH = 2;
    public static final int R_PREFIX_MATCH = 1;
    public static final int R_REGEXP_MATCH = 4;
    public static final int R_SUBSTRING_MATCH = 512;
    public IJavaElement focus;
    public int kind;
    private int matchRule;
    public boolean mustResolve = true;

    public SearchPattern(int i10) {
        this.matchRule = i10;
        if ((i10 & 48) == 0) {
            this.matchRule = i10 | 64;
        }
        if ((i10 & 128) != 0) {
            this.matchRule &= -258;
        } else if ((i10 & 256) != 0) {
            this.matchRule &= -2;
        }
    }

    public static final boolean camelCaseMatch(String str, String str2) {
        if (str == null) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return camelCaseMatch(str, 0, str.length(), str2, 0, str2.length(), false);
    }

    public static SearchPattern createAndPattern(SearchPattern searchPattern, SearchPattern searchPattern2) {
        return new AndPattern(searchPattern, searchPattern2);
    }

    private static SearchPattern createFieldPattern(String str, int i10, int i11) {
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        char[] cArr4;
        char[] cArr5;
        char[] cArr6;
        Scanner scanner = new Scanner(false, true, false, ClassFileConstants.JDK1_7, null, null, true);
        scanner.setSource(str.toCharArray());
        try {
            int i12 = -1;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            char c10 = 1;
            for (int nextToken = scanner.getNextToken(); nextToken != 61; nextToken = scanner.getNextToken()) {
                if (c10 != 1) {
                    if (c10 == 2 && nextToken != 1000) {
                        str4 = str4 == null ? scanner.getCurrentTokenString() : str4 + scanner.getCurrentTokenString();
                    }
                } else if (nextToken == 1) {
                    if (str3 != null) {
                        str2 = str3 + scanner.getCurrentTokenString() + str2;
                    } else if (str2 == null) {
                        return null;
                    }
                    str3 = str2;
                    str2 = null;
                } else if (nextToken != 1000) {
                    str2 = str2 == null ? scanner.getCurrentTokenString() : str2 + scanner.getCurrentTokenString();
                } else if (1000 != i12 && 1 != i12) {
                    c10 = 2;
                }
                i12 = nextToken;
            }
            if (str2 == null) {
                return null;
            }
            char[] charArray = str2.toCharArray();
            char[] cArr7 = (charArray.length == 1 && charArray[0] == '*') ? null : charArray;
            if (str3 != null) {
                char[] charArray2 = str3.toCharArray();
                int lastIndexOf = CharOperation.lastIndexOf('.', charArray2);
                if (lastIndexOf >= 0) {
                    cArr6 = CharOperation.subarray(charArray2, 0, lastIndexOf);
                    if (cArr6.length == 1 && cArr6[0] == '*') {
                        cArr6 = null;
                    }
                    charArray2 = CharOperation.subarray(charArray2, lastIndexOf + 1, charArray2.length);
                } else {
                    cArr6 = null;
                }
                cArr2 = (charArray2.length == 1 && charArray2[0] == '*') ? null : charArray2;
                cArr = cArr6;
            } else {
                cArr = null;
                cArr2 = null;
            }
            if (str4 != null) {
                char[] charArray3 = str4.toCharArray();
                int lastIndexOf2 = CharOperation.lastIndexOf('.', charArray3);
                if (lastIndexOf2 >= 0) {
                    char[] subarray = CharOperation.subarray(charArray3, 0, lastIndexOf2);
                    cArr5 = (subarray.length == 1 && subarray[0] == '*') ? null : CharOperation.concat(IIndexConstants.ONE_STAR, subarray);
                    charArray3 = CharOperation.subarray(charArray3, lastIndexOf2 + 1, charArray3.length);
                } else {
                    cArr5 = null;
                }
                cArr4 = (charArray3.length == 1 && charArray3[0] == '*') ? null : charArray3;
                cArr3 = cArr5;
            } else {
                cArr3 = null;
                cArr4 = null;
            }
            return new FieldPattern(cArr7, cArr, cArr2, cArr3, cArr4, i10, i11);
        } catch (InvalidInputException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x01ec, code lost:
    
        if (r1 != 1000) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x024b, code lost:
    
        if (r1 != 1000) goto L184;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0220. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:95:0x02e1. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:166:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.eclipse.jdt.core.search.SearchPattern] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r23v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r5v19, types: [char[][]] */
    /* JADX WARN: Type inference failed for: r8v6, types: [char[][]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static SearchPattern createMethodOrConstructorPattern(String str, int i10, int i11, boolean z10) {
        char[] charArray;
        boolean z11;
        int i12;
        char[] cArr;
        char[] cArr2;
        String str2;
        char[] cArr3;
        boolean z12;
        char[][] cArr4;
        char[][] cArr5;
        String[] strArr;
        int i13;
        char[] cArr6;
        String str3;
        char[] cArr7;
        char[] cArr8;
        ?? r23;
        char[] charArray2;
        boolean z13;
        Scanner scanner = new Scanner(false, true, false, ClassFileConstants.JDK1_7, null, null, true);
        scanner.setSource(str.toCharArray());
        ?? r02 = 0;
        try {
            int nextToken = scanner.getNextToken();
            String[] strArr2 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            char[][] cArr9 = null;
            char c10 = 1;
            int i14 = -1;
            int i15 = 0;
            boolean z14 = false;
            int i16 = -1;
            while (true) {
                char c11 = '.';
                if (nextToken == 61) {
                    if ((i14 > 0 && !z14) || i15 > 0) {
                        return r02;
                    }
                    if (z10) {
                        if (str5 == null) {
                            charArray = r02;
                            str5 = str8;
                        } else {
                            if (str8 != null) {
                                str5 = str5 + '.' + str8;
                            }
                            charArray = r02;
                        }
                    } else {
                        if (str8 == null) {
                            return r02;
                        }
                        charArray = str8.toCharArray();
                        if (charArray.length == 1) {
                            z11 = false;
                            if (charArray[0] == '*') {
                                charArray = r02;
                            }
                            int i17 = 60;
                            if (str5 == null) {
                                try {
                                    String createTypeSignature = Signature.createTypeSignature(str5, z11);
                                    char[] charArray3 = createTypeSignature.indexOf(60) < 0 ? str5.toCharArray() : Signature.toCharArray(Signature.getTypeErasure(createTypeSignature.toCharArray()));
                                    int lastIndexOf = CharOperation.lastIndexOf('.', charArray3);
                                    if (lastIndexOf >= 0) {
                                        cArr = CharOperation.subarray(charArray3, 0, lastIndexOf);
                                        i12 = 1;
                                        if (cArr.length == 1 && cArr[0] == '*') {
                                            cArr = r02;
                                        }
                                        charArray3 = CharOperation.subarray(charArray3, lastIndexOf + 1, charArray3.length);
                                    } else {
                                        i12 = 1;
                                        cArr = r02;
                                    }
                                    cArr2 = (charArray3.length == i12 && charArray3[0] == '*') ? r02 : charArray3;
                                    str2 = createTypeSignature;
                                    cArr3 = cArr;
                                } catch (IllegalArgumentException unused) {
                                    return r02;
                                }
                            } else {
                                cArr3 = r02;
                                cArr2 = cArr3;
                                str2 = cArr2;
                            }
                            if (i14 < 0) {
                                ?? r52 = new char[i14];
                                ?? r82 = new char[i14];
                                String[] strArr3 = new String[i14];
                                int i18 = 0;
                                while (i18 < i14) {
                                    if (strArr2 != null) {
                                        try {
                                            String createTypeSignature2 = Signature.createTypeSignature(strArr2[i18], false);
                                            strArr3[i18] = createTypeSignature2;
                                            charArray2 = createTypeSignature2.indexOf(i17) < 0 ? strArr2[i18].toCharArray() : Signature.toCharArray(Signature.getTypeErasure(strArr3[i18].toCharArray()));
                                        } catch (IllegalArgumentException unused2) {
                                            return r02;
                                        }
                                    } else {
                                        charArray2 = r02;
                                    }
                                    int lastIndexOf2 = charArray2 == null ? -1 : CharOperation.lastIndexOf(c11, charArray2);
                                    if (charArray2 == null || lastIndexOf2 < 0) {
                                        r52[i18] = r02;
                                        r82[i18] = charArray2;
                                    } else {
                                        char[] subarray = CharOperation.subarray(charArray2, 0, lastIndexOf2);
                                        r52[i18] = subarray;
                                        if (subarray.length == 1 && subarray[0] == '*') {
                                            r52[i18] = r02;
                                        } else {
                                            r52[i18] = CharOperation.concat(IIndexConstants.ONE_STAR, subarray);
                                        }
                                        r82[i18] = CharOperation.subarray(charArray2, lastIndexOf2 + 1, charArray2.length);
                                    }
                                    char[] cArr10 = r82[i18];
                                    if (cArr10.length == 1 && cArr10[0] == '*') {
                                        r82[i18] = r02;
                                    }
                                    i18++;
                                    c11 = '.';
                                    i17 = 60;
                                }
                                cArr4 = r52;
                                cArr5 = r82;
                                strArr = strArr3;
                                z12 = false;
                            } else {
                                z12 = false;
                                cArr4 = r02;
                                cArr5 = cArr4;
                                strArr = cArr5;
                            }
                            if (str7 == null) {
                                try {
                                    String createTypeSignature3 = Signature.createTypeSignature(str7, z12);
                                    char[] charArray4 = createTypeSignature3.indexOf(60) < 0 ? str7.toCharArray() : Signature.toCharArray(Signature.getTypeErasure(createTypeSignature3.toCharArray()));
                                    int lastIndexOf3 = CharOperation.lastIndexOf('.', charArray4);
                                    if (lastIndexOf3 >= 0) {
                                        char[] subarray2 = CharOperation.subarray(charArray4, 0, lastIndexOf3);
                                        i13 = 1;
                                        cArr6 = (subarray2.length == 1 && subarray2[0] == '*') ? r02 : CharOperation.concat(IIndexConstants.ONE_STAR, subarray2);
                                        charArray4 = CharOperation.subarray(charArray4, lastIndexOf3 + 1, charArray4.length);
                                    } else {
                                        i13 = 1;
                                        cArr6 = r02;
                                    }
                                    if (charArray4.length == i13 && charArray4[0] == '*') {
                                        cArr7 = r02;
                                        str3 = createTypeSignature3;
                                    } else {
                                        str3 = createTypeSignature3;
                                        cArr7 = charArray4;
                                    }
                                    cArr8 = cArr6;
                                    r23 = str3;
                                } catch (IllegalArgumentException unused3) {
                                    return r02;
                                }
                            } else {
                                cArr8 = r02;
                                cArr7 = cArr8;
                                r23 = cArr7;
                            }
                            return !z10 ? new ConstructorPattern(cArr2, cArr3, str2, cArr4, cArr5, strArr, cArr9, i10, i11) : new MethodPattern(charArray, cArr3, cArr2, str2, cArr8, cArr7, r23, cArr4, cArr5, strArr, cArr9, i10, i11);
                        }
                    }
                    z11 = false;
                    int i172 = 60;
                    if (str5 == null) {
                    }
                    if (i14 < 0) {
                    }
                    if (str7 == null) {
                    }
                    if (!z10) {
                    }
                } else if (c10 != 1) {
                    if (c10 != 2) {
                        if (c10 != 3) {
                            if (c10 == 4) {
                                if (i15 == 0) {
                                    if (nextToken == 11) {
                                        i15++;
                                        if (str7 == null) {
                                            return null;
                                        }
                                    } else if (nextToken == 23) {
                                        strArr2 = new String[5];
                                        c10 = 3;
                                        i14 = 0;
                                    }
                                    if (str7 == null) {
                                        str7 = scanner.getCurrentTokenString();
                                    } else {
                                        str7 = str7 + scanner.getCurrentTokenString();
                                    }
                                } else {
                                    if (str7 == null) {
                                        return null;
                                    }
                                    if (nextToken != 11) {
                                        switch (nextToken) {
                                            case 14:
                                            case 15:
                                            case 16:
                                                i15--;
                                                break;
                                        }
                                    } else {
                                        i15++;
                                    }
                                    str7 = str7 + scanner.getCurrentTokenString();
                                }
                            }
                        } else if (i15 == 0) {
                            if (nextToken == 11) {
                                i15++;
                                if (str6 == null) {
                                    return null;
                                }
                            } else if (nextToken == 25) {
                                if (str6 != null && strArr2 != null) {
                                    if (strArr2.length == i14) {
                                        String[] strArr4 = new String[i14 * 2];
                                        System.arraycopy(strArr2, 0, strArr4, 0, i14);
                                        strArr2 = strArr4;
                                    }
                                    strArr2[i14] = str6;
                                    i14++;
                                }
                                c10 = z10 ? (char) 2 : (char) 4;
                                z14 = true;
                            } else if (nextToken == 32) {
                                if (str6 == null) {
                                    return null;
                                }
                                if (strArr2 != null) {
                                    if (strArr2.length == i14) {
                                        String[] strArr5 = new String[i14 * 2];
                                        System.arraycopy(strArr2, 0, strArr5, 0, i14);
                                        strArr2 = strArr5;
                                    }
                                    strArr2[i14] = str6;
                                    i14++;
                                }
                                str6 = null;
                            }
                            if (str6 == null) {
                                str6 = scanner.getCurrentTokenString();
                            } else {
                                str6 = str6 + scanner.getCurrentTokenString();
                            }
                        } else {
                            if (str6 == null) {
                                return null;
                            }
                            if (nextToken != 11) {
                                switch (nextToken) {
                                    case 14:
                                    case 15:
                                    case 16:
                                        i15--;
                                    default:
                                        str6 = str6 + scanner.getCurrentTokenString();
                                        break;
                                }
                            } else {
                                i15++;
                            }
                            str6 = str6 + scanner.getCurrentTokenString();
                        }
                    } else {
                        if (str4 == null) {
                            return null;
                        }
                        str4 = str4 + scanner.getCurrentTokenString();
                        if (nextToken != 11) {
                            switch (nextToken) {
                                case 14:
                                case 15:
                                case 16:
                                    i15--;
                                    if (i15 == 0) {
                                        cArr9 = Signature.getTypeArguments(Signature.createTypeSignature(FileRequest.FIELD_TYPE + str4, false).toCharArray());
                                        c10 = 1;
                                        break;
                                    }
                                    break;
                                default:
                                    z13 = false;
                                    break;
                            }
                        } else {
                            z13 = false;
                            i15++;
                        }
                    }
                    try {
                        i16 = nextToken;
                        nextToken = scanner.getNextToken();
                        r02 = 0;
                    } catch (InvalidInputException unused4) {
                        return null;
                    }
                } else {
                    if (i15 == 0) {
                        if (nextToken != 1) {
                            if (nextToken == 11) {
                                i15++;
                                if (str8 == null || i16 == 1) {
                                    str4 = scanner.getCurrentTokenString();
                                    c10 = 2;
                                } else {
                                    if (str5 != null) {
                                        str8 = str5 + '.' + str8;
                                    }
                                    str5 = String.valueOf(str8) + scanner.getCurrentTokenString();
                                }
                            } else if (nextToken == 23) {
                                strArr2 = new String[5];
                                c10 = 3;
                                i14 = 0;
                            } else if (nextToken == 1000) {
                                if (i16 != 1 && i16 != 1000) {
                                    switch (i16) {
                                        case 14:
                                        case 15:
                                        case 16:
                                            break;
                                        default:
                                            c10 = 4;
                                            break;
                                    }
                                }
                            } else if (str8 == null) {
                                str8 = scanner.getCurrentTokenString();
                            } else {
                                str8 = str8 + scanner.getCurrentTokenString();
                            }
                        } else {
                            if (!z10 && str4 != null) {
                                return null;
                            }
                            if (str5 == null) {
                                if (str8 == null) {
                                    return null;
                                }
                                str5 = str8;
                            } else if (str8 != null) {
                                str5 = str5 + scanner.getCurrentTokenString() + str8;
                            }
                        }
                        str8 = null;
                    } else {
                        if (str5 == null) {
                            return null;
                        }
                        if (nextToken != 11) {
                            switch (nextToken) {
                                case 14:
                                case 15:
                                case 16:
                                    i15--;
                                default:
                                    str5 = str5 + scanner.getCurrentTokenString();
                                    break;
                            }
                        } else {
                            i15++;
                        }
                        str5 = str5 + scanner.getCurrentTokenString();
                    }
                    i16 = nextToken;
                    nextToken = scanner.getNextToken();
                    r02 = 0;
                }
            }
        } catch (InvalidInputException unused5) {
            return null;
        }
    }

    private static SearchPattern createModulePattern(String str, int i10, int i11) {
        return new ModulePattern(str.toCharArray(), i10, i11);
    }

    public static SearchPattern createOrPattern(SearchPattern searchPattern, SearchPattern searchPattern2) {
        return new OrPattern(searchPattern, searchPattern2);
    }

    private static SearchPattern createPackagePattern(String str, int i10, int i11) {
        if (i10 == 0) {
            return new PackageDeclarationPattern(str.toCharArray(), i11);
        }
        if (i10 == 2) {
            return new PackageReferencePattern(str.toCharArray(), i11);
        }
        if (i10 != 3) {
            return null;
        }
        return new OrPattern(new PackageDeclarationPattern(str.toCharArray(), i11), new PackageReferencePattern(str.toCharArray(), i11));
    }

    public static SearchPattern createPattern(String str, int i10, int i11, int i12) {
        int validateMatchRule;
        if (str == null || str.length() == 0 || (validateMatchRule = validateMatchRule(str, i10, i11, i12)) == -1) {
            return null;
        }
        int i13 = i11 & (-49);
        switch (i10) {
            case 0:
                return createTypePattern(str, i13, validateMatchRule, (char) 0);
            case 1:
                return createMethodOrConstructorPattern(str, i13, validateMatchRule, false);
            case 2:
                return createPackagePattern(str, i13, validateMatchRule);
            case 3:
                return createMethodOrConstructorPattern(str, i13, validateMatchRule, true);
            case 4:
                return createFieldPattern(str, i13, validateMatchRule);
            case 5:
                return createTypePattern(str, i13, validateMatchRule, 'C');
            case 6:
                return createTypePattern(str, i13, validateMatchRule, 'I');
            case 7:
                return createTypePattern(str, i13, validateMatchRule, IIndexConstants.ENUM_SUFFIX);
            case 8:
                return createTypePattern(str, i13, validateMatchRule, IIndexConstants.ANNOTATION_TYPE_SUFFIX);
            case 9:
                return createTypePattern(str, i13, validateMatchRule, '\t');
            case 10:
                return createTypePattern(str, i13, validateMatchRule, '\n');
            case 11:
                return createTypePattern(str, i13, validateMatchRule, IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX);
            case 12:
                return createModulePattern(str, i13, validateMatchRule);
            default:
                return null;
        }
    }

    private static SearchPattern createTypePattern(char[] cArr, char[] cArr2, char[][] cArr3, String str, IType iType, int i10, int i11) {
        TypeReferencePattern typeReferencePattern;
        if (i10 == 0) {
            return new TypeDeclarationPattern(cArr2, cArr3, cArr, (char) 0, i11);
        }
        if (i10 == 1) {
            return new SuperTypeReferencePattern(CharOperation.concatWith(cArr2, cArr3, '.'), cArr, 1, i11);
        }
        if (i10 == 2) {
            if (iType != null) {
                return new TypeReferencePattern(CharOperation.concatWith(cArr2, cArr3, '.'), cArr, iType, i11);
            }
            return new TypeReferencePattern(CharOperation.concatWith(cArr2, cArr3, '.'), cArr, str, i11);
        }
        if (i10 != 3) {
            if (iType != null) {
                return new TypeReferencePattern(CharOperation.concatWith(cArr2, cArr3, '.'), cArr, iType, i10, i11);
            }
            return null;
        }
        TypeDeclarationPattern typeDeclarationPattern = new TypeDeclarationPattern(cArr2, cArr3, cArr, (char) 0, i11);
        if (iType != null) {
            typeReferencePattern = new TypeReferencePattern(CharOperation.concatWith(cArr2, cArr3, '.'), cArr, iType, i11);
        } else {
            typeReferencePattern = new TypeReferencePattern(CharOperation.concatWith(cArr2, cArr3, '.'), cArr, str, i11);
        }
        return new OrPattern(typeDeclarationPattern, typeReferencePattern);
    }

    private static char[][] enclosingTypeNames(IType iType) {
        IJavaElement parent = iType.getParent();
        switch (parent.getElementType()) {
            case 5:
                return CharOperation.NO_CHAR_CHAR;
            case 6:
                if (parent instanceof IModularClassFile) {
                    return null;
                }
                IType declaringType = iType.getDeclaringType();
                return declaringType == null ? CharOperation.NO_CHAR_CHAR : CharOperation.arrayConcat(enclosingTypeNames(declaringType), declaringType.getElementName().toCharArray());
            case 7:
                return CharOperation.arrayConcat(enclosingTypeNames((IType) parent), parent.getElementName().toCharArray());
            case 8:
            case 9:
            case 10:
                IType declaringType2 = ((IMember) parent).getDeclaringType();
                return CharOperation.arrayConcat(enclosingTypeNames(declaringType2), new char[][]{declaringType2.getElementName().toCharArray(), IIndexConstants.ONE_STAR});
            default:
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final int[] getMatchingRegions(String str, String str2, int i10) {
        boolean z10;
        boolean z11;
        int indexOf;
        if (str2 == null) {
            return null;
        }
        int length = str2.length();
        if (str == null) {
            return new int[]{0, length};
        }
        int length2 = str.length();
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return StringOperation.getPatternMatchingRegions(str, 0, length2, str2, 0, length, false);
                }
                if (i10 != 128) {
                    if (i10 == 136) {
                        z11 = false;
                    } else if (i10 == 256) {
                        z10 = true;
                    } else if (i10 == 264) {
                        z11 = true;
                    } else {
                        if (i10 == 512) {
                            if (length2 > length || (indexOf = CharOperation.indexOf(str.toCharArray(), str2.toCharArray(), false)) < 0) {
                                return null;
                            }
                            return new int[]{indexOf, length2};
                        }
                        switch (i10) {
                            case 8:
                                if (length2 == length && str.equals(str2)) {
                                    return new int[]{0, length2};
                                }
                                break;
                            case 9:
                                if (str2.startsWith(str)) {
                                    return new int[]{0, length2};
                                }
                                break;
                            case 10:
                                return StringOperation.getPatternMatchingRegions(str, 0, length2, str2, 0, length, true);
                        }
                    }
                    if (length2 <= length) {
                        return StringOperation.getCamelCaseMatchingRegions(str, 0, length2, str2, 0, length, z11);
                    }
                } else {
                    z10 = false;
                }
                if (length2 <= length) {
                    int[] camelCaseMatchingRegions = StringOperation.getCamelCaseMatchingRegions(str, 0, length2, str2, 0, length, z10);
                    if (camelCaseMatchingRegions != null) {
                        return camelCaseMatchingRegions;
                    }
                    if (str2.substring(0, length2).equalsIgnoreCase(str)) {
                        return new int[]{0, length2};
                    }
                }
            } else if (length2 <= length && str2.substring(0, length2).equalsIgnoreCase(str)) {
                return new int[]{0, length2};
            }
        } else if (length2 == length && str.equalsIgnoreCase(str2)) {
            return new int[]{0, length2};
        }
        return null;
    }

    private static boolean validateCamelCasePattern(String str) {
        boolean z10 = true;
        if (str == null) {
            return true;
        }
        int length = str.length();
        boolean z11 = true;
        int i10 = 0;
        boolean z12 = false;
        int i11 = 0;
        while (i10 < length && z11) {
            char charAt = str.charAt(i10);
            boolean isJavaIdentifierStart = i10 == 0 ? ScannerHelper.isJavaIdentifierStart(charAt) : ScannerHelper.isJavaIdentifierPart(charAt);
            if (ScannerHelper.isUpperCase(charAt)) {
                i11++;
            }
            if (i10 == 0) {
                z12 = i11 == 0;
            }
            i10++;
            z11 = isJavaIdentifierStart;
        }
        if (!z11) {
            return z11;
        }
        if (!z12 ? i11 <= 1 : i11 <= 0) {
            z10 = false;
        }
        return z10;
    }

    public static int validateMatchRule(String str, int i10) {
        if ((i10 & 4) != 0) {
            return -1;
        }
        if (str != null) {
            i10 = (str.indexOf(42) >= 0 || str.indexOf(63) >= 0) ? i10 | 2 : i10 & (-3);
        }
        if ((i10 & 2) != 0) {
            return i10 & (-386);
        }
        if ((i10 & 128) != 0) {
            return !validateCamelCasePattern(str) ? (i10 & (-386)) | 1 : i10 & (-258);
        }
        if ((i10 & 256) != 0) {
            return !validateCamelCasePattern(str) ? i10 & (-258) : i10 & (-2);
        }
        return i10;
    }

    public void acceptMatch(String str, String str2, char c10, SearchPattern searchPattern, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope) {
        acceptMatch(str, str2, c10, searchPattern, indexQueryRequestor, searchParticipant, iJavaSearchScope, null);
    }

    public SearchPattern currentPattern() {
        return this;
    }

    public void decodeIndexKey(char[] cArr) {
    }

    public void findIndexMatches(Index index, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) throws IOException {
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        try {
            index.startQuery();
            SearchPattern currentPattern = currentPattern();
            EntryResult[] queryIn = currentPattern.queryIn(index);
            if (queryIn == null) {
                index.stopQuery();
                return;
            }
            SearchPattern blankPattern = currentPattern.getBlankPattern();
            String str = index.containerPath;
            char c10 = index.separator;
            int length = queryIn.length;
            int i10 = 0;
            while (i10 < length) {
                if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                EntryResult entryResult = queryIn[i10];
                blankPattern.decodeIndexKey(entryResult.getWord());
                if (currentPattern.matchesDecodedKey(blankPattern)) {
                    String[] documentNames = entryResult.getDocumentNames(index);
                    int length2 = documentNames.length;
                    int i11 = 0;
                    while (i11 < length2) {
                        int i12 = i11;
                        int i13 = length2;
                        String[] strArr = documentNames;
                        int i14 = i10;
                        acceptMatch(documentNames[i11], str, c10, blankPattern, indexQueryRequestor, searchParticipant, iJavaSearchScope, iProgressMonitor);
                        i11 = i12 + 1;
                        length2 = i13;
                        documentNames = strArr;
                        i10 = i14;
                    }
                }
                i10++;
            }
            index.stopQuery();
        } catch (Throwable th2) {
            index.stopQuery();
            throw th2;
        }
    }

    public abstract SearchPattern getBlankPattern();

    public char[][] getIndexCategories() {
        return CharOperation.NO_CHAR_CHAR;
    }

    public char[] getIndexKey() {
        return null;
    }

    public final int getMatchRule() {
        return this.matchRule;
    }

    public boolean isPolymorphicSearch() {
        return false;
    }

    public boolean matchesDecodedKey(SearchPattern searchPattern) {
        return true;
    }

    public boolean matchesName(char[] cArr, char[] cArr2) {
        if (cArr == null) {
            return true;
        }
        if (cArr2 != null) {
            int i10 = this.matchRule;
            boolean z10 = (i10 & 8) != 0;
            int i11 = i10 & 391;
            boolean z11 = cArr.length == 0;
            if (z11 && (i10 & 1) != 0) {
                return true;
            }
            boolean z12 = cArr.length == cArr2.length;
            boolean z13 = cArr2.length >= cArr.length;
            boolean z14 = !z10 || z11 || (cArr2.length > 0 && cArr[0] == cArr2[0]);
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        if (!z10) {
                            cArr = CharOperation.toLowerCase(cArr);
                        }
                        return CharOperation.match(cArr, cArr2, z10);
                    }
                    if (i11 == 4) {
                        return Pattern.matches(new String(cArr), new String(cArr2));
                    }
                    if (i11 != 128) {
                        return i11 == 256 && z14 && CharOperation.camelCaseMatch(cArr, cArr2, true);
                    }
                    if (z14 && CharOperation.camelCaseMatch(cArr, cArr2, false)) {
                        return true;
                    }
                    if (!z10 && z14 && CharOperation.prefixEquals(cArr, cArr2, false)) {
                        return true;
                    }
                } else if (z13 && z14) {
                    return CharOperation.prefixEquals(cArr, cArr2, z10);
                }
            } else if (z12 && z14) {
                return CharOperation.equals(cArr, cArr2, z10);
            }
        }
        return false;
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        return index.query(getIndexCategories(), getIndexKey(), getMatchRule());
    }

    public String toString() {
        return "SearchPattern";
    }

    public static final boolean camelCaseMatch(String str, String str2, boolean z10) {
        if (str == null) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return camelCaseMatch(str, 0, str.length(), str2, 0, str2.length(), z10);
    }

    public void acceptMatch(String str, String str2, char c10, SearchPattern searchPattern, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) {
        if (iJavaSearchScope instanceof JavaSearchScope) {
            AccessRuleSet accessRuleSet = ((JavaSearchScope) iJavaSearchScope).getAccessRuleSet(str, str2);
            if (accessRuleSet != JavaSearchScope.NOT_ENCLOSED) {
                StringBuffer stringBuffer = new StringBuffer(str2.length() + 1 + str.length());
                stringBuffer.append(str2);
                stringBuffer.append(c10);
                stringBuffer.append(str);
                if (!indexQueryRequestor.acceptIndexMatch(stringBuffer.toString(), searchPattern, searchParticipant, accessRuleSet)) {
                    throw new OperationCanceledException();
                }
                return;
            }
            return;
        }
        StringBuffer stringBuffer2 = new StringBuffer(str2.length() + 1 + str.length());
        stringBuffer2.append(str2);
        stringBuffer2.append(c10);
        stringBuffer2.append(str);
        String stringBuffer3 = stringBuffer2.toString();
        if ((iJavaSearchScope instanceof HierarchyScope ? ((HierarchyScope) iJavaSearchScope).encloses(stringBuffer3, iProgressMonitor) : iJavaSearchScope.encloses(stringBuffer3)) && !indexQueryRequestor.acceptIndexMatch(stringBuffer3, searchPattern, searchParticipant, null)) {
            throw new OperationCanceledException();
        }
    }

    public static final boolean camelCaseMatch(String str, int i10, int i11, String str2, int i12, int i13) {
        return camelCaseMatch(str, i10, i11, str2, i12, i13, false);
    }

    public static final boolean camelCaseMatch(String str, int i10, int i11, String str2, int i12, int i13, boolean z10) {
        return StringOperation.getCamelCaseMatchingRegions(str, i10, i11, str2, i12, i13, z10) != null;
    }

    private static int validateMatchRule(String str, int i10, int i11, int i12) {
        return (i10 == 12 && i11 == 0 && i12 == 4) ? i12 : validateMatchRule(str, i12);
    }

    public static SearchPattern createPattern(IJavaElement iJavaElement, int i10) {
        return createPattern(iJavaElement, i10, 24);
    }

    public static SearchPattern createPattern(IJavaElement iJavaElement, int i10, int i11) {
        boolean z10;
        boolean z11;
        char[] cArr;
        char[] cArr2;
        char[] charArray;
        String str;
        char[] cArr3;
        char[] cArr4;
        char[] cArr5;
        char[] charArray2;
        char[] subarray;
        String str2;
        char[] cArr6;
        IJavaElement iJavaElement2 = iJavaElement;
        int i12 = i10 & (-49);
        boolean z12 = true;
        int i13 = 0;
        boolean z13 = false;
        if (i12 == 0 || i12 == 3) {
            boolean z14 = (i10 & 16) != 0;
            if ((i10 & 32) != 0) {
                z10 = true;
                z11 = z14;
            } else {
                z10 = false;
                z11 = z14;
            }
        } else {
            z11 = false;
            z10 = false;
        }
        SearchPattern searchPattern = null;
        int validateMatchRule = validateMatchRule(null, i11);
        if (validateMatchRule == -1) {
            return null;
        }
        switch (iJavaElement.getElementType()) {
            case 4:
            case 11:
                searchPattern = createPackagePattern(iJavaElement.getElementName(), i12, validateMatchRule);
                break;
            case 7:
                char[][] cArr7 = null;
                IType iType = (IType) iJavaElement2;
                char[] charArray3 = iType.getElementName().toCharArray();
                char[] charArray4 = iType.getPackageFragment().getElementName().toCharArray();
                if (!z11) {
                    cArr7 = enclosingTypeNames(iType);
                }
                searchPattern = createTypePattern(charArray3, charArray4, cArr7, null, iType, i12, validateMatchRule);
                break;
            case 8:
                IField iField = (IField) iJavaElement2;
                if (z11) {
                    cArr = null;
                    cArr2 = null;
                } else {
                    IType declaringType = iField.getDeclaringType();
                    char[] charArray5 = declaringType.getElementName().toCharArray();
                    char[] charArray6 = declaringType.getPackageFragment().getElementName().toCharArray();
                    char[][] enclosingTypeNames = enclosingTypeNames(declaringType);
                    if (enclosingTypeNames.length > 0) {
                        char[] concat = CharOperation.concat(charArray6, CharOperation.concatWith(enclosingTypeNames, '.'), '.');
                        cArr2 = charArray5;
                        cArr = concat;
                    } else {
                        cArr2 = charArray5;
                        cArr = charArray6;
                    }
                }
                char[] charArray7 = iField.getElementName().toCharArray();
                if (z10) {
                    charArray = null;
                    str = null;
                    cArr3 = null;
                } else {
                    try {
                        String typeSignature = iField.getTypeSignature();
                        charArray = Signature.toCharArray(Signature.getTypeErasure(typeSignature.toCharArray()));
                        CharOperation.replace(charArray, '$', '.');
                        int lastIndexOf = CharOperation.lastIndexOf('.', charArray);
                        if (lastIndexOf == -1) {
                            str = typeSignature;
                            cArr3 = null;
                        } else {
                            char[] subarray2 = CharOperation.subarray(charArray, lastIndexOf + 1, charArray.length);
                            char[] subarray3 = CharOperation.subarray(charArray, 0, lastIndexOf);
                            if (iField.isBinary()) {
                                str = typeSignature;
                                cArr3 = subarray3;
                            } else {
                                cArr3 = CharOperation.concat(IIndexConstants.ONE_STAR, subarray3);
                                str = typeSignature;
                            }
                            charArray = subarray2;
                        }
                    } catch (JavaModelException unused) {
                        return null;
                    }
                }
                searchPattern = new FieldPattern(charArray7, cArr, cArr2, cArr3, charArray, str, i10, validateMatchRule);
                break;
            case 9:
                IMethod iMethod = (IMethod) iJavaElement2;
                try {
                    boolean isConstructor = iMethod.isConstructor();
                    IType declaringType2 = iMethod.getDeclaringType();
                    if (!z11) {
                        char[] charArray8 = declaringType2.getElementName().toCharArray();
                        char[] charArray9 = declaringType2.getPackageFragment().getElementName().toCharArray();
                        char[][] enclosingTypeNames2 = enclosingTypeNames(declaringType2);
                        if (enclosingTypeNames2.length > 0) {
                            char[] concat2 = CharOperation.concat(charArray9, CharOperation.concatWith(enclosingTypeNames2, '.'), '.');
                            cArr4 = charArray8;
                            cArr5 = concat2;
                        } else {
                            cArr4 = charArray8;
                            cArr5 = charArray9;
                        }
                    } else if (isConstructor) {
                        cArr4 = declaringType2.getElementName().toCharArray();
                        cArr5 = null;
                    } else {
                        cArr5 = null;
                        cArr4 = null;
                    }
                    char[] charArray10 = iMethod.getElementName().toCharArray();
                    if (z10) {
                        str2 = null;
                        subarray = null;
                        charArray2 = null;
                    } else {
                        try {
                            String returnType = iMethod.getReturnType();
                            charArray2 = Signature.toCharArray(Signature.getTypeErasure(returnType.toCharArray()));
                            CharOperation.replace(charArray2, '$', '.');
                            int lastIndexOf2 = CharOperation.lastIndexOf('.', charArray2);
                            if (lastIndexOf2 == -1) {
                                str2 = returnType;
                                subarray = null;
                            } else {
                                char[] subarray4 = CharOperation.subarray(charArray2, lastIndexOf2 + 1, charArray2.length);
                                subarray = CharOperation.subarray(charArray2, 0, lastIndexOf2);
                                if (!iMethod.isBinary()) {
                                    CharOperation.concat(IIndexConstants.ONE_STAR, subarray);
                                }
                                charArray2 = subarray4;
                                str2 = returnType;
                            }
                        } catch (JavaModelException unused2) {
                            return null;
                        }
                    }
                    String[] parameterTypes = iMethod.getParameterTypes();
                    int length = parameterTypes.length;
                    char[][] cArr8 = new char[length];
                    char[][] cArr9 = new char[length];
                    String[] strArr = new String[length];
                    while (i13 < length) {
                        String str3 = parameterTypes[i13];
                        strArr[i13] = str3;
                        char[] charArray11 = Signature.toCharArray(Signature.getTypeErasure(str3.toCharArray()));
                        String[] strArr2 = strArr;
                        boolean z15 = isConstructor;
                        CharOperation.replace(charArray11, '$', '.');
                        int lastIndexOf3 = CharOperation.lastIndexOf('.', charArray11);
                        if (lastIndexOf3 == -1) {
                            cArr8[i13] = charArray11;
                            cArr9[i13] = null;
                            cArr6 = cArr5;
                        } else {
                            cArr6 = cArr5;
                            cArr8[i13] = CharOperation.subarray(charArray11, lastIndexOf3 + 1, charArray11.length);
                            cArr9[i13] = CharOperation.subarray(charArray11, 0, lastIndexOf3);
                            if (!iMethod.isBinary()) {
                                CharOperation.concat(IIndexConstants.ONE_STAR, cArr9[i13]);
                            }
                        }
                        i13++;
                        strArr = strArr2;
                        isConstructor = z15;
                        cArr5 = cArr6;
                    }
                    if (isConstructor) {
                        ConstructorPattern constructorPattern = new ConstructorPattern(cArr4, cArr5, cArr9, cArr8, strArr, iMethod, i10, validateMatchRule);
                        iJavaElement2 = iJavaElement;
                        searchPattern = constructorPattern;
                        break;
                    } else {
                        MethodPattern methodPattern = new MethodPattern(charArray10, cArr5, cArr4, subarray, charArray2, str2, cArr9, cArr8, strArr, iMethod, i10, validateMatchRule);
                        iJavaElement2 = iJavaElement;
                        searchPattern = methodPattern;
                        break;
                    }
                } catch (JavaModelException unused3) {
                    return null;
                }
            case 13:
                String elementName = iJavaElement.getElementName();
                int lastIndexOf4 = elementName.lastIndexOf(46);
                if (lastIndexOf4 != -1) {
                    if (((IImportDeclaration) iJavaElement2).isOnDemand()) {
                        searchPattern = createPackagePattern(elementName.substring(0, lastIndexOf4), i12, validateMatchRule);
                        break;
                    } else {
                        searchPattern = createTypePattern(elementName.substring(lastIndexOf4 + 1).toCharArray(), elementName.substring(0, lastIndexOf4).toCharArray(), null, null, null, i12, validateMatchRule);
                        break;
                    }
                } else {
                    return null;
                }
            case 14:
                searchPattern = new LocalVariablePattern((LocalVariable) iJavaElement2, i10, validateMatchRule);
                break;
            case 15:
                ITypeParameter iTypeParameter = (ITypeParameter) iJavaElement2;
                if (i12 != 0) {
                    if (i12 != 2) {
                        z13 = true;
                    } else {
                        z13 = true;
                        z12 = false;
                    }
                }
                searchPattern = new TypeParameterPattern(z12, z13, iTypeParameter, validateMatchRule);
                break;
            case 17:
                searchPattern = createModulePattern(iJavaElement.getElementName(), i12, validateMatchRule);
                break;
        }
        if (searchPattern != null) {
            MatchLocator.setFocus(searchPattern, iJavaElement2);
        }
        return searchPattern;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0137 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static SearchPattern createTypePattern(String str, int i10, int i11, char c10) {
        String str2;
        String str3;
        char[] charArray;
        char[] cArr;
        String[] split = str.split(String.valueOf('/'));
        boolean z10 = false;
        if (split.length == 2) {
            str3 = split[0];
            str2 = split[1];
        } else {
            str2 = str;
            str3 = null;
        }
        char[] charArray2 = str3 != null ? str3.toCharArray() : null;
        Scanner scanner = new Scanner(false, true, false, ClassFileConstants.JDK1_7, null, null, true);
        scanner.setSource(str2.toCharArray());
        try {
            int i12 = 0;
            String str4 = null;
            for (int nextToken = scanner.getNextToken(); nextToken != 61; nextToken = scanner.getNextToken()) {
                if (i12 == 0) {
                    if (nextToken == 11) {
                        i12++;
                    } else if (nextToken == 1000) {
                    }
                    str4 = str4 == null ? scanner.getCurrentTokenString() : str4 + scanner.getCurrentTokenString();
                } else {
                    if (nextToken != 11) {
                        switch (nextToken) {
                            case 14:
                            case 15:
                            case 16:
                                i12--;
                            default:
                                if (str4 != null) {
                                    return null;
                                }
                                str4 = str4 + scanner.getCurrentTokenString();
                                break;
                        }
                    } else {
                        i12++;
                    }
                    if (str4 != null) {
                    }
                }
            }
            if (str4 == null) {
                return null;
            }
            try {
                String createTypeSignature = Signature.createTypeSignature(str4, false);
                if (createTypeSignature.indexOf(60) < 0) {
                    charArray = str4.toCharArray();
                } else {
                    charArray = Signature.toCharArray(Signature.getTypeErasure(createTypeSignature.toCharArray()));
                }
                int lastIndexOf = CharOperation.lastIndexOf('.', charArray);
                if (lastIndexOf >= 0) {
                    char[] subarray = CharOperation.subarray(charArray, 0, lastIndexOf);
                    if (subarray.length == 1 && subarray[0] == '*') {
                        subarray = null;
                    }
                    charArray = CharOperation.subarray(charArray, lastIndexOf + 1, charArray.length);
                    cArr = subarray;
                } else {
                    cArr = null;
                }
                char[] cArr2 = (charArray.length == 1 && charArray[0] == '*') ? null : charArray;
                if (i10 != 0) {
                    if (i10 == 1) {
                        return new SuperTypeReferencePattern(cArr, cArr2, 1, c10, i11);
                    }
                    if (i10 == 2) {
                        return new TypeReferencePattern(cArr, cArr2, createTypeSignature, c10, i11);
                    }
                    if (i10 == 3) {
                        return new OrPattern(new QualifiedTypeDeclarationPattern(charArray2, cArr, cArr2, c10, i11), new TypeReferencePattern(cArr, cArr2, createTypeSignature, c10, i11));
                    }
                    if (i10 != 6) {
                        return new TypeReferencePattern(cArr, cArr2, createTypeSignature, i10, c10, i11);
                    }
                    z10 = true;
                }
                QualifiedTypeDeclarationPattern qualifiedTypeDeclarationPattern = new QualifiedTypeDeclarationPattern(charArray2, cArr, cArr2, c10, i11);
                qualifiedTypeDeclarationPattern.moduleGraph = z10;
                return qualifiedTypeDeclarationPattern;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        } catch (InvalidInputException unused2) {
            return null;
        }
    }
}
