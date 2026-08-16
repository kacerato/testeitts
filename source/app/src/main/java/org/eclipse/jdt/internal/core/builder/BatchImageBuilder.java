package org.eclipse.jdt.internal.core.builder;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.impl.CompilerStats;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class BatchImageBuilder extends AbstractImageBuilder {
    final CompilationGroup compilationGroup;
    IncrementalImageBuilder incrementalBuilder;
    ArrayList secondaryTypes;
    Set<String> typeLocatorsWithUndefinedTypes;

    public BatchImageBuilder(JavaBuilder javaBuilder, boolean z10, CompilationGroup compilationGroup) {
        super(javaBuilder, z10, null, compilationGroup);
        this.compilationGroup = compilationGroup;
        this.nameEnvironment.isIncrementalBuild = false;
        this.incrementalBuilder = null;
        this.secondaryTypes = null;
        this.typeLocatorsWithUndefinedTypes = null;
    }

    private void printStats() {
        Compiler compiler = this.compiler;
        if (compiler == null) {
            return;
        }
        CompilerStats compilerStats = compiler.stats;
        long elapsedTime = compilerStats.elapsedTime();
        long j10 = compilerStats.lineCount;
        double d10 = elapsedTime;
        PrintStream printStream = System.out;
        printStream.println(">FULL BUILD STATS for: " + this.javaBuilder.javaProject.getElementName());
        printStream.println(">   compiled " + j10 + " lines in " + elapsedTime + "ms:" + (((int) ((j10 * 10000.0d) / d10)) / 10.0d) + " lines/s");
        StringBuilder sb2 = new StringBuilder(">   parse: ");
        sb2.append(compilerStats.parseTime);
        sb2.append(" ms (");
        sb2.append(((double) ((int) ((((double) compilerStats.parseTime) * 1000.0d) / d10))) / 10.0d);
        sb2.append("%)");
        printStream.print(sb2.toString());
        printStream.print(", resolve: " + compilerStats.resolveTime + " ms (" + (((int) ((compilerStats.resolveTime * 1000.0d) / d10)) / 10.0d) + "%)");
        printStream.print(", analyze: " + compilerStats.analyzeTime + " ms (" + (((double) ((int) ((((double) compilerStats.analyzeTime) * 1000.0d) / d10))) / 10.0d) + "%)");
        printStream.println(", generate: " + compilerStats.generateTime + " ms (" + (((double) ((int) ((((double) compilerStats.generateTime) * 1000.0d) / d10))) / 10.0d) + "%)");
    }

    @Override
    public void acceptSecondaryType(ClassFile classFile) {
        ArrayList arrayList = this.secondaryTypes;
        if (arrayList != null) {
            arrayList.add(classFile.fileName());
        }
    }

    public void build() {
        ArrayList arrayList;
        if (JavaBuilder.DEBUG) {
            System.out.println("FULL build");
        }
        try {
            try {
                this.notifier.subTask(Messages.bind(Messages.build_cleaningOutput, this.javaBuilder.currentProject.getName()));
                if (this.compilationGroup != CompilationGroup.TEST) {
                    JavaBuilder.removeProblemsAndTasksFor(this.javaBuilder.currentProject);
                }
                cleanOutputFolders(true);
                this.notifier.updateProgressDelta(0.05f);
                this.notifier.subTask(Messages.build_analyzingSources);
                LinkedHashSet<SourceFile> linkedHashSet = new LinkedHashSet<>(33);
                addAllSourceFiles(linkedHashSet);
                this.notifier.updateProgressDelta(0.1f);
                if (linkedHashSet.size() > 0) {
                    int size = linkedHashSet.size();
                    SourceFile[] sourceFileArr = new SourceFile[size];
                    linkedHashSet.toArray(sourceFileArr);
                    this.notifier.setProgressPerCompilationUnit(0.75f / size);
                    this.workQueue.addAll(sourceFileArr);
                    compile(sourceFileArr);
                    if (this.typeLocatorsWithUndefinedTypes != null && (arrayList = this.secondaryTypes) != null && !arrayList.isEmpty()) {
                        rebuildTypesAffectedBySecondaryTypes();
                    }
                    IncrementalImageBuilder incrementalImageBuilder = this.incrementalBuilder;
                    if (incrementalImageBuilder != null) {
                        incrementalImageBuilder.buildAfterBatchBuild();
                    }
                }
                if (this.javaBuilder.javaProject.hasCycleMarker()) {
                    this.javaBuilder.mustPropagateStructuralChanges();
                }
                if (JavaBuilder.SHOW_STATS) {
                    printStats();
                }
                cleanUp();
            } catch (CoreException e10) {
                throw internalException(e10);
            }
        } catch (Throwable th2) {
            if (JavaBuilder.SHOW_STATS) {
                printStats();
            }
            cleanUp();
            throw th2;
        }
    }

    public void cleanOutputFolders(boolean z10) throws CoreException {
        CompilationParticipant[] compilationParticipantArr;
        if (!JavaCore.CLEAN.equals(this.javaBuilder.javaProject.getOption(JavaCore.CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER, true))) {
            if (z10) {
                int length = this.sourceLocations.length;
                for (int i10 = 0; i10 < length; i10++) {
                    ClasspathMultiDirectory classpathMultiDirectory = this.sourceLocations[i10];
                    if (classpathMultiDirectory.hasIndependentOutputFolder) {
                        copyExtraResourcesBack(classpathMultiDirectory, false);
                    }
                    this.notifier.checkCancel();
                }
                return;
            }
            return;
        }
        if (this.compilationGroup != CompilationGroup.TEST && (compilationParticipantArr = this.javaBuilder.participants) != null) {
            int length2 = compilationParticipantArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                JavaBuilder javaBuilder = this.javaBuilder;
                javaBuilder.participants[i11].cleanStarting(javaBuilder.javaProject);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.sourceLocations.length);
        int length3 = this.sourceLocations.length;
        for (int i12 = 0; i12 < length3; i12++) {
            this.notifier.subTask(Messages.bind(Messages.build_cleaningOutput, this.javaBuilder.currentProject.getName()));
            ClasspathMultiDirectory classpathMultiDirectory2 = this.sourceLocations[i12];
            if (classpathMultiDirectory2.hasIndependentOutputFolder) {
                IContainer iContainer = classpathMultiDirectory2.binaryFolder;
                if (!linkedHashSet.contains(iContainer)) {
                    linkedHashSet.add(iContainer);
                    for (IResource iResource : iContainer.members()) {
                        if (!iResource.isDerived()) {
                            iResource.accept(new IResourceVisitor() {
                                public boolean visit(IResource iResource2) throws CoreException {
                                    iResource2.setDerived(true, (IProgressMonitor) null);
                                    return iResource2.getType() != 1;
                                }
                            });
                        }
                        try {
                            iResource.delete(1, (IProgressMonitor) null);
                        } catch (CoreException e10) {
                            Util.log((Throwable) e10, "Error occurred while deleting: " + ((Object) iResource.getFullPath()));
                        }
                    }
                }
                this.notifier.checkCancel();
                if (z10) {
                    copyExtraResourcesBack(classpathMultiDirectory2, true);
                }
            } else {
                boolean equals = classpathMultiDirectory2.sourceFolder.equals(classpathMultiDirectory2.binaryFolder);
                final char[][] cArr = equals ? classpathMultiDirectory2.exclusionPatterns : null;
                final char[][] cArr2 = equals ? classpathMultiDirectory2.inclusionPatterns : null;
                classpathMultiDirectory2.binaryFolder.accept(new IResourceProxyVisitor() {
                    public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                        if (iResourceProxy.getType() != 1) {
                            if (cArr != null && cArr2 == null && Util.isExcluded(iResourceProxy.requestFullPath(), null, cArr, true)) {
                                return false;
                            }
                            BatchImageBuilder.this.notifier.checkCancel();
                            return true;
                        }
                        if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(iResourceProxy.getName())) {
                            IResource requestResource = iResourceProxy.requestResource();
                            if (!(cArr == null && cArr2 == null) && Util.isExcluded(requestResource.getFullPath(), cArr2, cArr, false)) {
                                return false;
                            }
                            if (!requestResource.isDerived()) {
                                requestResource.setDerived(true, (IProgressMonitor) null);
                            }
                            try {
                                requestResource.delete(1, (IProgressMonitor) null);
                            } catch (CoreException e11) {
                                Util.log((Throwable) e11, "Error occurred while deleting: " + ((Object) requestResource.getFullPath()));
                            }
                        }
                        return false;
                    }
                }, 0);
                this.notifier.checkCancel();
            }
            this.notifier.checkCancel();
        }
    }

    @Override
    public void cleanUp() {
        this.incrementalBuilder = null;
        this.secondaryTypes = null;
        this.typeLocatorsWithUndefinedTypes = null;
        super.cleanUp();
    }

    @Override
    public void compile(SourceFile[] sourceFileArr, SourceFile[] sourceFileArr2, boolean z10) {
        if (sourceFileArr2 != null && this.secondaryTypes == null) {
            this.secondaryTypes = new ArrayList(7);
        }
        super.compile(sourceFileArr, sourceFileArr2, z10);
    }

    public void copyExtraResourcesBack(ClasspathMultiDirectory classpathMultiDirectory, final boolean z10) throws CoreException {
        this.notifier.subTask(Messages.build_copyingResources);
        final int segmentCount = classpathMultiDirectory.sourceFolder.getFullPath().segmentCount();
        final char[][] cArr = classpathMultiDirectory.exclusionPatterns;
        final char[][] cArr2 = classpathMultiDirectory.inclusionPatterns;
        final IContainer iContainer = classpathMultiDirectory.binaryFolder;
        final boolean equals = classpathMultiDirectory.sourceFolder.equals(this.javaBuilder.currentProject);
        classpathMultiDirectory.sourceFolder.accept(new IResourceProxyVisitor() {
            public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                int type = iResourceProxy.getType();
                if (type != 1) {
                    if (type == 2) {
                        IResource requestResource = iResourceProxy.requestResource();
                        if (BatchImageBuilder.this.javaBuilder.filterExtraResource(requestResource)) {
                            return false;
                        }
                        if (equals && BatchImageBuilder.this.isExcludedFromProject(requestResource.getFullPath())) {
                            return false;
                        }
                        if (cArr != null && cArr2 == null && Util.isExcluded(requestResource.getFullPath(), null, cArr, true)) {
                            return false;
                        }
                    }
                    return true;
                }
                if (!Util.isJavaLikeFileName(iResourceProxy.getName()) && !org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(iResourceProxy.getName())) {
                    IResource requestResource2 = iResourceProxy.requestResource();
                    if (BatchImageBuilder.this.javaBuilder.filterExtraResource(requestResource2)) {
                        return false;
                    }
                    if (!(cArr == null && cArr2 == null) && Util.isExcluded(requestResource2.getFullPath(), cArr2, cArr, false)) {
                        return false;
                    }
                    IPath removeFirstSegments = requestResource2.getFullPath().removeFirstSegments(segmentCount);
                    IResource file = iContainer.getFile(removeFirstSegments);
                    if (file.exists()) {
                        if (z10) {
                            BatchImageBuilder.this.createProblemFor(requestResource2, null, Messages.bind(Messages.build_duplicateResource, BatchImageBuilder.this.findOriginalResource(removeFirstSegments).getFullPath().removeFirstSegments(1).toString()), BatchImageBuilder.this.javaBuilder.javaProject.getOption(JavaCore.CORE_JAVA_BUILD_DUPLICATE_RESOURCE, true));
                            return false;
                        }
                        file.delete(1, (IProgressMonitor) null);
                    }
                    BatchImageBuilder.this.createFolder(removeFirstSegments.removeLastSegments(1), iContainer);
                    BatchImageBuilder.this.copyResource(requestResource2, file);
                }
                return false;
            }
        }, 0);
    }

    public IResource findOriginalResource(IPath iPath) {
        int length = this.sourceLocations.length;
        for (int i10 = 0; i10 < length; i10++) {
            ClasspathMultiDirectory classpathMultiDirectory = this.sourceLocations[i10];
            if (classpathMultiDirectory.hasIndependentOutputFolder) {
                IFile file = classpathMultiDirectory.sourceFolder.getFile(iPath);
                if (file.exists()) {
                    return file;
                }
            }
        }
        return null;
    }

    @Override
    public void processAnnotationResults(CompilationParticipantResult[] compilationParticipantResultArr) {
        if (this.incrementalBuilder == null) {
            this.incrementalBuilder = new IncrementalImageBuilder(this, this.compilationGroup);
        }
        this.incrementalBuilder.processAnnotationResults(compilationParticipantResultArr);
    }

    public void rebuildTypesAffectedBySecondaryTypes() {
        if (this.incrementalBuilder == null) {
            this.incrementalBuilder = new IncrementalImageBuilder(this, this.compilationGroup);
        }
        int size = this.secondaryTypes.size();
        HashSet hashSet = new HashSet(size * 2);
        HashSet hashSet2 = new HashSet(size);
        HashSet hashSet3 = new HashSet(3);
        while (true) {
            size--;
            if (size < 0) {
                this.incrementalBuilder.addAffectedSourceFiles(hashSet, hashSet2, hashSet3, this.typeLocatorsWithUndefinedTypes);
                return;
            } else {
                this.incrementalBuilder.addDependentsOf(new Path((String) null, new String((char[]) this.secondaryTypes.get(size))), false, hashSet, hashSet2, hashSet3);
            }
        }
    }

    @Override
    public void storeProblemsFor(SourceFile sourceFile, CategorizedProblem[] categorizedProblemArr) throws CoreException {
        if (sourceFile == null || categorizedProblemArr == null || categorizedProblemArr.length == 0) {
            return;
        }
        int length = categorizedProblemArr.length;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            CategorizedProblem categorizedProblem = categorizedProblemArr[length];
            if (categorizedProblem != null && categorizedProblem.getID() == 16777218) {
                if (this.typeLocatorsWithUndefinedTypes == null) {
                    this.typeLocatorsWithUndefinedTypes = new HashSet(3);
                }
                this.typeLocatorsWithUndefinedTypes.add(sourceFile.typeLocator());
            }
        }
        super.storeProblemsFor(sourceFile, categorizedProblemArr);
    }

    public String toString() {
        return "batch image builder for:\n\tnew state: " + ((Object) this.newState);
    }

    public BatchImageBuilder(BatchImageBuilder batchImageBuilder, boolean z10, CompilationGroup compilationGroup) {
        super(batchImageBuilder.javaBuilder, z10, batchImageBuilder.newState, compilationGroup);
        this.compilationGroup = compilationGroup;
        this.nameEnvironment.isIncrementalBuild = false;
        this.incrementalBuilder = null;
        this.secondaryTypes = null;
        this.typeLocatorsWithUndefinedTypes = null;
    }
}
