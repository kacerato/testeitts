package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class CompletionOnJavadocQualifiedTypeReference extends JavadocQualifiedTypeReference implements CompletionOnJavadoc {
    public int completionFlags;
    public char[] completionIdentifier;

    public CompletionOnJavadocQualifiedTypeReference(char[][] cArr, char[] cArr2, long[] jArr, int i10, int i11) {
        super(cArr, jArr, i10, i11);
        this.completionFlags = 1;
        this.completionIdentifier = cArr2;
    }

    @Override
    public void addCompletionFlags(int i10) {
        this.completionFlags = i10 | this.completionFlags;
    }

    public boolean completeAnException() {
        return (this.completionFlags & 2) != 0;
    }

    public boolean completeBaseTypes() {
        return (this.completionFlags & 8) != 0;
    }

    public boolean completeFormalReference() {
        return (this.completionFlags & 64) != 0;
    }

    public boolean completeInText() {
        return (this.completionFlags & 4) != 0;
    }

    @Override
    public int getCompletionFlags() {
        return this.completionFlags;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        char c10;
        stringBuffer.append("<CompletionOnJavadocQualifiedTypeReference:");
        super.printExpression(i10, stringBuffer);
        int i11 = i10 + 1;
        if (this.completionFlags > 0) {
            stringBuffer.append('\n');
            for (int i12 = 0; i12 < i11; i12++) {
                stringBuffer.append('\t');
            }
            stringBuffer.append("infos:");
            boolean completeAnException = completeAnException();
            char c11 = IIndexConstants.PARAMETER_SEPARATOR;
            if (completeAnException) {
                stringBuffer.append("exception");
                c10 = ',';
            } else {
                c10 = 0;
            }
            if (completeInText()) {
                if (c10 != 0) {
                    stringBuffer.append(c10);
                }
                stringBuffer.append("text");
                c10 = ',';
            }
            if (completeBaseTypes()) {
                if (c10 != 0) {
                    stringBuffer.append(c10);
                }
                stringBuffer.append("base types");
            } else {
                c11 = c10;
            }
            if (completeFormalReference()) {
                if (c11 != 0) {
                    stringBuffer.append(c11);
                }
                stringBuffer.append("formal reference");
            }
            stringBuffer.append('\n');
        }
        for (int i13 = 0; i13 < i10; i13++) {
            stringBuffer.append('\t');
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CompletionOnJavadocQualifiedTypeReference(JavadocQualifiedTypeReference javadocQualifiedTypeReference) {
        super(r0, r1, r3, r3);
        char[][] cArr = javadocQualifiedTypeReference.tokens;
        long[] jArr = javadocQualifiedTypeReference.sourcePositions;
        int i10 = javadocQualifiedTypeReference.tagSourceStart;
        this.completionFlags = 1;
        this.completionIdentifier = CharOperation.NO_CHAR;
    }
}
