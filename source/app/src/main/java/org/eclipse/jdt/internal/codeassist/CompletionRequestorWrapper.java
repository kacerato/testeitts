package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;

public class CompletionRequestorWrapper extends CompletionRequestor {
    private static boolean DECODE_SIGNATURE = false;
    private ICompletionRequestor requestor;

    public CompletionRequestorWrapper(ICompletionRequestor iCompletionRequestor) {
        this.requestor = iCompletionRequestor;
    }

    private char[][] getParameterPackages(char[] cArr) {
        char[][] parameterTypes = Signature.getParameterTypes(cArr);
        int length = parameterTypes == null ? 0 : parameterTypes.length;
        char[][] cArr2 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr2[i10] = Signature.getSignatureQualifier(parameterTypes[i10]);
        }
        return cArr2;
    }

    private char[][] getParameterTypes(char[] cArr) {
        char[][] parameterTypes = Signature.getParameterTypes(cArr);
        int length = parameterTypes == null ? 0 : parameterTypes.length;
        char[][] cArr2 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr2[i10] = Signature.getSignatureSimpleName(parameterTypes[i10]);
        }
        return cArr2;
    }

    @Override
    public void accept(CompletionProposal completionProposal) {
        InternalCompletionProposal internalCompletionProposal = (InternalCompletionProposal) completionProposal;
        switch (internalCompletionProposal.getKind()) {
            case 1:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptAnonymousType(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), getParameterPackages(internalCompletionProposal.getSignature()), getParameterTypes(internalCompletionProposal.getSignature()), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptAnonymousType(internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getParameterPackageNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterPackageNames(), internalCompletionProposal.getParameterTypeNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterTypeNames(), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 2:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptField(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), Signature.getSignatureQualifier(internalCompletionProposal.getSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptField(internalCompletionProposal.getDeclarationPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 3:
                this.requestor.acceptKeyword(internalCompletionProposal.getName(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                return;
            case 4:
                this.requestor.acceptLabel(internalCompletionProposal.getCompletion(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                return;
            case 5:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), Signature.getSignatureQualifier(internalCompletionProposal.getSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 6:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptMethod(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), getParameterPackages(internalCompletionProposal.getSignature()), getParameterTypes(internalCompletionProposal.getSignature()), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), Signature.getSignatureQualifier(Signature.getReturnType(internalCompletionProposal.getSignature())), Signature.getSignatureSimpleName(Signature.getReturnType(internalCompletionProposal.getSignature())), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptMethod(internalCompletionProposal.getDeclarationPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getParameterPackageNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterPackageNames(), internalCompletionProposal.getParameterTypeNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterTypeNames(), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 7:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptMethodDeclaration(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), getParameterPackages(internalCompletionProposal.getSignature()), getParameterTypes(internalCompletionProposal.getSignature()), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), Signature.getSignatureQualifier(Signature.getReturnType(internalCompletionProposal.getSignature())), Signature.getSignatureSimpleName(Signature.getReturnType(internalCompletionProposal.getSignature())), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptMethodDeclaration(internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getParameterPackageNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterPackageNames(), internalCompletionProposal.getParameterTypeNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterTypeNames(), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 8:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptPackage(internalCompletionProposal.getDeclarationSignature(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptPackage(internalCompletionProposal.getPackageName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 9:
                if ((internalCompletionProposal.getFlags() & 16384) == 0) {
                    if ((internalCompletionProposal.getFlags() & 512) != 0) {
                        if (DECODE_SIGNATURE) {
                            this.requestor.acceptInterface(internalCompletionProposal.getDeclarationSignature(), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags() & (-513), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                            return;
                        } else {
                            this.requestor.acceptInterface(internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags() & (-513), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                            return;
                        }
                    }
                    if (DECODE_SIGNATURE) {
                        this.requestor.acceptClass(internalCompletionProposal.getDeclarationSignature(), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                        return;
                    } else {
                        this.requestor.acceptClass(internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                        return;
                    }
                }
                return;
            case 10:
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), Signature.getSignatureQualifier(internalCompletionProposal.getSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                } else {
                    this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    return;
                }
            case 11:
                ICompletionRequestor iCompletionRequestor = this.requestor;
                if (iCompletionRequestor instanceof IExtendedCompletionRequestor) {
                    IExtendedCompletionRequestor iExtendedCompletionRequestor = (IExtendedCompletionRequestor) iCompletionRequestor;
                    if (DECODE_SIGNATURE) {
                        iExtendedCompletionRequestor.acceptPotentialMethodDeclaration(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                        return;
                    } else {
                        iExtendedCompletionRequestor.acceptPotentialMethodDeclaration(internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }

    @Override
    public void completionFailure(IProblem iProblem) {
        this.requestor.acceptError(iProblem);
    }
}
