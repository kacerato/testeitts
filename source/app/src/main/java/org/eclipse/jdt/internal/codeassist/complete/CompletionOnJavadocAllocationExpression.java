package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class CompletionOnJavadocAllocationExpression extends JavadocAllocationExpression implements CompletionOnJavadoc {
    public int completionFlags;
    public int separatorPosition;

    public CompletionOnJavadocAllocationExpression(JavadocAllocationExpression javadocAllocationExpression, int i10) {
        super(javadocAllocationExpression.sourceStart, javadocAllocationExpression.sourceEnd);
        this.completionFlags = 1;
        this.arguments = javadocAllocationExpression.arguments;
        this.type = javadocAllocationExpression.type;
        this.tagValue = javadocAllocationExpression.tagValue;
        this.sourceEnd = javadocAllocationExpression.sourceEnd;
        this.separatorPosition = i10;
        this.qualification = javadocAllocationExpression.qualification;
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
        stringBuffer.append("<CompleteOnJavadocAllocationExpression:");
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

    public CompletionOnJavadocAllocationExpression(JavadocAllocationExpression javadocAllocationExpression, int i10, int i11) {
        this(javadocAllocationExpression, i10);
        this.completionFlags |= i11;
    }
}
