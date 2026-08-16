package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;

public abstract class VariablePattern extends JavaSearchPattern {
    public static final int FINE_GRAIN_MASK = 251658240;
    protected boolean findDeclarations;
    protected boolean findReferences;
    protected char[] name;
    protected boolean readAccess;
    protected boolean writeAccess;

    public VariablePattern(int i10, char[] cArr, int i11, int i12) {
        super(i10, i12);
        this.findDeclarations = false;
        this.findReferences = false;
        this.readAccess = false;
        this.writeAccess = false;
        int i13 = 251658240 & i11;
        this.fineGrain = i13;
        if (i13 == 0) {
            int i14 = i11 & 15;
            if (i14 == 0) {
                this.findDeclarations = true;
            } else if (i14 == 2) {
                this.readAccess = true;
                this.writeAccess = true;
            } else if (i14 == 3) {
                this.findDeclarations = true;
                this.readAccess = true;
                this.writeAccess = true;
            } else if (i14 == 4) {
                this.readAccess = true;
            } else if (i14 == 5) {
                this.writeAccess = true;
            }
            this.findReferences = this.readAccess || this.writeAccess;
        }
        if (!this.isCaseSensitive && !this.isCamelCase) {
            cArr = CharOperation.toLowerCase(cArr);
        }
        this.name = cArr;
    }

    public boolean mustResolve() {
        return this.findReferences || this.fineGrain != 0;
    }
}
