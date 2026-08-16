package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class SelectionOnModuleReference extends ModuleReference {
    public SelectionOnModuleReference(char[][] cArr, long[] jArr) {
        super(cArr, jArr);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<SelectOnModuleReference:");
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
        ModuleBinding resolve = super.resolve(scope);
        if (resolve != null) {
            throw new SelectionNodeFound(resolve);
        }
        throw new SelectionNodeFound();
    }
}
