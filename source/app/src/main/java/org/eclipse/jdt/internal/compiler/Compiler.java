package org.eclipse.jdt.internal.compiler;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationProgress;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.CompilerStats;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeCollisionException;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblem;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;

public class Compiler implements ITypeRequestor, ProblemSeverities {
    public static boolean DEBUG = false;
    public static IDebugRequestor DebugRequestor;
    public AbstractAnnotationProcessorManager annotationProcessorManager;
    public int annotationProcessorStartIndex;
    private Map<String, APTProblem[]> aptProblems;
    public LookupEnvironment lookupEnvironment;
    public CompilerOptions options;
    protected PrintWriter out;
    public int parseThreshold;
    public Parser parser;
    public ProblemReporter problemReporter;
    public CompilationProgress progress;
    public ReferenceBinding[] referenceBindings;
    public int remainingIterations;
    public ICompilerRequestor requestor;
    public CompilerStats stats;
    public int totalUnits;
    public CompilationUnitDeclaration[] unitsToProcess;
    public boolean useSingleThread;

    public class APTProblem {
        ReferenceContext context;
        CategorizedProblem problem;

        public APTProblem(CategorizedProblem categorizedProblem, ReferenceContext referenceContext) {
            this.problem = categorizedProblem;
            this.context = referenceContext;
        }
    }

    public Compiler(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, Map<String, String> map, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory) {
        this(iNameEnvironment, iErrorHandlingPolicy, new CompilerOptions(map), iCompilerRequestor, iProblemFactory, null, null);
    }

    public static int lambda$0(ICompilationUnit iCompilationUnit, ICompilationUnit iCompilationUnit2) {
        char[] fileName = iCompilationUnit.getFileName();
        char[] fileName2 = iCompilationUnit2.getFileName();
        char[] cArr = TypeConstants.MODULE_INFO_FILE_NAME;
        boolean z10 = CharOperation.endsWith(fileName, cArr) || CharOperation.endsWith(fileName, TypeConstants.MODULE_INFO_CLASS_NAME);
        if (z10 == (CharOperation.endsWith(fileName2, cArr) || CharOperation.endsWith(fileName2, TypeConstants.MODULE_INFO_CLASS_NAME))) {
            return 0;
        }
        return z10 ? -1 : 1;
    }

