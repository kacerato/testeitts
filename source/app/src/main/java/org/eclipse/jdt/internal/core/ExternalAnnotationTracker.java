package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.core.util.Util;

public class ExternalAnnotationTracker implements IResourceChangeListener {
    private static ExternalAnnotationTracker singleton;
    DirectoryNode tree = new DirectoryNode(null, null);

    public static class DirectoryNode {
        Map<IPath, DirectoryNode> children;
        Map<IPath, ClassFile> classFiles;
        IPackageFragmentRoot modelRoot;
        DirectoryNode parent;
        IPath path;

        public DirectoryNode(DirectoryNode directoryNode, IPath iPath) {
            this.parent = directoryNode;
            this.path = iPath;
        }

        public Map<IPath, DirectoryNode> getChildren() {
            if (this.children == null) {
                this.children = new HashMap();
            }
            return this.children;
        }

        public boolean isEmpty() {
            Map<IPath, DirectoryNode> map = this.children;
            if (map != null && !map.isEmpty()) {
                return false;
            }
            Map<IPath, ClassFile> map2 = this.classFiles;
            return map2 == null || map2.isEmpty();
        }

        public int numClassFiles() {
            Map<IPath, ClassFile> map = this.classFiles;
            if (map != null) {
                return map.size();
            }
            Map<IPath, DirectoryNode> map2 = this.children;
            int i10 = 0;
            if (map2 != null) {
                Iterator<DirectoryNode> it = map2.values().iterator();
                while (it.hasNext()) {
                    i10 += it.next().numClassFiles();
                }
            }
            return i10;
        }

        public void registerClassFile(IPath iPath, ClassFile classFile) {
            if (this.classFiles == null) {
                this.classFiles = new HashMap();
            }
            this.classFiles.put(iPath, classFile);
            if (this.modelRoot == null) {
                this.modelRoot = classFile.getPackageFragmentRoot();
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.classFiles != null) {
                stringBuffer.append("annotation base ");
            }
            stringBuffer.append("directory\n");
            if (this.children != null) {
                stringBuffer.append("\twith ");
                stringBuffer.append(this.children.size());
                stringBuffer.append(" children\n");
            }
            stringBuffer.append("\t#classFiles: ");
            stringBuffer.append(numClassFiles());
            return stringBuffer.toString();
        }

        public void unregisterClassFile(IPath iPath) {
            DirectoryNode directoryNode;
            Map<IPath, ClassFile> map = this.classFiles;
            if (map != null) {
                map.remove(iPath);
                if (!this.classFiles.isEmpty() || (directoryNode = this.parent) == null) {
                    return;
                }
                directoryNode.unregisterDirectory(this);
            }
        }

        public void unregisterDirectory(DirectoryNode directoryNode) {
            DirectoryNode directoryNode2;
            Map<IPath, DirectoryNode> map = this.children;
            if (map != null) {
                map.remove(directoryNode.path);
            }
            Map<IPath, DirectoryNode> map2 = this.children;
            if ((map2 == null || map2.isEmpty()) && (directoryNode2 = this.parent) != null) {
                directoryNode2.unregisterDirectory(this);
            }
        }
    }

    private ExternalAnnotationTracker() {
    }

    private DirectoryNode getAnnotationBase(DirectoryNode directoryNode, IPath iPath, int i10, int i11) {
        IPath uptoSegment = iPath.uptoSegment(i11);
        Map<IPath, DirectoryNode> children = directoryNode.getChildren();
        DirectoryNode directoryNode2 = children.get(uptoSegment);
        if (directoryNode2 == null) {
            directoryNode2 = new DirectoryNode(directoryNode, uptoSegment);
            children.put(uptoSegment, directoryNode2);
        }
        return i10 == i11 ? directoryNode2 : getAnnotationBase(directoryNode2, iPath, i10, i11 + 1);
    }

