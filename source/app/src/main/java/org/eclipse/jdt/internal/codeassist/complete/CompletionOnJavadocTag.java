package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;

public class CompletionOnJavadocTag extends JavadocSingleNameReference implements JavadocTagConstants, CompletionOnJavadoc {
    public static final char[][][] NO_CHAR_CHAR_CHAR = new char[0][];
    public int completionFlags;
    private char[][][] possibleTags;

    public CompletionOnJavadocTag(char[] cArr, long j10, int i10, int i11, char[][][] cArr2, boolean z10) {
        super(cArr, j10, i10, i11);
        this.completionFlags = 1;
        this.possibleTags = cArr2;
        if (z10) {
            this.completionFlags = 1 | 128;
        }
    }

    @Override
    public void addCompletionFlags(int i10) {
        this.completionFlags = i10 | this.completionFlags;
    }

    public void filterPossibleTags(Scope scope) {
        char[][] cArr;
        int i10;
        char[][][] cArr2 = this.possibleTags;
        if (cArr2 == null || cArr2.length == 0 || (this.completionFlags & 128) != 0) {
            return;
        }
        int i11 = scope.kind;
        int i12 = 0;
        if (i11 == 2) {
            MethodScope methodScope = (MethodScope) scope;
            cArr = methodScope.referenceMethod() == null ? methodScope.initializedField == null ? JavadocTagConstants.PACKAGE_TAGS : JavadocTagConstants.FIELD_TAGS : JavadocTagConstants.METHOD_TAGS;
        } else if (i11 == 3) {
            cArr = JavadocTagConstants.CLASS_TAGS;
        } else {
            if (i11 != 4) {
                return;
            }
            CompilationUnitDeclaration referenceCompilationUnit = scope.referenceCompilationUnit();
            if (referenceCompilationUnit == null || !referenceCompilationUnit.isModuleInfo()) {
                if (referenceCompilationUnit != null) {
                    TypeDeclaration[] typeDeclarationArr = referenceCompilationUnit.types;
                    if (typeDeclarationArr.length > 0 && typeDeclarationArr[0].name == CompletionParser.FAKE_TYPE_NAME) {
                        cArr = JavadocTagConstants.CLASS_TAGS;
                    }
                }
                cArr = JavadocTagConstants.COMPILATION_UNIT_TAGS;
            } else {
                cArr = JavadocTagConstants.MODULE_TAGS;
            }
        }
        int length = this.possibleTags.length;
        for (int i13 = 0; i13 < length; i13++) {
            int length2 = this.possibleTags[i13].length;
            int length3 = cArr.length;
            char[][] cArr3 = new char[length2];
            int i14 = i12;
            int i15 = i14;
            while (i14 < length2) {
                char[] cArr4 = this.possibleTags[i13][i14];
                int i16 = i12;
                while (true) {
                    if (i16 >= length3) {
                        break;
                    }
                    char c10 = cArr4[i12];
                    char[] cArr5 = cArr[i16];
                    if (c10 == cArr5[i12] && CharOperation.equals(cArr4, cArr5)) {
                        if (cArr4 == JavadocTagConstants.TAG_PARAM) {
                            int i17 = scope.kind;
                            if (i17 != 3) {
                                if (i17 != 4) {
                                    i10 = i15 + 1;
                                    cArr3[i15] = cArr4;
                                } else if (scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                                    i10 = i15 + 1;
                                    cArr3[i15] = cArr4;
                                }
                            } else if (scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5 && ((ClassScope) scope).referenceContext.binding.isGenericType()) {
                                i10 = i15 + 1;
                                cArr3[i15] = cArr4;
                            }
                        } else {
                            i10 = i15 + 1;
                            cArr3[i15] = cArr4;
                        }
                        i15 = i10;
                    } else {
                        i16++;
                        i12 = 0;
                    }
                }
                i14++;
                i12 = 0;
            }
            if (i15 < length2) {
                char[][] cArr6 = new char[i15];
                this.possibleTags[i13] = cArr6;
                System.arraycopy(cArr3, i12, cArr6, i12, i15);
            }
        }
    }

    @Override
    public int getCompletionFlags() {
        return this.completionFlags;
    }

    public char[][] getPossibleBlockTags() {
        return this.possibleTags[0];
    }

    public char[][] getPossibleInlineTags() {
        return this.possibleTags[1];
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnJavadocTag:");
        stringBuffer.append('@');
        if (this.token != null) {
            super.printExpression(i10, stringBuffer);
        }
        char[][] cArr = this.possibleTags[0];
        if (cArr != null && (cArr.length) > 0) {
            stringBuffer.append("\npossible block tags:");
            for (char[] cArr2 : cArr) {
                stringBuffer.append("\n\t- ");
                stringBuffer.append(cArr2);
            }
            stringBuffer.append('\n');
        }
        char[][] cArr3 = this.possibleTags[1];
        if (cArr3 != null && (cArr3.length) > 0) {
            stringBuffer.append("\npossible inline tags:");
            for (char[] cArr4 : cArr3) {
                stringBuffer.append("\n\t- ");
                stringBuffer.append(cArr4);
            }
            stringBuffer.append('\n');
        }
        stringBuffer.append('>');
        return stringBuffer;
    }
}
