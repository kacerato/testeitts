package org.eclipse.jdt.internal.core.builder;

import ei.C13155a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.ClasspathValidation;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaBuilder extends IncrementalProjectBuilder {
    public static boolean DEBUG = false;
    public static boolean SHOW_STATS = false;
    public static final String SOURCE_ID = "JDT";
    static LinkedHashSet<String> builtProjects;
    SimpleLookupTable binaryLocationsPerProject;
    IProject currentProject;
    char[][] extraResourceFileFilters;
    String[] extraResourceFolderFilters;
    JavaProject javaProject;
    public State lastState;
    NameEnvironment nameEnvironment;
    BuildNotifier notifier;
    CompilationParticipant[] participants;
    NameEnvironment testNameEnvironment;
    IWorkspaceRoot workspaceRoot;

    private void buildAll() {
        this.notifier.checkCancel();
        this.notifier.subTask(Messages.bind(Messages.build_preparingBuild, this.currentProject.getName()));
        if (DEBUG && this.lastState != null) {
            System.out.println("JavaBuilder: Clearing last state : " + ((Object) this.lastState));
        }
        clearLastState();
        BatchImageBuilder batchImageBuilder = new BatchImageBuilder(this, true, CompilationGroup.MAIN);
        BatchImageBuilder batchImageBuilder2 = new BatchImageBuilder(batchImageBuilder, true, CompilationGroup.TEST);
        batchImageBuilder.build();
        if (batchImageBuilder2.sourceLocations.length > 0) {
            batchImageBuilder2.build();
        } else {
            batchImageBuilder2.cleanUp();
        }
        recordNewState(batchImageBuilder.newState);
    }

    private void buildDeltas(SimpleLookupTable simpleLookupTable) {
        this.notifier.checkCancel();
        this.notifier.subTask(Messages.bind(Messages.build_preparingBuild, this.currentProject.getName()));
        if (DEBUG && this.lastState != null) {
            System.out.println("JavaBuilder: Clearing last state : " + ((Object) this.lastState));
        }
        clearLastState();
        IncrementalImageBuilder incrementalImageBuilder = new IncrementalImageBuilder(this);
        if (incrementalImageBuilder.build(simpleLookupTable)) {
            recordNewState(incrementalImageBuilder.newState);
            return;
        }
        if (DEBUG) {
            System.out.println("JavaBuilder: Performing full build since incremental build failed");
        }
        buildAll();
    }

    public static void buildFinished() {
        BuildNotifier.resetProblemCounters();
    }

    public static void buildStarting() {
    }

    private void cleanup() {
        this.participants = null;
        NameEnvironment nameEnvironment = this.nameEnvironment;
        if (nameEnvironment != null) {
            nameEnvironment.cleanup();
            this.nameEnvironment = null;
        }
        NameEnvironment nameEnvironment2 = this.testNameEnvironment;
        if (nameEnvironment2 != null) {
            nameEnvironment2.cleanup();
            this.testNameEnvironment = null;
        }
        this.binaryLocationsPerProject = null;
        this.lastState = null;
        this.notifier = null;
        this.extraResourceFileFilters = null;
        this.extraResourceFolderFilters = null;
    }

    private void clearLastState() {
        JavaModelManager.getJavaModelManager().setLastBuiltState(this.currentProject, null);
    }

    private void createInconsistentBuildMarker(CoreException coreException) throws CoreException {
        IStatus[] children;
        IStatus status = coreException.getStatus();
        String message = (!status.isMultiStatus() || (children = status.getChildren()) == null || children.length <= 0) ? null : children[0].getMessage();
        if (message == null) {
            message = coreException.getMessage();
        }
        this.currentProject.createMarker(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", IJavaModelMarker.CATEGORY_ID, "sourceId"}, new Object[]{Messages.bind(Messages.build_inconsistentProject, message), 2, 10, SOURCE_ID});
    }

    private SimpleLookupTable findDeltas() {
        this.notifier.subTask(Messages.bind(Messages.build_readingDelta, this.currentProject.getName()));
        IResourceDelta delta = getDelta(this.currentProject);
        SimpleLookupTable simpleLookupTable = new SimpleLookupTable(3);
        if (delta == null) {
            if (DEBUG) {
                System.out.println("JavaBuilder: Missing delta for: " + this.currentProject.getName());
            }
            this.notifier.subTask("");
            return null;
        }
        if (delta.getKind() != 0) {
            if (DEBUG) {
                System.out.println("JavaBuilder: Found source delta for: " + this.currentProject.getName());
            }
            simpleLookupTable.put(this.currentProject, delta);
        }
        SimpleLookupTable simpleLookupTable2 = this.binaryLocationsPerProject;
        Object[] objArr = simpleLookupTable2.keyTable;
        Object[] objArr2 = simpleLookupTable2.valueTable;
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            IProject iProject = (IProject) objArr[i10];
            if (iProject != null && iProject != this.currentProject) {
                State lastState = getLastState(iProject);
                if (!this.lastState.wasStructurallyChanged(iProject, lastState)) {
                    if (lastState.wasNoopBuild()) {
                        continue;
                    } else {
                        ClasspathLocation[] classpathLocationArr = (ClasspathLocation[]) objArr2[i10];
                        int length2 = classpathLocationArr.length;
                        boolean z10 = true;
                        for (int i11 = 0; i11 < length2; i11++) {
                            if (classpathLocationArr[i11].isOutputFolder()) {
                                classpathLocationArr[i11] = null;
                            } else {
                                z10 = false;
                            }
                        }
                        if (z10) {
                            continue;
                        }
                    }
                }
                this.notifier.subTask(Messages.bind(Messages.build_readingDelta, iProject.getName()));
                IResourceDelta delta2 = getDelta(iProject);
                if (delta2 == null) {
                    if (DEBUG) {
                        System.out.println("JavaBuilder: Missing delta for: " + iProject.getName());
                    }
                    this.notifier.subTask("");
                    return null;
                }
                if (delta2.getKind() != 0) {
                    if (DEBUG) {
                        System.out.println("JavaBuilder: Found binary delta for: " + iProject.getName());
                    }
                    simpleLookupTable.put(iProject, delta2);
                }
            }
        }
        this.notifier.subTask("");
        return simpleLookupTable;
    }

    public static IMarker[] getProblemsFor(IResource iResource) {
        if (iResource != null) {
            try {
                if (iResource.exists()) {
                    IMarker[] findMarkers = iResource.findMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 2);
                    HashSet<String> managedMarkerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
                    if (managedMarkerTypes.isEmpty()) {
                        return findMarkers;
                    }
                    ArrayList arrayList = new ArrayList(5);
                    for (IMarker iMarker : findMarkers) {
                        arrayList.add(iMarker);
                    }
                    Iterator<String> it = managedMarkerTypes.iterator();
                    while (it.hasNext()) {
                        for (IMarker iMarker2 : iResource.findMarkers(it.next(), false, 2)) {
                            arrayList.add(iMarker2);
                        }
                    }
                    IMarker[] iMarkerArr = new IMarker[arrayList.size()];
                    arrayList.toArray(iMarkerArr);
                    return iMarkerArr;
                }
            } catch (CoreException unused) {
            }
        }
        return new IMarker[0];
    }

    private IProject[] getRequiredProjects(boolean z10) {
        if (this.javaProject == null || this.workspaceRoot == null) {
            return new IProject[0];
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ExternalFoldersManager externalManager = JavaModelManager.getExternalManager();
        try {
            for (IClasspathEntry iClasspathEntry : this.javaProject.getExpandedClasspath()) {
                IPath path = iClasspathEntry.getPath();
                int entryKind = iClasspathEntry.getEntryKind();
                IProject iProject = null;
                if (entryKind != 1) {
                    if (entryKind == 2) {
                        IProject project = this.workspaceRoot.getProject(path.lastSegment());
                        if (!((ClasspathEntry) iClasspathEntry).isOptional() || JavaProject.hasJavaNature(project)) {
                            iProject = project;
                        }
                    }
                } else if (z10 && path.segmentCount() > 0) {
                    IResource findMember = this.workspaceRoot.findMember(path.segment(0));
                    if (findMember instanceof IProject) {
                        iProject = (IProject) findMember;
                    } else {
                        IFolder folder = externalManager.getFolder(path);
                        if (folder != null) {
                            iProject = folder.getProject();
                        }
                    }
                }
                if (iProject != null && !linkedHashSet.contains(iProject)) {
                    linkedHashSet.add(iProject);
                }
            }
            IProject[] iProjectArr = new IProject[linkedHashSet.size()];
            linkedHashSet.toArray(iProjectArr);
            return iProjectArr;
        } catch (JavaModelException unused) {
            return new IProject[0];
        }
    }

    public static IMarker[] getTasksFor(IResource iResource) {
        if (iResource != null) {
            try {
                if (iResource.exists()) {
                    return iResource.findMarkers(IJavaModelMarker.TASK_MARKER, false, 2);
                }
            } catch (CoreException unused) {
            }
        }
        return new IMarker[0];
    }

    private boolean hasClasspathChanged() {
        return hasClasspathChanged(CompilationGroup.MAIN) || hasClasspathChanged(CompilationGroup.TEST);
    }

    private boolean hasJavaBuilder(IProject iProject) throws CoreException {
        for (ICommand iCommand : iProject.getDescription().getBuildSpec()) {
            if (iCommand.getBuilderName().equals(JavaCore.BUILDER_ID)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasStructuralDelta() {
        ClasspathLocation[] classpathLocationArr;
        IPath projectRelativePath;
        IResourceDelta findMember;
        IResourceDelta delta = getDelta(this.currentProject);
        if (delta != null && delta.getKind() != 0 && (classpathLocationArr = (ClasspathLocation[]) this.binaryLocationsPerProject.get(this.currentProject)) != null) {
            for (ClasspathLocation classpathLocation : classpathLocationArr) {
                if (classpathLocation != null && (projectRelativePath = classpathLocation.getProjectRelativePath()) != null && (findMember = delta.findMember(projectRelativePath)) != null && findMember.getKind() != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    private int initializeBuilder(int i10, boolean z10) throws CoreException {
        int i11;
        this.javaProject = (JavaProject) JavaCore.create(this.currentProject);
        this.workspaceRoot = this.currentProject.getWorkspace().getRoot();
        if (z10) {
            CompilationParticipant[] compilationParticipants = JavaModelManager.getJavaModelManager().compilationParticipants.getCompilationParticipants(this.javaProject);
            this.participants = compilationParticipants;
            if (compilationParticipants != null) {
                int length = compilationParticipants.length;
                i11 = i10;
                for (int i12 = 0; i12 < length; i12++) {
                    if (this.participants[i12].aboutToBuild(this.javaProject) == 2) {
                        i11 = 6;
                    }
                }
            } else {
                i11 = i10;
            }
            String name = this.currentProject.getName();
            LinkedHashSet<String> linkedHashSet = builtProjects;
            if (linkedHashSet == null || linkedHashSet.contains(name)) {
                builtProjects = new LinkedHashSet<>();
            }
            builtProjects.add(name);
        } else {
            i11 = i10;
        }
        SimpleLookupTable simpleLookupTable = new SimpleLookupTable(3);
        this.binaryLocationsPerProject = simpleLookupTable;
        this.nameEnvironment = new NameEnvironment(this.workspaceRoot, this.javaProject, simpleLookupTable, this.notifier, CompilationGroup.MAIN);
        this.testNameEnvironment = new NameEnvironment(this.workspaceRoot, this.javaProject, this.binaryLocationsPerProject, this.notifier, CompilationGroup.TEST);
        if (z10) {
            String option = this.javaProject.getOption(JavaCore.CORE_JAVA_BUILD_RESOURCE_COPY_FILTER, true);
            char[][] splitAndTrimOn = (option == null || option.length() <= 0) ? null : CharOperation.splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, option.toCharArray());
            if (splitAndTrimOn == null) {
                this.extraResourceFileFilters = null;
                this.extraResourceFolderFilters = null;
            } else {
                int i13 = 0;
                int i14 = 0;
                for (char[] cArr : splitAndTrimOn) {
                    if (cArr.length != 0) {
                        if (cArr[cArr.length - 1] == '/') {
                            i14++;
                        } else {
                            i13++;
                        }
                    }
                }
                this.extraResourceFileFilters = new char[i13];
                this.extraResourceFolderFilters = new String[i14];
                for (char[] cArr2 : splitAndTrimOn) {
                    if (cArr2.length != 0) {
                        if (cArr2[cArr2.length - 1] == '/') {
                            i14--;
                            this.extraResourceFolderFilters[i14] = new String(cArr2, 0, cArr2.length - 1);
                        } else {
                            i13--;
                            this.extraResourceFileFilters[i13] = cArr2;
                        }
                    }
                }
            }
        }
        return i11;
    }

    private boolean isClasspathBroken(JavaProject javaProject, boolean z10) throws CoreException {
        IMarker[] findMarkers = javaProject.getProject().findMarkers(IJavaModelMarker.BUILDPATH_PROBLEM_MARKER, false, 0);
        int length = findMarkers.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (findMarkers[i10].getAttribute("severity", -1) == 2) {
                if (!z10) {
                    return true;
                }
                Object attribute = findMarkers[i10].getAttribute("id");
                if (!(attribute instanceof Integer) || ((Integer) attribute).intValue() != 1014) {
                    return true;
                }
                new ClasspathValidation(javaProject).validate();
                return isClasspathBroken(javaProject, false);
            }
        }
        return false;
    }

    private boolean isWorthBuilding() throws CoreException {
        IProject[] iProjectArr;
        boolean z10;
        char c10;
        if (!JavaCore.ABORT.equals(this.javaProject.getOption(JavaCore.CORE_JAVA_BUILD_INVALID_CLASSPATH, true))) {
            if (DEBUG) {
                System.out.println("JavaBuilder: Ignoring invalid classpath");
            }
            return true;
        }
        char c11 = '\n';
        boolean z11 = false;
        if (isClasspathBroken(this.javaProject, true)) {
            if (DEBUG) {
                System.out.println("JavaBuilder: Aborted build because project has classpath errors (incomplete or involved in cycle)");
            }
            removeProblemsAndTasksFor(this.currentProject);
            this.currentProject.createMarker(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", IJavaModelMarker.CATEGORY_ID, "sourceId"}, new Object[]{Messages.build_abortDueToClasspathProblems, 2, 10, SOURCE_ID});
            return false;
        }
        if ("warning".equals(this.javaProject.getOption(JavaCore.CORE_INCOMPLETE_CLASSPATH, true))) {
            return true;
        }
        IProject[] requiredProjects = getRequiredProjects(false);
        int length = requiredProjects.length;
        int i10 = 0;
        while (i10 < length) {
            IProject iProject = requiredProjects[i10];
            if (getLastState(iProject) == null) {
                JavaProject javaProject = (JavaProject) JavaCore.create(iProject);
                if (javaProject.hasCycleMarker()) {
                    iProjectArr = requiredProjects;
                    if ("warning".equals(this.javaProject.getOption(JavaCore.CORE_CIRCULAR_CLASSPATH, true))) {
                        if (DEBUG) {
                            System.out.println("JavaBuilder: Continued to build even though prereq project " + iProject.getName() + " was not built since its part of a cycle");
                        }
                        z10 = false;
                        c10 = '\n';
                    }
                } else {
                    iProjectArr = requiredProjects;
                }
                if (hasJavaBuilder(iProject)) {
                    if (DEBUG) {
                        System.out.println("JavaBuilder: Aborted build because prereq project " + iProject.getName() + " was not built");
                    }
                    removeProblemsAndTasksFor(this.currentProject);
                    this.currentProject.createMarker(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", IJavaModelMarker.CATEGORY_ID, "sourceId"}, new Object[]{isClasspathBroken(javaProject, true) ? Messages.bind(Messages.build_prereqProjectHasClasspathProblems, iProject.getName()) : Messages.bind(Messages.build_prereqProjectMustBeRebuilt, iProject.getName()), 2, 10, SOURCE_ID});
                    return false;
                }
                if (DEBUG) {
                    System.out.println("JavaBuilder: Continued to build even though prereq project " + iProject.getName() + " is not built by JavaBuilder");
                }
                z10 = false;
                c10 = '\n';
            } else {
                iProjectArr = requiredProjects;
                z10 = z11;
                c10 = c11;
            }
            i10++;
            c11 = c10;
            z11 = z10;
            requiredProjects = iProjectArr;
        }
        return true;
    }

    private void printLocations(ClasspathLocation[] classpathLocationArr, ClasspathLocation[] classpathLocationArr2) {
        System.out.println("JavaBuilder: New locations:");
        for (ClasspathLocation classpathLocation : classpathLocationArr) {
            System.out.println(C13155a.f85806a + classpathLocation.debugPathString());
        }
        System.out.println("JavaBuilder: Old locations:");
        for (ClasspathLocation classpathLocation2 : classpathLocationArr2) {
            System.out.println(C13155a.f85806a + classpathLocation2.debugPathString());
        }
    }

    public static State readState(IProject iProject, DataInputStream dataInputStream) throws IOException, CoreException {
        return State.read(iProject, dataInputStream);
    }

    private void recordNewState(State state) {
        for (Object obj : this.binaryLocationsPerProject.keyTable) {
            IProject iProject = (IProject) obj;
            if (iProject != null && iProject != this.currentProject) {
                state.recordStructuralDependency(iProject, getLastState(iProject));
            }
        }
        if (DEBUG) {
            System.out.println("JavaBuilder: Recording new state : " + ((Object) state));
        }
        JavaModelManager.getJavaModelManager().setLastBuiltState(this.currentProject, state);
    }

    public static void removeProblemsAndTasksFor(IResource iResource) {
        if (iResource != null) {
            try {
                if (iResource.exists()) {
                    iResource.deleteMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 2);
                    iResource.deleteMarkers(IJavaModelMarker.TASK_MARKER, false, 2);
                    HashSet<String> managedMarkerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
                    if (managedMarkerTypes.size() == 0) {
                        return;
                    }
                    Iterator<String> it = managedMarkerTypes.iterator();
                    while (it.hasNext()) {
                        iResource.deleteMarkers(it.next(), false, 2);
                    }
                }
            } catch (CoreException unused) {
            }
        }
    }

    public static void removeProblemsFor(IResource iResource) {
        if (iResource != null) {
            try {
                if (iResource.exists()) {
                    iResource.deleteMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 2);
                    HashSet<String> managedMarkerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
                    if (managedMarkerTypes.size() == 0) {
                        return;
                    }
                    Iterator<String> it = managedMarkerTypes.iterator();
                    while (it.hasNext()) {
                        iResource.deleteMarkers(it.next(), false, 2);
                    }
                }
            } catch (CoreException unused) {
            }
        }
    }

    public static void removeTasksFor(IResource iResource) {
        if (iResource != null) {
            try {
                if (iResource.exists()) {
                    iResource.deleteMarkers(IJavaModelMarker.TASK_MARKER, false, 2);
                }
            } catch (CoreException unused) {
            }
        }
    }

    public static void writeState(Object obj, DataOutputStream dataOutputStream) throws IOException {
        ((State) obj).write(dataOutputStream);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0113, code lost:
    
        if (r7 == false) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IProject[] build(int i10, Map map, IProgressMonitor iProgressMonitor) throws CoreException {
        boolean z10;
        IProject project = getProject();
        this.currentProject = project;
        int i11 = 0;
        if (project == null || !project.isAccessible()) {
            return new IProject[0];
        }
        if (DEBUG) {
            System.out.println("\nJavaBuilder: Starting build of " + this.currentProject.getName() + " @ " + ((Object) new Date(System.currentTimeMillis())));
        }
        BuildNotifier buildNotifier = new BuildNotifier(iProgressMonitor, this.currentProject);
        this.notifier = buildNotifier;
        buildNotifier.begin();
        try {
            try {
                try {
                    this.notifier.checkCancel();
                    int initializeBuilder = initializeBuilder(i10, true);
                    if (isWorthBuilding()) {
                        if (initializeBuilder == 6) {
                            if (DEBUG) {
                                System.out.println("JavaBuilder: Performing full build as requested");
                            }
                            buildAll();
                        } else {
                            State lastState = getLastState(this.currentProject);
                            this.lastState = lastState;
                            if (lastState == null) {
                                if (DEBUG) {
                                    System.out.println("JavaBuilder: Performing full build since last saved state was not found");
                                }
                                buildAll();
                            } else if (hasClasspathChanged()) {
                                if (DEBUG) {
                                    System.out.println("JavaBuilder: Performing full build since classpath has changed");
                                }
                                buildAll();
                            } else {
                                if (this.nameEnvironment.sourceLocations.length <= 0 && this.testNameEnvironment.sourceLocations.length <= 0) {
                                    if (hasStructuralDelta()) {
                                        if (DEBUG) {
                                            System.out.println("JavaBuilder: Performing full build since there are structural deltas");
                                        }
                                        buildAll();
                                    } else {
                                        if (DEBUG) {
                                            System.out.println("JavaBuilder: Nothing to build since there are no source folders and no deltas");
                                        }
                                        this.lastState.tagAsNoopBuild();
                                    }
                                }
                                SimpleLookupTable findDeltas = findDeltas();
                                if (findDeltas == null) {
                                    if (DEBUG) {
                                        System.out.println("JavaBuilder: Performing full build since deltas are missing after incremental request");
                                    }
                                    buildAll();
                                } else if (findDeltas.elementSize > 0) {
                                    buildDeltas(findDeltas);
                                } else if (DEBUG) {
                                    System.out.println("JavaBuilder: Nothing to build since deltas were empty");
                                }
                            }
                        }
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    CompilationParticipant[] compilationParticipantArr = this.participants;
                    int length = compilationParticipantArr == null ? 0 : compilationParticipantArr.length;
                    while (i11 < length) {
                        this.participants[i11].buildFinished(this.javaProject);
                        i11++;
                    }
                } catch (MissingSourceFileException e10) {
                    if (DEBUG) {
                        System.out.println(Messages.bind(Messages.build_missingSourceFile, e10.missingSourceFile));
                    }
                    removeProblemsAndTasksFor(this.currentProject);
                    this.currentProject.createMarker(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", "sourceId"}, new Object[]{Messages.bind(Messages.build_missingSourceFile, e10.missingSourceFile), 2, SOURCE_ID});
                    CompilationParticipant[] compilationParticipantArr2 = this.participants;
                    int length2 = compilationParticipantArr2 == null ? 0 : compilationParticipantArr2.length;
                    while (i11 < length2) {
                        this.participants[i11].buildFinished(this.javaProject);
                        i11++;
                    }
                }
            } catch (ImageBuilderInternalException e11) {
                Util.log((Throwable) e11.getThrowable(), "JavaBuilder handling ImageBuilderInternalException while building: " + this.currentProject.getName());
                createInconsistentBuildMarker(e11.coreException);
                CompilationParticipant[] compilationParticipantArr3 = this.participants;
                int length3 = compilationParticipantArr3 == null ? 0 : compilationParticipantArr3.length;
                while (i11 < length3) {
                    this.participants[i11].buildFinished(this.javaProject);
                    i11++;
                }
            } catch (CoreException e12) {
                Util.log((Throwable) e12, "JavaBuilder handling CoreException while building: " + this.currentProject.getName());
                createInconsistentBuildMarker(e12);
                CompilationParticipant[] compilationParticipantArr4 = this.participants;
                int length4 = compilationParticipantArr4 == null ? 0 : compilationParticipantArr4.length;
                while (i11 < length4) {
                    this.participants[i11].buildFinished(this.javaProject);
                    i11++;
                }
            }
        } catch (Throwable th2) {
            CompilationParticipant[] compilationParticipantArr5 = this.participants;
            int length5 = compilationParticipantArr5 == null ? 0 : compilationParticipantArr5.length;
            while (i11 < length5) {
                this.participants[i11].buildFinished(this.javaProject);
                i11++;
            }
            clearLastState();
            this.notifier.done();
            cleanup();
            throw th2;
        }
        clearLastState();
        this.notifier.done();
        cleanup();
        IProject[] requiredProjects = getRequiredProjects(true);
        if (DEBUG) {
            System.out.println("JavaBuilder: Finished build of " + this.currentProject.getName() + " @ " + ((Object) new Date(System.currentTimeMillis())) + "\n");
        }
        return requiredProjects;
    }

    public void clean(IProgressMonitor iProgressMonitor) throws CoreException {
        IProject project = getProject();
        this.currentProject = project;
        if (project == null || !project.isAccessible()) {
            return;
        }
        if (DEBUG) {
            System.out.println("\nJavaBuilder: Cleaning " + this.currentProject.getName() + " @ " + ((Object) new Date(System.currentTimeMillis())));
        }
        BuildNotifier buildNotifier = new BuildNotifier(iProgressMonitor, this.currentProject);
        this.notifier = buildNotifier;
        buildNotifier.begin();
        try {
            try {
                this.notifier.checkCancel();
                initializeBuilder(15, true);
                if (DEBUG) {
                    System.out.println("JavaBuilder: Clearing last state as part of clean : " + ((Object) this.lastState));
                }
                clearLastState();
                removeProblemsAndTasksFor(this.currentProject);
                new BatchImageBuilder(this, false, CompilationGroup.MAIN).cleanOutputFolders(false);
                new BatchImageBuilder(this, false, CompilationGroup.TEST).cleanOutputFolders(false);
            } catch (CoreException e10) {
                Util.log((Throwable) e10, "JavaBuilder handling CoreException while cleaning: " + this.currentProject.getName());
                createInconsistentBuildMarker(e10);
            }
            this.notifier.done();
            cleanup();
            if (DEBUG) {
                System.out.println("JavaBuilder: Finished cleaning " + this.currentProject.getName() + " @ " + ((Object) new Date(System.currentTimeMillis())));
            }
        } catch (Throwable th2) {
            this.notifier.done();
            cleanup();
            throw th2;
        }
    }

    public boolean filterExtraResource(IResource iResource) {
        if (this.extraResourceFileFilters != null) {
            char[] charArray = iResource.getName().toCharArray();
            int length = this.extraResourceFileFilters.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (CharOperation.match(this.extraResourceFileFilters[i10], charArray, true)) {
                    return true;
                }
            }
        }
        if (this.extraResourceFolderFilters != null) {
            IPath projectRelativePath = iResource.getProjectRelativePath();
            String obj = projectRelativePath.toString();
            int segmentCount = projectRelativePath.segmentCount();
            if (iResource.getType() == 1) {
                segmentCount--;
            }
            int length2 = this.extraResourceFolderFilters.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (obj.indexOf(this.extraResourceFolderFilters[i11]) != -1) {
                    for (int i12 = 0; i12 < segmentCount; i12++) {
                        if (this.extraResourceFolderFilters[i11].equals(projectRelativePath.segment(i12))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public State getLastState(IProject iProject) {
        return (State) JavaModelManager.getJavaModelManager().getLastBuiltState(iProject, this.notifier.monitor);
    }

    public boolean hasBuildpathErrors() throws CoreException {
        for (IMarker iMarker : this.currentProject.findMarkers(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, false, 0)) {
            if (iMarker.getAttribute(IJavaModelMarker.CATEGORY_ID, -1) == 10) {
                return true;
            }
        }
        return false;
    }

    public void mustPropagateStructuralChanges() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(3);
        this.javaProject.updateCycleParticipants(new ArrayList(), linkedHashSet, this.workspaceRoot, new HashSet(3), null);
        IPath path = this.javaProject.getPath();
        Iterator<E> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            IPath iPath = (IPath) it.next();
            if (iPath != path) {
                IProject project = this.workspaceRoot.getProject(iPath.segment(0));
                if (hasBeenBuilt(project)) {
                    if (DEBUG) {
                        System.out.println("JavaBuilder: Requesting another build iteration since cycle participant " + project.getName() + " has not yet seen some structural changes");
                    }
                    needRebuild();
                    return;
                }
            }
        }
    }

    public String toString() {
        if (this.currentProject == null) {
            return "JavaBuilder for unknown project";
        }
        return "JavaBuilder for " + this.currentProject.getName();
    }

    private boolean hasClasspathChanged(CompilationGroup compilationGroup) {
        CompilationGroup compilationGroup2 = CompilationGroup.MAIN;
        ClasspathMultiDirectory[] classpathMultiDirectoryArr = (compilationGroup == compilationGroup2 ? this.nameEnvironment : this.testNameEnvironment).sourceLocations;
        ClasspathMultiDirectory[] classpathMultiDirectoryArr2 = compilationGroup == compilationGroup2 ? this.lastState.sourceLocations : this.lastState.testSourceLocations;
        int length = classpathMultiDirectoryArr.length;
        int length2 = classpathMultiDirectoryArr2.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length && i11 < length2) {
            if (!classpathMultiDirectoryArr[i10].equals(classpathMultiDirectoryArr2[i11])) {
                if (classpathMultiDirectoryArr[i10].sourceFolder.members().length == 0) {
                    i11--;
                } else {
                    if (!this.lastState.isSourceFolderEmpty(classpathMultiDirectoryArr2[i11].sourceFolder)) {
                        if (DEBUG) {
                            System.out.println("JavaBuilder: New location: " + ((Object) classpathMultiDirectoryArr[i10]) + "\n!= old location: " + ((Object) classpathMultiDirectoryArr2[i11]));
                            printLocations(classpathMultiDirectoryArr, classpathMultiDirectoryArr2);
                        }
                        return true;
                    }
                    i10--;
                }
            }
            i10++;
            i11++;
        }
        while (i10 < length) {
            if (classpathMultiDirectoryArr[i10].sourceFolder.members().length != 0) {
                if (DEBUG) {
                    System.out.println("JavaBuilder: Added non-empty source folder");
                    printLocations(classpathMultiDirectoryArr, classpathMultiDirectoryArr2);
                }
                return true;
            }
            i10++;
        }
        while (i11 < length2) {
            if (!this.lastState.isSourceFolderEmpty(classpathMultiDirectoryArr2[i11].sourceFolder)) {
                if (DEBUG) {
                    System.out.println("JavaBuilder: Removed non-empty source folder");
                    printLocations(classpathMultiDirectoryArr, classpathMultiDirectoryArr2);
                }
                return true;
            }
            i11++;
        }
        CompilationGroup compilationGroup3 = CompilationGroup.MAIN;
        ClasspathLocation[] classpathLocationArr = (compilationGroup == compilationGroup3 ? this.nameEnvironment : this.testNameEnvironment).binaryLocations;
        ClasspathLocation[] classpathLocationArr2 = compilationGroup == compilationGroup3 ? this.lastState.binaryLocations : this.lastState.testBinaryLocations;
        int length3 = classpathLocationArr.length;
        int length4 = classpathLocationArr2.length;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length3 && i13 < length4) {
            if (!classpathLocationArr[i12].equals(classpathLocationArr2[i13])) {
                if (DEBUG) {
                    System.out.println("JavaBuilder: New location: " + ((Object) classpathLocationArr[i12]) + "\n!= old location: " + ((Object) classpathLocationArr2[i13]));
                    printLocations(classpathLocationArr, classpathLocationArr2);
                }
                return true;
            }
            i12++;
            i13++;
        }
        if (i12 >= length3 && i13 >= length4) {
            return false;
        }
        if (DEBUG) {
            System.out.println("JavaBuilder: Number of binary folders/jar files has changed:");
            printLocations(classpathLocationArr, classpathLocationArr2);
        }
        return true;
    }
}
