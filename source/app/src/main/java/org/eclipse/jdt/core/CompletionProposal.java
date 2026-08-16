package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.codeassist.InternalCompletionProposal;

public class CompletionProposal {
    public static final int ANNOTATION_ATTRIBUTE_REF = 13;
    public static final int ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION = 27;
    public static final int ANONYMOUS_CLASS_DECLARATION = 1;
    public static final int CONSTRUCTOR_INVOCATION = 26;
    public static final int FIELD_IMPORT = 21;
    public static final int FIELD_REF = 2;
    public static final int FIELD_REF_WITH_CASTED_RECEIVER = 25;
    protected static final int FIRST_KIND = 1;
    public static final int JAVADOC_BLOCK_TAG = 19;
    public static final int JAVADOC_FIELD_REF = 14;
    public static final int JAVADOC_INLINE_TAG = 20;
    public static final int JAVADOC_METHOD_REF = 15;
    public static final int JAVADOC_PARAM_REF = 18;
    public static final int JAVADOC_TYPE_REF = 16;
    public static final int JAVADOC_VALUE_REF = 17;
    public static final int KEYWORD = 3;
    public static final int LABEL_REF = 4;
    protected static final int LAST_KIND = 29;
    public static final int LOCAL_VARIABLE_REF = 5;
    public static final int METHOD_DECLARATION = 7;
    public static final int METHOD_IMPORT = 22;
    public static final int METHOD_NAME_REFERENCE = 12;
    public static final int METHOD_REF = 6;
    public static final int METHOD_REF_WITH_CASTED_RECEIVER = 24;
    public static final int MODULE_DECLARATION = 28;
    public static final int MODULE_REF = 29;
    public static final int PACKAGE_REF = 8;
    public static final int POTENTIAL_METHOD_DECLARATION = 11;
    public static final int TYPE_IMPORT = 23;
    public static final int TYPE_REF = 9;
    public static final int VARIABLE_DECLARATION = 10;

    public static CompletionProposal create(int i10, int i11) {
        return new InternalCompletionProposal(i10, i11);
    }

    public boolean canUseDiamond(CompletionContext completionContext) {
        return false;
    }

    public char[][] findParameterNames(IProgressMonitor iProgressMonitor) {
        return null;
    }

    public int getAccessibility() {
        return -1;
    }

    public int getAdditionalFlags() {
        return -1;
    }

    public char[] getCompletion() {
        return null;
    }

    public int getCompletionLocation() {
        return -1;
    }

    public char[] getDeclarationKey() {
        return null;
    }

    public char[] getDeclarationSignature() {
        return null;
    }

    public int getFlags() {
        return -1;
    }

    public char[] getKey() {
        return null;
    }

    public int getKind() {
        return -1;
    }

    public char[] getName() {
        return null;
    }

    public int getReceiverEnd() {
        return -1;
    }

    public char[] getReceiverSignature() {
        return null;
    }

    public int getReceiverStart() {
        return -1;
    }

    public int getRelevance() {
        return -1;
    }

    public int getReplaceEnd() {
        return -1;
    }

    public int getReplaceStart() {
        return -1;
    }

    public CompletionProposal[] getRequiredProposals() {
        return null;
    }

    public char[] getSignature() {
        return null;
    }

    public int getTokenEnd() {
        return -1;
    }

    public int getTokenStart() {
        return -1;
    }

    public boolean isConstructor() {
        return false;
    }

    public void setAdditionalFlags(int i10) {
    }

    public void setCompletion(char[] cArr) {
    }

    public void setDeclarationKey(char[] cArr) {
    }

    public void setDeclarationSignature(char[] cArr) {
    }

    public void setFlags(int i10) {
    }

    public void setKey(char[] cArr) {
    }

    public void setName(char[] cArr) {
    }

    public void setParameterNames(char[][] cArr) {
    }

    public void setReceiverRange(int i10, int i11) {
    }

    public void setReceiverSignature(char[] cArr) {
    }

    public void setRelevance(int i10) {
    }

    public void setReplaceRange(int i10, int i11) {
    }

    public void setRequiredProposals(CompletionProposal[] completionProposalArr) {
    }

    public void setSignature(char[] cArr) {
    }

    public void setTokenRange(int i10, int i11) {
    }
}
