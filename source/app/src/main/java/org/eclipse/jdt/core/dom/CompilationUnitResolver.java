package org.eclipse.jdt.core.dom;

import android.icu.text.DateFormat;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryModule;
import org.eclipse.jdt.internal.core.CancelableNameEnvironment;
import org.eclipse.jdt.internal.core.CancelableProblemFactory;
import org.eclipse.jdt.internal.core.INameEnvironmentWithProgress;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.BindingKeyResolver;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.DOMFinder;

public class CompilationUnitResolver extends Compiler {
    public static final int BINDING_RECOVERY = 16;
    public static final int IGNORE_METHOD_BODIES = 8;
    public static final int INCLUDE_RUNNING_VM_BOOTCLASSPATH = 32;
    public static final int PARTIAL = 2;
    public static final int RESOLVE_BINDING = 1;
    public static final int STATEMENT_RECOVERY = 4;
    CategorizedProblem abortProblem;
    DefaultBindingResolver.BindingTables bindingTables;
    boolean fromJavaProject;
    boolean hasCompilationAborted;
    private IProgressMonitor monitor;
    HashtableOfObject requestedKeys;
    HashtableOfObject requestedSources;

    public class C1Requestor extends ASTRequestor {
        IBinding[] bindings;
        private final HashtableOfObjectToInt val$binaryElementPositions;
        private final IJavaElement[] val$elements;
        private final HashMap val$sourceElementPositions;

        public C1Requestor(int i10, HashMap hashMap, IJavaElement[] iJavaElementArr, HashtableOfObjectToInt hashtableOfObjectToInt) {
            this.val$sourceElementPositions = hashMap;
            this.val$elements = iJavaElementArr;
            this.val$binaryElementPositions = hashtableOfObjectToInt;
            this.bindings = new IBinding[i10];
        }

        @Override
        public void acceptAST(ICompilationUnit iCompilationUnit, CompilationUnit compilationUnit) {
            IntArrayList intArrayList = (IntArrayList) this.val$sourceElementPositions.get(iCompilationUnit);
            for (int i10 = 0; i10 < intArrayList.length; i10++) {
                int i11 = intArrayList.list[i10];
                SourceRefElement sourceRefElement = (SourceRefElement) this.val$elements[i11];
                DOMFinder dOMFinder = new DOMFinder(compilationUnit, sourceRefElement, true);
                try {
                    dOMFinder.search();
                    this.bindings[i11] = dOMFinder.foundBinding;
                } catch (JavaModelException e10) {
                    throw new IllegalArgumentException(((Object) sourceRefElement) + " does not exist", e10);
                }
            }
        }

        @Override
        public void acceptBinding(String str, IBinding iBinding) {
            this.bindings[this.val$binaryElementPositions.get(str)] = iBinding;
        }
    }

    public static class IntArrayList {
        public int[] list = new int[5];
        public int length = 0;

