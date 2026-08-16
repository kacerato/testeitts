package org.eclipse.jdt.internal.compiler.lookup;

public class ProblemPackageBinding extends PackageBinding {
    private int problemId;

    public ProblemPackageBinding(char[][] cArr, int i10, LookupEnvironment lookupEnvironment) {
        this.compoundName = cArr;
        this.problemId = i10;
        this.environment = lookupEnvironment;
    }

    @Override
    public final int problemId() {
        return this.problemId;
    }

    public ProblemPackageBinding(char[] cArr, int i10, LookupEnvironment lookupEnvironment) {
        this(new char[][]{cArr}, i10, lookupEnvironment);
    }
}
