package org.eclipse.jdt.internal.compiler.problem;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ProblemHandler {
    public static final String[] NoArgument = CharOperation.NO_STRINGS;
    public final CompilerOptions options;
    public IErrorHandlingPolicy policy;
    public final IProblemFactory problemFactory;
    private IErrorHandlingPolicy rootPolicy;
    protected boolean suppressTagging = false;

    public ProblemHandler(IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, IProblemFactory iProblemFactory) {
        this.policy = iErrorHandlingPolicy;
        this.problemFactory = iProblemFactory;
        this.options = compilerOptions;
    }

    public int computeSeverity(int i10) {
        return 1;
    }

    public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13, int i14, int i15) {
        return this.problemFactory.createProblem(cArr, i10, strArr, strArr2, i11, i12, i13, i14, i15);
    }

    public void handle(int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14, ReferenceContext referenceContext, CompilationResult compilationResult) {
        int i15;
        CompilationUnitDeclaration compilationUnitDeclaration;
        ICompilationUnit compilationUnit;
        if (i12 == 256) {
            return;
        }
        boolean z10 = (i12 & 33) == 1;
        if ((i12 & 512) == 0 && this.policy.ignoreAllErrors()) {
            if (referenceContext == null) {
                if ((i12 & 1) != 0) {
                    throw new AbortCompilation((CompilationResult) null, createProblem(null, i10, strArr, i11, strArr2, i12, 0, 0, 0, 0));
                }
                return;
            } else {
                if (z10) {
                    referenceContext.tagAsHavingIgnoredMandatoryErrors(i10);
                    return;
                }
                return;
            }
        }
        if ((i12 & 32) != 0 && i10 != 536871362 && !this.options.ignoreSourceFolderWarningOption && (compilationUnit = compilationResult.getCompilationUnit()) != null) {
            try {
                if (compilationUnit.ignoreOptionalProblems()) {
                    return;
                }
            } catch (AbstractMethodError unused) {
            }
        }
        if (referenceContext == null) {
            if ((i12 & 1) != 0) {
                throw new AbortCompilation((CompilationResult) null, createProblem(null, i10, strArr, i11, strArr2, i12, 0, 0, 0, 0));
            }
            return;
        }
        if (i13 >= 0) {
            int[] lineSeparatorPositions = compilationResult.getLineSeparatorPositions();
            i15 = Util.getLineNumber(i13, lineSeparatorPositions, 0, lineSeparatorPositions.length - 1);
        } else {
            i15 = 0;
        }
        boolean z11 = z10;
        CategorizedProblem createProblem = createProblem(compilationResult.getFileName(), i10, strArr, i11, strArr2, i12, i13, i14, i15, i13 >= 0 ? Util.searchColumnNumber(compilationResult.getLineSeparatorPositions(), i15, i13) : 0);
        if (createProblem == null) {
            return;
        }
        int i16 = i12 & 1;
        if (i16 == 0) {
            record(createProblem, compilationResult, referenceContext, false);
            return;
        }
        if (i16 != 1) {
            return;
        }
        record(createProblem, compilationResult, referenceContext, z11);
        if ((i12 & 128) != 0) {
            if (referenceContext.hasErrors() || z11 || !this.options.suppressOptionalErrors || (compilationUnitDeclaration = referenceContext.getCompilationUnitDeclaration()) == null || !compilationUnitDeclaration.isSuppressed(createProblem)) {
                if (!this.suppressTagging || this.options.treatOptionalErrorAsFatal) {
                    referenceContext.tagAsHavingErrors();
                }
                int i17 = this.policy.stopOnFirstError() ? 2 : i12 & 30;
                if (i17 != 0) {
                    referenceContext.abort(i17, createProblem);
                }
            }
        }
    }

    public void record(CategorizedProblem categorizedProblem, CompilationResult compilationResult, ReferenceContext referenceContext, boolean z10) {
        compilationResult.record(categorizedProblem, referenceContext, z10);
    }

    public void resumeTempErrorHandlingPolicy(IErrorHandlingPolicy iErrorHandlingPolicy) {
        this.policy = iErrorHandlingPolicy;
    }

    public IErrorHandlingPolicy suspendTempErrorHandlingPolicy() {
        IErrorHandlingPolicy iErrorHandlingPolicy = this.policy;
        IErrorHandlingPolicy iErrorHandlingPolicy2 = this.rootPolicy;
        if (iErrorHandlingPolicy2 != null) {
            this.policy = iErrorHandlingPolicy2;
        }
        return iErrorHandlingPolicy;
    }

    public IErrorHandlingPolicy switchErrorHandlingPolicy(IErrorHandlingPolicy iErrorHandlingPolicy) {
        if (this.rootPolicy == null) {
            this.rootPolicy = this.policy;
        }
        IErrorHandlingPolicy iErrorHandlingPolicy2 = this.policy;
        this.policy = iErrorHandlingPolicy;
        return iErrorHandlingPolicy2;
    }

    public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14, int i15, int i16) {
        return this.problemFactory.createProblem(cArr, i10, strArr, i11, strArr2, i12, i13, i14, i15, i16);
    }

    public void handle(int i10, String[] strArr, String[] strArr2, int i11, int i12, ReferenceContext referenceContext, CompilationResult compilationResult) {
        handle(i10, strArr, 0, strArr2, computeSeverity(i10), i11, i12, referenceContext, compilationResult);
    }
}
