package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class ModuleReference extends ASTNode {
    public ModuleBinding binding = null;
    public char[] moduleName;
    public long[] sourcePositions;
    public char[][] tokens;

    public ModuleReference(char[][] cArr, long[] jArr) {
        this.tokens = cArr;
        this.sourcePositions = jArr;
        this.sourceEnd = (int) jArr[jArr.length - 1];
        this.sourceStart = (int) (jArr[0] >>> 32);
        this.moduleName = CharOperation.concatWith(cArr, '.');
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        for (int i11 = 0; i11 < this.tokens.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(this.tokens[i11]);
        }
        return stringBuffer;
    }

    public ModuleBinding resolve(Scope scope) {
        if (scope == null || this.binding != null) {
            return this.binding;
        }
        ModuleBinding module = scope.environment().getModule(this.moduleName);
        this.binding = module;
        return module;
    }
}
