package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;

public class SelectionOnModuleDeclaration extends ModuleDeclaration {
    public SelectionOnModuleDeclaration(CompilationResult compilationResult, char[][] cArr, long[] jArr) {
        super(compilationResult, cArr, jArr);
    }

    @Override
    public ModuleBinding setBinding(SourceModuleBinding sourceModuleBinding) {
        super.setBinding(sourceModuleBinding);
        throw new SelectionNodeFound(this.binding);
    }
}
