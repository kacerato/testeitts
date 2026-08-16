package org.eclipse.jdt.internal.core.builder;

import java.io.ByteArrayInputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceStatus;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class IncrementalImageBuilder extends AbstractImageBuilder {
    public static int MaxCompileLoop = 5;
    protected boolean hasStructuralChanges;
    protected boolean makeOutputFolderConsistent;
    protected LinkedHashSet<SourceFile> previousSourceFiles;
    protected Set<String> qualifiedStrings;
    protected Set<String> rootStrings;
    protected SimpleLookupTable secondaryTypesToRemove;
    protected Set<String> simpleStrings;
    protected LinkedHashSet<SourceFile> sourceFiles;
    private IncrementalImageBuilder testImageBuilder;

    public IncrementalImageBuilder(JavaBuilder javaBuilder, State state, CompilationGroup compilationGroup) {
        super(javaBuilder, true, state, compilationGroup);
        this.nameEnvironment.isIncrementalBuild = true;
        this.makeOutputFolderConsistent = "enabled".equals(javaBuilder.javaProject.getOption(JavaCore.CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER, true));
        if (compilationGroup == CompilationGroup.MAIN) {
            IncrementalImageBuilder incrementalImageBuilder = new IncrementalImageBuilder(javaBuilder, this.newState, CompilationGroup.TEST);
            if (incrementalImageBuilder.sourceLocations.length > 0) {
                this.testImageBuilder = incrementalImageBuilder;
                incrementalImageBuilder.resetCollections();
            }
        }
    }

    private boolean incrementalBuildLoop() throws CoreException {
        float f10 = 0.4f;
        int i10 = 0;
        while (this.sourceFiles.size() > 0) {
            i10++;
            if (i10 > MaxCompileLoop) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("ABORTING incremental build... exceeded loop count");
                }
                return false;
            }
            this.notifier.checkCancel();
            int size = this.sourceFiles.size();
            SourceFile[] sourceFileArr = new SourceFile[size];
            this.sourceFiles.toArray(sourceFileArr);
            resetCollections();
            this.workQueue.addAll(sourceFileArr);
            this.notifier.setProgressPerCompilationUnit(f10 / size);
            f10 /= 2.0f;
            compile(sourceFileArr);
            removeSecondaryTypes();
            addAffectedSourceFiles();
        }
        return true;
    }

    public void addAffectedSourceFiles() {
        if (this.qualifiedStrings.size() == 0 && this.simpleStrings.size() == 0) {
            return;
        }
        IncrementalImageBuilder incrementalImageBuilder = this.testImageBuilder;
        if (incrementalImageBuilder != null) {
            incrementalImageBuilder.addAffectedSourceFiles(this.qualifiedStrings, this.simpleStrings, this.rootStrings, null);
        }
        addAffectedSourceFiles(this.qualifiedStrings, this.simpleStrings, this.rootStrings, null);
    }

    public void addDependentsOf(IPath iPath, boolean z10) {
        addDependentsOf(iPath, z10, this.qualifiedStrings, this.simpleStrings, this.rootStrings);
    }

    public boolean build(SimpleLookupTable simpleLookupTable) {
        if (this.sourceLocations.length == 0) {
            IncrementalImageBuilder incrementalImageBuilder = this.testImageBuilder;
            if (incrementalImageBuilder != null) {
                return incrementalImageBuilder.build(simpleLookupTable);
            }
            return true;
        }
        if (JavaBuilder.DEBUG) {
            System.out.println("INCREMENTAL build");
        }
        try {
            try {
                resetCollections();
                this.notifier.subTask(Messages.build_analyzingDeltas);
                if (this.javaBuilder.hasBuildpathErrors()) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("COMPILING all source files since the buildpath has errors ");
                    }
                    this.javaBuilder.currentProject.deleteMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 0);
                    addAllSourceFiles(this.sourceFiles);
                    this.notifier.updateProgressDelta(0.25f);
                } else {
                    IResourceDelta iResourceDelta = (IResourceDelta) simpleLookupTable.get(this.javaBuilder.currentProject);
                    if (iResourceDelta != null) {
                        if (!findSourceFiles(iResourceDelta)) {
                            IncrementalImageBuilder incrementalImageBuilder2 = this.testImageBuilder;
                            boolean build = incrementalImageBuilder2 != null ? incrementalImageBuilder2.build(simpleLookupTable) : false;
                            cleanUp();
                            IncrementalImageBuilder incrementalImageBuilder3 = this.testImageBuilder;
                            if (incrementalImageBuilder3 != null) {
                                incrementalImageBuilder3.cleanUp();
                            }
                            return build;
                        }
                        IncrementalImageBuilder incrementalImageBuilder4 = this.testImageBuilder;
                        if (incrementalImageBuilder4 != null) {
                            incrementalImageBuilder4.findSourceFiles(iResourceDelta);
                        }
                    }
                    this.notifier.updateProgressDelta(0.1f);
                    Object[] objArr = simpleLookupTable.keyTable;
                    Object[] objArr2 = simpleLookupTable.valueTable;
                    int length = objArr2.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        IResourceDelta iResourceDelta2 = (IResourceDelta) objArr2[i10];
                        if (iResourceDelta2 != null) {
                            IProject iProject = (IProject) objArr[i10];
                            ClasspathLocation[] classpathLocationArr = (ClasspathLocation[]) this.javaBuilder.binaryLocationsPerProject.get(iProject);
                            if (classpathLocationArr != null && !findAffectedSourceFiles(iResourceDelta2, classpathLocationArr, iProject)) {
                                cleanUp();
                                IncrementalImageBuilder incrementalImageBuilder5 = this.testImageBuilder;
                                if (incrementalImageBuilder5 != null) {
                                    incrementalImageBuilder5.cleanUp();
                                }
                                return false;
                            }
                        }
                    }
                    this.notifier.updateProgressDelta(0.1f);
                    this.notifier.subTask(Messages.build_analyzingSources);
                    addAffectedSourceFiles();
                    this.notifier.updateProgressDelta(0.05f);
                }
                if (!incrementalBuildLoop()) {
                    cleanUp();
                    IncrementalImageBuilder incrementalImageBuilder6 = this.testImageBuilder;
                    if (incrementalImageBuilder6 != null) {
                        incrementalImageBuilder6.cleanUp();
                    }
                    return false;
                }
                IncrementalImageBuilder incrementalImageBuilder7 = this.testImageBuilder;
                if (incrementalImageBuilder7 != null && !incrementalImageBuilder7.incrementalBuildLoop()) {
                    cleanUp();
                    IncrementalImageBuilder incrementalImageBuilder8 = this.testImageBuilder;
                    if (incrementalImageBuilder8 != null) {
                        incrementalImageBuilder8.cleanUp();
                    }
                    return false;
                }
                if (this.hasStructuralChanges && this.javaBuilder.javaProject.hasCycleMarker()) {
                    this.javaBuilder.mustPropagateStructuralChanges();
                }
                cleanUp();
                IncrementalImageBuilder incrementalImageBuilder9 = this.testImageBuilder;
                if (incrementalImageBuilder9 != null) {
                    incrementalImageBuilder9.cleanUp();
                }
                return true;
            } catch (CoreException e10) {
                throw internalException(e10);
            } catch (AbortIncrementalBuildException e11) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("ABORTING incremental build... problem with " + e11.qualifiedTypeName + ". Likely renamed inside its existing source file.");
                }
                cleanUp();
                IncrementalImageBuilder incrementalImageBuilder10 = this.testImageBuilder;
                if (incrementalImageBuilder10 != null) {
                    incrementalImageBuilder10.cleanUp();
                }
                return false;
            }
        } catch (Throwable th2) {
            cleanUp();
            IncrementalImageBuilder incrementalImageBuilder11 = this.testImageBuilder;
            if (incrementalImageBuilder11 != null) {
                incrementalImageBuilder11.cleanUp();
            }
            throw th2;
        }
    }

    public void buildAfterBatchBuild() {
        if (JavaBuilder.DEBUG) {
            System.out.println("INCREMENTAL build after batch build @ " + ((Object) new Date(System.currentTimeMillis())));
        }
        try {
            try {
                addAffectedSourceFiles();
                while (this.sourceFiles.size() > 0) {
                    this.notifier.checkCancel();
                    int size = this.sourceFiles.size();
                    SourceFile[] sourceFileArr = new SourceFile[size];
                    this.sourceFiles.toArray(sourceFileArr);
                    resetCollections();
                    this.notifier.setProgressPerCompilationUnit(0.08f / size);
                    this.workQueue.addAll(sourceFileArr);
                    compile(sourceFileArr);
                    removeSecondaryTypes();
                    addAffectedSourceFiles();
                }
            } catch (CoreException e10) {
                throw internalException(e10);
            }
        } finally {
            cleanUp();
        }
    }

    public boolean checkForClassFileChanges(IResourceDelta iResourceDelta, ClasspathMultiDirectory classpathMultiDirectory, int i10) throws CoreException {
        IResource resource = iResourceDelta.getResource();
        char[][] cArr = classpathMultiDirectory.exclusionPatterns;
        boolean z10 = !(cArr == null && classpathMultiDirectory.inclusionPatterns == null) && Util.isExcluded(resource, classpathMultiDirectory.inclusionPatterns, cArr);
        int type = resource.getType();
        if (type != 1) {
            if (type == 2) {
                if (z10 && classpathMultiDirectory.inclusionPatterns == null) {
                    return true;
                }
                for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
                    if (!checkForClassFileChanges(iResourceDelta2, classpathMultiDirectory, i10)) {
                        return false;
                    }
                }
                return true;
            }
        } else if (!z10 && org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(resource.getName())) {
            IPath removeFileExtension = resource.getFullPath().removeFirstSegments(i10).removeFileExtension();
            if (this.newState.isKnownType(removeFileExtension.toString())) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("MUST DO FULL BUILD. Found change to class file " + ((Object) removeFileExtension));
                }
                return false;
            }
        }
        return true;
    }

    @Override
    public void cleanUp() {
        super.cleanUp();
        this.sourceFiles = null;
        this.previousSourceFiles = null;
        this.qualifiedStrings = null;
        this.simpleStrings = null;
        this.rootStrings = null;
        this.secondaryTypesToRemove = null;
        this.hasStructuralChanges = false;
    }

    @Override
    public void compile(SourceFile[] sourceFileArr, SourceFile[] sourceFileArr2, boolean z10) {
        if (z10 && sourceFileArr2 != null) {
            int i10 = 0;
            ArrayList arrayList = null;
            for (SourceFile sourceFile : sourceFileArr2) {
                if (sourceFile != null && this.newState.getDefinedTypeNamesFor(sourceFile.typeLocator()) != null) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("About to compile file with secondary types " + sourceFile.typeLocator());
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList(3);
                    }
                    arrayList.add(sourceFile);
                }
            }
            if (arrayList != null) {
                int length = sourceFileArr.length;
                int size = arrayList.size();
                SourceFile[] sourceFileArr3 = new SourceFile[length + size];
                System.arraycopy(sourceFileArr, 0, sourceFileArr3, 0, length);
                while (i10 < size) {
                    sourceFileArr3[length] = (SourceFile) arrayList.get(i10);
                    i10++;
                    length++;
                }
                sourceFileArr = sourceFileArr3;
            }
        }
        super.compile(sourceFileArr, sourceFileArr2, z10);
    }

    @Override
    public void deleteGeneratedFiles(IFile[] iFileArr) {
        try {
            int length = iFileArr.length;
            while (true) {
                length--;
                if (length < 0) {
                    return;
                }
                IFile iFile = iFileArr[length];
                if (!iFile.exists()) {
                    SourceFile findSourceFile = findSourceFile(iFile, false);
                    String typeLocator = findSourceFile.typeLocator();
                    IPath removeFileExtension = findSourceFile.resource.getFullPath().removeFirstSegments(findSourceFile.sourceLocation.sourceFolder.getFullPath().segmentCount()).removeFileExtension();
                    addDependentsOf(removeFileExtension, true);
                    this.previousSourceFiles = null;
                    char[][] definedTypeNamesFor = this.newState.getDefinedTypeNamesFor(typeLocator);
                    if (definedTypeNamesFor == null) {
                        removeClassFile(removeFileExtension, findSourceFile.sourceLocation.binaryFolder);
                    } else if (definedTypeNamesFor.length > 0) {
                        IPath removeLastSegments = removeFileExtension.removeLastSegments(1);
                        for (char[] cArr : definedTypeNamesFor) {
                            removeClassFile(removeLastSegments.append(new String(cArr)), findSourceFile.sourceLocation.binaryFolder);
                        }
                    }
                    this.newState.removeLocator(typeLocator);
                }
            }
        } catch (CoreException e10) {
            Util.log((Throwable) e10, "JavaBuilder logging CompilationParticipant's CoreException to help debugging");
        }
    }

    public boolean findAffectedSourceFiles(IResourceDelta iResourceDelta, ClasspathLocation[] classpathLocationArr, IProject iProject) {
        IPath projectRelativePath;
        IResourceDelta findMember;
        for (ClasspathLocation classpathLocation : classpathLocationArr) {
            if (classpathLocation != null && (projectRelativePath = classpathLocation.getProjectRelativePath()) != null && (findMember = iResourceDelta.findMember(projectRelativePath)) != null) {
                if (classpathLocation instanceof ClasspathJar) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("ABORTING incremental build... found delta to jar/zip file");
                    }
                    return false;
                }
                if (findMember.getKind() != 1 && findMember.getKind() != 2) {
                    int segmentCount = findMember.getFullPath().segmentCount();
                    IResourceDelta[] affectedChildren = findMember.getAffectedChildren();
                    StringSet structurallyChangedTypes = classpathLocation.isOutputFolder() ? this.newState.getStructurallyChangedTypes(this.javaBuilder.getLastState(iProject)) : null;
                    for (IResourceDelta iResourceDelta2 : affectedChildren) {
                        findAffectedSourceFiles(iResourceDelta2, segmentCount, structurallyChangedTypes);
                    }
                    this.notifier.checkCancel();
                } else {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("ABORTING incremental build... found added/removed binary folder");
                    }
                    return false;
                }
            }
        }
        return true;
    }

    public boolean findSourceFiles(IResourceDelta iResourceDelta) throws CoreException {
        ArrayList arrayList = this.makeOutputFolderConsistent ? new ArrayList(this.sourceLocations.length) : null;
        int length = this.sourceLocations.length;
        for (int i10 = 0; i10 < length; i10++) {
            ClasspathMultiDirectory classpathMultiDirectory = this.sourceLocations[i10];
            if (this.makeOutputFolderConsistent && classpathMultiDirectory.hasIndependentOutputFolder && !arrayList.contains(classpathMultiDirectory.binaryFolder)) {
                arrayList.add(classpathMultiDirectory.binaryFolder);
                IResourceDelta findMember = iResourceDelta.findMember(classpathMultiDirectory.binaryFolder.getProjectRelativePath());
                if (findMember != null) {
                    int segmentCount = findMember.getFullPath().segmentCount();
                    for (IResourceDelta iResourceDelta2 : findMember.getAffectedChildren()) {
                        if (!checkForClassFileChanges(iResourceDelta2, classpathMultiDirectory, segmentCount)) {
                            return false;
                        }
                    }
                }
            }
            if (classpathMultiDirectory.sourceFolder.equals(this.javaBuilder.currentProject)) {
                int segmentCount2 = iResourceDelta.getFullPath().segmentCount();
                IResourceDelta[] affectedChildren = iResourceDelta.getAffectedChildren();
                int length2 = affectedChildren.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    if (!isExcludedFromProject(affectedChildren[i11].getFullPath()) && !findSourceFiles(affectedChildren[i11], classpathMultiDirectory, segmentCount2)) {
                        return false;
                    }
                }
            } else {
                IResourceDelta findMember2 = iResourceDelta.findMember(classpathMultiDirectory.sourceFolder.getProjectRelativePath());
                if (findMember2 == null) {
                    continue;
                } else {
                    if (findMember2.getKind() == 2) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("ABORTING incremental build... found removed source folder");
                        }
                        return false;
                    }
                    int segmentCount3 = findMember2.getFullPath().segmentCount();
                    try {
                        for (IResourceDelta iResourceDelta3 : findMember2.getAffectedChildren()) {
                            if (!findSourceFiles(iResourceDelta3, classpathMultiDirectory, segmentCount3)) {
                                return false;
                            }
                        }
                    } catch (CoreException e10) {
                        if (e10.getStatus().getCode() == 275) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("ABORTING incremental build... found renamed package");
                            }
                            return false;
                        }
                        throw e10;
                    }
                }
            }
            this.notifier.checkCancel();
        }
        return true;
    }

    @Override
    public void finishedWith(String str, CompilationResult compilationResult, char[] cArr, ArrayList arrayList, ArrayList arrayList2) {
        char[][] definedTypeNamesFor = this.newState.getDefinedTypeNamesFor(str);
        if (definedTypeNamesFor == null) {
            definedTypeNamesFor = new char[][]{cArr};
        }
        IPath iPath = null;
        for (char[] cArr2 : definedTypeNamesFor) {
            int size = arrayList.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    SourceFile sourceFile = (SourceFile) compilationResult.getCompilationUnit();
                    if (iPath == null) {
                        iPath = sourceFile.resource.getFullPath().removeFirstSegments(sourceFile.sourceLocation.sourceFolder.getFullPath().segmentCount()).removeLastSegments(1);
                    }
                    if (this.secondaryTypesToRemove == null) {
                        this.secondaryTypesToRemove = new SimpleLookupTable();
                    }
                    ArrayList arrayList3 = (ArrayList) this.secondaryTypesToRemove.get(sourceFile.sourceLocation.binaryFolder);
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList(arrayList.size());
                    }
                    arrayList3.add(iPath.append(new String(cArr2)));
                    this.secondaryTypesToRemove.put(sourceFile.sourceLocation.binaryFolder, arrayList3);
                } else if (CharOperation.equals(cArr2, (char[]) arrayList.get(i10))) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        super.finishedWith(str, compilationResult, cArr, arrayList, arrayList2);
    }

    @Override
    public void processAnnotationResults(CompilationParticipantResult[] compilationParticipantResultArr) {
        int length = compilationParticipantResultArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            CompilationParticipantResult compilationParticipantResult = compilationParticipantResultArr[length];
            if (compilationParticipantResult != null) {
                IFile[] iFileArr = compilationParticipantResult.deletedFiles;
                if (iFileArr != null) {
                    deleteGeneratedFiles(iFileArr);
                }
                IFile[] iFileArr2 = compilationParticipantResult.addedFiles;
                if (iFileArr2 != null) {
                    int length2 = iFileArr2.length;
                    while (true) {
                        length2--;
                        if (length2 < 0) {
                            break;
                        }
                        SourceFile findSourceFile = findSourceFile(iFileArr2[length2], true);
                        if (findSourceFile != null && !this.sourceFiles.contains(findSourceFile)) {
                            this.sourceFiles.add(findSourceFile);
                        }
                    }
                }
                recordParticipantResult(compilationParticipantResult);
            }
        }
    }

    public void removeClassFile(IPath iPath, IContainer iContainer) throws CoreException {
        if (iPath.lastSegment().indexOf(36) == -1) {
            this.newState.removeQualifiedTypeName(iPath.toString());
            if (JavaBuilder.DEBUG) {
                System.out.println("Found removed type " + ((Object) iPath));
            }
            addDependentsOf(iPath, true);
        }
        IFile file = iContainer.getFile(iPath.addFileExtension("class"));
        if (file.exists()) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Deleting class file of removed type " + ((Object) iPath));
            }
            file.delete(1, (IProgressMonitor) null);
        }
    }

    public void removeSecondaryTypes() throws CoreException {
        SimpleLookupTable simpleLookupTable = this.secondaryTypesToRemove;
        if (simpleLookupTable != null) {
            Object[] objArr = simpleLookupTable.keyTable;
            Object[] objArr2 = simpleLookupTable.valueTable;
            int length = objArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                IContainer iContainer = (IContainer) objArr[i10];
                if (iContainer != null) {
                    ArrayList arrayList = (ArrayList) objArr2[i10];
                    int size = arrayList.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        removeClassFile((IPath) arrayList.get(i11), iContainer);
                    }
                }
            }
            this.secondaryTypesToRemove = null;
            if (this.previousSourceFiles != null) {
                this.previousSourceFiles = null;
            }
        }
    }

    public void resetCollections() {
        LinkedHashSet<SourceFile> linkedHashSet = this.sourceFiles;
        if (linkedHashSet == null) {
            this.sourceFiles = new LinkedHashSet<>(33);
            this.previousSourceFiles = null;
            this.qualifiedStrings = new HashSet(3);
            this.simpleStrings = new HashSet(3);
            this.rootStrings = new HashSet(3);
            this.hasStructuralChanges = false;
            return;
        }
        this.previousSourceFiles = linkedHashSet.isEmpty() ? null : (LinkedHashSet) this.sourceFiles.clone();
        this.sourceFiles.clear();
        this.qualifiedStrings.clear();
        this.simpleStrings.clear();
        this.rootStrings.clear();
        this.workQueue.clear();
    }

    public String toString() {
        return "incremental image builder for:\n\tnew state: " + ((Object) this.newState);
    }

    @Override
    public void updateProblemsFor(SourceFile sourceFile, CompilationResult compilationResult) throws CoreException {
        char[] mainTypeName = sourceFile.getMainTypeName();
        char[] cArr = TypeConstants.PACKAGE_INFO_NAME;
        if (CharOperation.equals(mainTypeName, cArr) && sourceFile.resource.getParent().findMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 0).length > 0) {
            throw new AbortCompilation(true, (RuntimeException) new AbortIncrementalBuildException(new String(cArr)));
        }
        IMarker[] problemsFor = JavaBuilder.getProblemsFor(sourceFile.resource);
        CategorizedProblem[] problems = compilationResult.getProblems();
        if (problems == null && problemsFor.length == 0) {
            return;
        }
        this.notifier.updateProblemCounts(problemsFor, problems);
        JavaBuilder.removeProblemsFor(sourceFile.resource);
        storeProblemsFor(sourceFile, problems);
    }

    @Override
    public void updateTasksFor(SourceFile sourceFile, CompilationResult compilationResult) throws CoreException {
        IMarker[] tasksFor = JavaBuilder.getTasksFor(sourceFile.resource);
        CategorizedProblem[] tasks = compilationResult.getTasks();
        if (tasks == null && tasksFor.length == 0) {
            return;
        }
        JavaBuilder.removeTasksFor(sourceFile.resource);
        storeTasksFor(sourceFile, tasks);
    }

    public boolean writeClassFileCheck(IFile iFile, String str, byte[] bArr) throws CoreException {
        byte[] resourceContentsAsByteArray;
        URI locationURI;
        try {
            resourceContentsAsByteArray = Util.getResourceContentsAsByteArray(iFile);
            if (bArr.length == resourceContentsAsByteArray.length) {
                int length = bArr.length;
                do {
                    length--;
                    if (length < 0) {
                        return false;
                    }
                } while (bArr[length] == resourceContentsAsByteArray[length]);
            }
            locationURI = iFile.getLocationURI();
        } catch (ClassFormatException unused) {
            addDependentsOf(new Path(str), true);
            this.newState.wasStructurallyChanged(str);
        }
        if (locationURI == null) {
            return false;
        }
        ClassFileReader classFileReader = new ClassFileReader(resourceContentsAsByteArray, locationURI.getSchemeSpecificPart().toCharArray());
        if (!classFileReader.isLocal() && !classFileReader.isAnonymous() && classFileReader.hasStructuralChanges(bArr)) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Type has structural changes " + str);
            }
            addDependentsOf(new Path(str), true);
            this.newState.wasStructurallyChanged(str);
        }
        return true;
    }

    @Override
    public void writeClassFileContents(ClassFile classFile, IFile iFile, String str, boolean z10, SourceFile sourceFile) throws CoreException {
        boolean z11;
        byte[] bytes = classFile.getBytes();
        boolean z12 = false;
        if (iFile.exists()) {
            if (!writeClassFileCheck(iFile, str, bytes) && !sourceFile.updateClassFile) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Skipped over unchanged class file " + iFile.getName());
                    return;
                }
                return;
            }
            if (JavaBuilder.DEBUG) {
                System.out.println("Writing changed class file " + iFile.getName());
            }
            if (!iFile.isDerived()) {
                iFile.setDerived(true, (IProgressMonitor) null);
            }
            iFile.setContents(new ByteArrayInputStream(bytes), true, false, (IProgressMonitor) null);
            return;
        }
        if (z10) {
            addDependentsOf(new Path(str), true);
        }
        if (JavaBuilder.DEBUG) {
            System.out.println("Writing new class file " + iFile.getName());
        }
        try {
            iFile.create(new ByteArrayInputStream(bytes), 1025, (IProgressMonitor) null);
        } catch (CoreException e10) {
            if (e10.getStatus().getCode() != 275) {
                throw e10;
            }
            IResourceStatus status = e10.getStatus();
            if (status instanceof IResourceStatus) {
                IPath path = status.getPath();
                char[] charArray = path.removeFileExtension().lastSegment().toCharArray();
                char[][] definedTypeNamesFor = this.newState.getDefinedTypeNamesFor(sourceFile.typeLocator());
                if (definedTypeNamesFor == null) {
                    z11 = CharOperation.equals(sourceFile.getMainTypeName(), charArray);
                } else {
                    int length = definedTypeNamesFor.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            z11 = false;
                            break;
                        } else {
                            if (CharOperation.equals(definedTypeNamesFor[i10], charArray)) {
                                z11 = true;
                                break;
                            }
                            i10++;
                        }
                    }
                }
                if (z11) {
                    iFile.getParent().getFile(new Path(path.lastSegment())).delete(true, false, (IProgressMonitor) null);
                    try {
                        iFile.create(new ByteArrayInputStream(bytes), 1025, (IProgressMonitor) null);
                        z12 = true;
                    } catch (CoreException unused) {
                    }
                    if (z12) {
                        return;
                    }
                }
            }
            throw new AbortCompilation(true, (RuntimeException) new AbortIncrementalBuildException(str));
        }
    }

    public void addDependentsOf(IPath iPath, boolean z10, Set<String> set, Set<String> set2, Set<String> set3) {
        IPath device = iPath.setDevice((String) null);
        if (z10) {
            String lastSegment = device.lastSegment();
            int length = lastSegment.length();
            char[] cArr = TypeConstants.PACKAGE_INFO_NAME;
            if (length == cArr.length && CharOperation.equals(lastSegment.toCharArray(), cArr)) {
                device = device.removeLastSegments(1);
                if (device.isEmpty()) {
                    return;
                }
            }
        }
        if (z10 && !this.hasStructuralChanges) {
            this.newState.tagAsStructurallyChanged();
            this.hasStructuralChanges = true;
        }
        set3.add(device.segment(0));
        String obj = device.removeLastSegments(1).toString();
        boolean add = set.add(obj);
        String lastSegment2 = device.lastSegment();
        int indexOf = lastSegment2.indexOf(36);
        if (indexOf > 0) {
            lastSegment2 = lastSegment2.substring(0, indexOf);
        }
        if ((!set2.add(lastSegment2) && !add) || !JavaBuilder.DEBUG) {
            return;
        }
        System.out.println("  will look for dependents of " + lastSegment2 + " in " + obj);
    }

    public void addAffectedSourceFiles(Set<String> set, Set<String> set2, Set<String> set3, Set<String> set4) {
        SourceFile findSourceFile;
        LinkedHashSet<SourceFile> linkedHashSet;
        char[][][] internQualifiedNames = ReferenceCollection.internQualifiedNames(set);
        if (internQualifiedNames.length < set.size()) {
            internQualifiedNames = null;
        }
        char[][] internSimpleNames = ReferenceCollection.internSimpleNames(set2, true);
        char[][] cArr = internSimpleNames.length >= set2.size() ? internSimpleNames : null;
        char[][] internSimpleNames2 = ReferenceCollection.internSimpleNames(set3, false);
        SimpleLookupTable simpleLookupTable = this.newState.references;
        Object[] objArr = simpleLookupTable.keyTable;
        Object[] objArr2 = simpleLookupTable.valueTable;
        int length = objArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str = (String) objArr[i10];
            if (str != null && ((set4 == null || set4.contains(str)) && ((ReferenceCollection) objArr2[i10]).includes(internQualifiedNames, cArr, internSimpleNames2) && (findSourceFile = findSourceFile(this.javaBuilder.currentProject.getFile(str), true)) != null && !this.sourceFiles.contains(findSourceFile) && (!this.compiledAllAtOnce || (linkedHashSet = this.previousSourceFiles) == null || !linkedHashSet.contains(findSourceFile)))) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("  adding affected source file " + str);
                }
                this.sourceFiles.add(findSourceFile);
            }
        }
    }

    public IncrementalImageBuilder(JavaBuilder javaBuilder) {
        this(javaBuilder, null, CompilationGroup.MAIN);
        this.newState.copyFrom(javaBuilder.lastState);
    }

    public IncrementalImageBuilder(BatchImageBuilder batchImageBuilder, CompilationGroup compilationGroup) {
        this(batchImageBuilder.javaBuilder, batchImageBuilder.newState, compilationGroup);
        resetCollections();
    }

    public void findAffectedSourceFiles(IResourceDelta iResourceDelta, int i10, StringSet stringSet) {
        IResource resource = iResourceDelta.getResource();
        int type = resource.getType();
        if (type == 1) {
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(resource.getName())) {
                IPath removeFileExtension = resource.getFullPath().removeFirstSegments(i10).removeFileExtension();
                int kind = iResourceDelta.getKind();
                if (kind != 1 && kind != 2) {
                    if (kind == 4 && (iResourceDelta.getFlags() & 256) != 0) {
                        if (stringSet == null || stringSet.includes(removeFileExtension.toString())) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Found changed class file " + ((Object) removeFileExtension));
                            }
                            addDependentsOf(removeFileExtension, false);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (JavaBuilder.DEBUG) {
                    System.out.println("Found added/removed class file " + ((Object) removeFileExtension));
                }
                addDependentsOf(removeFileExtension, false);
                return;
            }
            return;
        }
        if (type != 2) {
            return;
        }
        int kind2 = iResourceDelta.getKind();
        if (kind2 == 1 || kind2 == 2) {
            IPath removeFirstSegments = resource.getFullPath().removeFirstSegments(i10);
            String obj = removeFirstSegments.toString();
            if (iResourceDelta.getKind() == 1) {
                if (!this.newState.isKnownPackage(obj)) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Found added package " + obj);
                    }
                    addDependentsOf(removeFirstSegments, false);
                    return;
                }
                if (JavaBuilder.DEBUG) {
                    System.out.println("Skipped dependents of added package " + obj);
                }
            } else {
                if (!this.nameEnvironment.isPackage(obj, ModuleBinding.ANY)) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Found removed package " + obj);
                    }
                    addDependentsOf(removeFirstSegments, false);
                    return;
                }
                if (JavaBuilder.DEBUG) {
                    System.out.println("Skipped dependents of removed package " + obj);
                }
            }
        } else if (kind2 != 4) {
            return;
        }
        for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
            findAffectedSourceFiles(iResourceDelta2, i10, stringSet);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if (r4 != 4) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean findSourceFiles(IResourceDelta iResourceDelta, ClasspathMultiDirectory classpathMultiDirectory, int i10) throws CoreException {
        IFile resource = iResourceDelta.getResource();
        char[][] cArr = classpathMultiDirectory.exclusionPatterns;
        boolean z10 = !(cArr == null && classpathMultiDirectory.inclusionPatterns == null) && Util.isExcluded(resource, classpathMultiDirectory.inclusionPatterns, cArr);
        int type = resource.getType();
        if (type == 1) {
            if (z10) {
                return true;
            }
            String name = resource.getName();
            if (Util.isJavaLikeFileName(name)) {
                IPath removeFileExtension = resource.getFullPath().removeFirstSegments(i10).removeFileExtension();
                String obj = resource.getProjectRelativePath().toString();
                int kind = iResourceDelta.getKind();
                if (kind == 1) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Compile this added source file " + obj);
                    }
                    this.sourceFiles.add(new SourceFile(resource, classpathMultiDirectory, true));
                    String obj2 = removeFileExtension.toString();
                    if (!this.newState.isDuplicateLocator(obj2, obj)) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found added source file " + obj2);
                        }
                        addDependentsOf(removeFileExtension, true);
                    }
                    return true;
                }
                if (kind != 2) {
                    if (kind != 4 || ((iResourceDelta.getFlags() & 256) == 0 && (iResourceDelta.getFlags() & 1048576) == 0)) {
                        return true;
                    }
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Compile this changed source file " + obj);
                    }
                    this.sourceFiles.add(new SourceFile(resource, classpathMultiDirectory, true));
                    return true;
                }
                char[][] definedTypeNamesFor = this.newState.getDefinedTypeNamesFor(obj);
                if (definedTypeNamesFor == null) {
                    removeClassFile(removeFileExtension, classpathMultiDirectory.binaryFolder);
                    if ((iResourceDelta.getFlags() & 8192) != 0) {
                        JavaBuilder.removeProblemsAndTasksFor(this.javaBuilder.workspaceRoot.getFile(iResourceDelta.getMovedToPath()));
                    }
                } else {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Found removed source file " + removeFileExtension.toString());
                    }
                    addDependentsOf(removeFileExtension, true);
                    if (definedTypeNamesFor.length > 0) {
                        IPath removeLastSegments = removeFileExtension.removeLastSegments(1);
                        for (char[] cArr2 : definedTypeNamesFor) {
                            removeClassFile(removeLastSegments.append(new String(cArr2)), classpathMultiDirectory.binaryFolder);
                        }
                    }
                }
                this.newState.removeLocator(obj);
                return true;
            }
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
                if (this.makeOutputFolderConsistent) {
                    IPath removeFileExtension2 = resource.getFullPath().removeFirstSegments(i10).removeFileExtension();
                    if (this.newState.isKnownType(removeFileExtension2.toString())) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("MUST DO FULL BUILD. Found change to class file " + ((Object) removeFileExtension2));
                        }
                        return false;
                    }
                }
                return true;
            }
            if (!classpathMultiDirectory.hasIndependentOutputFolder || this.javaBuilder.filterExtraResource(resource)) {
                return true;
            }
            IPath removeFirstSegments = resource.getFullPath().removeFirstSegments(i10);
            IFile file = classpathMultiDirectory.binaryFolder.getFile(removeFirstSegments);
            int kind2 = iResourceDelta.getKind();
            if (kind2 != 1) {
                if (kind2 != 2) {
                    if (kind2 != 4 || ((iResourceDelta.getFlags() & 256) == 0 && (iResourceDelta.getFlags() & 1048576) == 0)) {
                        return true;
                    }
                    if (file.exists()) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Deleting existing file " + ((Object) removeFirstSegments));
                        }
                        file.delete(1, (IProgressMonitor) null);
                    }
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Copying changed file " + ((Object) removeFirstSegments));
                    }
                    createFolder(removeFirstSegments.removeLastSegments(1), classpathMultiDirectory.binaryFolder);
                    copyResource(resource, file);
                    return true;
                }
                if (file.exists()) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Deleting removed file " + ((Object) removeFirstSegments));
                    }
                    file.delete(1, (IProgressMonitor) null);
                }
                return true;
            }
            if (file.exists()) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Deleting existing file " + ((Object) removeFirstSegments));
                }
                file.delete(1, (IProgressMonitor) null);
            }
            if (JavaBuilder.DEBUG) {
                System.out.println("Copying added file " + ((Object) removeFirstSegments));
            }
            createFolder(removeFirstSegments.removeLastSegments(1), classpathMultiDirectory.binaryFolder);
            copyResource(resource, file);
        } else if (type == 2) {
            if (z10 && classpathMultiDirectory.inclusionPatterns == null) {
                return true;
            }
            int kind3 = iResourceDelta.getKind();
            if (kind3 != 1) {
                if (kind3 == 2) {
                    if (z10) {
                        IResourceDelta[] affectedChildren = iResourceDelta.getAffectedChildren();
                        for (IResourceDelta iResourceDelta2 : affectedChildren) {
                            if (!findSourceFiles(iResourceDelta2, classpathMultiDirectory, i10)) {
                                return false;
                            }
                        }
                        return true;
                    }
                    IPath removeFirstSegments2 = resource.getFullPath().removeFirstSegments(i10);
                    ClasspathMultiDirectory[] classpathMultiDirectoryArr = this.sourceLocations;
                    if (classpathMultiDirectoryArr.length > 1) {
                        int length = classpathMultiDirectoryArr.length;
                        for (int i11 = 0; i11 < length; i11++) {
                            if (this.sourceLocations[i11].sourceFolder.getFolder(removeFirstSegments2).exists()) {
                                if (classpathMultiDirectory.hasIndependentOutputFolder) {
                                    createFolder(removeFirstSegments2, classpathMultiDirectory.binaryFolder);
                                }
                                IResourceDelta[] affectedChildren2 = iResourceDelta.getAffectedChildren();
                                for (IResourceDelta iResourceDelta3 : affectedChildren2) {
                                    if (!findSourceFiles(iResourceDelta3, classpathMultiDirectory, i10)) {
                                        return false;
                                    }
                                }
                                return true;
                            }
                        }
                    }
                    if ((iResourceDelta.getFlags() & 8192) != 0) {
                        JavaBuilder.removeProblemsAndTasksFor(this.javaBuilder.workspaceRoot.getFolder(iResourceDelta.getMovedToPath()));
                    }
                    IFolder folder = classpathMultiDirectory.binaryFolder.getFolder(removeFirstSegments2);
                    if (folder.exists()) {
                        folder.delete(1, (IProgressMonitor) null);
                    }
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Found removed package " + ((Object) removeFirstSegments2));
                    }
                    addDependentsOf(removeFirstSegments2, true);
                    this.newState.removePackage(iResourceDelta);
                }
                return true;
            }
            if (!z10) {
                IPath removeFirstSegments3 = resource.getFullPath().removeFirstSegments(i10);
                createFolder(removeFirstSegments3, classpathMultiDirectory.binaryFolder);
                if (this.sourceLocations.length > 1 && this.newState.isKnownPackage(removeFirstSegments3.toString())) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Skipped dependents of added package " + ((Object) removeFirstSegments3));
                    }
                } else {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Found added package " + ((Object) removeFirstSegments3));
                    }
                    addDependentsOf(removeFirstSegments3, true);
                }
            }
            IResourceDelta[] affectedChildren3 = iResourceDelta.getAffectedChildren();
            for (IResourceDelta iResourceDelta4 : affectedChildren3) {
                if (!findSourceFiles(iResourceDelta4, classpathMultiDirectory, i10)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }
}
