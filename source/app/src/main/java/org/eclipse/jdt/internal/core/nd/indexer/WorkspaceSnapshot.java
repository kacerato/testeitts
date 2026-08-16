package org.eclipse.jdt.internal.core.nd.indexer;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;

public final class WorkspaceSnapshot {
    public static boolean EXPERIMENTAL_INDEX_OUTPUT_FOLDERS;
    private Map<IPath, List<IJavaElement>> allIndexables;

    private WorkspaceSnapshot(Map<IPath, List<IJavaElement>> map) {
        this.allIndexables = map;
    }

    private static void collectAllClassFiles(IWorkspaceRoot iWorkspaceRoot, List<? super IClassFile> list, Collection<? extends IResource> collection, IProgressMonitor iProgressMonitor) {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.addAll(collection);
        while (!arrayDeque.isEmpty()) {
            convert.setWorkRemaining(Math.max(arrayDeque.size(), 3000)).split(1);
            IFile iFile = (IResource) arrayDeque.removeFirst();
            if (iFile instanceof IContainer) {
                try {
                    for (IResource iResource : ((IContainer) iFile).members()) {
                        arrayDeque.addLast(iResource);
                    }
                } catch (CoreException e10) {
                    Package.log((Throwable) e10);
                }
            } else if (iFile instanceof IFile) {
                IFile iFile2 = iFile;
                if (Objects.equals(iFile2.getFileExtension(), "class")) {
                    IJavaElement create = JavaCore.create(iFile2);
                    if (create instanceof IClassFile) {
                        list.add((IClassFile) create);
                    }
                }
            }
        }
    }

    public static WorkspaceSnapshot create(IWorkspaceRoot iWorkspaceRoot, IProgressMonitor iProgressMonitor) throws CoreException {
        return new WorkspaceSnapshot(removeDuplicatePaths(getAllIndexableObjectsInWorkspace(iWorkspaceRoot, SubMonitor.convert(iProgressMonitor).split(3))));
    }

    private static List<IJavaElement> getAllIndexableObjectsInWorkspace(IWorkspaceRoot iWorkspaceRoot, IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 2);
        ArrayList arrayList = new ArrayList();
        IProject[] projects = iWorkspaceRoot.getProjects();
        ArrayList<IProject> arrayList2 = new ArrayList();
        for (IProject iProject : projects) {
            if (iProject.isOpen()) {
                arrayList2.add(iProject);
            }
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        SubMonitor workRemaining = convert.split(1).setWorkRemaining(arrayList2.size());
        for (IProject iProject2 : arrayList2) {
            SubMonitor split = workRemaining.split(1);
            try {
                if (iProject2.isOpen() && iProject2.isNatureEnabled(JavaCore.NATURE_ID)) {
                    IJavaProject create = JavaCore.create(iProject2);
                    IClasspathEntry[] rawClasspath = create.getRawClasspath();
                    if (EXPERIMENTAL_INDEX_OUTPUT_FOLDERS) {
                        IPath outputLocation = create.getOutputLocation();
                        for (IClasspathEntry iClasspathEntry : rawClasspath) {
                            IPath outputLocation2 = iClasspathEntry.getOutputLocation();
                            IResource findMember = iWorkspaceRoot.findMember(outputLocation2 == null ? outputLocation : outputLocation2);
                            if (findMember != null) {
                                hashSet2.add(findMember);
                            }
                        }
                    }
                    IPackageFragmentRoot[] allPackageFragmentRoots = create.getAllPackageFragmentRoots();
                    SubMonitor workRemaining2 = split.setWorkRemaining(allPackageFragmentRoots.length);
                    for (IPackageFragmentRoot iPackageFragmentRoot : allPackageFragmentRoots) {
                        workRemaining2.split(1);
                        if (iPackageFragmentRoot.exists()) {
                            IPath locationForElement = JavaIndex.getLocationForElement(iPackageFragmentRoot);
                            if (!hashSet.contains(locationForElement)) {
                                hashSet.add(locationForElement);
                                if (iPackageFragmentRoot.getKind() != 2) {
                                    collectAllClassFiles(iWorkspaceRoot, arrayList, iPackageFragmentRoot);
                                } else if (iPackageFragmentRoot.isArchive()) {
                                    arrayList.add(iPackageFragmentRoot);
                                } else {
                                    collectAllClassFiles(iWorkspaceRoot, arrayList, iPackageFragmentRoot);
                                }
                            }
                        }
                    }
                }
            } catch (CoreException e10) {
                Package.log((Throwable) e10);
            }
        }
        collectAllClassFiles(iWorkspaceRoot, arrayList, hashSet2, convert.split(1));
        return arrayList;
    }

    private static IPath getWorkspacePathForRoot(IJavaElement iJavaElement) {
        IResource resource = iJavaElement.getResource();
        return resource != null ? resource.getFullPath() : Path.EMPTY;
    }

    private static Map<IPath, List<IJavaElement>> removeDuplicatePaths(List<IJavaElement> list) {
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        for (IJavaElement iJavaElement : list) {
            IPath locationForElement = JavaIndex.getLocationForElement(iJavaElement);
            IPath workspacePathForRoot = getWorkspacePathForRoot(iJavaElement);
            Collection collection = (List) hashMap.get(locationForElement);
            if (collection == null) {
                collection = new ArrayList();
                hashMap.put(locationForElement, collection);
            } else if (workspacePathForRoot != null) {
                if (!hashSet.contains(workspacePathForRoot)) {
                    if (!workspacePathForRoot.isEmpty()) {
                        Package.logInfo("Found duplicate workspace path for " + workspacePathForRoot.toString());
                    }
                    hashSet.add(workspacePathForRoot);
                }
            }
            collection.add(iJavaElement);
        }
        return hashMap;
    }

    public Set<IPath> allLocations() {
        return this.allIndexables.o();
    }

    public List<IJavaElement> get(IPath iPath) {
        List<IJavaElement> list = this.allIndexables.get(iPath);
        return list == null ? Collections.emptyList() : list;
    }

    public Map<IPath, List<IJavaElement>> getAllIndexables() {
        return this.allIndexables;
    }

    private static void collectAllClassFiles(IWorkspaceRoot iWorkspaceRoot, List<? super IClassFile> list, IParent iParent) throws CoreException {
        for (IJavaElement iJavaElement : iParent.getChildren()) {
            try {
                int elementType = iJavaElement.getElementType();
                if (elementType != 5 && iJavaElement.exists()) {
                    if (elementType == 6) {
                        list.add((IClassFile) iJavaElement);
                    } else if (iJavaElement instanceof IParent) {
                        collectAllClassFiles(iWorkspaceRoot, list, (IParent) iJavaElement);
                    }
                }
            } catch (CoreException e10) {
                Package.log((Throwable) e10);
            }
        }
    }
}
