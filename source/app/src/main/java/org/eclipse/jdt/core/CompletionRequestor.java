package org.eclipse.jdt.core;

import org.eclipse.jdt.core.compiler.IProblem;

public abstract class CompletionRequestor {
    private String[] favoriteReferences;
    private int ignoreSet;
    private boolean requireExtendedContext;
    private int[] requiredProposalAllowSet;

    public CompletionRequestor() {
        this(false);
    }

    public abstract void accept(CompletionProposal completionProposal);

    public void acceptContext(CompletionContext completionContext) {
    }

    public void beginReporting() {
    }

    public void completionFailure(IProblem iProblem) {
    }

    public void endReporting() {
    }

    public String[] getFavoriteReferences() {
        return this.favoriteReferences;
    }

    public boolean isAllowingRequiredProposals(int i10, int i11) {
        if (i10 < 1 || i10 > 29) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + i11);
        }
        if (i11 >= 1 && i11 <= 29) {
            int[] iArr = this.requiredProposalAllowSet;
            return (iArr == null || (iArr[i10] & (1 << i11)) == 0) ? false : true;
        }
        throw new IllegalArgumentException("Unknown required kind of completion proposal: " + i11);
    }

    public boolean isExtendedContextRequired() {
        return this.requireExtendedContext;
    }

    public boolean isIgnored(int i10) {
        if (i10 >= 1 && i10 <= 29) {
            return ((1 << i10) & this.ignoreSet) != 0;
        }
        throw new IllegalArgumentException("Unknown kind of completion proposal: " + i10);
    }

    public boolean isTestCodeExcluded() {
        return false;
    }

    public void setAllowsRequiredProposals(int i10, int i11, boolean z10) {
        if (i10 < 1 || i10 > 29) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + i11);
        }
        if (i11 < 1 || i11 > 29) {
            throw new IllegalArgumentException("Unknown required kind of completion proposal: " + i11);
        }
        if (this.requiredProposalAllowSet == null) {
            this.requiredProposalAllowSet = new int[30];
        }
        if (z10) {
            int[] iArr = this.requiredProposalAllowSet;
            iArr[i10] = (1 << i11) | iArr[i10];
        } else {
            int[] iArr2 = this.requiredProposalAllowSet;
            iArr2[i10] = (~(1 << i11)) & iArr2[i10];
        }
    }

    public void setFavoriteReferences(String[] strArr) {
        this.favoriteReferences = strArr;
    }

    public void setIgnored(int i10, boolean z10) {
        if (i10 < 1 || i10 > 29) {
            throw new IllegalArgumentException("Unknown kind of completion proposal: " + i10);
        }
        if (z10) {
            this.ignoreSet = (1 << i10) | this.ignoreSet;
        } else {
            this.ignoreSet = (~(1 << i10)) & this.ignoreSet;
        }
    }

    public void setRequireExtendedContext(boolean z10) {
        this.requireExtendedContext = z10;
    }

    public CompletionRequestor(boolean z10) {
        this.ignoreSet = 0;
        this.requiredProposalAllowSet = null;
        this.requireExtendedContext = false;
        this.ignoreSet = z10 ? -1 : 0;
    }
}
