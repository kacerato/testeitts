package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class CompletionOnModuleReference extends ModuleReference {
    public CompletionOnModuleReference(char[] cArr, long j10) {
        this(new char[][]{cArr}, new long[]{j10});
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<CompleteOnModuleReference:");
        for (int i11 = 0; i11 < this.tokens.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public ModuleBinding resolve(Scope scope) {
        super.resolve(scope);
        throw new CompletionNodeFound();
    }

    public CompletionOnModuleReference(char[][] cArr, long[] jArr) {
        super(cArr, jArr);
    }
}
