package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.Util;

public class CompilationUnitProblemFinder extends Compiler {
    public CompilationUnitProblemFinder(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory) {
        super(iNameEnvironment, iErrorHandlingPolicy, compilerOptions, iCompilerRequestor, iProblemFactory);
    }

    public static CompilerOptions getCompilerOptions(Map map, boolean z10, boolean z11) {
        CompilerOptions compilerOptions = new CompilerOptions(map);
        compilerOptions.performMethodsFullRecovery = z11;
        compilerOptions.performStatementsRecovery = z11;
        compilerOptions.parseLiteralExpressionsAsConstants = !z10;
        if (z10) {
            compilerOptions.storeAnnotations = true;
        }
        return compilerOptions;
    }

    public static IErrorHandlingPolicy getHandlingPolicy() {
        return DefaultErrorHandlingPolicies.proceedWithAllProblems();
    }

    public static ICompilerRequestor getRequestor() {
        return new ICompilerRequestor() {
            @Override
            public void acceptResult(CompilationResult compilationResult) {
            }
        };
    }

    private static boolean isTestSource(IJavaProject iJavaProject, ICompilationUnit iCompilationUnit) {
        try {
            IClasspathEntry[] resolvedClasspath = iJavaProject.getResolvedClasspath(true);
            IPath fullPath = iCompilationUnit.getResource().getFullPath();
            for (IClasspathEntry iClasspathEntry : resolvedClasspath) {
                if (iClasspathEntry.getEntryKind() == 3 && iClasspathEntry.isTest() && iClasspathEntry.getPath().isPrefixOf(fullPath)) {
                    return true;
                }
            }
        } catch (JavaModelException e10) {
            Util.log((Throwable) e10, "Exception while determining if compilation unit \"" + iCompilationUnit.getElementName() + "\" is test source");
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ad A[Catch: all -> 0x0136, RuntimeException -> 0x013a, OperationCanceledException -> 0x013e, TryCatch #13 {RuntimeException -> 0x013a, OperationCanceledException -> 0x013e, all -> 0x0136, blocks: (B:22:0x00ad, B:27:0x00c4, B:33:0x00d9, B:35:0x00dd, B:74:0x00cc, B:75:0x00b7, B:81:0x00a8), top: B:80:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01bc A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v28, types: [org.eclipse.jdt.internal.core.CancelableProblemFactory] */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r14v8, types: [org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CompilationUnitDeclaration process(CompilationUnit compilationUnit, SourceElementParser sourceElementParser, WorkingCopyOwner workingCopyOwner, HashMap hashMap, boolean z10, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CancelableProblemFactory cancelableProblemFactory;
        CancelableNameEnvironment cancelableNameEnvironment;
        CompilationUnitProblemFinder compilationUnitProblemFinder;
        int i11;
        CancelableNameEnvironment cancelableNameEnvironment2;
        CompilationUnitDeclaration parseCompilationUnit;
        CancelableNameEnvironment cancelableNameEnvironment3;
        JavaProject javaProject = (JavaProject) compilationUnit.getJavaProject();
        try {
            try {
                cancelableNameEnvironment = new CancelableNameEnvironment(javaProject, workingCopyOwner, iProgressMonitor, !isTestSource(compilationUnit.getJavaProject(), compilationUnit));
                try {
                    cancelableProblemFactory = new CancelableProblemFactory(iProgressMonitor);
                    try {
                        CompilerOptions compilerOptions = getCompilerOptions(javaProject.getOptions(true), z10, (i10 & 2) != 0);
                        boolean z11 = (i10 & 8) != 0;
                        compilerOptions.ignoreMethodBodies = z11;
                        ?? handlingPolicy = getHandlingPolicy();
                        CompilationUnitProblemFinder compilationUnitProblemFinder2 = new CompilationUnitProblemFinder(cancelableNameEnvironment, handlingPolicy, compilerOptions, getRequestor(), cancelableProblemFactory);
                        boolean z12 = !z11;
                        try {
                            if (sourceElementParser != null) {
                                try {
                                    compilationUnitProblemFinder2.parser = sourceElementParser;
                                    parseCompilationUnit = sourceElementParser.parseCompilationUnit(compilationUnit, true, iProgressMonitor);
                                    handlingPolicy = cancelableProblemFactory;
                                    i11 = 0;
                                    cancelableNameEnvironment2 = cancelableNameEnvironment;
                                    try {
                                        compilationUnitProblemFinder2.resolve(parseCompilationUnit, compilationUnit, true, z12, z12);
                                        handlingPolicy = handlingPolicy;
                                    } catch (AbortCompilation e10) {
                                        e = e10;
                                        try {
                                            compilationUnitProblemFinder2.handleInternalException(e, parseCompilationUnit);
                                            handlingPolicy = handlingPolicy;
                                            if (parseCompilationUnit != null) {
                                            }
                                            cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                            cancelableNameEnvironment3.setMonitor(null);
                                            handlingPolicy.monitor = null;
                                            if (!z10) {
                                            }
                                            return parseCompilationUnit;
                                        } catch (RuntimeException e11) {
                                            e = e11;
                                            cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                            String findRecommendedLineSeparator = compilationUnit.findRecommendedLineSeparator();
                                            StringBuffer stringBuffer = new StringBuffer("Exception occurred during problem detection:");
                                            stringBuffer.append(findRecommendedLineSeparator);
                                            stringBuffer.append("----------------------------------- SOURCE BEGIN -------------------------------------");
                                            stringBuffer.append(findRecommendedLineSeparator);
                                            stringBuffer.append(compilationUnit.getSource());
                                            stringBuffer.append(findRecommendedLineSeparator);
                                            stringBuffer.append("----------------------------------- SOURCE END -------------------------------------");
                                            Util.log(e, stringBuffer.toString());
                                            throw new JavaModelException(e, 1005);
                                        } catch (OperationCanceledException e12) {
                                            e = e12;
                                            cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                            throw e;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                            cancelableNameEnvironment = cancelableNameEnvironment3;
                                            cancelableProblemFactory = handlingPolicy;
                                            compilationUnitProblemFinder = compilationUnitProblemFinder2;
                                            if (cancelableNameEnvironment != null) {
                                            }
                                            if (cancelableProblemFactory != null) {
                                            }
                                            if (compilationUnitProblemFinder != null) {
                                            }
                                            throw th;
                                        }
                                    }
                                } catch (OperationCanceledException e13) {
                                    e = e13;
                                    throw e;
                                } catch (AbortCompilation e14) {
                                    e = e14;
                                    handlingPolicy = cancelableProblemFactory;
                                    i11 = 0;
                                    cancelableNameEnvironment2 = cancelableNameEnvironment;
                                    parseCompilationUnit = null;
                                    compilationUnitProblemFinder2.handleInternalException(e, parseCompilationUnit);
                                    handlingPolicy = handlingPolicy;
                                    if (parseCompilationUnit != null) {
                                    }
                                    cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                    cancelableNameEnvironment3.setMonitor(null);
                                    handlingPolicy.monitor = null;
                                    if (!z10) {
                                    }
                                    return parseCompilationUnit;
                                } catch (RuntimeException e15) {
                                    e = e15;
                                    String findRecommendedLineSeparator2 = compilationUnit.findRecommendedLineSeparator();
                                    StringBuffer stringBuffer2 = new StringBuffer("Exception occurred during problem detection:");
                                    stringBuffer2.append(findRecommendedLineSeparator2);
                                    stringBuffer2.append("----------------------------------- SOURCE BEGIN -------------------------------------");
                                    stringBuffer2.append(findRecommendedLineSeparator2);
                                    stringBuffer2.append(compilationUnit.getSource());
                                    stringBuffer2.append(findRecommendedLineSeparator2);
                                    stringBuffer2.append("----------------------------------- SOURCE END -------------------------------------");
                                    Util.log(e, stringBuffer2.toString());
                                    throw new JavaModelException(e, 1005);
                                } catch (Throwable th3) {
                                    th = th3;
                                    compilationUnitProblemFinder = compilationUnitProblemFinder2;
                                    if (cancelableNameEnvironment != null) {
                                    }
                                    if (cancelableProblemFactory != null) {
                                    }
                                    if (compilationUnitProblemFinder != null) {
                                    }
                                    throw th;
                                }
                            } else {
                                handlingPolicy = cancelableProblemFactory;
                                i11 = 0;
                                cancelableNameEnvironment2 = cancelableNameEnvironment;
                                try {
                                    parseCompilationUnit = compilationUnitProblemFinder2.resolve(compilationUnit, true, z12, z12);
                                    handlingPolicy = handlingPolicy;
                                } catch (AbortCompilation e16) {
                                    e = e16;
                                    parseCompilationUnit = null;
                                    compilationUnitProblemFinder2.handleInternalException(e, parseCompilationUnit);
                                    handlingPolicy = handlingPolicy;
                                    if (parseCompilationUnit != null) {
                                    }
                                    cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                    cancelableNameEnvironment3.setMonitor(null);
                                    handlingPolicy.monitor = null;
                                    if (!z10) {
                                    }
                                    return parseCompilationUnit;
                                }
                            }
                            if (parseCompilationUnit != null) {
                                CompilationResult compilationResult = parseCompilationUnit.compilationResult;
                                CategorizedProblem[] cUProblems = compilationResult.getCUProblems();
                                int length = cUProblems == null ? i11 : cUProblems.length;
                                if (length > 0) {
                                    CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[length];
                                    System.arraycopy(cUProblems, i11, categorizedProblemArr, i11, length);
                                    hashMap.put(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, categorizedProblemArr);
                                }
                                CategorizedProblem[] tasks = compilationResult.getTasks();
                                int length2 = tasks == null ? i11 : tasks.length;
                                if (length2 > 0) {
                                    CategorizedProblem[] categorizedProblemArr2 = new CategorizedProblem[length2];
                                    System.arraycopy(tasks, i11, categorizedProblemArr2, i11, length2);
                                    hashMap.put(IJavaModelMarker.TASK_MARKER, categorizedProblemArr2);
                                }
                                if (NameLookup.VERBOSE) {
                                    PrintStream printStream = System.out;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append((Object) Thread.currentThread());
                                    sb2.append(" TIME SPENT in NameLoopkup#seekTypesInSourcePackage: ");
                                    cancelableNameEnvironment3 = cancelableNameEnvironment2;
                                    try {
                                        sb2.append(cancelableNameEnvironment3.nameLookup.timeSpentInSeekTypesInSourcePackage);
                                        sb2.append(DateFormat.MINUTE_SECOND);
                                        printStream.println(sb2.toString());
                                        printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + cancelableNameEnvironment3.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
                                        cancelableNameEnvironment3.setMonitor(null);
                                        handlingPolicy.monitor = null;
                                        if (!z10) {
                                            compilationUnitProblemFinder2.lookupEnvironment.reset();
                                        }
                                        return parseCompilationUnit;
                                    } catch (RuntimeException e17) {
                                        e = e17;
                                        String findRecommendedLineSeparator22 = compilationUnit.findRecommendedLineSeparator();
                                        StringBuffer stringBuffer22 = new StringBuffer("Exception occurred during problem detection:");
                                        stringBuffer22.append(findRecommendedLineSeparator22);
                                        stringBuffer22.append("----------------------------------- SOURCE BEGIN -------------------------------------");
                                        stringBuffer22.append(findRecommendedLineSeparator22);
                                        stringBuffer22.append(compilationUnit.getSource());
                                        stringBuffer22.append(findRecommendedLineSeparator22);
                                        stringBuffer22.append("----------------------------------- SOURCE END -------------------------------------");
                                        Util.log(e, stringBuffer22.toString());
                                        throw new JavaModelException(e, 1005);
                                    } catch (OperationCanceledException e18) {
                                        e = e18;
                                        throw e;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        cancelableNameEnvironment = cancelableNameEnvironment3;
                                        cancelableProblemFactory = handlingPolicy;
                                        compilationUnitProblemFinder = compilationUnitProblemFinder2;
                                        if (cancelableNameEnvironment != null) {
                                            cancelableNameEnvironment.setMonitor(null);
                                        }
                                        if (cancelableProblemFactory != null) {
                                            cancelableProblemFactory.monitor = null;
                                        }
                                        if (compilationUnitProblemFinder != null && !z10) {
                                            compilationUnitProblemFinder.lookupEnvironment.reset();
                                        }
                                        throw th;
                                    }
                                }
                            }
                            cancelableNameEnvironment3 = cancelableNameEnvironment2;
                            cancelableNameEnvironment3.setMonitor(null);
                            handlingPolicy.monitor = null;
                            if (!z10) {
                            }
                            return parseCompilationUnit;
                        } catch (RuntimeException e19) {
                            e = e19;
                        } catch (OperationCanceledException e20) {
                            e = e20;
                        } catch (Throwable th5) {
                            th = th5;
                            cancelableProblemFactory = handlingPolicy;
                            cancelableNameEnvironment = cancelableNameEnvironment2;
                        }
                    } catch (RuntimeException e21) {
                        e = e21;
                        String findRecommendedLineSeparator222 = compilationUnit.findRecommendedLineSeparator();
                        StringBuffer stringBuffer222 = new StringBuffer("Exception occurred during problem detection:");
                        stringBuffer222.append(findRecommendedLineSeparator222);
                        stringBuffer222.append("----------------------------------- SOURCE BEGIN -------------------------------------");
                        stringBuffer222.append(findRecommendedLineSeparator222);
                        stringBuffer222.append(compilationUnit.getSource());
                        stringBuffer222.append(findRecommendedLineSeparator222);
                        stringBuffer222.append("----------------------------------- SOURCE END -------------------------------------");
                        Util.log(e, stringBuffer222.toString());
                        throw new JavaModelException(e, 1005);
                    } catch (OperationCanceledException e22) {
                        e = e22;
                        throw e;
                    } catch (Throwable th6) {
                        th = th6;
                        compilationUnitProblemFinder = null;
                        if (cancelableNameEnvironment != null) {
                        }
                        if (cancelableProblemFactory != null) {
                        }
                        if (compilationUnitProblemFinder != null) {
                            compilationUnitProblemFinder.lookupEnvironment.reset();
                        }
                        throw th;
                    }
                } catch (OperationCanceledException e23) {
                    e = e23;
                } catch (RuntimeException e24) {
                    e = e24;
                } catch (Throwable th7) {
                    th = th7;
                    cancelableProblemFactory = null;
                }
            } catch (Throwable th8) {
                th = th8;
            }
        } catch (OperationCanceledException e25) {
            e = e25;
        } catch (RuntimeException e26) {
            e = e26;
        } catch (Throwable th9) {
            th = th9;
            cancelableProblemFactory = null;
            cancelableNameEnvironment = null;
        }
    }

    @Override
    public void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        while (iSourceTypeArr[0].getEnclosingType() != null) {
            iSourceTypeArr[0] = iSourceTypeArr[0].getEnclosingType();
        }
        CompilationResult compilationResult = new CompilationResult(iSourceTypeArr[0].getFileName(), 1, 1, this.options.maxProblemsPerUnit);
        CompilerOptions compilerOptions = this.options;
        long j10 = compilerOptions.complianceLevel;
        long j11 = compilerOptions.sourceLevel;
        LookupEnvironment lookupEnvironment = packageBinding.environment;
        if (lookupEnvironment == null) {
            lookupEnvironment = this.lookupEnvironment;
        }
        try {
            IJavaProject javaProject = ((SourceTypeElementInfo) iSourceTypeArr[0]).getHandle().getJavaProject();
            this.options.complianceLevel = CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true));
            this.options.sourceLevel = CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.source", true));
            CompilationUnitDeclaration buildCompilationUnit = SourceTypeConverter.buildCompilationUnit(iSourceTypeArr, 31, lookupEnvironment.problemReporter, compilationResult);
            if (buildCompilationUnit != null) {
                lookupEnvironment.buildTypeBindings(buildCompilationUnit, accessRestriction);
                lookupEnvironment.completeTypeBindings(buildCompilationUnit);
            }
        } finally {
            CompilerOptions compilerOptions2 = this.options;
            compilerOptions2.complianceLevel = j10;
            compilerOptions2.sourceLevel = j11;
        }
    }

    @Override
    public void initializeParser() {
        this.parser = new CommentRecorderParser(this.problemReporter, this.options.parseLiteralExpressionsAsConstants);
    }

    @Override
    public void accept(IModule iModule, LookupEnvironment lookupEnvironment) {
        IModuleDescription handle = iModule instanceof ModuleDescriptionInfo ? ((ModuleDescriptionInfo) iModule).getHandle() : null;
        if (handle == null) {
            super.accept(iModule, lookupEnvironment);
            return;
        }
        CompilationResult compilationResult = new CompilationResult(TypeConstants.MODULE_INFO_FILE_NAME, 1, 1, this.options.maxProblemsPerUnit);
        CompilerOptions compilerOptions = this.options;
        long j10 = compilerOptions.complianceLevel;
        long j11 = compilerOptions.sourceLevel;
        if (lookupEnvironment == null) {
            lookupEnvironment = this.lookupEnvironment;
        }
        try {
            IJavaProject javaProject = handle.getJavaProject();
            this.options.complianceLevel = CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true));
            this.options.sourceLevel = CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.source", true));
            CompilationUnitDeclaration buildModularCompilationUnit = SourceTypeConverter.buildModularCompilationUnit(iModule, lookupEnvironment.problemReporter, compilationResult);
            if (buildModularCompilationUnit != null) {
                lookupEnvironment.buildTypeBindings(buildModularCompilationUnit, null);
                lookupEnvironment.completeTypeBindings(buildModularCompilationUnit);
            }
        } finally {
            CompilerOptions compilerOptions2 = this.options;
            compilerOptions2.complianceLevel = j10;
            compilerOptions2.sourceLevel = j11;
        }
    }

    public static CompilationUnitDeclaration process(CompilationUnit compilationUnit, WorkingCopyOwner workingCopyOwner, HashMap hashMap, boolean z10, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return process(compilationUnit, null, workingCopyOwner, hashMap, z10, i10, iProgressMonitor);
    }
}
