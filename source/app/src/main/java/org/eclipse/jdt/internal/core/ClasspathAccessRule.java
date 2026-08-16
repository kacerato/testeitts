package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.env.AccessRule;

public class ClasspathAccessRule extends AccessRule implements IAccessRule {
    public ClasspathAccessRule(IPath iPath, int i10) {
        this(iPath.toString().toCharArray(), toProblemId(i10));
    }

    private static int toProblemId(int i10) {
        boolean z10 = (i10 & 256) != 0;
        int i11 = i10 & (-257);
        if (i11 == 1) {
            if (z10) {
                return 50331955;
            }
            return IProblem.ForbiddenReference;
        }
        if (i11 != 2) {
            return z10 ? 33554432 : 0;
        }
        if (z10) {
            return 50331928;
        }
        return IProblem.DiscouragedReference;
    }

    @Override
    public int getKind() {
        int problemId = getProblemId();
        if (problemId != 16777496) {
            return problemId != 16777523 ? 0 : 1;
        }
        return 2;
    }

    @Override
    public IPath getPattern() {
        return new Path(new String(this.pattern));
    }

    public ClasspathAccessRule(char[] cArr, int i10) {
        super(cArr, i10);
    }
}
