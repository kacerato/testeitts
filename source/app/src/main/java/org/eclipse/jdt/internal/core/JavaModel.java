package org.eclipse.jdt.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;

public class JavaModel extends Openable implements IJavaModel {
    public JavaModel() throws Error {
        super(null);
    }

    public static Object getExternalTarget(IPath iPath, boolean z10) {
        if (iPath == null) {
            return null;
        }
        IFolder folder = JavaModelManager.getExternalManager().getFolder(iPath);
        if (folder != null) {
            if (!z10 || new File(iPath.toOSString()).isDirectory()) {
                return folder;
            }
            return null;
        }
        File file = new File(iPath.toOSString());
        if (z10 && !isExternalFile(iPath)) {
            return null;
        }
        return file;
    }

    public static File getFile(Object obj) {
        if (isFile(obj)) {
            return (File) obj;
        }
        return null;
    }

    public static Object getTarget(IPath iPath, boolean z10) {
        IResource workspaceTarget = getWorkspaceTarget(iPath);
        return workspaceTarget != null ? workspaceTarget : getExternalTarget(iPath, z10);
    }

    public static IResource getWorkspaceTarget(IPath iPath) {
        IWorkspace workspace;
        if (iPath == null || iPath.getDevice() != null || (workspace = ResourcesPlugin.getWorkspace()) == null) {
            return null;
        }
        return workspace.getRoot().findMember(iPath);
    }

