package org.eclipse.jdt.internal.core;

import com.eclipsesource.v8.Platform;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class ExternalFoldersManager {
    private static final String EXTERNAL_PROJECT_NAME = ".org.eclipse.jdt.core.external.folders";
    private static final String LINKED_FOLDER_NAME = ".link";
    private static ExternalFoldersManager MANAGER;
    private static final boolean WINDOWS = System.getProperty("os.name").toLowerCase().contains(Platform.WINDOWS);
    private final AtomicInteger counter = new AtomicInteger(0);
    private Map<IPath, IFolder> folders;
    private Set<IPath> pendingFolders;
    private RefreshJob refreshJob;

    public static class RefreshJob extends Job {
        final LinkedHashSet<IPath> externalFolders;

        public RefreshJob() {
            super(Messages.refreshing_external_folders);
            setSystem(true);
            IWorkspace workspace = ResourcesPlugin.getWorkspace();
            setRule(workspace.getRuleFactory().refreshRule(workspace.getRoot()));
            this.externalFolders = new LinkedHashSet<>();
        }

        public void addFoldersToRefresh(Collection<IPath> collection) {
            boolean isEmpty;
            synchronized (this.externalFolders) {
                this.externalFolders.addAll(collection);
                isEmpty = this.externalFolders.isEmpty();
            }
            if (isEmpty) {
                return;
            }
            schedule();
        }

        public boolean belongsTo(Object obj) {
            return obj == ResourcesPlugin.FAMILY_MANUAL_REFRESH;
        }

        public IStatus run(IProgressMonitor iProgressMonitor) {
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.eclipse.jdt.internal.core.ExternalFoldersManager$1InitializeFolders] */
    private ExternalFoldersManager() {
        if (org.eclipse.core.runtime.Platform.isRunning()) {
            ?? r02 = new WorkspaceJob() {
                public boolean belongsTo(Object obj) {
                    return obj == C1InitializeFolders.class;
                }

                public IStatus runInWorkspace(IProgressMonitor iProgressMonitor) {
                    ExternalFoldersManager.this.getFolders();
                    return Status.OK_STATUS;
                }
            };
            r02.setRule(getExternalFoldersProject());
            r02.schedule();
        }
    }

    public static Set<IPath> getExternalFolders(IClasspathEntry[] iClasspathEntryArr) {
        LinkedHashSet linkedHashSet = null;
        if (iClasspathEntryArr == null) {
            return null;
        }
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            if (iClasspathEntry.getEntryKind() == 1) {
                IPath path = iClasspathEntry.getPath();
                if (isExternalFolderPath(path)) {
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                    }
                    linkedHashSet.add(path);
                }
                IPath sourceAttachmentPath = iClasspathEntry.getSourceAttachmentPath();
                if (isExternalFolderPath(sourceAttachmentPath)) {
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                    }
                    linkedHashSet.add(sourceAttachmentPath);
                }
            }
        }
        return linkedHashSet;
    }

    public static synchronized ExternalFoldersManager getExternalFoldersManager() {
        ExternalFoldersManager externalFoldersManager;
        synchronized (ExternalFoldersManager.class) {
            try {
                if (MANAGER == null) {
                    MANAGER = new ExternalFoldersManager();
                }
                externalFoldersManager = MANAGER;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return externalFoldersManager;
    }

    public Map<IPath, IFolder> getFolders() {
        if (this.folders == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            IProject externalFoldersProject = getExternalFoldersProject();
            try {
                if (!externalFoldersProject.isAccessible()) {
                    if (!externalFoldersProject.exists()) {
                        Map<IPath, IFolder> synchronizedMap = Collections.synchronizedMap(linkedHashMap);
                        this.folders = synchronizedMap;
                        return synchronizedMap;
                    }
                    openExternalFoldersProject(externalFoldersProject, null);
                }
                for (IFolder iFolder : externalFoldersProject.members()) {
                    if (iFolder.getType() == 2 && iFolder.isLinked() && iFolder.getName().startsWith(LINKED_FOLDER_NAME)) {
                        linkedHashMap.put(iFolder.getLocation(), iFolder);
                    }
                }
            } catch (CoreException e10) {
                Util.log((Throwable) e10, "Exception while initializing external folders");
            }
            synchronized (this) {
                try {
                    if (this.folders == null) {
                        this.folders = Collections.synchronizedMap(linkedHashMap);
                    }
                } finally {
                }
            }
        }
        return this.folders;
    }

    private List<Map.Entry<IPath, IFolder>> getFoldersToCleanUp(IProgressMonitor iProgressMonitor) throws CoreException {
        DeltaProcessingState deltaState = JavaModelManager.getDeltaState();
        Map<IPath, DeltaProcessor.RootInfo> map = deltaState.roots;
        Map<IPath, IPath> map2 = deltaState.sourceAttachments;
        ArrayList arrayList = null;
        if (map == null && map2 == null) {
            return null;
        }
        Map<IPath, IFolder> folders = getFolders();
        synchronized (folders) {
            try {
                for (Map.Entry<IPath, IFolder> entry : folders.entrySet()) {
                    IPath key = entry.getKey();
                    if (map != null && !map.containsKey(key) && map2 != null && !map2.containsKey(key) && entry.getValue() != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(entry);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    public static boolean isExternalFolderPath(IPath iPath) {
        if (iPath != null && !iPath.isEmpty()) {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            if (!javaModelManager.isExternalFile(iPath) && !javaModelManager.isAssumedExternalFile(iPath) && iPath.isAbsolute() && (!WINDOWS || iPath.getDevice() != null)) {
                File file = iPath.toFile();
                if (Files.isRegularFile(file.toPath(), new LinkOption[0])) {
                    javaModelManager.addExternalFile(iPath);
                    return false;
                }
                if (Files.isDirectory(file.toPath(), new LinkOption[0])) {
                    return true;
                }
                if (isInternalFilePath(iPath) || isInternalContainerPath(iPath)) {
                    return false;
                }
                if (iPath.getFileExtension() == null) {
                    return true;
                }
                javaModelManager.addAssumedExternalFile(iPath);
                return false;
            }
        }
        return false;
    }

    private static boolean isInternalContainerPath(IPath iPath) {
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        int segmentCount = iPath.segmentCount();
        if (segmentCount == 1 && root.getProject(iPath.segment(0)).exists()) {
            return true;
        }
        return segmentCount > 1 && root.getFolder(iPath).exists();
    }

    private static boolean isInternalFilePath(IPath iPath) {
        return iPath.segmentCount() > 1 && ResourcesPlugin.getWorkspace().getRoot().getFile(iPath).exists();
    }

    public static boolean isInternalPathForExternalFolder(IPath iPath) {
        return EXTERNAL_PROJECT_NAME.equals(iPath.segment(0));
    }

    private void openExternalFoldersProject(IProject iProject, IProgressMonitor iProgressMonitor) throws CoreException {
        try {
            iProject.open(iProgressMonitor);
        } catch (CoreException e10) {
            if (e10.getStatus().getCode() == 567) {
                iProject.delete(false, true, iProgressMonitor);
                createExternalFoldersProject(iProject, iProgressMonitor);
            } else {
                IPath append = JavaCore.getPlugin().getStateLocation().append(EXTERNAL_PROJECT_NAME);
                try {
                    Files.createDirectories(append.toFile().toPath(), new FileAttribute[0]);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(append.append(".project").toOSString());
                        try {
                            fileOutputStream.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<projectDescription>\n\t<name>.org.eclipse.jdt.core.external.folders</name>\n\t<comment></comment>\n\t<projects>\n\t</projects>\n\t<buildSpec>\n\t</buildSpec>\n\t<natures>\n\t</natures>\n</projectDescription>".getBytes());
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            fileOutputStream.close();
                            throw th2;
                        }
                    } finally {
                    }
                } catch (IOException unused) {
                    iProject.delete(false, true, iProgressMonitor);
                    createExternalFoldersProject(iProject, iProgressMonitor);
                }
            }
            iProject.open(iProgressMonitor);
        }
    }

    private synchronized void runRefreshJob(Collection<IPath> collection) {
        if (collection != null) {
            try {
                if (!collection.isEmpty()) {
                    if (this.refreshJob == null) {
                        this.refreshJob = new RefreshJob();
                    }
                    this.refreshJob.addFoldersToRefresh(collection);
                }
            } finally {
            }
        }
    }

    public IFolder addFolder(IPath iPath, boolean z10) {
        return addFolder(iPath, getExternalFoldersProject(), z10);
    }

    public void cleanUp(IProgressMonitor iProgressMonitor) throws CoreException {
        List<Map.Entry<IPath, IFolder>> foldersToCleanUp = getFoldersToCleanUp(iProgressMonitor);
        if (foldersToCleanUp == null) {
            return;
        }
        for (Map.Entry<IPath, IFolder> entry : foldersToCleanUp) {
            entry.getValue().delete(true, iProgressMonitor);
            this.folders.remove(entry.getKey());
        }
        IProject externalFoldersProject = getExternalFoldersProject();
        if (externalFoldersProject.isAccessible() && externalFoldersProject.members().length == 1) {
            externalFoldersProject.delete(true, iProgressMonitor);
        }
    }

    public IProject createExternalFoldersProject(IProgressMonitor iProgressMonitor) throws CoreException {
        IProject externalFoldersProject = getExternalFoldersProject();
        if (!externalFoldersProject.isAccessible()) {
            if (!externalFoldersProject.exists()) {
                createExternalFoldersProject(externalFoldersProject, iProgressMonitor);
            }
            openExternalFoldersProject(externalFoldersProject, iProgressMonitor);
        }
        return externalFoldersProject;
    }

    public IFolder createLinkFolder(IPath iPath, boolean z10, IProgressMonitor iProgressMonitor) throws CoreException {
        return createLinkFolder(iPath, z10, createExternalFoldersProject(iProgressMonitor), iProgressMonitor);
    }

    public void createPendingFolders(IProgressMonitor iProgressMonitor) throws JavaModelException {
        Object[] array;
        synchronized (this) {
            Set<IPath> set = this.pendingFolders;
            if (set != null && !set.isEmpty()) {
                try {
                    IProject createExternalFoldersProject = createExternalFoldersProject(iProgressMonitor);
                    synchronized (this) {
                        array = this.pendingFolders.toArray();
                        this.pendingFolders.clear();
                    }
                    for (int i10 = 0; i10 < array.length; i10++) {
                        try {
                            createLinkFolder((IPath) array[i10], false, createExternalFoldersProject, iProgressMonitor);
                        } catch (CoreException e10) {
                            Util.log((Throwable) e10, "Error while creating a link for external folder :" + array[i10]);
                        }
                    }
                } catch (CoreException e11) {
                    throw new JavaModelException(e11);
                }
            }
        }
    }

    public IProject getExternalFoldersProject() {
        return ResourcesPlugin.getWorkspace().getRoot().getProject(EXTERNAL_PROJECT_NAME);
    }

    public IFolder getFolder(IPath iPath) {
        return getFolders().get(iPath);
    }

    public void refreshReferences(IProject[] iProjectArr, IProgressMonitor iProgressMonitor) {
        Set<IPath> externalFolders;
        IProject externalFoldersProject = getExternalFoldersProject();
        Collection<IPath> collection = null;
        for (int i10 = 0; i10 < iProjectArr.length; i10++) {
            try {
                if (!iProjectArr[i10].equals(externalFoldersProject) && JavaProject.hasJavaNature(iProjectArr[i10]) && (externalFolders = getExternalFolders(((JavaProject) JavaCore.create(iProjectArr[i10])).getResolvedClasspath())) != null && externalFolders.size() != 0) {
                    if (collection == null) {
                        collection = new LinkedHashSet<>();
                    }
                    collection.addAll(externalFolders);
                }
            } catch (CoreException e10) {
                Util.log((Throwable) e10, "Exception while refreshing external project");
                return;
            }
        }
        runRefreshJob(collection);
    }

    public IFolder removeFolder(IPath iPath) {
        return getFolders().remove(iPath);
    }

    public synchronized boolean removePendingFolder(Object obj) {
        Set<IPath> set = this.pendingFolders;
        if (set == null) {
            return false;
        }
        return set.remove(obj);
    }

    private IFolder addFolder(IPath iPath, IProject iProject, boolean z10) {
        IFolder folder;
        Map<IPath, IFolder> folders = getFolders();
        synchronized (this) {
            try {
                IFolder iFolder = folders.get(iPath);
                if (iFolder != null) {
                    return iFolder;
                }
                do {
                    folder = iProject.getFolder(LINKED_FOLDER_NAME + this.counter.incrementAndGet());
                } while (folder.exists());
                synchronized (this) {
                    if (z10) {
                        try {
                            if (this.pendingFolders == null) {
                                this.pendingFolders = new LinkedHashSet();
                            }
                            this.pendingFolders.add(iPath);
                        } finally {
                        }
                    }
                    IFolder iFolder2 = folders.get(iPath);
                    if (iFolder2 != null) {
                        return iFolder2;
                    }
                    folders.put(iPath, folder);
                    return folder;
                }
            } finally {
            }
        }
    }

    private IFolder createLinkFolder(IPath iPath, boolean z10, IProject iProject, IProgressMonitor iProgressMonitor) throws CoreException {
        IFolder addFolder = addFolder(iPath, iProject, false);
        if (!addFolder.exists()) {
            try {
                addFolder.createLink(iPath, 16, iProgressMonitor);
            } catch (CoreException e10) {
                if (!addFolder.exists()) {
                    throw e10;
                }
            }
        } else if (z10) {
            addFolder.refreshLocal(2, iProgressMonitor);
        }
        return addFolder;
    }

    private void createExternalFoldersProject(IProject iProject, IProgressMonitor iProgressMonitor) throws CoreException {
        IProjectDescription newProjectDescription = iProject.getWorkspace().newProjectDescription(iProject.getName());
        newProjectDescription.setLocation(JavaCore.getPlugin().getStateLocation().append(EXTERNAL_PROJECT_NAME));
        try {
            iProject.create(newProjectDescription, 4096, iProgressMonitor);
        } catch (CoreException e10) {
            if (!iProject.exists()) {
                throw e10;
            }
        }
    }

    public void refreshReferences(IProject iProject, IProgressMonitor iProgressMonitor) {
        if (!iProject.equals(getExternalFoldersProject()) && JavaProject.hasJavaNature(iProject)) {
            try {
                runRefreshJob(getExternalFolders(((JavaProject) JavaCore.create(iProject)).getResolvedClasspath()));
            } catch (CoreException e10) {
                Util.log((Throwable) e10, "Exception while refreshing external project");
            }
        }
    }
}
