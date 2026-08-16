package org.eclipse.jdt.internal.core;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;

public class ModelUpdater {
    HashSet projectsToUpdate = new HashSet();

    public static void close(Openable openable) {
        try {
            openable.close();
        } catch (JavaModelException unused) {
        }
    }

    public void addToParentInfo(Openable openable) {
        Openable openable2 = (Openable) openable.getParent();
        if (openable2 == null || !openable2.isOpen()) {
            return;
        }
        try {
            ((OpenableElementInfo) openable2.getElementInfo()).addChild(openable);
        } catch (JavaModelException unused) {
        }
    }

    public void elementAdded(Openable openable) {
        int elementType = openable.getElementType();
        if (elementType == 2) {
            addToParentInfo(openable);
            this.projectsToUpdate.add(openable);
        } else {
            addToParentInfo(openable);
            close(openable);
        }
        if (elementType == 3) {
            this.projectsToUpdate.add(openable.getJavaProject());
        } else {
            if (elementType != 4) {
                return;
            }
            ((JavaProject) openable.getJavaProject()).resetCaches();
        }
    }

    public void elementChanged(Openable openable) {
        close(openable);
    }

    public void elementRemoved(Openable openable) {
        if (openable.isOpen()) {
            close(openable);
        }
        removeFromParentInfo(openable);
        int elementType = openable.getElementType();
        if (elementType == 1) {
            JavaModelManager.getIndexManager().reset();
            return;
        }
        if (elementType == 2) {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            JavaProject javaProject = (JavaProject) openable;
            javaModelManager.removePerProjectInfo(javaProject, true);
            javaModelManager.containerRemove(javaProject);
            return;
        }
        if (elementType == 3) {
            this.projectsToUpdate.add(openable.getJavaProject());
        } else {
            if (elementType != 4) {
                return;
            }
            ((JavaProject) openable.getJavaProject()).resetCaches();
        }
    }

    public void processJavaDelta(IJavaElementDelta iJavaElementDelta) {
        try {
            traverseDelta(iJavaElementDelta, null, null);
            Iterator it = this.projectsToUpdate.iterator();
            while (it.hasNext()) {
                ((JavaProject) it.next()).resetCaches();
            }
        } finally {
            this.projectsToUpdate = new HashSet();
        }
    }

    public void removeFromParentInfo(Openable openable) {
        Openable openable2 = (Openable) openable.getParent();
        if (openable2 == null || !openable2.isOpen()) {
            return;
        }
        try {
            ((OpenableElementInfo) openable2.getElementInfo()).removeChild(openable);
        } catch (JavaModelException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
    
        if (r1 != 6) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void traverseDelta(IJavaElementDelta iJavaElementDelta, IPackageFragmentRoot iPackageFragmentRoot, IJavaProject iJavaProject) {
        boolean z10;
        int kind;
        Openable openable = (Openable) iJavaElementDelta.getElement();
        int elementType = openable.getElementType();
        if (elementType == 2) {
            iJavaProject = (IJavaProject) openable;
        } else {
            if (elementType != 3) {
                if (elementType == 5) {
                    CompilationUnit compilationUnit = (CompilationUnit) openable;
                    if (compilationUnit.isWorkingCopy() && !compilationUnit.isPrimary()) {
                        return;
                    }
                }
                z10 = false;
                kind = iJavaElementDelta.getKind();
                if (kind != 1) {
                    elementAdded(openable);
                } else if (kind == 2) {
                    elementRemoved(openable);
                } else if (kind == 4 && (iJavaElementDelta.getFlags() & 1) != 0) {
                    elementChanged(openable);
                }
                if (z10) {
                    return;
                }
                for (IJavaElementDelta iJavaElementDelta2 : iJavaElementDelta.getAffectedChildren()) {
                    traverseDelta(iJavaElementDelta2, iPackageFragmentRoot, iJavaProject);
                }
                return;
            }
            iPackageFragmentRoot = (IPackageFragmentRoot) openable;
        }
        z10 = true;
        kind = iJavaElementDelta.getKind();
        if (kind != 1) {
        }
        if (z10) {
        }
    }
}
