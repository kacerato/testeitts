package org.eclipse.jdt.internal.core.search;

import java.util.LinkedHashSet;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaWorkspaceScope extends AbstractJavaSearchScope {
    private IPath[] enclosingPaths = null;

    @Override
    public boolean encloses(String str) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e5  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IPath[] enclosingProjectsAndJars() {
        int i10;
        JavaWorkspaceScope javaWorkspaceScope = this;
        IPath[] iPathArr = javaWorkspaceScope.enclosingPaths;
        if (iPathArr != null) {
            return iPathArr;
        }
        long currentTimeMillis = BasicSearchEngine.VERBOSE ? System.currentTimeMillis() : -1L;
        try {
            try {
                IJavaProject[] javaProjects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
                LinkedHashSet linkedHashSet = new LinkedHashSet(javaProjects.length * 2);
                int length = javaProjects.length;
                int i11 = 0;
                while (i11 < length) {
                    linkedHashSet.add(((JavaProject) javaProjects[i11]).getProject().getFullPath());
                    i11++;
                    javaWorkspaceScope = this;
                }
                for (IJavaProject iJavaProject : javaProjects) {
                    IClasspathEntry[] resolvedClasspath = ((JavaProject) iJavaProject).getResolvedClasspath();
                    int length2 = resolvedClasspath.length;
                    int i12 = 0;
                    while (i12 < length2) {
                        IClasspathEntry iClasspathEntry = resolvedClasspath[i12];
                        if (iClasspathEntry.getEntryKind() == 1) {
                            Object target = JavaModel.getTarget(iClasspathEntry.getPath(), false);
                            if (target instanceof IFolder) {
                                ((IFolder) target).getFullPath();
                            }
                            linkedHashSet.add(iClasspathEntry.getPath());
                        }
                        i12++;
                        javaWorkspaceScope = this;
                    }
                }
                int size = linkedHashSet.size();
                iPathArr = new IPath[size];
                linkedHashSet.toArray(iPathArr);
                javaWorkspaceScope.enclosingPaths = iPathArr;
                if (BasicSearchEngine.VERBOSE) {
                    Util.verbose("JavaWorkspaceScope.enclosingProjectsAndJars: " + size + " paths computed in " + (System.currentTimeMillis() - currentTimeMillis) + "ms.");
                }
                return iPathArr;
            } catch (JavaModelException e10) {
                Util.log((Throwable) e10, "Exception while computing workspace scope's enclosing projects and jars");
                try {
                    IPath[] iPathArr2 = new IPath[0];
                    if (BasicSearchEngine.VERBOSE) {
                        Util.verbose("JavaWorkspaceScope.enclosingProjectsAndJars: " + (iPathArr != null ? iPathArr.length : 0) + " paths computed in " + (System.currentTimeMillis() - currentTimeMillis) + "ms.");
                    }
                    return iPathArr2;
                } catch (Throwable th2) {
                    th = th2;
                    if (BasicSearchEngine.VERBOSE) {
                        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                        if (iPathArr != null) {
                            i10 = iPathArr.length;
                        }
                        Util.verbose("JavaWorkspaceScope.enclosingProjectsAndJars: " + i10 + " paths computed in " + currentTimeMillis2 + "ms.");
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            i10 = 0;
            if (BasicSearchEngine.VERBOSE) {
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override
    public AccessRuleSet getAccessRuleSet(String str, String str2) {
        return null;
    }

    public int hashCode() {
        return JavaWorkspaceScope.class.hashCode();
    }

    @Override
    public IPackageFragmentRoot packageFragmentRoot(String str, int i10, String str2) {
        DeltaProcessor.RootInfo rootInfo;
        Map<IPath, DeltaProcessor.RootInfo> map = JavaModelManager.getDeltaState().roots;
        if (str2 != null) {
            rootInfo = map.get(new Path(str2));
        } else {
            IPath path = new Path(str);
            if (ExternalFoldersManager.isInternalPathForExternalFolder(path)) {
                IResource workspaceTarget = JavaModel.getWorkspaceTarget(path.uptoSegment(2));
                rootInfo = workspaceTarget != null ? map.get(workspaceTarget.getLocation()) : null;
            } else {
                rootInfo = map.get(path);
                while (rootInfo == null && path.segmentCount() > 0) {
                    path = path.removeLastSegments(1);
                    rootInfo = map.get(path);
                }
            }
        }
        if (rootInfo == null) {
            return null;
        }
        return rootInfo.getPackageFragmentRoot(null);
    }

    @Override
    public void processDelta(IJavaElementDelta iJavaElementDelta, int i10) {
        if (this.enclosingPaths == null) {
            return;
        }
        int elementType = iJavaElementDelta.getElement().getElementType();
        int i11 = 0;
        if (elementType == 1) {
            IJavaElementDelta[] affectedChildren = iJavaElementDelta.getAffectedChildren();
            int length = affectedChildren.length;
            while (i11 < length) {
                processDelta(affectedChildren[i11], i10);
                i11++;
            }
            return;
        }
        if (elementType != 2) {
            if (elementType != 3) {
                return;
            }
            int kind = iJavaElementDelta.getKind();
            if (kind == 1 || kind == 2) {
                this.enclosingPaths = null;
                return;
            }
            if (kind != 4) {
                return;
            }
            int flags = iJavaElementDelta.getFlags();
            if ((flags & 64) > 0 || (flags & 128) > 0) {
                this.enclosingPaths = null;
                return;
            }
            return;
        }
        int kind2 = iJavaElementDelta.getKind();
        if (kind2 == 1 || kind2 == 2) {
            this.enclosingPaths = null;
            return;
        }
        if (kind2 != 4) {
            return;
        }
        int flags2 = iJavaElementDelta.getFlags();
        if ((flags2 & 1024) != 0 || (flags2 & 512) != 0) {
            this.enclosingPaths = null;
            return;
        }
        IJavaElementDelta[] affectedChildren2 = iJavaElementDelta.getAffectedChildren();
        int length2 = affectedChildren2.length;
        while (i11 < length2) {
            processDelta(affectedChildren2[i11], i10);
            i11++;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("JavaWorkspaceScope on ");
        IPath[] enclosingProjectsAndJars = enclosingProjectsAndJars();
        int length = enclosingProjectsAndJars == null ? 0 : enclosingProjectsAndJars.length;
        if (length == 0) {
            stringBuffer.append("[empty scope]");
        } else {
            stringBuffer.append("[");
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append("\n\t");
                stringBuffer.append((Object) enclosingProjectsAndJars[i10]);
            }
            stringBuffer.append("\n]");
        }
        return stringBuffer.toString();
    }

    @Override
    public boolean encloses(IJavaElement iJavaElement) {
        return true;
    }
}
