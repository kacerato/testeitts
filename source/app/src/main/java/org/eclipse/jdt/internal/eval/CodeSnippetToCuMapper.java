package org.eclipse.jdt.internal.eval;

import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.core.JavaElement;

class CodeSnippetToCuMapper implements EvaluationConstants {
    char[] codeSnippet;
    long complianceVersion;
    public char[] cuSource;
    char[][] localVarNames;
    char[][] localVarTypeNames;
    char[] snippetClassName;
    char[] snippetDeclaringTypeName;
    char[][] snippetImports;
    char[] snippetPackageName;
    char[] snippetVarClassName;
    public int lineNumberOffset = 0;
    public int startPosOffset = 0;

    public CodeSnippetToCuMapper(char[] cArr, char[] cArr2, char[][] cArr3, char[] cArr4, char[] cArr5, char[][] cArr6, char[][] cArr7, int[] iArr, char[] cArr8, String str, long j10) {
        this.codeSnippet = cArr;
        this.snippetPackageName = cArr2;
        this.snippetImports = cArr3;
        this.snippetClassName = cArr4;
        this.snippetVarClassName = cArr5;
        this.localVarNames = cArr6;
        this.localVarTypeNames = cArr7;
        this.snippetDeclaringTypeName = cArr8;
        this.complianceVersion = j10;
        buildCUSource(str);
    }

