package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class CompletionOnJavadocFieldReference extends JavadocFieldReference implements CompletionOnJavadoc {
    public int completionFlags;
    public int separatorPosition;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CompletionOnJavadocFieldReference(Expression expression, int i10, int i11, int i12, char[] cArr) {
        super(null, ((r0 << 32) + r0) - 1);
        long j10 = i11;
        this.completionFlags = 1;
        this.receiver = expression;
        this.tagSourceStart = i11;
        this.tagSourceEnd = i11;
        this.tagValue = i10;
        this.separatorPosition = i12;
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
    public TypeBinding internalResolveType(Scope scope) {
        if (this.token != null) {
            return super.internalResolveType(scope);
        }
        Expression expression = this.receiver;
        if (expression == null) {
            this.actualReceiverType = scope.enclosingSourceType();
            return null;
        }
        if (scope.kind == 3) {
            this.actualReceiverType = expression.resolveType((ClassScope) scope);
            return null;
        }
        this.actualReceiverType = expression.resolveType((BlockScope) scope);
        return null;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        char c10;
        stringBuffer.append("<CompleteOnJavadocFieldReference:");
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

    public CompletionOnJavadocFieldReference(JavadocFieldReference javadocFieldReference, int i10, char[] cArr) {
        super(javadocFieldReference.token, javadocFieldReference.nameSourcePosition);
        this.completionFlags = 1;
        this.receiver = javadocFieldReference.receiver;
        this.separatorPosition = i10;
        this.tagSourceStart = javadocFieldReference.tagSourceStart;
        this.tagSourceEnd = javadocFieldReference.tagSourceEnd;
        this.tagValue = javadocFieldReference.tagValue;
    }

    public CompletionOnJavadocFieldReference(JavadocMessageSend javadocMessageSend, int i10) {
        super(javadocMessageSend.selector, ((javadocMessageSend.nameSourcePosition >> 32) << 32) + javadocMessageSend.sourceEnd);
        this.completionFlags = 1;
        this.receiver = javadocMessageSend.receiver;
        this.separatorPosition = i10;
        this.tagSourceStart = javadocMessageSend.tagSourceStart;
        this.tagSourceEnd = javadocMessageSend.tagSourceEnd;
        this.tagValue = javadocMessageSend.tagValue;
    }
}
