package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;

public final class BinaryTypeDescriptor {
    public final char[] fieldDescriptor;
    public final char[] indexPath;
    public final char[] location;
    public final char[] workspacePath;

    public BinaryTypeDescriptor(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4) {
        this.location = cArr;
        this.fieldDescriptor = cArr2;
        this.indexPath = cArr4;
        this.workspacePath = cArr3;
    }

    public boolean isInJarFile() {
        return CharArrayUtils.indexOf('|', this.indexPath) != -1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.workspacePath);
        sb2.append('|');
        sb2.append(this.fieldDescriptor);
        return sb2.toString();
    }
}
