package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Util;

public class JarPackageFragment extends PackageFragment {
    public JarPackageFragment(PackageFragmentRoot packageFragmentRoot, String[] strArr) {
        super(packageFragmentRoot, strArr);
    }

    private IJavaElement[] computeChildren(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return JavaElement.NO_ELEMENTS;
        }
        IJavaElement[] iJavaElementArr = new IJavaElement[size];
        for (int i10 = 0; i10 < size; i10++) {
            String str = (String) arrayList.get(i10);
            if ("module-info".equals(str)) {
                iJavaElementArr[i10] = new ModularClassFile(this);
            } else {
                iJavaElementArr[i10] = new ClassFile(this, str);
            }
        }
        return iJavaElementArr;
    }

    private Object[] computeNonJavaResources(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return JavaElementInfo.NO_NON_JAVA_RESOURCES;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            String str = (String) arrayList.get(i10);
            if (!Util.isJavaLikeFileName(str)) {
                Path path = new Path(str);
                IPath removeFirstSegments = path.removeFirstSegments(this.names.length);
                if (!hashMap.containsKey(removeFirstSegments)) {
                    JarEntryFile jarEntryFile = new JarEntryFile(path.lastSegment());
                    hashMap.put(removeFirstSegments, jarEntryFile);
                    if (removeFirstSegments.segmentCount() == 1) {
                        jarEntryFile.setParent(this);
                        arrayList2.add(jarEntryFile);
                    } else {
                        IPath removeLastSegments = removeFirstSegments.removeLastSegments(1);
                        while (true) {
                            IPath iPath = removeLastSegments;
                            IPath iPath2 = removeFirstSegments;
                            removeFirstSegments = iPath;
                            if (removeFirstSegments.segmentCount() > 0) {
                                ArrayList arrayList3 = (ArrayList) hashMap2.get(removeFirstSegments);
                                if (arrayList3 != null) {
                                    arrayList3.add(iPath2);
                                    break;
                                }
                                JarEntryDirectory jarEntryDirectory = new JarEntryDirectory(removeFirstSegments.lastSegment());
                                hashMap.put(removeFirstSegments, jarEntryDirectory);
                                ArrayList arrayList4 = new ArrayList();
                                hashMap2.put(removeFirstSegments, arrayList4);
                                arrayList4.add(iPath2);
                                if (removeFirstSegments.segmentCount() == 1) {
                                    arrayList2.add(jarEntryDirectory);
                                    break;
                                }
                                removeLastSegments = removeFirstSegments.removeLastSegments(1);
                            }
                        }
                    }
                }
            }
        }
        for (Map.Entry entry : hashMap2.entrySet()) {
            IPath iPath3 = (IPath) entry.getKey();
            ArrayList arrayList5 = (ArrayList) entry.getValue();
            JarEntryDirectory jarEntryDirectory2 = (JarEntryDirectory) hashMap.get(iPath3);
            int size2 = arrayList5.size();
            IJarEntryResource[] iJarEntryResourceArr = new IJarEntryResource[size2];
            for (int i11 = 0; i11 < size2; i11++) {
                JarEntryResource jarEntryResource = (JarEntryResource) hashMap.get(arrayList5.get(i11));
                jarEntryResource.setParent(jarEntryDirectory2);
                iJarEntryResourceArr[i11] = jarEntryResource;
            }
            jarEntryDirectory2.setChildren(iJarEntryResourceArr);
            if (iPath3.segmentCount() == 1) {
                jarEntryDirectory2.setParent(this);
            }
        }
        return arrayList2.toArray(new Object[arrayList2.size()]);
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        ArrayList[] arrayListArr = (ArrayList[]) ((JarPackageFragmentRootInfo) ((JarPackageFragmentRoot) getParent()).getElementInfo()).rawPackageInfo.get(this.names);
        if (arrayListArr == null) {
            throw newNotPresentException();
        }
        JarPackageFragmentInfo jarPackageFragmentInfo = (JarPackageFragmentInfo) openableElementInfo;
        jarPackageFragmentInfo.setChildren(computeChildren(arrayListArr[0]));
        jarPackageFragmentInfo.setNonJavaResources(computeNonJavaResources(arrayListArr[1]));
        map.put(this, jarPackageFragmentInfo);
        return true;
    }

    @Override
    public boolean containsJavaResources() throws JavaModelException {
        return ((JarPackageFragmentInfo) getElementInfo()).containsJavaResources();
    }

    @Override
    public ICompilationUnit createCompilationUnit(String str, String str2, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    @Override
    public Object createElementInfo() {
        return new JarPackageFragmentInfo();
    }

    @Override
    public IClassFile[] getAllClassFiles() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(6);
        IClassFile[] iClassFileArr = new IClassFile[childrenOfType.size()];
        childrenOfType.toArray(iClassFileArr);
        return iClassFileArr;
    }

    @Override
    public ICompilationUnit[] getCompilationUnits() {
        return PackageFragment.NO_COMPILATION_UNITS;
    }

    @Override
    public IResource getCorrespondingResource() {
        return null;
    }

    @Override
    public Object[] getNonJavaResources() throws JavaModelException {
        return isDefaultPackage() ? JavaElementInfo.NO_NON_JAVA_RESOURCES : storedNonJavaResources();
    }

    @Override
    public boolean internalIsValidPackageName() {
        return true;
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }

    public Object[] storedNonJavaResources() throws JavaModelException {
        return ((JarPackageFragmentInfo) getElementInfo()).getNonJavaResources();
    }
}