    private void sortModuleDeclarationsFirst(ICompilationUnit[] iCompilationUnitArr) {
        Arrays.sort(iCompilationUnitArr, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int lambda$0;
                lambda$0 = Compiler.lambda$0((ICompilationUnit) obj, (ICompilationUnit) obj2);
                return lambda$0;
            }
        });
    }

    @Override
    public void accept(IBinaryType iBinaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        if (this.options.verbose) {
            this.out.println(Messages.bind(Messages.compilation_loadBinary, new String(iBinaryType.getName())));
        }
        packageBinding.environment.createBinaryTypeFrom(iBinaryType, packageBinding, accessRestriction);
    }

    public synchronized void addCompilationUnit(ICompilationUnit iCompilationUnit, CompilationUnitDeclaration compilationUnitDeclaration) {
        try {
            CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.unitsToProcess;
            if (compilationUnitDeclarationArr == null) {
                return;
            }
            int length = compilationUnitDeclarationArr.length;
            int i10 = this.totalUnits;
            if (i10 == length) {
                CompilationUnitDeclaration[] compilationUnitDeclarationArr2 = new CompilationUnitDeclaration[length * 2];
                this.unitsToProcess = compilationUnitDeclarationArr2;
                System.arraycopy(compilationUnitDeclarationArr, 0, compilationUnitDeclarationArr2, 0, i10);
            }
            CompilationUnitDeclaration[] compilationUnitDeclarationArr3 = this.unitsToProcess;
            int i11 = this.totalUnits;
            this.totalUnits = i11 + 1;
            compilationUnitDeclarationArr3[i11] = compilationUnitDeclaration;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void backupAptProblems() {
        if (this.unitsToProcess == null) {
            return;
        }
        for (int i10 = 0; i10 < this.totalUnits; i10++) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.unitsToProcess[i10];
            CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
            if (compilationResult != null && compilationResult.hasErrors()) {
                for (CategorizedProblem categorizedProblem : compilationResult.getErrors()) {
                    if (categorizedProblem.getCategoryID() == 0) {
                        if (this.aptProblems == null) {
                            this.aptProblems = new HashMap();
                        }
                        APTProblem[] aPTProblemArr = this.aptProblems.get(new String(compilationUnitDeclaration.getFileName()));
                        if (aPTProblemArr == null) {
                            this.aptProblems.put(new String(compilationUnitDeclaration.getFileName()), new APTProblem[]{new APTProblem(categorizedProblem, compilationResult.getContext(categorizedProblem))});
                        } else {
                            APTProblem[] aPTProblemArr2 = new APTProblem[aPTProblemArr.length + 1];
                            System.arraycopy(aPTProblemArr, 0, aPTProblemArr2, 0, aPTProblemArr.length);
                            aPTProblemArr2[aPTProblemArr.length] = new APTProblem(categorizedProblem, compilationResult.getContext(categorizedProblem));
                            this.aptProblems.put(new String(compilationUnitDeclaration.getFileName()), aPTProblemArr2);
                        }
                    }
                }
            }
        }
    }

    public void beginToCompile(ICompilationUnit[] iCompilationUnitArr) {
        int length = iCompilationUnitArr.length;
        this.totalUnits = 0;
        this.unitsToProcess = new CompilationUnitDeclaration[length];
        internalBeginToCompile(iCompilationUnitArr, length);
    }

    public void compile(ICompilationUnit[] iCompilationUnitArr) {
        compile(iCompilationUnitArr, false);
    }

    public synchronized CompilationUnitDeclaration getUnitToProcess(int i10) {
        try {
            if (i10 >= this.totalUnits) {
                return null;
            }
            CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.unitsToProcess;
            CompilationUnitDeclaration compilationUnitDeclaration = compilationUnitDeclarationArr[i10];
            if (this.annotationProcessorManager != null) {
                if (i10 < this.annotationProcessorStartIndex) {
                }
                return compilationUnitDeclaration;
            }
            compilationUnitDeclarationArr[i10] = null;
            return compilationUnitDeclaration;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void handleInternalException(Throwable th2, CompilationUnitDeclaration compilationUnitDeclaration, CompilationResult compilationResult) {
        int i10;
        CompilationUnitDeclaration compilationUnitDeclaration2;
        if (compilationResult == null && compilationUnitDeclaration != null) {
            compilationResult = compilationUnitDeclaration.compilationResult;
        }
        if (compilationResult == null && (compilationUnitDeclaration2 = this.lookupEnvironment.unitBeingCompleted) != null) {
            compilationResult = compilationUnitDeclaration2.compilationResult;
        }
        if (compilationResult == null) {
            synchronized (this) {
                try {
                    CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.unitsToProcess;
                    if (compilationUnitDeclarationArr != null && (i10 = this.totalUnits) > 0) {
                        compilationResult = compilationUnitDeclarationArr[i10 - 1].compilationResult;
                    }
                } finally {
                }
            }
        }
        if (compilationResult != null) {
            String[] strArr = {Messages.bind(Messages.compilation_internalError, Util.getExceptionSummary(th2))};
            compilationResult.record(this.problemReporter.createProblem(compilationResult.getFileName(), 0, strArr, strArr, 1, 0, 0, 0, 0), compilationUnitDeclaration, true);
            if (!compilationResult.hasBeenAccepted) {
                this.requestor.acceptResult(compilationResult.tagAsAccepted());
                return;
            }
        }
        th2.printStackTrace();
    }

    public void initializeParser() {
        this.parser = new Parser(this.problemReporter, this.options.parseLiteralExpressionsAsConstants);
    }

    public void internalBeginToCompile(ICompilationUnit[] iCompilationUnitArr, int i10) {
        CompilationResult compilationResult;
        if (!this.useSingleThread && i10 >= 10) {
            this.parser.readManager = new ReadManager(iCompilationUnitArr, i10);
        }
        for (int i11 = 0; i11 < i10; i11++) {
            try {
                try {
                    if (this.options.verbose) {
                        this.out.println(Messages.bind(Messages.compilation_request, (Object[]) new String[]{String.valueOf(i11 + 1), String.valueOf(i10), new String(iCompilationUnitArr[i11].getFileName())}));
                    }
                    compilationResult = new CompilationResult(iCompilationUnitArr[i11], i11, i10, this.options.maxProblemsPerUnit);
                } catch (Throwable th2) {
                    iCompilationUnitArr[i11] = null;
                    throw th2;
                }
            } catch (AbortCompilation e10) {
                e = e10;
                compilationResult = null;
            }
            try {
                long currentTimeMillis = System.currentTimeMillis();
                CompilationUnitDeclaration parse = this.totalUnits < this.parseThreshold ? this.parser.parse(iCompilationUnitArr[i11], compilationResult) : this.parser.dietParse(iCompilationUnitArr[i11], compilationResult);
                long currentTimeMillis2 = System.currentTimeMillis();
                this.stats.parseTime += currentTimeMillis2 - currentTimeMillis;
                this.lookupEnvironment.buildTypeBindings(parse, null);
                this.stats.resolveTime += System.currentTimeMillis() - currentTimeMillis2;
                addCompilationUnit(iCompilationUnitArr[i11], parse);
                ImportReference importReference = parse.currentPackage;
                if (importReference != null) {
                    compilationResult.recordPackageName(importReference.tokens);
                }
                iCompilationUnitArr[i11] = null;
            } catch (AbortCompilation e11) {
                e = e11;
                if (e.compilationResult == null) {
                    e.compilationResult = compilationResult;
                }
                throw e;
            }
        }
        ReadManager readManager = this.parser.readManager;
        if (readManager != null) {
            readManager.shutdown();
            this.parser.readManager = null;
        }
        this.lookupEnvironment.completeTypeBindings();
    }

    public void process(CompilationUnitDeclaration compilationUnitDeclaration, int i10) {
        CompilationUnitScope compilationUnitScope;
        this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
        long currentTimeMillis = System.currentTimeMillis();
        this.parser.getMethodBodies(compilationUnitDeclaration);
        long currentTimeMillis2 = System.currentTimeMillis();
        this.stats.parseTime += currentTimeMillis2 - currentTimeMillis;
        CompilationUnitScope compilationUnitScope2 = compilationUnitDeclaration.scope;
        if (compilationUnitScope2 != null) {
            compilationUnitScope2.faultInTypes();
        }
        CompilationUnitScope compilationUnitScope3 = compilationUnitDeclaration.scope;
        if (compilationUnitScope3 != null) {
            compilationUnitScope3.verifyMethods(this.lookupEnvironment.methodVerifier());
        }
        compilationUnitDeclaration.resolve();
        long currentTimeMillis3 = System.currentTimeMillis();
        this.stats.resolveTime += currentTimeMillis3 - currentTimeMillis2;
        if (!this.options.ignoreMethodBodies) {
            compilationUnitDeclaration.analyseCode();
        }
        long currentTimeMillis4 = System.currentTimeMillis();
        this.stats.analyzeTime += currentTimeMillis4 - currentTimeMillis3;
        if (!this.options.ignoreMethodBodies) {
            compilationUnitDeclaration.generateCode();
        }
        if (this.options.produceReferenceInfo && (compilationUnitScope = compilationUnitDeclaration.scope) != null) {
            compilationUnitScope.storeDependencyInfo();
        }
        compilationUnitDeclaration.finalizeProblems();
        this.stats.generateTime += System.currentTimeMillis() - currentTimeMillis4;
        compilationUnitDeclaration.compilationResult.totalUnitsKnown = this.totalUnits;
        this.lookupEnvironment.unitBeingCompleted = null;
    }

    public void processAnnotations() {
        int i10 = this.annotationProcessorStartIndex;
        int i11 = this.totalUnits;
        ReferenceBinding[] referenceBindingArr = this.referenceBindings;
        if (i11 == 0 && referenceBindingArr == null) {
            return;
        }
        this.referenceBindings = null;
        while (true) {
            int i12 = i11;
            int i13 = i10;
            i10 = i12;
            int i14 = i10 - i13;
            CompilationUnitDeclaration[] compilationUnitDeclarationArr = new CompilationUnitDeclaration[i14];
            int i15 = 0;
            while (i13 < i10) {
                compilationUnitDeclarationArr[i15] = this.unitsToProcess[i13];
                i13++;
                i15++;
            }
            if (i15 != i14) {
                CompilationUnitDeclaration[] compilationUnitDeclarationArr2 = new CompilationUnitDeclaration[i15];
                System.arraycopy(compilationUnitDeclarationArr, 0, compilationUnitDeclarationArr2, 0, i15);
                compilationUnitDeclarationArr = compilationUnitDeclarationArr2;
            }
            this.annotationProcessorManager.processAnnotations(compilationUnitDeclarationArr, referenceBindingArr, false);
            int i16 = this.totalUnits;
            if (i10 < i16) {
                int i17 = i16 - i10;
                CompilationUnitDeclaration[] compilationUnitDeclarationArr3 = new CompilationUnitDeclaration[i17];
                System.arraycopy(this.unitsToProcess, i10, compilationUnitDeclarationArr3, 0, i17);
                this.annotationProcessorManager.processAnnotations(compilationUnitDeclarationArr3, referenceBindingArr, false);
            }
            this.annotationProcessorStartIndex = i10;
            ICompilationUnit[] newUnits = this.annotationProcessorManager.getNewUnits();
            int length = newUnits.length;
            ReferenceBinding[] newClassFiles = this.annotationProcessorManager.getNewClassFiles();
            int length2 = newClassFiles.length;
            if (length != 0) {
                ICompilationUnit[] iCompilationUnitArr = (ICompilationUnit[]) newUnits.clone();
                try {
                    try {
                        this.lookupEnvironment.isProcessingAnnotations = true;
                        internalBeginToCompile(newUnits, length);
                        this.lookupEnvironment.isProcessingAnnotations = false;
                        this.annotationProcessorManager.reset();
                        i11 = this.totalUnits;
                        this.annotationProcessorStartIndex = i11;
                    } catch (SourceTypeCollisionException e10) {
                        e10.newAnnotationProcessorUnits = iCompilationUnitArr;
                        throw e10;
                    }
                } finally {
                }
            } else {
                this.annotationProcessorManager.reset();
                i11 = i10;
            }
            if (length == 0 && length2 == 0) {
                break;
            } else {
                referenceBindingArr = newClassFiles;
            }
        }
        this.annotationProcessorManager.processAnnotations(null, null, true);
        ICompilationUnit[] newUnits2 = this.annotationProcessorManager.getNewUnits();
        int length3 = newUnits2.length;
        if (length3 != 0) {
            ICompilationUnit[] iCompilationUnitArr2 = (ICompilationUnit[]) newUnits2.clone();
            try {
                try {
                    this.lookupEnvironment.isProcessingAnnotations = true;
                    internalBeginToCompile(newUnits2, length3);
                } catch (SourceTypeCollisionException e11) {
                    e11.isLastRound = true;
                    e11.newAnnotationProcessorUnits = iCompilationUnitArr2;
                    throw e11;
                }
            } finally {
            }
        } else {
            this.annotationProcessorManager.reset();
        }
        this.annotationProcessorStartIndex = this.totalUnits;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0135, code lost:
    
        if (r2 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0137, code lost:
    
        r2.shutdown();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013a, code lost:
    
        reset();
        r12.annotationProcessorStartIndex = 0;
        r12.stats.endTime = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01b3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b0, code lost:
    
        if (r2 != null) goto L71;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0115: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:120:0x0115 */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void processCompiledUnits(int i10, boolean z10) throws Error {
        ProcessTaskManager processTaskManager;
        CompilationUnitDeclaration compilationUnitDeclaration;
        ProcessTaskManager processTaskManager2;
        int i11;
        int i12;
        CompilationUnitDeclaration compilationUnitDeclaration2 = null;
        ProcessTaskManager processTaskManager3 = null;
        try {
            try {
                try {
                    try {
                        if (this.useSingleThread) {
                            compilationUnitDeclaration = null;
                            while (i10 < this.totalUnits) {
                                try {
                                    compilationUnitDeclaration = this.unitsToProcess[i10];
                                    CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
                                    if (compilationResult == null || !compilationResult.hasBeenAccepted) {
                                        reportProgress(Messages.bind(Messages.compilation_processing, new String(compilationUnitDeclaration.getFileName())));
                                        try {
                                            if (this.options.verbose) {
                                                this.out.println(Messages.bind(Messages.compilation_process, (Object[]) new String[]{String.valueOf(i10 + 1), String.valueOf(this.totalUnits), new String(this.unitsToProcess[i10].getFileName())}));
                                            }
                                            process(compilationUnitDeclaration, i10);
                                            if (this.annotationProcessorManager == null || shouldCleanup(i10)) {
                                                compilationUnitDeclaration.cleanUp();
                                            }
                                            if (this.annotationProcessorManager == null) {
                                                this.unitsToProcess[i10] = null;
                                            }
                                            reportWorked(1, i10);
                                            this.stats.lineCount += compilationUnitDeclaration.compilationResult.lineSeparatorPositions.length;
                                            long currentTimeMillis = System.currentTimeMillis();
                                            this.requestor.acceptResult(compilationUnitDeclaration.compilationResult.tagAsAccepted());
                                            this.stats.generateTime += System.currentTimeMillis() - currentTimeMillis;
                                            if (this.options.verbose) {
                                                this.out.println(Messages.bind(Messages.compilation_done, (Object[]) new String[]{String.valueOf(i10 + 1), String.valueOf(this.totalUnits), new String(compilationUnitDeclaration.getFileName())}));
                                            }
                                        } catch (Throwable th2) {
                                            if (this.annotationProcessorManager == null || shouldCleanup(i10)) {
                                                compilationUnitDeclaration.cleanUp();
                                            }
                                            throw th2;
                                        }
                                    }
                                    i10++;
                                } catch (Error e10) {
                                    e = e10;
                                    handleInternalException(e, compilationUnitDeclaration, null);
                                    throw e;
                                } catch (AbortCompilation e11) {
                                    e = e11;
                                    CompilationUnitDeclaration compilationUnitDeclaration3 = compilationUnitDeclaration;
                                    processTaskManager2 = null;
                                    compilationUnitDeclaration2 = compilationUnitDeclaration3;
                                    handleInternalException(e, compilationUnitDeclaration2);
                                } catch (RuntimeException e12) {
                                    e = e12;
                                    handleInternalException(e, compilationUnitDeclaration, null);
                                    throw e;
                                }
                            }
                            processTaskManager2 = null;
                        } else {
                            processTaskManager2 = new ProcessTaskManager(this, i10);
                            int i13 = 0;
                            while (true) {
                                try {
                                    CompilationUnitDeclaration removeNextUnit = processTaskManager2.removeNextUnit();
                                    if (removeNextUnit == null) {
                                        break;
                                    }
                                    int i14 = i13 + 1;
                                    try {
                                        reportWorked(1, i13);
                                        CompilerStats compilerStats = this.stats;
                                        long j10 = compilerStats.lineCount;
                                        CompilationResult compilationResult2 = removeNextUnit.compilationResult;
                                        compilerStats.lineCount = j10 + compilationResult2.lineSeparatorPositions.length;
                                        this.requestor.acceptResult(compilationResult2.tagAsAccepted());
                                        if (this.options.verbose) {
                                            this.out.println(Messages.bind(Messages.compilation_done, (Object[]) new String[]{String.valueOf(i14), String.valueOf(this.totalUnits), new String(removeNextUnit.getFileName())}));
                                        }
                                        i13 = i14;
                                    } catch (Error e13) {
                                        compilationUnitDeclaration = removeNextUnit;
                                        e = e13;
                                        handleInternalException(e, compilationUnitDeclaration, null);
                                        throw e;
                                    } catch (AbortCompilation e14) {
                                        compilationUnitDeclaration2 = removeNextUnit;
                                        e = e14;
                                        handleInternalException(e, compilationUnitDeclaration2);
                                    } catch (RuntimeException e15) {
                                        compilationUnitDeclaration = removeNextUnit;
                                        e = e15;
                                        handleInternalException(e, compilationUnitDeclaration, null);
                                        throw e;
                                    }
                                } catch (Error e16) {
                                    CompilationUnitDeclaration compilationUnitDeclaration4 = processTaskManager2.unitToProcess;
                                    throw e16;
                                } catch (RuntimeException e17) {
                                    CompilationUnitDeclaration compilationUnitDeclaration5 = processTaskManager2.unitToProcess;
                                    throw e17;
                                }
                            }
                        }
                        if (z10 == 0 && this.annotationProcessorManager != null && (i11 = this.totalUnits) > (i12 = this.annotationProcessorStartIndex)) {
                            processAnnotations();
                            for (int i15 = i12; i15 < i11; i15++) {
                                this.unitsToProcess[i15].cleanUp();
                            }
                            processCompiledUnits(i12, z10);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        processTaskManager3 = z10;
                        if (processTaskManager3 != null) {
                            processTaskManager3.shutdown();
                        }
                        reset();
                        this.annotationProcessorStartIndex = 0;
                        this.stats.endTime = System.currentTimeMillis();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    if (processTaskManager3 != null) {
                    }
                    reset();
                    this.annotationProcessorStartIndex = 0;
                    this.stats.endTime = System.currentTimeMillis();
                    throw th;
                }
            } catch (Error e18) {
                e = e18;
                compilationUnitDeclaration = null;
            } catch (AbortCompilation e19) {
                e = e19;
                processTaskManager2 = null;
            } catch (RuntimeException e20) {
                e = e20;
                compilationUnitDeclaration = null;
            }
        } catch (Throwable th5) {
            th = th5;
            processTaskManager3 = processTaskManager;
        }
    }

    public void reportProgress(String str) {
        CompilationProgress compilationProgress = this.progress;
        if (compilationProgress != null) {
            if (compilationProgress.isCanceled()) {
                throw new AbortCompilation(true, (RuntimeException) null);
            }
            this.progress.setTaskName(str);
        }
    }

    public void reportWorked(int i10, int i11) {
        CompilationProgress compilationProgress = this.progress;
        if (compilationProgress != null) {
            if (compilationProgress.isCanceled()) {
                throw new AbortCompilation(true, (RuntimeException) null);
            }
            this.progress.worked(i10, ((this.totalUnits * this.remainingIterations) - i11) - 1);
        }
    }

    public void reset() {
        this.lookupEnvironment.reset();
        this.parser.scanner.source = null;
        this.unitsToProcess = null;
        IDebugRequestor iDebugRequestor = DebugRequestor;
        if (iDebugRequestor != null) {
            iDebugRequestor.reset();
        }
        this.problemReporter.reset();
    }

    public CompilationUnitDeclaration resolve(CompilationUnitDeclaration compilationUnitDeclaration, ICompilationUnit iCompilationUnit, boolean z10, boolean z11, boolean z12) {
        try {
            if (compilationUnitDeclaration == null) {
                this.parseThreshold = 0;
                beginToCompile(new ICompilationUnit[]{iCompilationUnit});
                int i10 = 0;
                while (true) {
                    if (i10 >= this.totalUnits) {
                        break;
                    }
                    CompilationUnitDeclaration compilationUnitDeclaration2 = this.unitsToProcess[i10];
                    if (compilationUnitDeclaration2 != null && compilationUnitDeclaration2.compilationResult.compilationUnit == iCompilationUnit) {
                        compilationUnitDeclaration = compilationUnitDeclaration2;
                        break;
                    }
                    i10++;
                }
                if (compilationUnitDeclaration == null) {
                    compilationUnitDeclaration = this.unitsToProcess[0];
                }
            } else {
                this.lookupEnvironment.buildTypeBindings(compilationUnitDeclaration, null);
                this.lookupEnvironment.completeTypeBindings();
            }
            this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
            this.parser.getMethodBodies(compilationUnitDeclaration);
            CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
            if (compilationUnitScope != null) {
                compilationUnitScope.faultInTypes();
                CompilationUnitScope compilationUnitScope2 = compilationUnitDeclaration.scope;
                if (compilationUnitScope2 != null && z10) {
                    compilationUnitScope2.verifyMethods(this.lookupEnvironment.methodVerifier());
                }
                compilationUnitDeclaration.resolve();
                if (z11) {
                    compilationUnitDeclaration.analyseCode();
                }
                if (z12) {
                    compilationUnitDeclaration.generateCode();
                }
                compilationUnitDeclaration.finalizeProblems();
            }
            CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.unitsToProcess;
            if (compilationUnitDeclarationArr != null) {
                compilationUnitDeclarationArr[0] = null;
            }
            this.requestor.acceptResult(compilationUnitDeclaration.compilationResult.tagAsAccepted());
            return compilationUnitDeclaration;
        } catch (Error e10) {
            handleInternalException(e10, compilationUnitDeclaration, null);
            throw e10;
        } catch (AbortCompilation e11) {
            handleInternalException(e11, compilationUnitDeclaration);
            return compilationUnitDeclaration == null ? this.unitsToProcess[0] : compilationUnitDeclaration;
        } catch (RuntimeException e12) {
            handleInternalException(e12, compilationUnitDeclaration, null);
            throw e12;
        }
    }

    public void restoreAptProblems() {
        if (this.unitsToProcess != null && this.aptProblems != null) {
            for (int i10 = 0; i10 < this.totalUnits; i10++) {
                CompilationUnitDeclaration compilationUnitDeclaration = this.unitsToProcess[i10];
                APTProblem[] aPTProblemArr = this.aptProblems.get(new String(compilationUnitDeclaration.getFileName()));
                if (aPTProblemArr != null) {
                    for (APTProblem aPTProblem : aPTProblemArr) {
                        compilationUnitDeclaration.compilationResult.record(aPTProblem.problem, aPTProblem.context);
                    }
                }
            }
        }
        this.aptProblems = null;
    }

    public void setBinaryTypes(ReferenceBinding[] referenceBindingArr) {
        this.referenceBindings = referenceBindingArr;
    }

    public boolean shouldCleanup(int i10) {
        return i10 < this.annotationProcessorStartIndex;
    }

    public Compiler(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, Map map, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory, boolean z10) {
        this(iNameEnvironment, iErrorHandlingPolicy, new CompilerOptions(map, z10), iCompilerRequestor, iProblemFactory, null, null);
    }

    private void compile(ICompilationUnit[] iCompilationUnitArr, boolean z10) {
        this.stats.startTime = System.currentTimeMillis();
        try {
            reportProgress(Messages.compilation_beginningToCompile);
            if (this.options.complianceLevel >= ClassFileConstants.JDK9) {
                sortModuleDeclarationsFirst(iCompilationUnitArr);
            }
            if (this.annotationProcessorManager == null) {
                beginToCompile(iCompilationUnitArr);
            } else {
                ICompilationUnit[] iCompilationUnitArr2 = (ICompilationUnit[]) iCompilationUnitArr.clone();
                try {
                    beginToCompile(iCompilationUnitArr);
                    if (!z10) {
                        processAnnotations();
                    }
                    if (!this.options.generateClassFiles) {
                        return;
                    }
                } catch (SourceTypeCollisionException e10) {
                    backupAptProblems();
                    reset();
                    int length = iCompilationUnitArr2.length;
                    int length2 = e10.newAnnotationProcessorUnits.length;
                    ICompilationUnit[] iCompilationUnitArr3 = new ICompilationUnit[length + length2];
                    System.arraycopy(iCompilationUnitArr2, 0, iCompilationUnitArr3, 0, length);
                    System.arraycopy(e10.newAnnotationProcessorUnits, 0, iCompilationUnitArr3, length, length2);
                    this.annotationProcessorStartIndex = length;
                    compile(iCompilationUnitArr3, e10.isLastRound);
                    return;
                }
            }
            restoreAptProblems();
            processCompiledUnits(0, z10);
        } catch (AbortCompilation e11) {
            handleInternalException(e11, null);
        }
        if (this.options.verbose) {
            int i10 = this.totalUnits;
            if (i10 > 1) {
                this.out.println(Messages.bind(Messages.compilation_units, String.valueOf(i10)));
            } else {
                this.out.println(Messages.bind(Messages.compilation_unit, String.valueOf(i10)));
            }
        }
    }

    public Compiler(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory) {
        this(iNameEnvironment, iErrorHandlingPolicy, compilerOptions, iCompilerRequestor, iProblemFactory, null, null);
    }

    public Compiler(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory, PrintWriter printWriter) {
        this(iNameEnvironment, iErrorHandlingPolicy, compilerOptions, iCompilerRequestor, iProblemFactory, printWriter, null);
    }

    public Compiler(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, final ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory, PrintWriter printWriter, CompilationProgress compilationProgress) {
        this.remainingIterations = 1;
        this.parseThreshold = -1;
        this.annotationProcessorStartIndex = 0;
        this.useSingleThread = true;
        this.options = compilerOptions;
        this.progress = compilationProgress;
        if (DebugRequestor == null) {
            this.requestor = iCompilerRequestor;
        } else {
            this.requestor = new ICompilerRequestor() {
                @Override
                public void acceptResult(CompilationResult compilationResult) {
                    if (Compiler.DebugRequestor.isActive()) {
                        Compiler.DebugRequestor.acceptDebugResult(compilationResult);
                    }
                    iCompilerRequestor.acceptResult(compilationResult);
                }
            };
        }
        this.problemReporter = new ProblemReporter(iErrorHandlingPolicy, this.options, iProblemFactory);
        this.lookupEnvironment = new LookupEnvironment(this, this.options, this.problemReporter, iNameEnvironment);
        this.out = printWriter == null ? new PrintWriter((OutputStream) System.out, true) : printWriter;
        this.stats = new CompilerStats();
        initializeParser();
    }

    @Override
    public void accept(ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        CompilationUnitDeclaration dietParse;
        int i10 = this.totalUnits;
        CompilationResult compilationResult = new CompilationResult(iCompilationUnit, i10, i10, this.options.maxProblemsPerUnit);
        compilationResult.checkSecondaryTypes = true;
        try {
            if (this.options.verbose) {
                String valueOf = String.valueOf(this.totalUnits + 1);
                this.out.println(Messages.bind(Messages.compilation_request, (Object[]) new String[]{valueOf, valueOf, new String(iCompilationUnit.getFileName())}));
            }
            if (this.totalUnits < this.parseThreshold) {
                dietParse = this.parser.parse(iCompilationUnit, compilationResult);
            } else {
                dietParse = this.parser.dietParse(iCompilationUnit, compilationResult);
            }
            this.lookupEnvironment.buildTypeBindings(dietParse, accessRestriction);
            addCompilationUnit(iCompilationUnit, dietParse);
            this.lookupEnvironment.completeTypeBindings(dietParse);
        } catch (AbortCompilationUnit e10) {
            if (compilationResult.compilationUnit == iCompilationUnit) {
                this.requestor.acceptResult(compilationResult.tagAsAccepted());
                return;
            }
            throw e10;
        }
    }

    public void handleInternalException(AbortCompilation abortCompilation, CompilationUnitDeclaration compilationUnitDeclaration) {
        int i10;
        CompilationUnitDeclaration compilationUnitDeclaration2;
        if (abortCompilation.isSilent) {
            RuntimeException runtimeException = abortCompilation.silentException;
            if (runtimeException != null) {
                throw runtimeException;
            }
            return;
        }
        CompilationResult compilationResult = abortCompilation.compilationResult;
        if (compilationResult == null && compilationUnitDeclaration != null) {
            compilationResult = compilationUnitDeclaration.compilationResult;
        }
        if (compilationResult == null && (compilationUnitDeclaration2 = this.lookupEnvironment.unitBeingCompleted) != null) {
            compilationResult = compilationUnitDeclaration2.compilationResult;
        }
        if (compilationResult == null) {
            synchronized (this) {
                try {
                    CompilationUnitDeclaration[] compilationUnitDeclarationArr = this.unitsToProcess;
                    if (compilationUnitDeclarationArr != null && (i10 = this.totalUnits) > 0) {
                        compilationResult = compilationUnitDeclarationArr[i10 - 1].compilationResult;
                    }
                } finally {
                }
            }
        }
        if (compilationResult != null && !compilationResult.hasBeenAccepted) {
            CategorizedProblem categorizedProblem = abortCompilation.problem;
            if (categorizedProblem != null) {
                CategorizedProblem[] categorizedProblemArr = compilationResult.problems;
                int i11 = 0;
                while (true) {
                    if (i11 >= compilationResult.problemCount) {
                        if (categorizedProblem instanceof DefaultProblem) {
                            ((DefaultProblem) categorizedProblem).setOriginatingFileName(compilationResult.getFileName());
                        }
                        compilationResult.record(categorizedProblem, compilationUnitDeclaration, true);
                    } else if (categorizedProblemArr[i11] == categorizedProblem) {
                        break;
                    } else {
                        i11++;
                    }
                }
            } else {
                Throwable th2 = abortCompilation.exception;
                if (th2 != null) {
                    handleInternalException(th2, null, compilationResult);
                    return;
                }
            }
            if (compilationResult.hasBeenAccepted) {
                return;
            }
            this.requestor.acceptResult(compilationResult.tagAsAccepted());
            return;
        }
        abortCompilation.printStackTrace();
    }

    @Override
    public void accept(ISourceType[] iSourceTypeArr, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.problemReporter.abortDueToInternalError(Messages.bind(Messages.abort_againstSourceModel, (Object[]) new String[]{String.valueOf(iSourceTypeArr[0].getName()), String.valueOf(iSourceTypeArr[0].getFileName())}));
    }

    public CompilationUnitDeclaration resolve(ICompilationUnit iCompilationUnit, boolean z10, boolean z11, boolean z12) {
        return resolve(null, iCompilationUnit, z10, z11, z12);
    }
}
