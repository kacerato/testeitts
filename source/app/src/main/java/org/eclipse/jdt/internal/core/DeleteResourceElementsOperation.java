package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.Messages;

public class DeleteResourceElementsOperation extends MultiOperation {
    public DeleteResourceElementsOperation(IJavaElement[] iJavaElementArr, boolean z10) {
        super(iJavaElementArr, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void deletePackageFragment(IPackageFragment iPackageFragment) throws JavaModelException {
        IResource resource;
        IContainer resource2 = ((JavaElement) iPackageFragment).resource();
        if (resource2 != null) {
            IJavaElement[] children = iPackageFragment.getChildren();
            if (children.length > 0) {
                IResource[] iResourceArr = new IResource[children.length];
                for (int i10 = 0; i10 < children.length; i10++) {
                    iResourceArr[i10] = ((JavaElement) children[i10]).resource();
                }
                deleteResources(iResourceArr, this.force);
            }
            Object[] nonJavaResources = iPackageFragment.getNonJavaResources();
            int i11 = 0;
            for (Object obj : nonJavaResources) {
                if (obj instanceof IResource) {
                    i11++;
                }
            }
            IResource[] iResourceArr2 = new IResource[i11];
            int i12 = 0;
            for (Object obj2 : nonJavaResources) {
                if (obj2 instanceof IResource) {
                    iResourceArr2[i12] = (IResource) obj2;
                    i12++;
                }
            }
            deleteResources(iResourceArr2, this.force);
            try {
                boolean z10 = true;
                for (IResource iResource : resource2.members()) {
                    if ((iResource instanceof IFile) && Util.isClassFileName(iResource.getName())) {
                        deleteResource(iResource, 3);
                    } else {
                        z10 = false;
                    }
                }
                if (!z10 || iPackageFragment.isDefaultPackage() || (resource = ((JavaElement) iPackageFragment).resource()) == null) {
                    return;
                }
                deleteEmptyPackageFragment(iPackageFragment, false, resource.getParent());
            } catch (CoreException e10) {
                throw new JavaModelException(e10);
            }
        }
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_deleteResourceProgress;
    }

    @Override
    public void processElement(IJavaElement iJavaElement) throws JavaModelException {
        int elementType = iJavaElement.getElementType();
        if (elementType == 4) {
            deletePackageFragment((IPackageFragment) iJavaElement);
        } else {
            if (elementType != 5 && elementType != 6) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement));
            }
            deleteResource(iJavaElement.getResource(), this.force ? 3 : 2);
        }
        if (iJavaElement instanceof IOpenable) {
            ((IOpenable) iJavaElement).close();
        }
    }

    @Override
    public void verify(IJavaElement iJavaElement) throws JavaModelException {
        if (iJavaElement == null || !iJavaElement.exists()) {
            error(969, iJavaElement);
        }
        int elementType = iJavaElement.getElementType();
        if (elementType <= 3 || elementType > 5) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        } else if (elementType == 4 && (iJavaElement instanceof JarPackageFragment)) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        }
        IResource resource = ((JavaElement) iJavaElement).resource();
        if ((resource instanceof IFolder) && resource.isLinked()) {
            error(IJavaModelStatusConstants.INVALID_RESOURCE, iJavaElement);
        }
    }
}
