package org.eclipse.jdt.internal.core.builder;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class AbstractImageBuilder implements ICompilerRequestor, ICompilationUnitLocator {
    private CompilationGroup compilationGroup;
    protected boolean compiledAllAtOnce;
    protected Compiler compiler;
    protected Set<SourceFile> filesWithAnnotations;
    private boolean inCompiler;
    protected JavaBuilder javaBuilder;
    protected boolean keepStoringProblemMarkers;
    protected NameEnvironment nameEnvironment;
    protected State newState;
    protected BuildNotifier notifier;
    protected LinkedHashSet<SourceFile> problemSourceFiles;
    protected ClasspathMultiDirectory[] sourceLocations;
    protected WorkQueue workQueue;
    public static int MAX_AT_ONCE = Integer.getInteger(JavaModelManager.MAX_COMPILED_UNITS_AT_ONCE, 2000).intValue();
    public static final String[] JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES = {"message", "severity", "id", "charStart", "charEnd", "lineNumber", IJavaModelMarker.ARGUMENTS, IJavaModelMarker.CATEGORY_ID};
    public static final String[] JAVA_TASK_MARKER_ATTRIBUTE_NAMES = {"message", "priority", "id", "charStart", "charEnd", "lineNumber", "userEditable", "sourceId"};
    public static final Integer S_ERROR = 2;
    public static final Integer S_WARNING = 1;
    public static final Integer S_INFO = 0;
    public static final Integer P_HIGH = 2;
    public static final Integer P_NORMAL = 1;
    public static final Integer P_LOW = 0;

    public AbstractImageBuilder(JavaBuilder javaBuilder, boolean z10, State state, CompilationGroup compilationGroup) {
        this.filesWithAnnotations = null;
        this.javaBuilder = javaBuilder;
        this.compilationGroup = compilationGroup;
        NameEnvironment nameEnvironment = compilationGroup == CompilationGroup.TEST ? javaBuilder.testNameEnvironment : javaBuilder.nameEnvironment;
        this.nameEnvironment = nameEnvironment;
        this.sourceLocations = nameEnvironment.sourceLocations;
        this.notifier = javaBuilder.notifier;
        this.keepStoringProblemMarkers = true;
        if (z10) {
            this.newState = state == null ? new State(javaBuilder) : state;
            this.compiler = newCompiler();
            this.workQueue = new WorkQueue();
            this.problemSourceFiles = new LinkedHashSet<>(3);
            CompilationParticipant[] compilationParticipantArr = this.javaBuilder.participants;
            if (compilationParticipantArr != null) {
                int length = compilationParticipantArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (this.javaBuilder.participants[i10].isAnnotationProcessor()) {
                        this.filesWithAnnotations = new HashSet(1);
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008e, code lost:
    
        if (r18.newState.isDuplicateLocator(new java.lang.String(r0.outerMostEnclosingClassFile().fileName()), r2) != false) goto L40;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void acceptResult(CompilationResult compilationResult) {
        Set<SourceFile> set;
        ClassFile[] classFileArr;
        int i10;
        IType type;
        ICompilationUnit compilationUnit = compilationResult.getCompilationUnit();
        if (compilationUnit instanceof SourceFile) {
            SourceFile sourceFile = (SourceFile) compilationUnit;
            if (this.workQueue.isCompiled(sourceFile)) {
                return;
            }
            this.workQueue.finished(sourceFile);
            try {
                updateProblemsFor(sourceFile, compilationResult);
                updateTasksFor(sourceFile, compilationResult);
                if (compilationResult.hasInconsistentToplevelHierarchies) {
                    this.problemSourceFiles.add(sourceFile);
                }
                String typeLocator = sourceFile.typeLocator();
                ClassFile[] classFiles = compilationResult.getClassFiles();
                int length = classFiles.length;
                ArrayList arrayList = new ArrayList(length);
                int i11 = 0;
                ArrayList arrayList2 = null;
                IType iType = null;
                String str = null;
                while (i11 < length) {
                    ClassFile classFile = classFiles[i11];
                    char[][] compoundName = classFile.getCompoundName();
                    char[] cArr = compoundName[compoundName.length - 1];
                    boolean z10 = classFile.isNestedType;
                    if (z10) {
                        classFileArr = classFiles;
                        i10 = length;
                    } else {
                        classFileArr = classFiles;
                        i10 = length;
                        String str2 = new String(classFile.fileName());
                        if (this.newState.isDuplicateLocator(str2, typeLocator)) {
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(compoundName);
                            if (iType == null) {
                                try {
                                    str = sourceFile.initialTypeName;
                                    iType = this.javaBuilder.javaProject.findType(str.replace('/', '.'));
                                } catch (JavaModelException unused) {
                                }
                            }
                            if (str2.equals(str)) {
                                type = iType;
                            } else {
                                type = iType == null ? null : iType.getCompilationUnit().getType(str2.substring(str2.lastIndexOf(47) + 1));
                            }
                            createProblemFor(sourceFile.resource, type, Messages.bind(Messages.build_duplicateClassFile, new String(cArr)), "error");
                            i11++;
                            classFiles = classFileArr;
                            length = i10;
                        } else {
                            this.newState.recordLocatorForType(str2, typeLocator);
                            if (compilationResult.checkSecondaryTypes && !str2.equals(sourceFile.initialTypeName)) {
                                acceptSecondaryType(classFile);
                            }
                            try {
                                arrayList.add(writeClassFile(classFile, sourceFile, !z10));
                            } catch (CoreException e10) {
                                Util.log((Throwable) e10, "JavaBuilder handling CoreException");
                                if (e10.getStatus().getCode() == 275) {
                                    createProblemFor(sourceFile.resource, null, Messages.bind(Messages.build_classFileCollision, e10.getMessage()), "error");
                                } else {
                                    createProblemFor(sourceFile.resource, null, Messages.build_inconsistentClassFile, "error");
                                }
                            }
                            i11++;
                            classFiles = classFileArr;
                            length = i10;
                        }
                    }
                }
                if (compilationResult.hasAnnotations && (set = this.filesWithAnnotations) != null) {
                    set.add(sourceFile);
                }
                this.compiler.lookupEnvironment.releaseClassFiles(classFiles);
                finishedWith(typeLocator, compilationResult, sourceFile.getMainTypeName(), arrayList, arrayList2);
                this.notifier.compiled(sourceFile);
            } catch (CoreException e11) {
                throw internalException(e11);
            }
        }
    }

    public void acceptSecondaryType(ClassFile classFile) {
    }

    public void addAllSourceFiles(final LinkedHashSet<SourceFile> linkedHashSet) throws CoreException {
        int length = this.sourceLocations.length;
        for (int i10 = 0; i10 < length; i10++) {
            final ClasspathMultiDirectory classpathMultiDirectory = this.sourceLocations[i10];
            final char[][] cArr = classpathMultiDirectory.exclusionPatterns;
            final char[][] cArr2 = classpathMultiDirectory.inclusionPatterns;
            final boolean equals = classpathMultiDirectory.sourceFolder.equals(this.javaBuilder.currentProject);
            final int segmentCount = classpathMultiDirectory.sourceFolder.getFullPath().segmentCount();
            final IContainer iContainer = classpathMultiDirectory.binaryFolder;
            final boolean equals2 = classpathMultiDirectory.sourceFolder.equals(iContainer);
            classpathMultiDirectory.sourceFolder.accept(new IResourceProxyVisitor() {
                public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                    IPath iPath;
                    int type = iResourceProxy.getType();
                    if (type == 1) {
                        if (Util.isJavaLikeFileName(iResourceProxy.getName())) {
                            IFile requestResource = iResourceProxy.requestResource();
                            if (!(cArr == null && cArr2 == null) && Util.isExcluded(requestResource.getFullPath(), cArr2, cArr, false)) {
                                return false;
                            }
                            linkedHashSet.add(new SourceFile(requestResource, classpathMultiDirectory));
                        }
                        return false;
                    }
                    if (type == 2) {
                        if (equals) {
                            AbstractImageBuilder abstractImageBuilder = AbstractImageBuilder.this;
                            iPath = iResourceProxy.requestFullPath();
                            if (abstractImageBuilder.isExcludedFromProject(iPath)) {
                                return false;
                            }
                        } else {
                            iPath = null;
                        }
                        if (cArr != null) {
                            if (iPath == null) {
                                iPath = iResourceProxy.requestFullPath();
                            }
                            if (Util.isExcluded(iPath, cArr2, cArr, true)) {
                                return cArr2 != null;
                            }
                        }
                        if (!equals2) {
                            if (iPath == null) {
                                iPath = iResourceProxy.requestFullPath();
                            }
                            String lastSegment = iPath.lastSegment();
                            if (lastSegment.length() > 0 && JavaConventions.validatePackageName(lastSegment, AbstractImageBuilder.this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), AbstractImageBuilder.this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() != 4) {
                                AbstractImageBuilder.this.createFolder(iPath.removeFirstSegments(segmentCount), iContainer);
                            }
                        }
                    }
                    return true;
                }
            }, 0);
            this.notifier.checkCancel();
        }
    }

    public void cleanUp() {
        this.nameEnvironment.cleanup();
        this.javaBuilder = null;
        this.nameEnvironment = null;
        this.sourceLocations = null;
        this.notifier = null;
        this.compiler = null;
        this.workQueue = null;
        this.problemSourceFiles = null;
    }

    public void compile(SourceFile[] sourceFileArr) {
        Set<SourceFile> set = this.filesWithAnnotations;
        if (set != null && set.size() > 0) {
            this.filesWithAnnotations.clear();
        }
        CompilationParticipantResult[] notifyParticipants = this.javaBuilder.participants == null ? null : notifyParticipants(sourceFileArr);
        if (notifyParticipants != null && notifyParticipants.length > sourceFileArr.length) {
            SourceFile[] sourceFileArr2 = new SourceFile[notifyParticipants.length];
            int length = notifyParticipants.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                } else {
                    sourceFileArr2[length] = notifyParticipants[length].sourceFile;
                }
            }
            sourceFileArr = sourceFileArr2;
        }
        int length2 = sourceFileArr.length;
        int i10 = MAX_AT_ONCE;
        boolean z10 = true;
        boolean z11 = i10 == 0 || length2 <= i10;
        this.compiledAllAtOnce = z11;
        if (z11) {
            if (JavaBuilder.DEBUG) {
                for (SourceFile sourceFile : sourceFileArr) {
                    System.out.println("About to compile " + sourceFile.typeLocator());
                }
            }
            compile(sourceFileArr, null, true);
        } else {
            SourceFile[] sourceFileArr3 = new SourceFile[length2];
            System.arraycopy(sourceFileArr, 0, sourceFileArr3, 0, length2);
            int i11 = MAX_AT_ONCE;
            if (length2 < i11) {
                i11 = length2;
            }
            SourceFile[] sourceFileArr4 = new SourceFile[i11];
            int i12 = 0;
            while (i12 < length2) {
                int i13 = 0;
                while (i12 < length2 && i13 < i11) {
                    SourceFile sourceFile2 = sourceFileArr3[i12];
                    if (sourceFile2 != null && (z10 || this.workQueue.isWaiting(sourceFile2))) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("About to compile #" + i12 + " : " + sourceFile2.typeLocator());
                        }
                        sourceFileArr4[i13] = sourceFile2;
                        i13++;
                    }
                    sourceFileArr3[i12] = null;
                    i12++;
                }
                if (i13 < i11) {
                    SourceFile[] sourceFileArr5 = new SourceFile[i13];
                    System.arraycopy(sourceFileArr4, 0, sourceFileArr5, 0, i13);
                    sourceFileArr4 = sourceFileArr5;
                }
                if (!z10) {
                    for (int i14 = i12; i14 < length2; i14++) {
                        SourceFile sourceFile3 = sourceFileArr3[i14];
                        if (sourceFile3 != null && this.workQueue.isCompiled(sourceFile3)) {
                            sourceFileArr3[i14] = null;
                        }
                    }
                }
                compile(sourceFileArr4, sourceFileArr3, z10);
                z10 = false;
            }
        }
        if (notifyParticipants == null) {
            return;
        }
        int length3 = notifyParticipants.length;
        while (true) {
            length3--;
            if (length3 < 0) {
                processAnnotations(notifyParticipants);
                return;
            } else {
                CompilationParticipantResult compilationParticipantResult = notifyParticipants[length3];
                if (compilationParticipantResult != null) {
                    recordParticipantResult(compilationParticipantResult);
                }
            }
        }
    }

    public void copyResource(IResource iResource, IResource iResource2) throws CoreException {
        try {
            iResource.copy(iResource2.getFullPath(), 1025, (IProgressMonitor) null);
            Util.setReadOnly(iResource2, false);
        } catch (CoreException e10) {
            iResource.refreshLocal(0, (IProgressMonitor) null);
            if (iResource.exists()) {
                throw e10;
            }
        }
    }

    public IContainer createFolder(IPath iPath, IContainer iContainer) throws CoreException {
        if (iPath.isEmpty()) {
            return iContainer;
        }
        IFolder folder = iContainer.getFolder(iPath);
        if (!folder.exists()) {
            createFolder(iPath.removeLastSegments(1), iContainer);
            folder.create(1025, true, (IProgressMonitor) null);
        }
        return folder;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0047 A[Catch: CoreException -> 0x0019, TryCatch #1 {CoreException -> 0x0019, blocks: (B:2:0x0000, B:18:0x0014, B:12:0x004d, B:15:0x0047, B:16:0x0040, B:21:0x001c, B:23:0x0028, B:26:0x0039, B:27:0x003a), top: B:1:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040 A[Catch: CoreException -> 0x0019, TryCatch #1 {CoreException -> 0x0019, blocks: (B:2:0x0000, B:18:0x0014, B:12:0x004d, B:15:0x0047, B:16:0x0040, B:21:0x001c, B:23:0x0028, B:26:0x0039, B:27:0x003a), top: B:1:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003e  */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createProblemFor(IResource iResource, IMember iMember, String str, String str2) {
        ISourceRange nameRange;
        try {
            IMarker createMarker = iResource.createMarker(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER);
            int i10 = 1;
            int i11 = str2.equals("warning") ? 1 : 2;
            if (iMember != null) {
                try {
                    nameRange = iMember.getNameRange();
                } catch (JavaModelException e10) {
                    if (e10.getJavaModelStatus().getCode() != 969) {
                        throw e10;
                    }
                    if (!CharOperation.equals(iMember.getElementName().toCharArray(), TypeConstants.PACKAGE_INFO_NAME)) {
                        throw e10;
                    }
                }
                int offset = nameRange != null ? 0 : nameRange.getOffset();
                if (nameRange == null) {
                    i10 = offset + nameRange.getLength();
                }
                createMarker.setAttributes(new String[]{"message", "severity", "charStart", "charEnd", "sourceId"}, new Object[]{str, Integer.valueOf(i11), Integer.valueOf(offset), Integer.valueOf(i10), JavaBuilder.SOURCE_ID});
            }
            nameRange = null;
            if (nameRange != null) {
            }
            if (nameRange == null) {
            }
            createMarker.setAttributes(new String[]{"message", "severity", "charStart", "charEnd", "sourceId"}, new Object[]{str, Integer.valueOf(i11), Integer.valueOf(offset), Integer.valueOf(i10), JavaBuilder.SOURCE_ID});
        } catch (CoreException e11) {
            throw internalException(e11);
        }
    }

    public void deleteGeneratedFiles(IFile[] iFileArr) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SourceFile findSourceFile(IFile iFile, boolean z10) {
        ClasspathMultiDirectory classpathMultiDirectory;
        char[][] cArr;
        if (z10 && !iFile.exists()) {
            return null;
        }
        if (this.sourceLocations.length > 0) {
            IPath fullPath = iFile.getFullPath();
            int length = this.sourceLocations.length;
            classpathMultiDirectory = null;
            for (int i10 = 0; i10 < length && (!this.sourceLocations[i10].sourceFolder.getFullPath().isPrefixOf(fullPath) || (((cArr = (classpathMultiDirectory = this.sourceLocations[i10]).exclusionPatterns) != null || classpathMultiDirectory.inclusionPatterns != null) && Util.isExcluded(iFile, classpathMultiDirectory.inclusionPatterns, cArr))); i10++) {
            }
        } else {
            classpathMultiDirectory = null;
        }
        return new SourceFile(iFile, classpathMultiDirectory);
    }

    public void finishedWith(String str, CompilationResult compilationResult, char[] cArr, ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList2 == null) {
            this.newState.record(str, compilationResult.qualifiedReferences, compilationResult.simpleNameReferences, compilationResult.rootReferences, cArr, arrayList);
            return;
        }
        char[][] cArr2 = compilationResult.simpleNameReferences;
        int size = arrayList2.size();
        char[][] cArr3 = cArr2;
        for (int i10 = 0; i10 < size; i10++) {
            char[] cArr4 = ((char[][]) arrayList2.get(i10))[r3.length - 1];
            int length = cArr3.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    char[][] cArr5 = new char[length + 1];
                    System.arraycopy(cArr3, 0, cArr5, 0, length);
                    cArr5[length] = cArr4;
                    cArr3 = cArr5;
                    break;
                }
                if (CharOperation.equals(cArr3[i11], cArr4)) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        this.newState.record(str, compilationResult.qualifiedReferences, cArr3, compilationResult.rootReferences, cArr, arrayList);
    }

    @Override
    public ICompilationUnit fromIFile(IFile iFile) {
        return findSourceFile(iFile, true);
    }

    public void initializeAnnotationProcessorManager(Compiler compiler) {
        AbstractAnnotationProcessorManager createAnnotationProcessorManager = JavaModelManager.getJavaModelManager().createAnnotationProcessorManager();
        if (createAnnotationProcessorManager != null) {
            createAnnotationProcessorManager.configureFromPlatform(compiler, this, this.javaBuilder.javaProject, this.compilationGroup == CompilationGroup.TEST);
            createAnnotationProcessorManager.setErr(new PrintWriter(System.err));
            createAnnotationProcessorManager.setOut(new PrintWriter(System.out));
        }
        compiler.annotationProcessorManager = createAnnotationProcessorManager;
    }

    public RuntimeException internalException(CoreException coreException) {
        ImageBuilderInternalException imageBuilderInternalException = new ImageBuilderInternalException(coreException);
        return this.inCompiler ? new AbortCompilation(true, (RuntimeException) imageBuilderInternalException) : imageBuilderInternalException;
    }

    public boolean isExcludedFromProject(IPath iPath) throws JavaModelException {
        if (iPath.segmentCount() > 2) {
            return false;
        }
        int length = this.sourceLocations.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (iPath.equals(this.sourceLocations[i10].binaryFolder.getFullPath()) || iPath.equals(this.sourceLocations[i10].sourceFolder.getFullPath())) {
                return true;
            }
        }
        return iPath.equals(this.javaBuilder.javaProject.getOutputLocation());
    }

    public Compiler newCompiler() {
        String str;
        String str2;
        String str3;
        Map<String, String> options = this.javaBuilder.javaProject.getOptions(true);
        String str4 = options.get("org.eclipse.jdt.core.compiler.problem.invalidJavadoc");
        if ((str4 == null || str4.equals("ignore")) && (((str = options.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTags")) == null || str.equals("ignore")) && (((str2 = options.get("org.eclipse.jdt.core.compiler.problem.missingJavadocComments")) == null || str2.equals("ignore")) && ((str3 = options.get("org.eclipse.jdt.core.compiler.problem.unusedImport")) == null || str3.equals("ignore"))))) {
            options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "disabled");
        }
        CompilerOptions compilerOptions = new CompilerOptions(options);
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        Compiler compiler = new Compiler(this.nameEnvironment, DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, this, ProblemFactory.getProblemFactory(Locale.getDefault()));
        CompilerOptions compilerOptions2 = compiler.options;
        String property = System.getProperty("jdt.compiler.useSingleThread");
        compiler.useSingleThread = property != null && property.equals("true");
        compilerOptions2.produceReferenceInfo = true;
        if (compilerOptions2.complianceLevel >= ClassFileConstants.JDK1_6 && compilerOptions2.processAnnotations) {
            initializeAnnotationProcessorManager(compiler);
        }
        return compiler;
    }

    public CompilationParticipantResult[] notifyParticipants(SourceFile[] sourceFileArr) {
        int length = sourceFileArr.length;
        CompilationParticipantResult[] compilationParticipantResultArr = new CompilationParticipantResult[length];
        int length2 = sourceFileArr.length;
        while (true) {
            length2--;
            boolean z10 = true;
            if (length2 < 0) {
                break;
            }
            SourceFile sourceFile = sourceFileArr[length2];
            if (this.compilationGroup != CompilationGroup.TEST) {
                z10 = false;
            }
            compilationParticipantResultArr[length2] = new CompilationParticipantResult(sourceFile, z10);
        }
        int length3 = this.javaBuilder.participants.length;
        for (int i10 = 0; i10 < length3; i10++) {
            this.javaBuilder.participants[i10].buildStarting(compilationParticipantResultArr, this instanceof BatchImageBuilder);
        }
        CompilationParticipantResult[] compilationParticipantResultArr2 = null;
        int i11 = length;
        SimpleSet simpleSet = null;
        int i12 = 0;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            CompilationParticipantResult compilationParticipantResult = compilationParticipantResultArr[i11];
            if (compilationParticipantResult != null) {
                IFile[] iFileArr = compilationParticipantResult.deletedFiles;
                if (iFileArr != null) {
                    deleteGeneratedFiles(iFileArr);
                }
                IFile[] iFileArr2 = compilationParticipantResult.addedFiles;
                if (iFileArr2 != null) {
                    int length4 = iFileArr2.length;
                    while (true) {
                        length4--;
                        if (length4 < 0) {
                            break;
                        }
                        SourceFile findSourceFile = findSourceFile(iFileArr2[length4], true);
                        if (findSourceFile != null) {
                            if (simpleSet == null) {
                                SimpleSet simpleSet2 = new SimpleSet(sourceFileArr.length + 3);
                                int length5 = sourceFileArr.length;
                                while (true) {
                                    length5--;
                                    if (length5 < 0) {
                                        break;
                                    }
                                    simpleSet2.add(sourceFileArr[length5]);
                                }
                                simpleSet = simpleSet2;
                            }
                            if (simpleSet.addIfNotIncluded(findSourceFile) == findSourceFile) {
                                CompilationParticipantResult compilationParticipantResult2 = new CompilationParticipantResult(findSourceFile, this.compilationGroup == CompilationGroup.TEST);
                                if (compilationParticipantResultArr2 == null) {
                                    compilationParticipantResultArr2 = new CompilationParticipantResult[iFileArr2.length];
                                } else {
                                    int length6 = compilationParticipantResultArr2.length;
                                    if (i12 == length6) {
                                        CompilationParticipantResult[] compilationParticipantResultArr3 = new CompilationParticipantResult[iFileArr2.length + length6];
                                        System.arraycopy(compilationParticipantResultArr2, 0, compilationParticipantResultArr3, 0, length6);
                                        compilationParticipantResultArr2 = compilationParticipantResultArr3;
                                    }
                                }
                                compilationParticipantResultArr2[i12] = compilationParticipantResult2;
                                this.workQueue.add(findSourceFile);
                                i12++;
                            }
                        }
                    }
                }
            }
        }
        if (i12 <= 0) {
            return compilationParticipantResultArr;
        }
        CompilationParticipantResult[] compilationParticipantResultArr4 = new CompilationParticipantResult[length + i12];
        System.arraycopy(compilationParticipantResultArr, 0, compilationParticipantResultArr4, 0, length);
        System.arraycopy(compilationParticipantResultArr2, 0, compilationParticipantResultArr4, length, i12);
        return compilationParticipantResultArr4;
    }

    public abstract void processAnnotationResults(CompilationParticipantResult[] compilationParticipantResultArr);

    public void processAnnotations(CompilationParticipantResult[] compilationParticipantResultArr) {
        int length = this.javaBuilder.participants.length;
        boolean z10 = false;
        for (int i10 = 0; !z10 && i10 < length; i10++) {
            z10 = this.javaBuilder.participants[i10].isAnnotationProcessor();
        }
        if (z10) {
            Set<SourceFile> set = this.filesWithAnnotations;
            boolean z11 = set != null && set.size() > 0;
            int length2 = compilationParticipantResultArr.length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                CompilationParticipantResult compilationParticipantResult = compilationParticipantResultArr[length2];
                compilationParticipantResult.reset(z11 && this.filesWithAnnotations.contains(compilationParticipantResult.sourceFile));
            }
            int length3 = this.javaBuilder.participants.length;
            for (int i11 = 0; i11 < length3; i11++) {
                if (this.javaBuilder.participants[i11].isAnnotationProcessor()) {
                    this.javaBuilder.participants[i11].processAnnotations(compilationParticipantResultArr);
                }
            }
            processAnnotationResults(compilationParticipantResultArr);
        }
    }

    public void recordParticipantResult(CompilationParticipantResult compilationParticipantResult) {
        ReferenceCollection referenceCollection;
        CategorizedProblem[] categorizedProblemArr = compilationParticipantResult.problems;
        if (categorizedProblemArr != null && categorizedProblemArr.length > 0) {
            this.notifier.updateProblemCounts(categorizedProblemArr);
            try {
                storeProblemsFor(compilationParticipantResult.sourceFile, categorizedProblemArr);
            } catch (CoreException e10) {
                Util.log((Throwable) e10, "JavaBuilder logging CompilationParticipant's CoreException to help debugging");
            }
        }
        String[] strArr = compilationParticipantResult.dependencies;
        if (strArr == null || (referenceCollection = (ReferenceCollection) this.newState.references.get(compilationParticipantResult.sourceFile.typeLocator())) == null) {
            return;
        }
        referenceCollection.addDependencies(strArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void storeProblemsFor(SourceFile sourceFile, CategorizedProblem[] categorizedProblemArr) throws CoreException {
        int i10;
        HashSet<String> hashSet;
        char c10;
        int length;
        int i11;
        String[] extraMarkerAttributeNames;
        int length2;
        char c11;
        IResource resource;
        SourceFile sourceFile2 = sourceFile;
        CategorizedProblem[] categorizedProblemArr2 = categorizedProblemArr;
        if (sourceFile2 == null || categorizedProblemArr2 == null || categorizedProblemArr2.length == 0 || !this.keepStoringProblemMarkers) {
            return;
        }
        HashSet<String> managedMarkerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
        int length3 = categorizedProblemArr2.length;
        char c12 = 0;
        int i12 = 0;
        while (i12 < length3) {
            CategorizedProblem categorizedProblem = categorizedProblemArr2[i12];
            int id2 = categorizedProblem.getID();
            IResource iResource = sourceFile2.resource;
            String bind = id2 == 16777540 ? Messages.bind(Messages.build_incompleteClassPath, categorizedProblem.getArguments()[c12]) : id2 == 8389927 ? Messages.bind(Messages.build_errorOnModuleDirective, categorizedProblem.getMessage()) : null;
            if (bind != null) {
                if (JavaBuilder.DEBUG) {
                    System.out.println(bind);
                }
                boolean equals = "error".equals(this.javaBuilder.javaProject.getOption(JavaCore.CORE_INCOMPLETE_CLASSPATH, true));
                if (equals && JavaCore.ABORT.equals(this.javaBuilder.javaProject.getOption(JavaCore.CORE_JAVA_BUILD_INVALID_CLASSPATH, true))) {
                    JavaBuilder.removeProblemsAndTasksFor(this.javaBuilder.currentProject);
                    this.keepStoringProblemMarkers = false;
                }
                this.javaBuilder.currentProject.createMarker(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", IJavaModelMarker.CATEGORY_ID, "sourceId"}, new Object[]{bind, Integer.valueOf(equals ? 2 : 1), 10, JavaBuilder.SOURCE_ID});
            }
            String markerType = categorizedProblem.getMarkerType();
            if (IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER.equals(markerType)) {
                i10 = 0;
            } else {
                boolean contains = managedMarkerTypes.contains(markerType);
                if (contains) {
                    i10 = contains ? 1 : 0;
                } else {
                    hashSet = managedMarkerTypes;
                    c10 = 0;
                    break;
                    i12++;
                    sourceFile2 = sourceFile;
                    categorizedProblemArr2 = categorizedProblemArr;
                    c12 = c10;
                    managedMarkerTypes = hashSet;
                }
            }
            if (id2 == 536871825 && !CharOperation.equals(sourceFile.getMainTypeName(), TypeConstants.PACKAGE_INFO_NAME)) {
                char[] fileName = sourceFile.getFileName();
                int lastIndexOf = CharOperation.lastIndexOf('/', fileName);
                if (lastIndexOf == -1) {
                    lastIndexOf = CharOperation.lastIndexOf(File.separatorChar, fileName);
                }
                PackageFragment packageFragment = lastIndexOf != -1 ? (PackageFragment) Util.getPackageFragment(sourceFile.getFileName(), lastIndexOf, -1) : null;
                if (packageFragment != null) {
                    try {
                        IMarker[] findMarkers = packageFragment.resource().findMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 0);
                        int length4 = findMarkers.length;
                        int i13 = 0;
                        while (i13 < length4) {
                            hashSet = managedMarkerTypes;
                            try {
                                if (((Integer) findMarkers[i13].getAttribute("id")).intValue() == 536871825) {
                                    c10 = 0;
                                    break;
                                } else {
                                    i13++;
                                    managedMarkerTypes = hashSet;
                                }
                            } catch (CoreException e10) {
                                e = e10;
                                if (JavaModelManager.VERBOSE) {
                                    e.printStackTrace();
                                }
                                resource = packageFragment.resource();
                                if (resource != null) {
                                }
                                IMarker createMarker = iResource.createMarker(markerType);
                                String[] strArr = JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES;
                                length = strArr.length;
                                i11 = i10 ^ 1;
                                extraMarkerAttributeNames = categorizedProblem.getExtraMarkerAttributeNames();
                                if (extraMarkerAttributeNames == null) {
                                }
                                if (i11 <= 0) {
                                }
                                int i14 = length + i11;
                                String[] strArr2 = new String[i14 + length2];
                                c11 = 0;
                                System.arraycopy(strArr, 0, strArr2, 0, length);
                                if (i11 > 0) {
                                }
                                System.arraycopy(extraMarkerAttributeNames, 0, strArr2, i14, length2);
                                strArr = strArr2;
                                Object[] objArr = new Object[strArr.length];
                                objArr[c11] = categorizedProblem.getMessage();
                                objArr[1] = categorizedProblem.isError() ? S_ERROR : categorizedProblem.isWarning() ? S_WARNING : S_INFO;
                                objArr[2] = Integer.valueOf(id2);
                                objArr[3] = Integer.valueOf(categorizedProblem.getSourceStart());
                                objArr[4] = Integer.valueOf(categorizedProblem.getSourceEnd() + 1);
                                objArr[5] = Integer.valueOf(categorizedProblem.getSourceLineNumber());
                                objArr[6] = Util.getProblemArgumentsForMarker(categorizedProblem.getArguments());
                                objArr[7] = Integer.valueOf(categorizedProblem.getCategoryID());
                                int i15 = 8;
                                if (i11 > 0) {
                                }
                                if (length2 > 0) {
                                }
                                createMarker.setAttributes(strArr, objArr);
                                if (!this.keepStoringProblemMarkers) {
                                }
                            }
                        }
                        hashSet = managedMarkerTypes;
                    } catch (CoreException e11) {
                        e = e11;
                        hashSet = managedMarkerTypes;
                    }
                    resource = packageFragment.resource();
                    if (resource != null) {
                        iResource = resource;
                    }
                    IMarker createMarker2 = iResource.createMarker(markerType);
                    String[] strArr3 = JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES;
                    length = strArr3.length;
                    i11 = i10 ^ 1;
                    extraMarkerAttributeNames = categorizedProblem.getExtraMarkerAttributeNames();
                    length2 = extraMarkerAttributeNames == null ? 0 : extraMarkerAttributeNames.length;
                    if (i11 <= 0 || length2 > 0) {
                        int i142 = length + i11;
                        String[] strArr22 = new String[i142 + length2];
                        c11 = 0;
                        System.arraycopy(strArr3, 0, strArr22, 0, length);
                        if (i11 > 0) {
                            strArr22[length] = "sourceId";
                        }
                        System.arraycopy(extraMarkerAttributeNames, 0, strArr22, i142, length2);
                        strArr3 = strArr22;
                    } else {
                        c11 = 0;
                    }
                    Object[] objArr2 = new Object[strArr3.length];
                    objArr2[c11] = categorizedProblem.getMessage();
                    objArr2[1] = categorizedProblem.isError() ? S_ERROR : categorizedProblem.isWarning() ? S_WARNING : S_INFO;
                    objArr2[2] = Integer.valueOf(id2);
                    objArr2[3] = Integer.valueOf(categorizedProblem.getSourceStart());
                    objArr2[4] = Integer.valueOf(categorizedProblem.getSourceEnd() + 1);
                    objArr2[5] = Integer.valueOf(categorizedProblem.getSourceLineNumber());
                    objArr2[6] = Util.getProblemArgumentsForMarker(categorizedProblem.getArguments());
                    objArr2[7] = Integer.valueOf(categorizedProblem.getCategoryID());
                    int i152 = 8;
                    if (i11 > 0) {
                        objArr2[8] = JavaBuilder.SOURCE_ID;
                        i152 = 9;
                    }
                    if (length2 > 0) {
                        Object[] extraMarkerAttributeValues = categorizedProblem.getExtraMarkerAttributeValues();
                        c10 = 0;
                        System.arraycopy(extraMarkerAttributeValues, 0, objArr2, i152, length2);
                    } else {
                        c10 = 0;
                    }
                    createMarker2.setAttributes(strArr3, objArr2);
                    if (!this.keepStoringProblemMarkers) {
                        return;
                    }
                    i12++;
                    sourceFile2 = sourceFile;
                    categorizedProblemArr2 = categorizedProblemArr;
                    c12 = c10;
                    managedMarkerTypes = hashSet;
                }
            }
            hashSet = managedMarkerTypes;
            IMarker createMarker22 = iResource.createMarker(markerType);
            String[] strArr32 = JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES;
            length = strArr32.length;
            i11 = i10 ^ 1;
            extraMarkerAttributeNames = categorizedProblem.getExtraMarkerAttributeNames();
            if (extraMarkerAttributeNames == null) {
            }
            if (i11 <= 0) {
            }
            int i1422 = length + i11;
            String[] strArr222 = new String[i1422 + length2];
            c11 = 0;
            System.arraycopy(strArr32, 0, strArr222, 0, length);
            if (i11 > 0) {
            }
            System.arraycopy(extraMarkerAttributeNames, 0, strArr222, i1422, length2);
            strArr32 = strArr222;
            Object[] objArr22 = new Object[strArr32.length];
            objArr22[c11] = categorizedProblem.getMessage();
            objArr22[1] = categorizedProblem.isError() ? S_ERROR : categorizedProblem.isWarning() ? S_WARNING : S_INFO;
            objArr22[2] = Integer.valueOf(id2);
            objArr22[3] = Integer.valueOf(categorizedProblem.getSourceStart());
            objArr22[4] = Integer.valueOf(categorizedProblem.getSourceEnd() + 1);
            objArr22[5] = Integer.valueOf(categorizedProblem.getSourceLineNumber());
            objArr22[6] = Util.getProblemArgumentsForMarker(categorizedProblem.getArguments());
            objArr22[7] = Integer.valueOf(categorizedProblem.getCategoryID());
            int i1522 = 8;
            if (i11 > 0) {
            }
            if (length2 > 0) {
            }
            createMarker22.setAttributes(strArr32, objArr22);
            if (!this.keepStoringProblemMarkers) {
            }
        }
    }

    public void storeTasksFor(SourceFile sourceFile, CategorizedProblem[] categorizedProblemArr) throws CoreException {
        if (sourceFile == null || categorizedProblemArr == null || categorizedProblemArr.length == 0) {
            return;
        }
        IFile iFile = sourceFile.resource;
        for (CategorizedProblem categorizedProblem : categorizedProblemArr) {
            if (categorizedProblem.getID() == 536871362) {
                IMarker createMarker = iFile.createMarker(IJavaModelMarker.TASK_MARKER);
                Integer num = P_NORMAL;
                String str = categorizedProblem.getArguments()[2];
                if (JavaCore.COMPILER_TASK_PRIORITY_HIGH.equals(str)) {
                    num = P_HIGH;
                } else if (JavaCore.COMPILER_TASK_PRIORITY_LOW.equals(str)) {
                    num = P_LOW;
                }
                String[] strArr = JAVA_TASK_MARKER_ATTRIBUTE_NAMES;
                int length = strArr.length;
                String[] extraMarkerAttributeNames = categorizedProblem.getExtraMarkerAttributeNames();
                int length2 = extraMarkerAttributeNames == null ? 0 : extraMarkerAttributeNames.length;
                if (length2 > 0) {
                    String[] strArr2 = new String[length + length2];
                    System.arraycopy(strArr, 0, strArr2, 0, length);
                    System.arraycopy(extraMarkerAttributeNames, 0, strArr2, length, length2);
                    strArr = strArr2;
                }
                Object[] objArr = new Object[strArr.length];
                objArr[0] = categorizedProblem.getMessage();
                objArr[1] = num;
                objArr[2] = Integer.valueOf(categorizedProblem.getID());
                objArr[3] = Integer.valueOf(categorizedProblem.getSourceStart());
                objArr[4] = Integer.valueOf(categorizedProblem.getSourceEnd() + 1);
                objArr[5] = Integer.valueOf(categorizedProblem.getSourceLineNumber());
                objArr[6] = Boolean.FALSE;
                objArr[7] = JavaBuilder.SOURCE_ID;
                if (length2 > 0) {
                    System.arraycopy(categorizedProblem.getExtraMarkerAttributeValues(), 0, objArr, 8, length2);
                }
                createMarker.setAttributes(strArr, objArr);
            }
        }
    }

    public void updateProblemsFor(SourceFile sourceFile, CompilationResult compilationResult) throws CoreException {
        CategorizedProblem[] problems = compilationResult.getProblems();
        if (problems == null || problems.length == 0) {
            return;
        }
        this.notifier.updateProblemCounts(problems);
        storeProblemsFor(sourceFile, problems);
    }

    public void updateTasksFor(SourceFile sourceFile, CompilationResult compilationResult) throws CoreException {
        CategorizedProblem[] tasks = compilationResult.getTasks();
        if (tasks == null || tasks.length == 0) {
            return;
        }
        storeTasksFor(sourceFile, tasks);
    }

    public char[] writeClassFile(ClassFile classFile, SourceFile sourceFile, boolean z10) throws CoreException {
        IPath iPath;
        String str = new String(classFile.fileName());
        IPath path = new Path(str);
        IContainer iContainer = sourceFile.sourceLocation.binaryFolder;
        if (path.segmentCount() > 1) {
            iContainer = createFolder(path.removeLastSegments(1), iContainer);
            iPath = new Path(path.lastSegment());
        } else {
            iPath = path;
        }
        writeClassFileContents(classFile, iContainer.getFile(iPath.addFileExtension("class")), str, z10, sourceFile);
        return iPath.lastSegment().toCharArray();
    }

    public void writeClassFileContents(ClassFile classFile, IFile iFile, String str, boolean z10, SourceFile sourceFile) throws CoreException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(classFile.getBytes());
        if (!iFile.exists()) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Writing new class file " + iFile.getName());
            }
            iFile.create(byteArrayInputStream, 1025, (IProgressMonitor) null);
            return;
        }
        if (JavaBuilder.DEBUG) {
            System.out.println("Writing changed class file " + iFile.getName());
        }
        if (!iFile.isDerived()) {
            iFile.setDerived(true, (IProgressMonitor) null);
        }
        iFile.setContents(byteArrayInputStream, true, false, (IProgressMonitor) null);
    }

    public void compile(SourceFile[] sourceFileArr, SourceFile[] sourceFileArr2, boolean z10) {
        String sb2;
        SourceFile[] sourceFileArr3;
        if (sourceFileArr.length == 0) {
            return;
        }
        this.notifier.aboutToCompile(sourceFileArr[0]);
        if (!this.problemSourceFiles.isEmpty()) {
            int size = this.problemSourceFiles.size();
            int length = sourceFileArr2 == null ? 0 : sourceFileArr2.length;
            if (length == 0) {
                sourceFileArr3 = new SourceFile[size];
            } else {
                sourceFileArr3 = new SourceFile[length + size];
                System.arraycopy(sourceFileArr2, 0, sourceFileArr3, 0, length);
            }
            Iterator<SourceFile> it = this.problemSourceFiles.iterator();
            for (int i10 = 0; i10 < size; i10++) {
                sourceFileArr3[length + i10] = it.next();
            }
            sourceFileArr2 = sourceFileArr3;
        }
        String[] strArr = new String[sourceFileArr.length];
        int length2 = sourceFileArr.length;
        for (int i11 = 0; i11 < length2; i11++) {
            char[] moduleName = sourceFileArr[i11].getModuleName();
            if (moduleName == null) {
                sb2 = sourceFileArr[i11].initialTypeName;
            } else {
                StringBuilder sb3 = new StringBuilder(60);
                sb3.append(moduleName);
                sb3.append(':');
                sb3.append(sourceFileArr[i11].initialTypeName);
                sb2 = sb3.toString();
            }
            strArr[i11] = sb2;
        }
        this.nameEnvironment.setNames(strArr, sourceFileArr2);
        this.notifier.checkCancel();
        try {
            this.inCompiler = true;
            this.compiler.compile(sourceFileArr);
        } catch (AbortCompilation unused) {
        } catch (Throwable th2) {
            this.inCompiler = false;
            throw th2;
        }
        this.inCompiler = false;
        this.notifier.checkCancel();
    }
}
