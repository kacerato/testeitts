package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.ISourceModule;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.lookup.BinaryModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;

public interface ITypeRequestor {
    void accept(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction);

    void accept(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction);

    default void accept(IModule iModule, LookupEnvironment lookupEnvironment) {
        if (iModule instanceof ISourceModule) {
            try {
                ICompilationUnit compilationUnit = ((ISourceModule) iModule).getCompilationUnit();
                if (compilationUnit != null) {
                    accept(compilationUnit, (AccessRestriction) null);
                    return;
                }
                return;
            } catch (AbortCompilation unused) {
                return;
            }
        }
        BinaryModuleBinding.create(iModule, lookupEnvironment);
    }

    void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction);
}