        public void add(int i10) {
            int[] iArr = this.list;
            int length = iArr.length;
            int i11 = this.length;
            if (length == i11) {
                int[] iArr2 = new int[i11 * 2];
                this.list = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i11);
            }
            int[] iArr3 = this.list;
            int i12 = this.length;
            this.length = i12 + 1;
            iArr3[i12] = i10;
        }
    }

    public CompilationUnitResolver(INameEnvironment iNameEnvironment, IErrorHandlingPolicy iErrorHandlingPolicy, CompilerOptions compilerOptions, ICompilerRequestor iCompilerRequestor, IProblemFactory iProblemFactory, IProgressMonitor iProgressMonitor, boolean z10) {
        super(iNameEnvironment, iErrorHandlingPolicy, compilerOptions, iCompilerRequestor, iProblemFactory);
        this.hasCompilationAborted = false;
        this.monitor = iProgressMonitor;
        this.fromJavaProject = z10;
    }

    public static CompilationUnit convert(CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr, int i10, Map map, boolean z10, WorkingCopyOwner workingCopyOwner, DefaultBindingResolver.BindingTables bindingTables, int i11, IProgressMonitor iProgressMonitor, boolean z11) {
        BindingResolver bindingResolver;
        AST newAST = AST.newAST(i10);
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel((String) map.get("org.eclipse.jdt.core.compiler.source"));
        if (versionToJdkLevel == 0) {
            versionToJdkLevel = ClassFileConstants.JDK1_3;
        }
        newAST.scanner.sourceLevel = versionToJdkLevel;
        long versionToJdkLevel2 = CompilerOptions.versionToJdkLevel((String) map.get("org.eclipse.jdt.core.compiler.compliance"));
        if (versionToJdkLevel2 != 0) {
            versionToJdkLevel = versionToJdkLevel2;
        }
        newAST.scanner.complianceLevel = versionToJdkLevel;
        newAST.setDefaultNodeFlag(2);
        ASTConverter aSTConverter = new ASTConverter(map, z10, iProgressMonitor);
        if (z10) {
            bindingResolver = new DefaultBindingResolver(compilationUnitDeclaration.scope, workingCopyOwner, bindingTables, (i11 & 4) != 0, z11);
            newAST.setFlag(i11 | Integer.MIN_VALUE);
        } else {
            bindingResolver = new BindingResolver();
            newAST.setFlag(i11);
        }
        newAST.setBindingResolver(bindingResolver);
        aSTConverter.setAST(newAST);
        CompilationUnit convert = aSTConverter.convert(compilationUnitDeclaration, cArr);
        convert.setLineEndTable(compilationUnitDeclaration.compilationResult.getLineSeparatorPositions());
        newAST.setDefaultNodeFlag(0);
        newAST.setOriginalModificationCount(newAST.modificationCount());
        return convert;
    }

    public static CompilerOptions getCompilerOptions(Map map, boolean z10) {
        CompilerOptions compilerOptions = new CompilerOptions(map);
        compilerOptions.performMethodsFullRecovery = z10;
        compilerOptions.performStatementsRecovery = z10;
        compilerOptions.parseLiteralExpressionsAsConstants = false;
        compilerOptions.storeAnnotations = true;
        compilerOptions.ignoreSourceFolderWarningOption = true;
        return compilerOptions;
    }

    public static IErrorHandlingPolicy getHandlingPolicy() {
        return new IErrorHandlingPolicy() {
            @Override
            public boolean ignoreAllErrors() {
                return false;
            }

            @Override
            public boolean proceedOnErrors() {
                return false;
            }

            @Override
            public boolean stopOnFirstError() {
                return false;
            }
        };
    }

    public static ICompilerRequestor getRequestor() {
        return new ICompilerRequestor() {
            @Override
            public void acceptResult(CompilationResult compilationResult) {
            }
        };
    }

    public static void parse(ICompilationUnit[] iCompilationUnitArr, ASTRequestor aSTRequestor, int i10, Map map, int i11, IProgressMonitor iProgressMonitor) {
        int i12;
        SubMonitor subMonitor;
        int i13;
        CompilerOptions compilerOptions = new CompilerOptions(map);
        compilerOptions.ignoreMethodBodies = (i11 & 8) != 0;
        CommentRecorderParser commentRecorderParser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory()), false);
        int length = iCompilationUnitArr.length;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor);
        int i14 = 0;
        while (i14 < length) {
            convert.setWorkRemaining(length - i14);
            org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) iCompilationUnitArr[i14];
            CompilationUnitDeclaration dietParse = commentRecorderParser.dietParse(iCompilationUnit, new CompilationResult(iCompilationUnit, 0, 0, compilerOptions.maxProblemsPerUnit));
            if (dietParse.ignoreMethodBodies) {
                dietParse.ignoreFurtherInvestigation = true;
                i12 = i14;
                subMonitor = convert;
                i13 = length;
            } else {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = dietParse.types;
                if (typeDeclarationArr != null) {
                    for (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration : typeDeclarationArr) {
                        typeDeclaration.parseMethods(commentRecorderParser, dietParse);
                    }
                }
                i12 = i14;
                subMonitor = convert;
                i13 = length;
                CompilationUnit convert2 = convert(dietParse, commentRecorderParser.scanner.getSource(), i10, map, false, null, null, i11, convert.split(1), true);
                convert2.setTypeRoot(iCompilationUnitArr[i12]);
                aSTRequestor.acceptAST(iCompilationUnitArr[i12], convert2);
            }
            i14 = i12 + 1;
            length = i13;
            convert = subMonitor;
        }
    }

    private void reportBinding(Object obj, ASTRequestor aSTRequestor, WorkingCopyOwner workingCopyOwner, CompilationUnitDeclaration compilationUnitDeclaration) {
        IBinding binding;
        BindingKeyResolver bindingKeyResolver = (BindingKeyResolver) obj;
        Binding compilerBinding = bindingKeyResolver.getCompilerBinding();
        if (compilerBinding != null) {
            DefaultBindingResolver defaultBindingResolver = new DefaultBindingResolver(compilationUnitDeclaration.scope, workingCopyOwner, this.bindingTables, false, this.fromJavaProject);
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding = bindingKeyResolver.getAnnotationBinding();
            if (annotationBinding != null) {
                binding = defaultBindingResolver.getAnnotationInstance(annotationBinding);
            } else {
                binding = defaultBindingResolver.getBinding(compilerBinding);
            }
            if (binding != null) {
                aSTRequestor.acceptBinding(bindingKeyResolver.getKey(), binding);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void resolve(ICompilationUnit[] iCompilationUnitArr, String[] strArr, ASTRequestor aSTRequestor, int i10, Map map, IJavaProject iJavaProject, WorkingCopyOwner workingCopyOwner, int i11, IProgressMonitor iProgressMonitor) {
        CancelableProblemFactory cancelableProblemFactory;
        CancelableNameEnvironment cancelableNameEnvironment;
        CancelableProblemFactory cancelableProblemFactory2;
        CancelableNameEnvironment cancelableNameEnvironment2;
        Map map2;
        boolean z10;
        CompilerOptions compilerOptions;
        try {
            try {
            } catch (Throwable th2) {
                th = th2;
                cancelableProblemFactory = null;
                cancelableNameEnvironment = null;
            }
        } catch (JavaModelException unused) {
        }
        try {
            SubMonitor convert = SubMonitor.convert(iProgressMonitor, (iCompilationUnitArr.length + strArr.length) * 2);
            cancelableNameEnvironment = new CancelableNameEnvironment((JavaProject) iJavaProject, workingCopyOwner, convert);
            try {
                cancelableProblemFactory = new CancelableProblemFactory(convert);
                if ((i11 & 2) != 0) {
                    map2 = map;
                    z10 = true;
                } else {
                    map2 = map;
                    z10 = false;
                }
                try {
                    compilerOptions = getCompilerOptions(map2, z10);
                    compilerOptions.ignoreMethodBodies = (i11 & 8) != 0;
                    cancelableProblemFactory2 = cancelableProblemFactory;
                    cancelableNameEnvironment2 = cancelableNameEnvironment;
                } catch (JavaModelException unused2) {
                    cancelableProblemFactory2 = cancelableProblemFactory;
                    cancelableNameEnvironment2 = cancelableNameEnvironment;
                } catch (Throwable th3) {
                    th = th3;
                }
                try {
                    new CompilationUnitResolver(cancelableNameEnvironment, getHandlingPolicy(), compilerOptions, getRequestor(), cancelableProblemFactory, convert, iJavaProject != null).resolve(iCompilationUnitArr, strArr, aSTRequestor, i10, map, workingCopyOwner, i11);
                    if (NameLookup.VERBOSE) {
                        PrintStream printStream = System.out;
                        printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + cancelableNameEnvironment2.nameLookup.timeSpentInSeekTypesInSourcePackage + DateFormat.MINUTE_SECOND);
                        printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + cancelableNameEnvironment2.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
                    }
                    cancelableNameEnvironment2.setMonitor(null);
                } catch (JavaModelException unused3) {
                    cancelableNameEnvironment = cancelableNameEnvironment2;
                    try {
                        parse(iCompilationUnitArr, aSTRequestor, i10, map, i11, iProgressMonitor);
                        if (cancelableNameEnvironment != null) {
                        }
                        if (cancelableProblemFactory2 == null) {
                        }
                        cancelableProblemFactory2.monitor = null;
                    } catch (Throwable th4) {
                        th = th4;
                        cancelableProblemFactory = cancelableProblemFactory2;
                        if (cancelableNameEnvironment != null) {
                            cancelableNameEnvironment.setMonitor(null);
                        }
                        if (cancelableProblemFactory != null) {
                            cancelableProblemFactory.monitor = null;
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cancelableProblemFactory = cancelableProblemFactory2;
                    cancelableNameEnvironment = cancelableNameEnvironment2;
                    if (cancelableNameEnvironment != null) {
                    }
                    if (cancelableProblemFactory != null) {
                    }
                    throw th;
                }
            } catch (JavaModelException unused4) {
                cancelableNameEnvironment2 = cancelableNameEnvironment;
                cancelableProblemFactory2 = null;
            } catch (Throwable th6) {
                th = th6;
                cancelableProblemFactory = null;
            }
        } catch (JavaModelException unused5) {
            cancelableNameEnvironment = null;
            cancelableProblemFactory2 = null;
            parse(iCompilationUnitArr, aSTRequestor, i10, map, i11, iProgressMonitor);
            if (cancelableNameEnvironment != null) {
                cancelableNameEnvironment.setMonitor(null);
            }
            if (cancelableProblemFactory2 == null) {
                return;
            }
            cancelableProblemFactory2.monitor = null;
        }
        cancelableProblemFactory2.monitor = null;
    }

    private void worked(int i10) {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null) {
            if (iProgressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            this.monitor.worked(i10);
        }
    }

    @Override
    public void accept(ISourceType[] iSourceTypeArr, org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding, AccessRestriction accessRestriction) {
        accept((org.eclipse.jdt.internal.compiler.env.ICompilationUnit) ((SourceTypeElementInfo) iSourceTypeArr[0]).getHandle().getCompilationUnit(), accessRestriction);
    }

    public void beginToCompile(org.eclipse.jdt.internal.compiler.env.ICompilationUnit[] iCompilationUnitArr, String[] strArr) {
        int length = iCompilationUnitArr.length;
        int length2 = strArr.length;
        int i10 = length + length2;
        int i11 = 0;
        this.totalUnits = 0;
        this.unitsToProcess = new CompilationUnitDeclaration[i10];
        this.requestedSources = new HashtableOfObject();
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit = iCompilationUnitArr[i12];
            int i14 = i13 + 1;
            CompilationResult compilationResult = new CompilationResult(iCompilationUnit, i13, i10, this.options.maxProblemsPerUnit);
            try {
                if (this.options.verbose) {
                    i13 += 2;
                    this.out.println(Messages.bind(Messages.compilation_request, (Object[]) new String[]{String.valueOf(i13), String.valueOf(i10), new String(iCompilationUnit.getFileName())}));
                } else {
                    i13 = i14;
                }
                Parser parser = this.parser;
                if (parser instanceof CommentRecorderParser) {
                    ((CommentRecorderParser) parser).resetComments();
                }
                CompilationUnitDeclaration parse = this.totalUnits < this.parseThreshold ? this.parser.parse(iCompilationUnit, compilationResult) : this.parser.dietParse(iCompilationUnit, compilationResult);
                this.lookupEnvironment.buildTypeBindings(parse, null);
                addCompilationUnit(iCompilationUnit, parse);
                this.requestedSources.put(compilationResult.getFileName(), iCompilationUnit);
                worked(1);
                iCompilationUnitArr[i12] = null;
                i12++;
                i11 = 0;
            } catch (Throwable th2) {
                iCompilationUnitArr[i12] = null;
                throw th2;
            }
        }
        this.requestedKeys = new HashtableOfObject();
        while (i11 < length2) {
            BindingKeyResolver bindingKeyResolver = new BindingKeyResolver(strArr[i11], this, this.lookupEnvironment);
            bindingKeyResolver.parse(true);
            CompilationUnitDeclaration compilationUnitDeclaration = bindingKeyResolver.hasTypeName() ? bindingKeyResolver.getCompilationUnitDeclaration() : null;
            if (compilationUnitDeclaration != null) {
                char[] fileName = compilationUnitDeclaration.compilationResult.getFileName();
                Object obj = this.requestedKeys.get(fileName);
                if (obj == null) {
                    this.requestedKeys.put(fileName, bindingKeyResolver);
                } else if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(bindingKeyResolver);
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(obj);
                    arrayList.add(bindingKeyResolver);
                    this.requestedKeys.put(fileName, arrayList);
                }
            } else {
                this.requestedKeys.put(bindingKeyResolver.hasTypeName() ? bindingKeyResolver.getKey().toCharArray() : bindingKeyResolver.hasModuleName() ? bindingKeyResolver.moduleName() : CharOperation.concatWith(bindingKeyResolver.compoundName(), '.'), bindingKeyResolver);
            }
            worked(1);
            i11++;
        }
        this.lookupEnvironment.completeTypeBindings();
    }

    public IBinding createBinding(String str) {
        if (this.bindingTables == null) {
            throw new RuntimeException("Cannot be called outside ASTParser#createASTs(...)");
        }
        Binding compilerBinding = new BindingKeyResolver(str, this, this.lookupEnvironment).getCompilerBinding();
        if (compilerBinding == null) {
            return null;
        }
        return new DefaultBindingResolver(this.lookupEnvironment, (WorkingCopyOwner) null, this.bindingTables, false, this.fromJavaProject).getBinding(compilerBinding);
    }

    @Override
    public void handleInternalException(Throwable th2, CompilationUnitDeclaration compilationUnitDeclaration, CompilationResult compilationResult) {
        super.handleInternalException(th2, compilationUnitDeclaration, compilationResult);
        if (compilationUnitDeclaration != null) {
            removeUnresolvedBindings(compilationUnitDeclaration);
        }
    }

    @Override
    public void initializeParser() {
        this.parser = new CommentRecorderParser(this.problemReporter, false);
    }

    @Override
    public void process(CompilationUnitDeclaration compilationUnitDeclaration, int i10) {
        char[] fileName = compilationUnitDeclaration.compilationResult.getFileName();
        if (this.requestedKeys.get(fileName) == null && this.requestedSources.get(fileName) == null) {
            super.process(compilationUnitDeclaration, i10);
        }
    }

    public void removeUnresolvedBindings(CompilationUnitDeclaration compilationUnitDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        if (typeDeclarationArr != null) {
            for (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration : typeDeclarationArr) {
                removeUnresolvedBindings(typeDeclaration);
            }
        }
    }

    public boolean resolvedRequestedSourcesAndKeys(int i10) {
        if (i10 < this.requestedSources.size() && i10 < this.requestedKeys.size()) {
            return false;
        }
        for (Object obj : this.requestedSources.valueTable) {
            if (obj != null) {
                return false;
            }
        }
        for (Object obj2 : this.requestedKeys.valueTable) {
            if (obj2 != null) {
                return false;
            }
        }
        return true;
    }

    @Override
    public synchronized void accept(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, AccessRestriction accessRestriction) {
        super.accept(iCompilationUnit, accessRestriction);
    }

    @Override
    public void handleInternalException(AbortCompilation abortCompilation, CompilationUnitDeclaration compilationUnitDeclaration) {
        super.handleInternalException(abortCompilation, compilationUnitDeclaration);
        if (compilationUnitDeclaration != null) {
            removeUnresolvedBindings(compilationUnitDeclaration);
        }
        this.hasCompilationAborted = true;
        this.abortProblem = abortCompilation.problem;
    }

    private void removeUnresolvedBindings(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                removeUnresolvedBindings(typeDeclaration2);
            }
        }
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        if (sourceTypeBinding != null && (sourceTypeBinding.modifiers & 33554432) != 0) {
            typeDeclaration.binding = null;
        }
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        if (fieldDeclarationArr != null) {
            for (org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                FieldBinding fieldBinding = fieldDeclaration.binding;
                if (fieldBinding != null && (fieldBinding.modifiers & 33554432) != 0) {
                    fieldDeclaration.binding = null;
                }
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = abstractMethodDeclaration.binding;
                if (methodBinding != null && (methodBinding.modifiers & 33554432) != 0) {
                    abstractMethodDeclaration.binding = null;
                }
            }
        }
    }

    private void reportBinding(Object obj, FileASTRequestor fileASTRequestor, CompilationUnitDeclaration compilationUnitDeclaration) {
        IBinding binding;
        BindingKeyResolver bindingKeyResolver = (BindingKeyResolver) obj;
        Binding compilerBinding = bindingKeyResolver.getCompilerBinding();
        if (compilerBinding != null) {
            DefaultBindingResolver defaultBindingResolver = new DefaultBindingResolver(compilationUnitDeclaration.scope, (WorkingCopyOwner) null, this.bindingTables, false, this.fromJavaProject);
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding = bindingKeyResolver.getAnnotationBinding();
            if (annotationBinding != null) {
                binding = defaultBindingResolver.getAnnotationInstance(annotationBinding);
            } else {
                binding = defaultBindingResolver.getBinding(compilerBinding);
            }
            if (binding != null) {
                fileASTRequestor.acceptBinding(bindingKeyResolver.getKey(), binding);
            }
        }
    }

    public static void resolve(String[] strArr, String[] strArr2, String[] strArr3, FileASTRequestor fileASTRequestor, int i10, Map map, List list, int i11, IProgressMonitor iProgressMonitor) {
        CancelableProblemFactory cancelableProblemFactory;
        NameEnvironmentWithProgress nameEnvironmentWithProgress;
        try {
            SubMonitor convert = SubMonitor.convert(iProgressMonitor, (strArr.length + strArr3.length) * 2);
            FileSystem.Classpath[] classpathArr = new FileSystem.Classpath[list.size()];
            list.toArray(classpathArr);
            nameEnvironmentWithProgress = new NameEnvironmentWithProgress(classpathArr, null, convert);
            try {
                cancelableProblemFactory = new CancelableProblemFactory(convert);
                try {
                    CompilerOptions compilerOptions = getCompilerOptions(map, (i11 & 2) != 0);
                    compilerOptions.ignoreMethodBodies = (i11 & 8) != 0;
                    try {
                        new CompilationUnitResolver(nameEnvironmentWithProgress, getHandlingPolicy(), compilerOptions, getRequestor(), cancelableProblemFactory, convert, false).resolve(strArr, strArr2, strArr3, fileASTRequestor, i10, map, i11);
                        boolean z10 = NameLookup.VERBOSE;
                        nameEnvironmentWithProgress.setMonitor(null);
                        cancelableProblemFactory.monitor = null;
                    } catch (Throwable th2) {
                        th = th2;
                        cancelableProblemFactory = cancelableProblemFactory;
                        nameEnvironmentWithProgress = nameEnvironmentWithProgress;
                        if (nameEnvironmentWithProgress != null) {
                            nameEnvironmentWithProgress.setMonitor(null);
                        }
                        if (cancelableProblemFactory != null) {
                            cancelableProblemFactory.monitor = null;
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                cancelableProblemFactory = null;
            }
        } catch (Throwable th5) {
            th = th5;
            cancelableProblemFactory = null;
            nameEnvironmentWithProgress = null;
        }
    }

    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v2 */
    public static void parse(String[] strArr, String[] strArr2, FileASTRequestor fileASTRequestor, int i10, Map map, int i11, IProgressMonitor iProgressMonitor) {
        SubMonitor subMonitor;
        int i12;
        int i13;
        char[] fileCharContent;
        CompilerOptions compilerOptions = new CompilerOptions(map);
        ?? r13 = 1;
        compilerOptions.ignoreMethodBodies = (i11 & 8) != 0;
        CommentRecorderParser commentRecorderParser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory()), false);
        int length = strArr.length;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, length);
        int i14 = 0;
        while (i14 < length) {
            SubMonitor split = convert.split((int) r13);
            String str = strArr2 != null ? strArr2[i14] : null;
            try {
                fileCharContent = Util.getFileCharContent(new File(strArr[i14]), str);
            } catch (IOException unused) {
            }
            if (fileCharContent != null) {
                org.eclipse.jdt.internal.compiler.batch.CompilationUnit compilationUnit = new org.eclipse.jdt.internal.compiler.batch.CompilationUnit(fileCharContent, strArr[i14], str);
                CompilationUnitDeclaration dietParse = commentRecorderParser.dietParse(compilationUnit, new CompilationResult(compilationUnit, 0, 0, compilerOptions.maxProblemsPerUnit));
                if (dietParse.ignoreMethodBodies) {
                    dietParse.ignoreFurtherInvestigation = r13;
                } else {
                    org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = dietParse.types;
                    if (typeDeclarationArr != null) {
                        for (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration : typeDeclarationArr) {
                            typeDeclaration.parseMethods(commentRecorderParser, dietParse);
                        }
                    }
                    i12 = i14;
                    subMonitor = convert;
                    i13 = length;
                    CompilationUnit convert2 = convert(dietParse, commentRecorderParser.scanner.getSource(), i10, map, false, null, null, i11, split, true);
                    convert2.setTypeRoot(null);
                    fileASTRequestor.acceptAST(strArr[i12], convert2);
                    i14 = i12 + 1;
                    length = i13;
                    convert = subMonitor;
                    r13 = 1;
                }
            }
            i12 = i14;
            subMonitor = convert;
            i13 = length;
            i14 = i12 + 1;
            length = i13;
            convert = subMonitor;
            r13 = 1;
        }
    }

    public static CompilationUnitDeclaration resolve(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, IJavaProject iJavaProject, List list, NodeSearcher nodeSearcher, Map map, WorkingCopyOwner workingCopyOwner, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        INameEnvironmentWithProgress iNameEnvironmentWithProgress;
        CancelableProblemFactory cancelableProblemFactory;
        INameEnvironmentWithProgress cancelableNameEnvironment;
        try {
            if (iJavaProject == null) {
                FileSystem.Classpath[] classpathArr = new FileSystem.Classpath[list.size()];
                list.toArray(classpathArr);
                cancelableNameEnvironment = new NameEnvironmentWithProgress(classpathArr, null, iProgressMonitor);
            } else {
                cancelableNameEnvironment = new CancelableNameEnvironment((JavaProject) iJavaProject, workingCopyOwner, iProgressMonitor);
            }
            iNameEnvironmentWithProgress = cancelableNameEnvironment;
            try {
                cancelableProblemFactory = new CancelableProblemFactory(iProgressMonitor);
                try {
                    CompilerOptions compilerOptions = getCompilerOptions(map, (i10 & 2) != 0);
                    boolean z10 = (i10 & 8) != 0;
                    compilerOptions.ignoreMethodBodies = z10;
                    CompilationUnitResolver compilationUnitResolver = new CompilationUnitResolver(iNameEnvironmentWithProgress, getHandlingPolicy(), compilerOptions, getRequestor(), cancelableProblemFactory, iProgressMonitor, iJavaProject != null);
                    boolean z11 = !z10;
                    CompilationUnitDeclaration resolve = compilationUnitResolver.resolve(null, iCompilationUnit, nodeSearcher, true, z11, z11);
                    if (compilationUnitResolver.hasCompilationAborted) {
                        CompilationUnitDeclaration parse = parse(iCompilationUnit, nodeSearcher, map, i10);
                        if (resolve != null) {
                            CompilationResult compilationResult = resolve.compilationResult;
                            int i11 = compilationResult.problemCount;
                            if (i11 != 0) {
                                CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[i11];
                                parse.compilationResult.problems = categorizedProblemArr;
                                System.arraycopy(compilationResult.problems, 0, categorizedProblemArr, 0, i11);
                                parse.compilationResult.problemCount = i11;
                            }
                        } else {
                            CategorizedProblem categorizedProblem = compilationUnitResolver.abortProblem;
                            if (categorizedProblem != null) {
                                CompilationResult compilationResult2 = parse.compilationResult;
                                compilationResult2.problemCount = 1;
                                compilationResult2.problems = new CategorizedProblem[]{categorizedProblem};
                            }
                        }
                        iNameEnvironmentWithProgress.setMonitor(null);
                        cancelableProblemFactory.monitor = null;
                        return parse;
                    }
                    if (NameLookup.VERBOSE && (iNameEnvironmentWithProgress instanceof CancelableNameEnvironment)) {
                        CancelableNameEnvironment cancelableNameEnvironment2 = (CancelableNameEnvironment) iNameEnvironmentWithProgress;
                        PrintStream printStream = System.out;
                        printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + cancelableNameEnvironment2.nameLookup.timeSpentInSeekTypesInSourcePackage + DateFormat.MINUTE_SECOND);
                        printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + cancelableNameEnvironment2.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
                    }
                    iNameEnvironmentWithProgress.setMonitor(null);
                    cancelableProblemFactory.monitor = null;
                    return resolve;
                } catch (Throwable th2) {
                    th = th2;
                    if (iNameEnvironmentWithProgress != null) {
                        iNameEnvironmentWithProgress.setMonitor(null);
                    }
                    if (cancelableProblemFactory != null) {
                        cancelableProblemFactory.monitor = null;
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cancelableProblemFactory = null;
            }
        } catch (Throwable th4) {
            th = th4;
            iNameEnvironmentWithProgress = null;
            cancelableProblemFactory = null;
        }
    }

    public static CompilationUnitDeclaration parse(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, NodeSearcher nodeSearcher, Map map, int i10) {
        if (iCompilationUnit != null) {
            CompilerOptions compilerOptions = new CompilerOptions(map);
            boolean z10 = (i10 & 2) != 0;
            compilerOptions.performMethodsFullRecovery = z10;
            compilerOptions.performStatementsRecovery = z10;
            compilerOptions.ignoreMethodBodies = (i10 & 8) != 0;
            CommentRecorderParser commentRecorderParser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory()), false);
            CompilationUnitDeclaration dietParse = commentRecorderParser.dietParse(iCompilationUnit, new CompilationResult(iCompilationUnit, 0, 0, compilerOptions.maxProblemsPerUnit));
            if (dietParse.ignoreMethodBodies) {
                dietParse.ignoreFurtherInvestigation = true;
                return dietParse;
            }
            if (nodeSearcher != null) {
                char[] source = commentRecorderParser.scanner.getSource();
                int i11 = nodeSearcher.position;
                if (i11 < 0 || i11 > source.length) {
                    return dietParse;
                }
                dietParse.traverse(nodeSearcher, dietParse.scope);
                org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = nodeSearcher.found;
                if (aSTNode == null) {
                    return dietParse;
                }
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = nodeSearcher.enclosingType;
                if (aSTNode instanceof AbstractMethodDeclaration) {
                    ((AbstractMethodDeclaration) aSTNode).parseStatements(commentRecorderParser, dietParse);
                } else if (typeDeclaration != null) {
                    if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.Initializer) {
                        ((org.eclipse.jdt.internal.compiler.ast.Initializer) aSTNode).parseStatements(commentRecorderParser, typeDeclaration, dietParse);
                    } else if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                        ((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode).parseMethods(commentRecorderParser, dietParse);
                    }
                }
            } else {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = dietParse.types;
                if (typeDeclarationArr != null) {
                    for (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                        typeDeclaration2.parseMethods(commentRecorderParser, dietParse);
                    }
                }
            }
            return dietParse;
        }
        throw new IllegalStateException();
    }

    public static IBinding[] resolve(IJavaElement[] iJavaElementArr, int i10, Map map, IJavaProject iJavaProject, WorkingCopyOwner workingCopyOwner, int i11, IProgressMonitor iProgressMonitor) {
        String key;
        int length = iJavaElementArr.length;
        HashMap hashMap = new HashMap();
        HashtableOfObjectToInt hashtableOfObjectToInt = new HashtableOfObjectToInt();
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            IJavaElement iJavaElement = iJavaElementArr[i13];
            if (iJavaElement instanceof SourceRefElement) {
                IJavaElement ancestor = iJavaElement.getAncestor(5);
                if (ancestor != null) {
                    IntArrayList intArrayList = (IntArrayList) hashMap.get(ancestor);
                    if (intArrayList == null) {
                        intArrayList = new IntArrayList();
                        hashMap.put(ancestor, intArrayList);
                        i12++;
                    }
                    intArrayList.add(i13);
                } else {
                    try {
                        if (iJavaElement instanceof BinaryMember) {
                            key = ((BinaryMember) iJavaElement).getKey(true);
                        } else if (iJavaElement instanceof LocalVariable) {
                            key = ((LocalVariable) iJavaElement).getKey(true);
                        } else if (iJavaElement instanceof org.eclipse.jdt.internal.core.TypeParameter) {
                            key = ((org.eclipse.jdt.internal.core.TypeParameter) iJavaElement).getKey(true);
                        } else if (iJavaElement instanceof BinaryModule) {
                            key = ((BinaryModule) iJavaElement).getKey(true);
                        } else {
                            throw new IllegalArgumentException(((Object) iJavaElement) + " has an unexpected type");
                        }
                        hashtableOfObjectToInt.put(key, i13);
                    } catch (JavaModelException e10) {
                        throw new IllegalArgumentException(((Object) iJavaElement) + " does not exist", e10);
                    }
                }
            } else {
                throw new IllegalStateException(((Object) iJavaElement) + " is not part of a compilation unit or class file");
            }
        }
        ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[i12];
        hashMap.o().toArray(iCompilationUnitArr);
        String[] strArr = new String[hashtableOfObjectToInt.size()];
        hashtableOfObjectToInt.keysToArray(strArr);
        C1Requestor c1Requestor = new C1Requestor(length, hashMap, iJavaElementArr, hashtableOfObjectToInt);
        resolve(iCompilationUnitArr, strArr, c1Requestor, i10, map, iJavaProject, workingCopyOwner, i11, iProgressMonitor);
        return c1Requestor.bindings;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x002e, code lost:
    
        if (r0 < r18.totalUnits) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
    
        r18.unitsToProcess[r0].cleanUp();
        r18.unitsToProcess[r0] = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0096, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x007f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0080, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a1, code lost:
    
        handleInternalException(r0, r12, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a4, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0083, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0084, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a8, code lost:
    
        handleInternalException(r0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01ab, code lost:
    
        r21.compilationUnitResolver = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ad, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x007b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x007c, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0198, code lost:
    
        handleInternalException(r0, r12, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x019b, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0077, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0078, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01af, code lost:
    
        r21.compilationUnitResolver = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b1, code lost:
    
        throw r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [org.eclipse.jdt.core.dom.CompilationUnitResolver] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.eclipse.jdt.core.dom.CompilationUnitResolver] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v30, types: [org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration[]] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void resolve(ICompilationUnit[] iCompilationUnitArr, String[] strArr, ASTRequestor aSTRequestor, int i10, Map map, WorkingCopyOwner workingCopyOwner, int i11) {
        ?? r32;
        CompilationUnitResolver compilationUnitResolver;
        CompilationUnitDeclaration compilationUnitDeclaration;
        CompilationResult compilationResult;
        CompilationResult compilationResult2;
        int i12;
        int i13;
        aSTRequestor.compilationUnitResolver = this;
        DefaultBindingResolver.BindingTables bindingTables = new DefaultBindingResolver.BindingTables();
        this.bindingTables = bindingTables;
        ?? r10 = 0;
        r10 = 0;
        try {
            try {
                try {
                    try {
                        try {
                            int length = iCompilationUnitArr.length;
                            try {
                                try {
                                    org.eclipse.jdt.internal.compiler.env.ICompilationUnit[] iCompilationUnitArr2 = new org.eclipse.jdt.internal.compiler.env.ICompilationUnit[length];
                                    int i14 = 0;
                                    System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, length);
                                    beginToCompile(iCompilationUnitArr2, strArr);
                                    compilationUnitDeclaration = null;
                                    int i15 = 0;
                                    while (true) {
                                        try {
                                            if (i15 >= this.totalUnits) {
                                                break;
                                            }
                                            if (resolvedRequestedSourcesAndKeys(i15)) {
                                                break;
                                            }
                                            compilationUnitDeclaration = this.unitsToProcess[i15];
                                            try {
                                                super.process(compilationUnitDeclaration, i15);
                                                char[] fileName = compilationUnitDeclaration.compilationResult.getFileName();
                                                ICompilationUnit iCompilationUnit = (ICompilationUnit) this.requestedSources.get(fileName);
                                                if (iCompilationUnit != null) {
                                                    CompilationResult compilationResult3 = compilationUnitDeclaration.compilationResult;
                                                    char[] contents = compilationResult3.compilationUnit.getContents();
                                                    AST newAST = AST.newAST(i10);
                                                    newAST.setFlag(i11 | Integer.MIN_VALUE);
                                                    newAST.setDefaultNodeFlag(2);
                                                    ASTConverter aSTConverter = new ASTConverter(map, true, this.monitor);
                                                    i12 = i15;
                                                    newAST.setBindingResolver(new DefaultBindingResolver(compilationUnitDeclaration.scope, workingCopyOwner, this.bindingTables, (boolean) ((i11 & 4) != 0 ? 1 : i14), this.fromJavaProject));
                                                    aSTConverter.setAST(newAST);
                                                    CompilationUnit convert = aSTConverter.convert(compilationUnitDeclaration, contents);
                                                    convert.setTypeRoot(iCompilationUnit);
                                                    convert.setLineEndTable(compilationResult3.getLineSeparatorPositions());
                                                    i13 = 0;
                                                    newAST.setDefaultNodeFlag(0);
                                                    newAST.setOriginalModificationCount(newAST.modificationCount());
                                                    aSTRequestor.acceptAST(iCompilationUnit, convert);
                                                    worked(1);
                                                    this.requestedSources.put(fileName, null);
                                                } else {
                                                    i12 = i15;
                                                    i13 = i14;
                                                }
                                                Object obj = this.requestedKeys.get(fileName);
                                                if (obj != null) {
                                                    if (obj instanceof BindingKeyResolver) {
                                                        reportBinding(obj, aSTRequestor, workingCopyOwner, compilationUnitDeclaration);
                                                        worked(1);
                                                    } else if (obj instanceof ArrayList) {
                                                        Iterator it = ((ArrayList) obj).iterator();
                                                        while (it.hasNext()) {
                                                            reportBinding(it.next(), aSTRequestor, workingCopyOwner, compilationUnitDeclaration);
                                                            worked(1);
                                                        }
                                                    }
                                                    this.requestedKeys.put(fileName, null);
                                                }
                                                compilationUnitDeclaration.cleanUp();
                                                this.unitsToProcess[i12] = null;
                                                this.requestor.acceptResult(compilationUnitDeclaration.compilationResult.tagAsAccepted());
                                                i15 = i12 + 1;
                                                i14 = i13;
                                                r10 = 0;
                                            } catch (Throwable th2) {
                                                compilationUnitDeclaration.cleanUp();
                                                throw th2;
                                            }
                                        } catch (Error e10) {
                                            e = e10;
                                            compilationResult = null;
                                        } catch (AbortCompilation e11) {
                                            e = e11;
                                            compilationUnitResolver = null;
                                        } catch (RuntimeException e12) {
                                            e = e12;
                                            compilationResult2 = null;
                                        }
                                    }
                                    DefaultBindingResolver defaultBindingResolver = new DefaultBindingResolver(this.lookupEnvironment, workingCopyOwner, this.bindingTables, (boolean) ((i11 & 4) != 0 ? 1 : i14), true);
                                    Object[] objArr = this.requestedKeys.valueTable;
                                    int length2 = objArr.length;
                                    while (i14 < length2) {
                                        BindingKeyResolver bindingKeyResolver = (BindingKeyResolver) objArr[i14];
                                        if (bindingKeyResolver != null) {
                                            Binding compilerBinding = bindingKeyResolver.getCompilerBinding();
                                            aSTRequestor.acceptBinding(((BindingKeyResolver) this.requestedKeys.valueTable[i14]).getKey(), compilerBinding == null ? r10 : defaultBindingResolver.getBinding(compilerBinding));
                                            worked(1);
                                        }
                                        i14++;
                                    }
                                    aSTRequestor.compilationUnitResolver = r10;
                                } catch (OperationCanceledException e13) {
                                    throw e13;
                                }
                            } catch (Error e14) {
                                e = e14;
                                compilationResult = null;
                                compilationUnitDeclaration = null;
                            } catch (AbortCompilation e15) {
                                e = e15;
                                compilationUnitResolver = null;
                                compilationUnitDeclaration = null;
                            }
                        } catch (RuntimeException e16) {
                            e = e16;
                            compilationResult2 = null;
                            compilationUnitDeclaration = null;
                        }
                    } catch (OperationCanceledException e17) {
                        throw e17;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    r32 = 0;
                }
            } catch (Error e18) {
                e = e18;
                compilationResult = null;
                compilationUnitDeclaration = null;
            } catch (AbortCompilation e19) {
                e = e19;
                compilationUnitResolver = null;
                compilationUnitDeclaration = null;
            }
        } catch (Throwable th4) {
            th = th4;
            r32 = bindingTables;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void resolve(String[] strArr, String[] strArr2, String[] strArr3, FileASTRequestor fileASTRequestor, int i10, Map map, int i11) {
        CompilationUnitDeclaration compilationUnitDeclaration;
        String[] strArr4;
        int i12;
        fileASTRequestor.compilationUnitResolver = this;
        this.bindingTables = new DefaultBindingResolver.BindingTables();
        try {
            try {
                try {
                    int length = strArr.length;
                    org.eclipse.jdt.internal.compiler.env.ICompilationUnit[] iCompilationUnitArr = new org.eclipse.jdt.internal.compiler.env.ICompilationUnit[length];
                    int i13 = 0;
                    int i14 = 0;
                    int i15 = 0;
                    while (i14 < length) {
                        int i16 = i13;
                        String str = strArr2 != null ? strArr2[i14] : null;
                        String str2 = strArr[i14];
                        try {
                            char[] fileCharContent = Util.getFileCharContent(new File(str2), str);
                            if (fileCharContent != null) {
                                int i17 = i15 + 1;
                                iCompilationUnitArr[i15] = new org.eclipse.jdt.internal.compiler.batch.CompilationUnit(fileCharContent, str2, str);
                                i15 = i17;
                            }
                        } catch (IOException unused) {
                        }
                        i14++;
                        i13 = i16;
                    }
                    if (i15 < length) {
                        org.eclipse.jdt.internal.compiler.env.ICompilationUnit[] iCompilationUnitArr2 = new org.eclipse.jdt.internal.compiler.env.ICompilationUnit[i15];
                        System.arraycopy(iCompilationUnitArr, i13, iCompilationUnitArr2, i13, i15);
                        strArr4 = strArr3;
                        iCompilationUnitArr = iCompilationUnitArr2;
                    } else {
                        strArr4 = strArr3;
                    }
                    beginToCompile(iCompilationUnitArr, strArr4);
                    compilationUnitDeclaration = null;
                    int i18 = i13;
                    while (true) {
                        try {
                            if (i18 >= this.totalUnits) {
                                break;
                            }
                            if (resolvedRequestedSourcesAndKeys(i18)) {
                                while (i18 < this.totalUnits) {
                                    this.unitsToProcess[i18].cleanUp();
                                    this.unitsToProcess[i18] = null;
                                    i18++;
                                }
                            } else {
                                compilationUnitDeclaration = this.unitsToProcess[i18];
                                try {
                                    super.process(compilationUnitDeclaration, i18);
                                    char[] fileName = compilationUnitDeclaration.compilationResult.getFileName();
                                    org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) this.requestedSources.get(fileName);
                                    if (iCompilationUnit != null) {
                                        CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
                                        char[] contents = compilationResult.compilationUnit.getContents();
                                        AST newAST = AST.newAST(i10);
                                        newAST.setFlag(i11 | Integer.MIN_VALUE);
                                        newAST.setDefaultNodeFlag(2);
                                        ASTConverter aSTConverter = new ASTConverter(map, true, this.monitor);
                                        newAST.setBindingResolver(new DefaultBindingResolver(compilationUnitDeclaration.scope, (WorkingCopyOwner) null, this.bindingTables, (i11 & 4) != 0 ? 1 : i13, this.fromJavaProject));
                                        aSTConverter.setAST(newAST);
                                        CompilationUnit convert = aSTConverter.convert(compilationUnitDeclaration, contents);
                                        convert.setTypeRoot(null);
                                        convert.setLineEndTable(compilationResult.getLineSeparatorPositions());
                                        i12 = 0;
                                        newAST.setDefaultNodeFlag(0);
                                        newAST.setOriginalModificationCount(newAST.modificationCount());
                                        fileASTRequestor.acceptAST(new String(iCompilationUnit.getFileName()), convert);
                                        worked(1);
                                        this.requestedSources.put(fileName, null);
                                    } else {
                                        i12 = i13;
                                    }
                                    Object obj = this.requestedKeys.get(fileName);
                                    if (obj != null) {
                                        if (obj instanceof BindingKeyResolver) {
                                            reportBinding(obj, fileASTRequestor, compilationUnitDeclaration);
                                            worked(1);
                                        } else if (obj instanceof ArrayList) {
                                            Iterator it = ((ArrayList) obj).iterator();
                                            while (it.hasNext()) {
                                                reportBinding(it.next(), fileASTRequestor, compilationUnitDeclaration);
                                                worked(1);
                                            }
                                        }
                                        this.requestedKeys.put(fileName, null);
                                    }
                                    compilationUnitDeclaration.cleanUp();
                                    this.unitsToProcess[i18] = null;
                                    this.requestor.acceptResult(compilationUnitDeclaration.compilationResult.tagAsAccepted());
                                    i18++;
                                    i13 = i12;
                                } finally {
                                    compilationUnitDeclaration.cleanUp();
                                }
                            }
                        } catch (Error e10) {
                            e = e10;
                            handleInternalException(e, compilationUnitDeclaration, null);
                            throw e;
                        } catch (AbortCompilation e11) {
                            e = e11;
                            handleInternalException(e, compilationUnitDeclaration);
                            fileASTRequestor.compilationUnitResolver = null;
                        } catch (RuntimeException e12) {
                            e = e12;
                            handleInternalException(e, compilationUnitDeclaration, null);
                            throw e;
                        }
                    }
                    DefaultBindingResolver defaultBindingResolver = new DefaultBindingResolver(this.lookupEnvironment, (WorkingCopyOwner) null, this.bindingTables, (i11 & 4) != 0 ? 1 : i13, true);
                    Object[] objArr = this.requestedKeys.valueTable;
                    int length2 = objArr.length;
                    while (i13 < length2) {
                        BindingKeyResolver bindingKeyResolver = (BindingKeyResolver) objArr[i13];
                        if (bindingKeyResolver != null) {
                            Binding compilerBinding = bindingKeyResolver.getCompilerBinding();
                            fileASTRequestor.acceptBinding(((BindingKeyResolver) this.requestedKeys.valueTable[i13]).getKey(), compilerBinding == null ? null : defaultBindingResolver.getBinding(compilerBinding));
                            worked(1);
                        }
                        i13++;
                    }
                } catch (OperationCanceledException e13) {
                    throw e13;
                }
            } catch (Throwable th2) {
                fileASTRequestor.compilationUnitResolver = null;
                throw th2;
            }
        } catch (Error e14) {
            e = e14;
            compilationUnitDeclaration = null;
        } catch (AbortCompilation e15) {
            e = e15;
            compilationUnitDeclaration = null;
        } catch (RuntimeException e16) {
            e = e16;
            compilationUnitDeclaration = null;
        }
        fileASTRequestor.compilationUnitResolver = null;
    }

    private CompilationUnitDeclaration resolve(CompilationUnitDeclaration compilationUnitDeclaration, org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, NodeSearcher nodeSearcher, boolean z10, boolean z11, boolean z12) {
        try {
            if (compilationUnitDeclaration == null) {
                this.parseThreshold = 0;
                beginToCompile(new org.eclipse.jdt.internal.compiler.env.ICompilationUnit[]{iCompilationUnit});
                int i10 = this.totalUnits;
                int i11 = 0;
                while (true) {
                    if (i11 >= i10) {
                        break;
                    }
                    CompilationUnitDeclaration compilationUnitDeclaration2 = this.unitsToProcess[i11];
                    if (compilationUnitDeclaration2 != null && compilationUnitDeclaration2.compilationResult.compilationUnit == iCompilationUnit) {
                        compilationUnitDeclaration = compilationUnitDeclaration2;
                        break;
                    }
                    i11++;
                }
                if (compilationUnitDeclaration == null) {
                    compilationUnitDeclaration = this.unitsToProcess[0];
                }
            } else {
                this.lookupEnvironment.buildTypeBindings(compilationUnitDeclaration, null);
                this.lookupEnvironment.completeTypeBindings();
            }
            if (nodeSearcher == null) {
                this.parser.getMethodBodies(compilationUnitDeclaration);
            } else {
                int i12 = nodeSearcher.position;
                char[] contents = iCompilationUnit.getContents();
                int length = contents.length;
                if (i12 >= 0 && i12 <= length) {
                    compilationUnitDeclaration.traverse(nodeSearcher, compilationUnitDeclaration.scope);
                    org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = nodeSearcher.found;
                    if (aSTNode != null) {
                        Scanner scanner = this.parser.scanner;
                        int[] iArr = scanner.lineEnds;
                        int i13 = scanner.linePtr;
                        scanner.setSource(contents, compilationUnitDeclaration.compilationResult);
                        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = nodeSearcher.enclosingType;
                        if (aSTNode instanceof AbstractMethodDeclaration) {
                            ((AbstractMethodDeclaration) aSTNode).parseStatements(this.parser, compilationUnitDeclaration);
                        } else if (typeDeclaration != null) {
                            if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.Initializer) {
                                ((org.eclipse.jdt.internal.compiler.ast.Initializer) aSTNode).parseStatements(this.parser, typeDeclaration, compilationUnitDeclaration);
                            } else if (aSTNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                                ((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode).parseMethods(this.parser, compilationUnitDeclaration);
                            }
                        }
                        Scanner scanner2 = this.parser.scanner;
                        scanner2.lineEnds = iArr;
                        scanner2.linePtr = i13;
                    }
                }
            }
            CompilationUnitScope compilationUnitScope = compilationUnitDeclaration.scope;
            if (compilationUnitScope != null) {
                LookupEnvironment lookupEnvironment = this.lookupEnvironment;
                CompilationUnitDeclaration compilationUnitDeclaration3 = lookupEnvironment.unitBeingCompleted;
                lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration;
                try {
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
                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration3;
                } finally {
                    this.lookupEnvironment.unitBeingCompleted = compilationUnitDeclaration3;
                }
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

    @Override
    public CompilationUnitDeclaration resolve(org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, boolean z10, boolean z11, boolean z12) {
        return resolve(null, iCompilationUnit, null, z10, z11, z12);
    }

    @Override
    public CompilationUnitDeclaration resolve(CompilationUnitDeclaration compilationUnitDeclaration, org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit, boolean z10, boolean z11, boolean z12) {
        return resolve(compilationUnitDeclaration, iCompilationUnit, null, z10, z11, z12);
    }
}
