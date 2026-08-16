package org.eclipse.jdt.internal.compiler.codegen;

public class CachedIndexEntry {
    public int index;
    public char[] signature;

    public CachedIndexEntry(char[] cArr, int i10) {
        this.signature = cArr;
        this.index = i10;
    }
}