    public static void registerClassFile(IPath iPath, IPath iPath2, ClassFile classFile) {
        int segmentCount = iPath.segmentCount();
        if (segmentCount == 0) {
            Util.log(new IllegalArgumentException("annotationBase cannot be empty"));
            return;
        }
        IPath addFileExtension = iPath2.addFileExtension(ExternalAnnotationProvider.ANNOTATION_FILE_EXTENSION);
        ExternalAnnotationTracker externalAnnotationTracker = singleton;
        externalAnnotationTracker.getAnnotationBase(externalAnnotationTracker.tree, iPath, segmentCount, 1).registerClassFile(addFileExtension, classFile);
    }

    public static void shutdown(IWorkspace iWorkspace) {
        ExternalAnnotationTracker externalAnnotationTracker = singleton;
        if (externalAnnotationTracker != null) {
            iWorkspace.removeResourceChangeListener(externalAnnotationTracker);
            singleton.tree.children = null;
        }
    }

    public static void start(IWorkspace iWorkspace) {
        ExternalAnnotationTracker externalAnnotationTracker = new ExternalAnnotationTracker();
        singleton = externalAnnotationTracker;
        iWorkspace.addResourceChangeListener(externalAnnotationTracker);
    }

    private void traverseForClassFiles(Map<IPath, ClassFile> map, IResourceDelta iResourceDelta, int i10) {
        for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
            ClassFile remove = map.remove(iResourceDelta2.getFullPath().removeFirstSegments(i10));
            if (remove != null) {
                try {
                    remove.closeAndRemoveFromJarTypeCache();
                } catch (JavaModelException e10) {
                    Util.log((Throwable) e10, "Failed to close ClassFile " + remove.name);
                }
            } else {
                traverseForClassFiles(map, iResourceDelta2, i10);
            }
        }
    }

    private void traverseForDirectories(DirectoryNode directoryNode, IResourceDelta iResourceDelta) {
        Map<IPath, ClassFile> map = directoryNode.classFiles;
        if (map != null) {
            traverseForClassFiles(map, iResourceDelta, iResourceDelta.getFullPath().segmentCount());
        } else if (directoryNode.children != null) {
            for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
                DirectoryNode directoryNode2 = directoryNode.children.get(iResourceDelta2.getFullPath());
                if (directoryNode2 != null) {
                    if (iResourceDelta2.getKind() == 2) {
                        directoryNode.children.remove(iResourceDelta2.getFullPath());
                    } else {
                        traverseForDirectories(directoryNode2, iResourceDelta2);
                    }
                }
            }
        }
        if (directoryNode.isEmpty()) {
            directoryNode.parent.children.remove(iResourceDelta.getFullPath());
        }
    }

    public static void unregisterClassFile(IPath iPath, IPath iPath2) {
        int segmentCount = iPath.segmentCount();
        if (segmentCount == 0) {
            Util.log(new IllegalArgumentException("annotationBase cannot be empty"));
            return;
        }
        IPath addFileExtension = iPath2.addFileExtension(ExternalAnnotationProvider.ANNOTATION_FILE_EXTENSION);
        ExternalAnnotationTracker externalAnnotationTracker = singleton;
        externalAnnotationTracker.getAnnotationBase(externalAnnotationTracker.tree, iPath, segmentCount, 1).unregisterClassFile(addFileExtension);
    }

    public void resourceChanged(IResourceChangeEvent iResourceChangeEvent) {
        IResourceDelta delta = iResourceChangeEvent.getDelta();
        if (delta == null || !delta.getFullPath().isRoot() || this.tree.children == null) {
            return;
        }
        for (IResourceDelta iResourceDelta : delta.getAffectedChildren()) {
            DirectoryNode directoryNode = this.tree.children.get(iResourceDelta.getFullPath());
            if (directoryNode != null) {
                traverseForDirectories(directoryNode, iResourceDelta);
            }
        }
    }
}
