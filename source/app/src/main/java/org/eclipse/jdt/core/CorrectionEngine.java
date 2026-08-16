package org.eclipse.jdt.core;

import java.util.Hashtable;
import java.util.Map;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CorrectionEngine {
    protected static final int CLASSES = 1;
    protected static final int FIELD = 16;
    protected static final int IMPORT = 4;
    protected static final int INTERFACES = 2;
    protected static final int LOCAL = 32;
    protected static final int METHOD = 8;
    protected ICompilationUnit compilationUnit;
    protected CompletionRequestor completionRequestor = new CompletionRequestor() {
        @Override
        public void accept(CompletionProposal completionProposal) {
            int kind = completionProposal.getKind();
            if (kind == 2) {
                if ((CorrectionEngine.this.filter & 16) != 0) {
                    char[] declarationSignature = completionProposal.getDeclarationSignature();
                    char[] signature = completionProposal.getSignature();
                    ICorrectionRequestor iCorrectionRequestor = CorrectionEngine.this.correctionRequestor;
                    char[] signatureQualifier = Signature.getSignatureQualifier(declarationSignature);
                    char[] signatureSimpleName = Signature.getSignatureSimpleName(declarationSignature);
                    char[] name = completionProposal.getName();
                    char[] signatureQualifier2 = Signature.getSignatureQualifier(signature);
                    char[] signatureSimpleName2 = Signature.getSignatureSimpleName(signature);
                    char[] name2 = completionProposal.getName();
                    int flags = completionProposal.getFlags();
                    CorrectionEngine correctionEngine = CorrectionEngine.this;
                    iCorrectionRequestor.acceptField(signatureQualifier, signatureSimpleName, name, signatureQualifier2, signatureSimpleName2, name2, flags, correctionEngine.correctionStart, correctionEngine.correctionEnd);
                    return;
                }
                return;
            }
            if (kind == 5) {
                if ((CorrectionEngine.this.filter & 32) != 0) {
                    char[] signature2 = completionProposal.getSignature();
                    ICorrectionRequestor iCorrectionRequestor2 = CorrectionEngine.this.correctionRequestor;
                    char[] name3 = completionProposal.getName();
                    char[] signatureQualifier3 = Signature.getSignatureQualifier(signature2);
                    char[] signatureSimpleName3 = Signature.getSignatureSimpleName(signature2);
                    int flags2 = completionProposal.getFlags();
                    CorrectionEngine correctionEngine2 = CorrectionEngine.this;
                    iCorrectionRequestor2.acceptLocalVariable(name3, signatureQualifier3, signatureSimpleName3, flags2, correctionEngine2.correctionStart, correctionEngine2.correctionEnd);
                    return;
                }
                return;
            }
            if (kind == 6) {
                if ((CorrectionEngine.this.filter & 8) != 0) {
                    char[] declarationSignature2 = completionProposal.getDeclarationSignature();
                    char[] signature3 = completionProposal.getSignature();
                    char[][] parameterTypes = Signature.getParameterTypes(signature3);
                    int length = parameterTypes.length;
                    char[][] cArr = new char[length];
                    char[][] cArr2 = new char[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        cArr[i10] = Signature.getSignatureQualifier(parameterTypes[i10]);
                        cArr2[i10] = Signature.getSignatureSimpleName(parameterTypes[i10]);
                    }
                    char[] returnType = Signature.getReturnType(signature3);
                    ICorrectionRequestor iCorrectionRequestor3 = CorrectionEngine.this.correctionRequestor;
                    char[] signatureQualifier4 = Signature.getSignatureQualifier(declarationSignature2);
                    char[] signatureSimpleName4 = Signature.getSignatureSimpleName(declarationSignature2);
                    char[] name4 = completionProposal.getName();
                    char[][] findParameterNames = completionProposal.findParameterNames(null);
                    char[] signatureQualifier5 = Signature.getSignatureQualifier(returnType);
                    char[] signatureSimpleName5 = Signature.getSignatureSimpleName(returnType);
                    char[] name5 = completionProposal.getName();
                    int flags3 = completionProposal.getFlags();
                    CorrectionEngine correctionEngine3 = CorrectionEngine.this;
                    iCorrectionRequestor3.acceptMethod(signatureQualifier4, signatureSimpleName4, name4, cArr, cArr2, findParameterNames, signatureQualifier5, signatureSimpleName5, name5, flags3, correctionEngine3.correctionStart, correctionEngine3.correctionEnd);
                    return;
                }
                return;
            }
            if (kind == 8) {
                if ((CorrectionEngine.this.filter & 7) != 0) {
                    char[] declarationSignature3 = completionProposal.getDeclarationSignature();
                    CorrectionEngine correctionEngine4 = CorrectionEngine.this;
                    ICorrectionRequestor iCorrectionRequestor4 = correctionEngine4.correctionRequestor;
                    char[] subarray = CharOperation.subarray(declarationSignature3, correctionEngine4.prefixLength, declarationSignature3.length);
                    CorrectionEngine correctionEngine5 = CorrectionEngine.this;
                    iCorrectionRequestor4.acceptPackage(declarationSignature3, subarray, correctionEngine5.correctionStart, correctionEngine5.correctionEnd);
                    return;
                }
                return;
            }
            if (kind != 9) {
                return;
            }
            int flags4 = completionProposal.getFlags();
            if (Flags.isEnum(flags4) || Flags.isAnnotation(flags4)) {
                return;
            }
            int i11 = CorrectionEngine.this.filter;
            if ((i11 & 3) != 0) {
                char[] completion = completionProposal.getCompletion();
                ICorrectionRequestor iCorrectionRequestor5 = CorrectionEngine.this.correctionRequestor;
                char[] declarationSignature4 = completionProposal.getDeclarationSignature();
                char[] signatureSimpleName6 = Signature.getSignatureSimpleName(completionProposal.getSignature());
                char[] subarray2 = CharOperation.subarray(completion, CorrectionEngine.this.prefixLength, completion.length);
                int flags5 = completionProposal.getFlags();
                CorrectionEngine correctionEngine6 = CorrectionEngine.this;
                iCorrectionRequestor5.acceptClass(declarationSignature4, signatureSimpleName6, subarray2, flags5, correctionEngine6.correctionStart, correctionEngine6.correctionEnd);
                return;
            }
            if ((i11 & 4) != 0) {
                char[] declarationSignature5 = completionProposal.getDeclarationSignature();
                char[] signatureSimpleName7 = Signature.getSignatureSimpleName(completionProposal.getSignature());
                char[] concat = CharOperation.concat(declarationSignature5, signatureSimpleName7, '.');
                CorrectionEngine correctionEngine7 = CorrectionEngine.this;
                ICorrectionRequestor iCorrectionRequestor6 = correctionEngine7.correctionRequestor;
                char[] subarray3 = CharOperation.subarray(concat, correctionEngine7.prefixLength, concat.length);
                int flags6 = completionProposal.getFlags();
                CorrectionEngine correctionEngine8 = CorrectionEngine.this;
                iCorrectionRequestor6.acceptClass(declarationSignature5, signatureSimpleName7, subarray3, flags6, correctionEngine8.correctionStart, correctionEngine8.correctionEnd);
            }
        }
    };
    protected int correctionEnd;
    protected ICorrectionRequestor correctionRequestor;
    protected int correctionStart;
    protected int filter;
    protected int prefixLength;

    public CorrectionEngine(Map map) {
    }

    private void correct(char[] cArr) {
        try {
            String source = this.compilationUnit.getSource();
            Map<String, String> options = this.compilationUnit.getJavaProject().getOptions(true);
            Scanner scanner = new Scanner(false, false, false, CompilerOptions.versionToJdkLevel(options.get("org.eclipse.jdt.core.compiler.source")), CompilerOptions.versionToJdkLevel(options.get("org.eclipse.jdt.core.compiler.compliance")), null, null, true);
            scanner.setSource(source.toCharArray());
            scanner.resetTo(this.correctionStart, this.correctionEnd);
            char[] cArr2 = CharOperation.NO_CHAR;
            while (scanner.getNextToken() != 61) {
                cArr2 = CharOperation.concat(cArr2, scanner.getCurrentTokenSource());
                if (!CharOperation.prefixEquals(cArr2, cArr)) {
                    return;
                }
                if (CharOperation.equals(cArr, cArr2)) {
                    this.correctionStart = scanner.startPosition;
                    this.correctionEnd = scanner.currentPosition;
                    this.prefixLength = CharOperation.lastIndexOf('.', cArr) + 1;
                    int i10 = this.correctionStart;
                    scanner.resetTo(i10, this.correctionEnd);
                    int i11 = 0;
                    int i12 = i10;
                    while (i11 < 4 && scanner.getNextCharAsJavaIdentifierPart()) {
                        i11++;
                        i12 = i10;
                        i10 = scanner.currentPosition;
                    }
                    Hashtable<String, String> options2 = JavaCore.getOptions();
                    try {
                        Hashtable hashtable = new Hashtable(options2);
                        hashtable.put("org.eclipse.jdt.core.codeComplete.camelCaseMatch", "disabled");
                        JavaCore.setOptions(hashtable);
                        this.compilationUnit.codeComplete(i12, this.completionRequestor);
                        return;
                    } finally {
                        JavaCore.setOptions(options2);
                    }
                }
            }
        } catch (JavaModelException | InvalidInputException unused) {
        }
    }

    public static String[] getAllWarningTokens() {
        return CompilerOptions.warningTokens;
    }

    public static String[] getProblemArguments(IMarker iMarker) {
        return Util.getProblemArgumentsFromMarker(iMarker.getAttribute(IJavaModelMarker.ARGUMENTS, (String) null));
    }

    public static String getWarningToken(int i10) {
        int irritant = ProblemReporter.getIrritant(i10);
        if (irritant != 0) {
            return CompilerOptions.warningTokenFromIrritant(irritant);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r10 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void computeCorrections(IMarker iMarker, ICompilationUnit iCompilationUnit, int i10, ICorrectionRequestor iCorrectionRequestor) throws JavaModelException {
        IAdaptable iAdaptable;
        if (iCompilationUnit == null) {
            iAdaptable = JavaCore.create(iMarker.getResource());
        }
        if (iAdaptable instanceof ICompilationUnit) {
            computeCorrections((ICompilationUnit) iAdaptable, iMarker.getAttribute("id", -1), iMarker.getAttribute("charStart", -1) + i10, iMarker.getAttribute("charEnd", -1) + i10, Util.getProblemArgumentsFromMarker(iMarker.getAttribute(IJavaModelMarker.ARGUMENTS, "")), iCorrectionRequestor);
        }
    }

    public void computeCorrections(IProblem iProblem, ICompilationUnit iCompilationUnit, ICorrectionRequestor iCorrectionRequestor) throws JavaModelException {
        if (iCorrectionRequestor != null) {
            computeCorrections(iCompilationUnit, iProblem.getID(), iProblem.getSourceStart(), iProblem.getSourceEnd(), iProblem.getArguments(), iCorrectionRequestor);
            return;
        }
        throw new IllegalArgumentException(Messages.correction_nullUnit);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void computeCorrections(ICompilationUnit iCompilationUnit, int i10, int i11, int i12, String[] strArr, ICorrectionRequestor iCorrectionRequestor) {
        String str;
        if (i10 == -1 || strArr == null || i11 == -1 || i12 == -1) {
            return;
        }
        if (iCorrectionRequestor != null) {
            this.correctionRequestor = iCorrectionRequestor;
            this.correctionStart = i11;
            this.correctionEnd = i12;
            this.compilationUnit = iCompilationUnit;
            try {
                switch (i10) {
                    case IProblem.UndefinedType:
                        this.filter = 3;
                        str = strArr[0];
                        if (str == null) {
                            correct(str.toCharArray());
                            return;
                        }
                        return;
                    case IProblem.UndefinedField:
                        this.filter = 16;
                        str = strArr[0];
                        if (str == null) {
                        }
                        break;
                    case IProblem.UnresolvedVariable:
                    case IProblem.UndefinedName:
                        this.filter = 48;
                        str = strArr[0];
                        if (str == null) {
                        }
                        break;
                    case IProblem.UndefinedMethod:
                        this.filter = 8;
                        str = strArr[1];
                        if (str == null) {
                        }
                        break;
                    case IProblem.ImportNotFound:
                        this.filter = 4;
                        str = strArr[0];
                        if (str == null) {
                        }
                        break;
                    default:
                        str = null;
                        if (str == null) {
                        }
                        break;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        } else {
            throw new IllegalArgumentException(Messages.correction_nullRequestor);
        }
    }
}
