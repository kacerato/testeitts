package org.eclipse.jdt.core.dom;

import java.util.function.Predicate;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.ClasspathDirectory;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.INameEnvironmentWithProgress;
import org.eclipse.jdt.internal.core.NameLookup;

public class NameEnvironmentWithProgress extends FileSystem implements INameEnvironmentWithProgress {
    IProgressMonitor monitor;

    public NameEnvironmentWithProgress(FileSystem.Classpath[] classpathArr, String[] strArr, IProgressMonitor iProgressMonitor) {
        super(classpathArr, strArr, false);
        setMonitor(iProgressMonitor);
    }

    private void checkCanceled() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor == null || !iProgressMonitor.isCanceled()) {
            return;
        }
        if (NameLookup.VERBOSE) {
            System.out.println(((Object) Thread.currentThread()) + " CANCELLING LOOKUP ");
        }
        throw new AbortCompilation(true, (RuntimeException) new OperationCanceledException());
    }

    public static boolean lambda$0(ClasspathDirectory classpathDirectory) {
        return classpathDirectory.getModule() != null;
    }

    public static boolean lambda$1(char[] cArr, ClasspathDirectory classpathDirectory) {
        return classpathDirectory.servesModule(cArr);
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3) {
        return findType(cArr, cArr2, true, cArr3);
    }

    @Override
    public boolean isPackage(char[][] cArr, char[] cArr2) {
        checkCanceled();
        return super.isPackage(cArr, cArr2);
    }

    @Override
    public void setMonitor(IProgressMonitor iProgressMonitor) {
        this.monitor = iProgressMonitor;
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, boolean z10, final char[] cArr3) {
        checkCanceled();
        NameEnvironmentAnswer findType = super.findType(cArr, cArr2, cArr3);
        if (findType == null && z10) {
            String str = new String(CharOperation.concatWith(cArr2, '/'));
            String str2 = new String(CharOperation.concatWith(cArr2, cArr, '/')) + ".class";
            int length = this.classpaths.length;
            NameEnvironmentAnswer nameEnvironmentAnswer = null;
            for (int i10 = 0; i10 < length; i10++) {
                FileSystem.Classpath classpath = this.classpaths[i10];
                if (classpath instanceof ClasspathDirectory) {
                    ClasspathDirectory classpathDirectory = (ClasspathDirectory) classpath;
                    if (IModuleAwareNameEnvironment.LookupStrategy.get(cArr3).matchesWithName(classpathDirectory, new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            boolean lambda$0;
                            lambda$0 = NameEnvironmentWithProgress.lambda$0((ClasspathDirectory) obj);
                            return lambda$0;
                        }
                    }, new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            boolean lambda$1;
                            lambda$1 = NameEnvironmentWithProgress.lambda$1(cArr3, (ClasspathDirectory) obj);
                            return lambda$1;
                        }
                    }) && (findType = classpathDirectory.findSecondaryInClass(cArr, str, str2)) != null) {
                        if (!findType.ignoreIfBetter()) {
                            if (findType.isBetter(nameEnvironmentAnswer)) {
                                return findType;
                            }
                        } else if (findType.isBetter(nameEnvironmentAnswer)) {
                            nameEnvironmentAnswer = findType;
                        }
                    }
                }
            }
        }
        return findType;
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr) {
        checkCanceled();
        return super.findType(cArr);
    }
}