    private static boolean isExternalFile(IPath iPath) {
        if (JavaModelManager.getJavaModelManager().isExternalFile(iPath)) {
            return true;
        }
        if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
            System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModel.isExternalFile(...)] Checking existence of " + iPath.toString());
        }
        boolean isFile = iPath.toFile().isFile();
        if (isFile) {
            JavaModelManager.getJavaModelManager().addExternalFile(iPath);
        }
        return isFile;
    }

    public static boolean isFile(Object obj) {
        if (obj instanceof File) {
            return isExternalFile(Path.fromOSString(((File) obj).getPath()));
        }
        return false;
    }

    public static boolean isJimage(File file) {
        return JavaModelManager.isJrt(file.getPath());
    }

    public static boolean isJmod(File file) {
        return Path.fromOSString(file.getPath()).getFileExtension().equalsIgnoreCase(SuffixConstants.EXTENSION_jmod);
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) {
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int length = projects.length;
        IJavaElement[] iJavaElementArr = new IJavaElement[length];
        int i10 = 0;
        for (IProject iProject : projects) {
            if (JavaProject.hasJavaNature(iProject)) {
                iJavaElementArr[i10] = getJavaProject((IResource) iProject);
                i10++;
            }
        }
        if (i10 < length) {
            IJavaElement[] iJavaElementArr2 = new IJavaElement[i10];
            System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
            iJavaElementArr = iJavaElementArr2;
        }
        openableElementInfo.setChildren(iJavaElementArr);
        map.put(this, openableElementInfo);
        return true;
    }

    @Override
    public boolean contains(IResource iResource) {
        int type = iResource.getType();
        if (type == 4 || type == 8) {
            return true;
        }
        try {
            for (IJavaProject iJavaProject : getJavaProjects()) {
                if (!((JavaProject) iJavaProject).contains(iResource)) {
                    return false;
                }
            }
            return true;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    @Override
    public void copy(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, IJavaElement[] iJavaElementArr3, String[] strArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IJavaElement iJavaElement;
        if (iJavaElementArr == null || iJavaElementArr.length <= 0 || (iJavaElement = iJavaElementArr[0]) == null || iJavaElement.getElementType() >= 7) {
            runOperation(new CopyElementsOperation(iJavaElementArr, iJavaElementArr2, z10), iJavaElementArr, iJavaElementArr3, strArr, iProgressMonitor);
        } else {
            runOperation(new CopyResourceElementsOperation(iJavaElementArr, iJavaElementArr2, z10), iJavaElementArr, iJavaElementArr3, strArr, iProgressMonitor);
        }
    }

    @Override
    public Object createElementInfo() {
        return new JavaModelInfo();
    }

    @Override
    public void delete(IJavaElement[] iJavaElementArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IJavaElement iJavaElement;
        if (iJavaElementArr == null || iJavaElementArr.length <= 0 || (iJavaElement = iJavaElementArr[0]) == null || iJavaElement.getElementType() >= 7) {
            new DeleteElementsOperation(iJavaElementArr, z10).runOperation(iProgressMonitor);
        } else {
            new DeleteResourceElementsOperation(iJavaElementArr, z10).runOperation(iProgressMonitor);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof JavaModel) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public int getElementType() {
        return 1;
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        if (str.charAt(0) != '=') {
            return null;
        }
        return !mementoTokenizer.hasMoreTokens() ? this : ((JavaElement) getJavaProject(mementoTokenizer.nextToken())).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        stringBuffer.append(getElementName());
    }

    @Override
    public char getHandleMementoDelimiter() {
        Assert.isTrue(false, "Should not be called");
        return (char) 0;
    }

    @Override
    public IJavaProject getJavaProject(String str) {
        return new JavaProject(ResourcesPlugin.getWorkspace().getRoot().getProject(str), this);
    }

    @Override
    public IJavaProject[] getJavaProjects() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(2);
        IJavaProject[] iJavaProjectArr = new IJavaProject[childrenOfType.size()];
        childrenOfType.toArray(iJavaProjectArr);
        return iJavaProjectArr;
    }

    @Override
    public Object[] getNonJavaResources() throws JavaModelException {
        return ((JavaModelInfo) getElementInfo()).getNonJavaResources();
    }

    @Override
    public IPath getPath() {
        return Path.ROOT;
    }

    @Override
    public IResource getUnderlyingResource() {
        return null;
    }

    @Override
    public IWorkspace getWorkspace() {
        return ResourcesPlugin.getWorkspace();
    }

    @Override
    public void move(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, IJavaElement[] iJavaElementArr3, String[] strArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IJavaElement iJavaElement;
        if (iJavaElementArr == null || iJavaElementArr.length <= 0 || (iJavaElement = iJavaElementArr[0]) == null || iJavaElement.getElementType() >= 7) {
            runOperation(new MoveElementsOperation(iJavaElementArr, iJavaElementArr2, z10), iJavaElementArr, iJavaElementArr3, strArr, iProgressMonitor);
        } else {
            runOperation(new MoveResourceElementsOperation(iJavaElementArr, iJavaElementArr2, z10), iJavaElementArr, iJavaElementArr3, strArr, iProgressMonitor);
        }
    }

    @Override
    public void refreshExternalArchives(IJavaElement[] iJavaElementArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElementArr == null) {
            iJavaElementArr = new IJavaElement[]{this};
        }
        JavaModelManager.getJavaModelManager().getDeltaProcessor().checkExternalArchiveChanges(iJavaElementArr, iProgressMonitor);
    }

    @Override
    public void rename(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, String[] strArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IJavaElement iJavaElement;
        ((iJavaElementArr == null || iJavaElementArr.length <= 0 || (iJavaElement = iJavaElementArr[0]) == null || iJavaElement.getElementType() >= 7) ? new RenameElementsOperation(iJavaElementArr, iJavaElementArr2, strArr, z10) : new RenameResourceElementsOperation(iJavaElementArr, iJavaElementArr2, strArr, z10)).runOperation(iProgressMonitor);
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        return ResourcesPlugin.getWorkspace().getRoot();
    }

    public void runOperation(MultiOperation multiOperation, IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, String[] strArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        multiOperation.setRenamings(strArr);
        if (iJavaElementArr2 != null) {
            for (int i10 = 0; i10 < iJavaElementArr.length; i10++) {
                multiOperation.setInsertBefore(iJavaElementArr[i10], iJavaElementArr2[i10]);
            }
        }
        multiOperation.runOperation(iProgressMonitor);
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        stringBuffer.append("Java Model");
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        return JavaModelStatus.VERIFIED_OK;
    }

    public IJavaProject getJavaProject(IResource iResource) {
        int type = iResource.getType();
        if (type == 1) {
            return new JavaProject(((IFile) iResource).getProject(), this);
        }
        if (type == 2) {
            return new JavaProject(((IFolder) iResource).getProject(), this);
        }
        if (type == 4) {
            return new JavaProject((IProject) iResource, this);
        }
        throw new IllegalArgumentException(Messages.element_invalidResourceForProject);
    }
}
