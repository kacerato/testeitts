package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class CompletionOnJavadocMessageSend extends JavadocMessageSend implements CompletionOnJavadoc {
    public int completionFlags;
    public int separatorPosition;

    public CompletionOnJavadocMessageSend(JavadocMessageSend javadocMessageSend, int i10) {
        super(javadocMessageSend.selector, javadocMessageSend.nameSourcePosition);
        this.completionFlags = 1;
        this.arguments = javadocMessageSend.arguments;
        this.receiver = javadocMessageSend.receiver;
        this.sourceEnd = javadocMessageSend.sourceEnd;
        this.tagValue = javadocMessageSend.tagValue;
        this.separatorPosition = i10;
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
        stringBuffer.append("<CompleteOnJavadocMessageSend:");
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

    public CompletionOnJavadocMessageSend(JavadocMessageSend javadocMessageSend, int i10, int i11) {
        this(javadocMessageSend, i10);
        this.completionFlags |= i11;
    }
}