    private void buildCUSource(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        char[] cArr = this.snippetPackageName;
        if (cArr != null && cArr.length != 0) {
            stringBuffer.append("package ");
            stringBuffer.append(this.snippetPackageName);
            stringBuffer.append(";");
            stringBuffer.append(str);
            this.lineNumberOffset++;
        }
        for (char[] cArr2 : this.snippetImports) {
            stringBuffer.append("import ");
            stringBuffer.append(cArr2);
            stringBuffer.append(';');
            stringBuffer.append(str);
            this.lineNumberOffset++;
        }
        stringBuffer.append("public class ");
        stringBuffer.append(this.snippetClassName);
        if (this.snippetVarClassName != null) {
            stringBuffer.append(" extends ");
            stringBuffer.append(this.snippetVarClassName);
        } else {
            stringBuffer.append(" extends ");
            stringBuffer.append(EvaluationConstants.PACKAGE_NAME);
            stringBuffer.append(".");
            stringBuffer.append(EvaluationConstants.ROOT_CLASS_NAME);
        }
        stringBuffer.append(" {");
        stringBuffer.append(str);
        this.lineNumberOffset++;
        if (this.snippetDeclaringTypeName != null) {
            stringBuffer.append(GlideException.a.f59088e);
            stringBuffer.append(this.snippetDeclaringTypeName);
            stringBuffer.append(" ");
            stringBuffer.append(EvaluationConstants.DELEGATE_THIS);
            stringBuffer.append(';');
            stringBuffer.append(str);
            this.lineNumberOffset++;
        }
        char[][] cArr3 = this.localVarNames;
        if (cArr3 != null) {
            int length = cArr3.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(C13155a.f85806a);
                stringBuffer.append(this.localVarTypeNames[i10]);
                stringBuffer.append(" ");
                stringBuffer.append(EvaluationConstants.LOCAL_VAR_PREFIX);
                stringBuffer.append(this.localVarNames[i10]);
                stringBuffer.append(';');
                stringBuffer.append(str);
                this.lineNumberOffset++;
            }
        }
        if (this.complianceVersion >= ClassFileConstants.JDK1_5) {
            stringBuffer.append("@Override ");
        }
        stringBuffer.append("public void run() throws Throwable {");
        stringBuffer.append(str);
        this.lineNumberOffset++;
        this.startPosOffset = stringBuffer.length();
        stringBuffer.append(this.codeSnippet);
        stringBuffer.append(str);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        stringBuffer.append(str);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        stringBuffer.append(str);
        int length2 = stringBuffer.length();
        char[] cArr4 = new char[length2];
        this.cuSource = cArr4;
        stringBuffer.getChars(0, length2, cArr4, 0);
    }

    public char[] getCUSource(String str) {
        if (this.cuSource == null) {
            buildCUSource(str);
        }
        return this.cuSource;
    }

    public CompletionRequestor getCompletionRequestor(final CompletionRequestor completionRequestor) {
        return new CompletionRequestor() {
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0010, code lost:
            
                if (r0 != 24) goto L37;
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(CompletionProposal completionProposal) {
                int kind = completionProposal.getKind();
                if (kind != 6 && kind != 7) {
                    if (kind == 9) {
                        int flags = completionProposal.getFlags();
                        if ((flags & 16384) == 0 && (flags & 512) == 0) {
                            char[] declarationSignature = completionProposal.getDeclarationSignature();
                            char[] signatureSimpleName = Signature.getSignatureSimpleName(completionProposal.getSignature());
                            if (CharOperation.equals(declarationSignature, CodeSnippetToCuMapper.this.snippetPackageName) && (CharOperation.equals(signatureSimpleName, CodeSnippetToCuMapper.this.snippetClassName) || CharOperation.equals(signatureSimpleName, CodeSnippetToCuMapper.this.snippetVarClassName))) {
                                return;
                            }
                            if (CharOperation.equals(declarationSignature, EvaluationConstants.PACKAGE_NAME) && CharOperation.equals(signatureSimpleName, EvaluationConstants.ROOT_CLASS_NAME)) {
                                return;
                            }
                        }
                    }
                    completionRequestor.accept(completionProposal);
                }
                char[] signatureQualifier = Signature.getSignatureQualifier(completionProposal.getDeclarationSignature());
                char[] signatureSimpleName2 = Signature.getSignatureSimpleName(completionProposal.getDeclarationSignature());
                if (CharOperation.equals(signatureQualifier, CodeSnippetToCuMapper.this.snippetPackageName) && CharOperation.equals(signatureSimpleName2, CodeSnippetToCuMapper.this.snippetClassName)) {
                    return;
                }
                if (CharOperation.equals(signatureQualifier, EvaluationConstants.PACKAGE_NAME) && CharOperation.equals(signatureSimpleName2, EvaluationConstants.ROOT_CLASS_NAME)) {
                    return;
                }
                completionRequestor.accept(completionProposal);
            }

            @Override
            public void acceptContext(CompletionContext completionContext) {
                completionRequestor.acceptContext(completionContext);
            }

            @Override
            public void beginReporting() {
                completionRequestor.beginReporting();
            }

            @Override
            public void completionFailure(IProblem iProblem) {
                iProblem.setSourceStart(iProblem.getSourceStart() - CodeSnippetToCuMapper.this.startPosOffset);
                iProblem.setSourceEnd(iProblem.getSourceEnd() - CodeSnippetToCuMapper.this.startPosOffset);
                iProblem.setSourceLineNumber(iProblem.getSourceLineNumber() - CodeSnippetToCuMapper.this.lineNumberOffset);
                completionRequestor.completionFailure(iProblem);
            }

            @Override
            public void endReporting() {
                completionRequestor.endReporting();
            }

            @Override
            public boolean isAllowingRequiredProposals(int i10, int i11) {
                return completionRequestor.isAllowingRequiredProposals(i10, i11);
            }

            @Override
            public boolean isIgnored(int i10) {
                return completionRequestor.isIgnored(i10);
            }

            @Override
            public void setAllowsRequiredProposals(int i10, int i11, boolean z10) {
                completionRequestor.setAllowsRequiredProposals(i10, i11, z10);
            }

            @Override
            public void setIgnored(int i10, boolean z10) {
                completionRequestor.setIgnored(i10, z10);
            }
        };
    }

    public int getEvaluationType(int i10) {
        int i11;
        char[] cArr = this.snippetPackageName;
        if (cArr == null || cArr.length == 0) {
            i11 = 1;
        } else {
            if (i10 == 1) {
                return 4;
            }
            i11 = 2;
        }
        char[][] cArr2 = this.snippetImports;
        if (i11 <= i10 && i10 < cArr2.length + i11) {
            return 3;
        }
        int length = i11 + cArr2.length + 1;
        int i12 = this.snippetDeclaringTypeName == null ? 0 : 1;
        char[][] cArr3 = this.localVarNames;
        int length2 = length + i12 + (cArr3 != null ? cArr3.length : 0);
        return (length2 <= i10 && length2 + 1 >= this.lineNumberOffset) ? 2 : 5;
    }

    public char[] getImport(int i10) {
        int i11 = this.lineNumberOffset - 1;
        char[][] cArr = this.snippetImports;
        return cArr[i10 - (i11 - cArr.length)];
    }

    public ISelectionRequestor getSelectionRequestor(final ISelectionRequestor iSelectionRequestor) {
        return new ISelectionRequestor() {
            @Override
            public void acceptError(CategorizedProblem categorizedProblem) {
                categorizedProblem.setSourceLineNumber(categorizedProblem.getSourceLineNumber() - CodeSnippetToCuMapper.this.lineNumberOffset);
                categorizedProblem.setSourceStart(categorizedProblem.getSourceStart() - CodeSnippetToCuMapper.this.startPosOffset);
                categorizedProblem.setSourceEnd(categorizedProblem.getSourceEnd() - CodeSnippetToCuMapper.this.startPosOffset);
                iSelectionRequestor.acceptError(categorizedProblem);
            }

            @Override
            public void acceptField(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, char[] cArr4, int i10, int i11) {
                iSelectionRequestor.acceptField(cArr, cArr2, cArr3, z10, cArr4, i10, i11);
            }

            @Override
            public void acceptMethod(char[] cArr, char[] cArr2, String str, char[] cArr3, char[][] cArr4, char[][] cArr5, String[] strArr, char[][] cArr6, char[][][] cArr7, boolean z10, boolean z11, char[] cArr8, int i10, int i11) {
                iSelectionRequestor.acceptMethod(cArr, cArr2, str, cArr3, cArr4, cArr5, strArr, cArr6, cArr7, z10, z11, cArr8, i10, i11);
            }

            @Override
            public void acceptMethodTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, char[] cArr4, boolean z10, int i12, int i13) {
                iSelectionRequestor.acceptMethodTypeParameter(cArr, cArr2, cArr3, i10, i11, cArr4, z10, i12, i13);
            }

            @Override
            public void acceptModule(char[] cArr, char[] cArr2, int i10, int i11) {
                iSelectionRequestor.acceptModule(cArr, cArr2, i10, i11);
            }

            @Override
            public void acceptPackage(char[] cArr) {
                iSelectionRequestor.acceptPackage(cArr);
            }

            @Override
            public void acceptType(char[] cArr, char[] cArr2, int i10, boolean z10, char[] cArr3, int i11, int i12) {
                iSelectionRequestor.acceptType(cArr, cArr2, i10, z10, cArr3, i11, i12);
            }

            @Override
            public void acceptTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, int i10, int i11) {
                iSelectionRequestor.acceptTypeParameter(cArr, cArr2, cArr3, z10, i10, i11);
            }
        };
    }
}
