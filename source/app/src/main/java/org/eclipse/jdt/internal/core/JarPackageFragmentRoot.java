package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.jar.Manifest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.NdResourceFile;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.NdZipEntry;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

public class JarPackageFragmentRoot extends PackageFragmentRoot {
    protected static final ArrayList EMPTY_LIST = new ArrayList();
    protected final IPath jarPath;
    boolean knownToBeModuleLess;
    private boolean multiVersion;

    public JarPackageFragmentRoot(IPath iPath, JavaProject javaProject) {
        super(null, javaProject);
        this.jarPath = iPath;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b3 A[Catch: all -> 0x00b7, TRY_ENTER, TryCatch #2 {all -> 0x00b7, blocks: (B:7:0x0026, B:25:0x00b3, B:94:0x00bb, B:95:0x00be, B:9:0x002e, B:11:0x0038, B:13:0x004a, B:14:0x005a, B:18:0x0060, B:19:0x0068, B:21:0x0070, B:16:0x0098), top: B:6:0x0026, outer: #3, inners: #1 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean computeChildren(OpenableElementInfo openableElementInfo, IResource iResource) throws JavaModelException {
        IJavaElement[] iJavaElementArr;
        Object[] objArr;
        HashtableOfArrayToObject hashtableOfArrayToObject = new HashtableOfArrayToObject();
        HashMap hashMap = new HashMap();
        try {
            String[] strArr = CharOperation.NO_STRINGS;
            ArrayList arrayList = EMPTY_LIST;
            hashtableOfArrayToObject.put(strArr, new ArrayList[]{arrayList, arrayList});
            ZipFile zipFile = null;
            Throwable th2 = null;
            if (JavaIndex.isEnabled()) {
                JavaIndex index = JavaIndex.getIndex();
                try {
                    IReader acquireReadLock = index.getNd().acquireReadLock();
                    try {
                        IPath locationForElement = JavaIndex.getLocationForElement(this);
                        if (!locationForElement.isEmpty()) {
                            NdResourceFile resourceFile = index.getResourceFile(locationForElement.toString().toCharArray());
                            if (index.isUpToDate(resourceFile)) {
                                String versionFromJdkLevel = CompilerOptions.versionFromJdkLevel(resourceFile.getJdkLevel());
                                Iterator<NdZipEntry> it = resourceFile.getZipEntries().iterator();
                                while (it.hasNext()) {
                                    String string = it.next().getFileName().getString();
                                    initRawPackageInfo(hashtableOfArrayToObject, string, string.endsWith("/"), versionFromJdkLevel);
                                }
                                Iterator<NdType> it2 = resourceFile.getTypes().iterator();
                                while (it2.hasNext()) {
                                    initRawPackageInfo(hashtableOfArrayToObject, new String(it2.next().getTypeId().getBinaryName()) + ".class", false, versionFromJdkLevel);
                                }
                                objArr = true;
                                if (acquireReadLock != null) {
                                    acquireReadLock.close();
                                }
                            }
                        }
                        objArr = false;
                        if (acquireReadLock != null) {
                        }
                    } catch (Throwable th3) {
                        if (acquireReadLock == null) {
                            throw th3;
                        }
                        acquireReadLock.close();
                        throw th3;
                    }
                } catch (Throwable th4) {
                    if (0 == 0) {
                        throw th4;
                    }
                    if (null == th4) {
                        throw null;
                    }
                    th2.addSuppressed(th4);
                    throw null;
                }
            } else {
                objArr = false;
            }
            if (objArr == false) {
                long jdkLevel = Util.getJdkLevel(JavaModel.getTarget(getPath(), true));
                String option = getJavaProject().getOption("org.eclipse.jdt.core.compiler.compliance", true);
                long versionToJdkLevel = CompilerOptions.versionToJdkLevel(option);
                try {
                    zipFile = getJar();
                    ArrayList arrayList2 = new ArrayList();
                    if (versionToJdkLevel >= ClassFileConstants.JDK9 && zipFile.getEntry("META-INF/versions/") != null) {
                        for (int releaseToJDKLevel = (int) (CompilerOptions.releaseToJDKLevel(option) >> 16); releaseToJDKLevel >= 53; releaseToJDKLevel--) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(releaseToJDKLevel - 44);
                            String sb3 = sb2.toString();
                            if (zipFile.getEntry("META-INF/versions/" + sb3) != null) {
                                arrayList2.add(sb3);
                            }
                        }
                    }
                    if (((String[]) arrayList2.toArray(new String[arrayList2.size()])).length > 0) {
                        this.multiVersion = true;
                    }
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextElement = entries.nextElement();
                        String name = nextElement.getName();
                        if (this.multiVersion && name.length() > 20 && name.startsWith("META-INF/versions/")) {
                            int indexOf = name.indexOf(47, 18);
                            if (indexOf < name.length()) {
                                String substring = name.substring(0, indexOf);
                                if (arrayList2.contains(name.substring(18, indexOf)) && org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
                                    name = name.substring(indexOf + 1);
                                    hashMap.put(name, substring);
                                }
                            }
                        }
                        initRawPackageInfo(hashtableOfArrayToObject, name, nextElement.isDirectory(), CompilerOptions.versionFromJdkLevel(jdkLevel));
                    }
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                } finally {
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                }
            }
            iJavaElementArr = new IJavaElement[hashtableOfArrayToObject.size()];
            int length = hashtableOfArrayToObject.keyTable.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                String[] strArr2 = (String[]) hashtableOfArrayToObject.keyTable[i11];
                if (strArr2 != null) {
                    int i12 = i10 + 1;
                    iJavaElementArr[i10] = getPackageFragment(strArr2);
                    i10 = i12;
                }
            }
        } catch (CoreException e10) {
            if (!(e10.getCause() instanceof ZipException)) {
                if (e10 instanceof JavaModelException) {
                    throw ((JavaModelException) e10);
                }
                throw new JavaModelException(e10);
            }
            Util.log(4, "Invalid ZIP archive: " + toStringWithAncestors());
            iJavaElementArr = JavaElement.NO_ELEMENTS;
        }
        openableElementInfo.setChildren(iJavaElementArr);
        JarPackageFragmentRootInfo jarPackageFragmentRootInfo = (JarPackageFragmentRootInfo) openableElementInfo;
        jarPackageFragmentRootInfo.rawPackageInfo = hashtableOfArrayToObject;
        jarPackageFragmentRootInfo.overriddenClasses = hashMap;
        return true;
    }

    public IJavaElement[] createChildren(HashtableOfArrayToObject hashtableOfArrayToObject) {
        IJavaElement[] iJavaElementArr = new IJavaElement[hashtableOfArrayToObject.size()];
        int length = hashtableOfArrayToObject.keyTable.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            String[] strArr = (String[]) hashtableOfArrayToObject.keyTable[i11];
            if (strArr != null) {
                iJavaElementArr[i10] = getPackageFragment(strArr);
                i10++;
            }
        }
        return iJavaElementArr;
    }

    @Override
    public Object createElementInfo() {
        return new JarPackageFragmentRootInfo();
    }

    @Override
    public int determineKind(IResource iResource) {
        return 2;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JarPackageFragmentRoot) {
            return this.jarPath.equals(((JarPackageFragmentRoot) obj).jarPath);
        }
        return false;
    }

    @Override
    public String getClassFilePath(String str) {
        if (!this.multiVersion) {
            return str;
        }
        try {
            String str2 = ((JarPackageFragmentRootInfo) getElementInfo()).overriddenClasses.get(str);
            if (str2 == null) {
                return str;
            }
            return str2 + '/' + str;
        } catch (JavaModelException unused) {
            return str;
        }
    }

    @Override
    public String getElementName() {
        return this.jarPath.lastSegment();
    }

    public URL getIndexPath() {
        try {
            IClasspathEntry classpathEntryFor = ((JavaProject) getParent()).getClasspathEntryFor(getPath());
            if (classpathEntryFor != null) {
                return ((ClasspathEntry) classpathEntryFor).getLibraryIndexLocation();
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public ZipFile getJar() throws CoreException {
        return JavaModelManager.getJavaModelManager().getZipFile(getPath());
    }

    @Override
    public int getKind() {
        return 2;
    }

    @Override
    public Manifest getManifest() {
        ZipFile zipFile;
        Throwable th2;
        try {
            zipFile = getJar();
            try {
                ZipEntry entry = zipFile.getEntry("META-INF/MANIFEST.MF");
                if (entry != null) {
                    Manifest manifest = new Manifest(zipFile.getInputStream(entry));
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                    return manifest;
                }
            } catch (CoreException | IOException unused) {
            } catch (Throwable th3) {
                th2 = th3;
                JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                throw th2;
            }
        } catch (CoreException | IOException unused2) {
            zipFile = null;
        } catch (Throwable th4) {
            zipFile = null;
            th2 = th4;
        }
        JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
        return null;
    }

    @Override
    public IModuleDescription getModuleDescription() {
        if (this.knownToBeModuleLess) {
            return null;
        }
        IModuleDescription moduleDescription = super.getModuleDescription();
        if (moduleDescription == null) {
            this.knownToBeModuleLess = true;
        }
        return moduleDescription;
    }

    @Override
    public Object[] getNonJavaResources() throws JavaModelException {
        Object[] storedNonJavaResources = ((JarPackageFragment) getPackageFragment(CharOperation.NO_STRINGS)).storedNonJavaResources();
        int length = storedNonJavaResources.length;
        if (length == 0) {
            return storedNonJavaResources;
        }
        Object[] objArr = new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            objArr[i10] = ((JarEntryResource) storedNonJavaResources[i10]).clone(this);
        }
        return objArr;
    }

    @Override
    public PackageFragment getPackageFragment(String[] strArr) {
        return new JarPackageFragment(this, strArr);
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        if (!isExternal()) {
            return super.getUnderlyingResource();
        }
        if (exists()) {
            return null;
        }
        throw newNotPresentException();
    }

    @Override
    public int hashCode() {
        return this.jarPath.hashCode();
    }

    public void initRawPackageInfo(HashtableOfArrayToObject hashtableOfArrayToObject, String str, boolean z10, String str2) {
        int length = z10 ? str.charAt(str.length() - 1) == '/' ? str.length() - 1 : str.length() : str.lastIndexOf(47);
        String[] splitOn = Util.splitOn('/', str, 0, length);
        int length2 = splitOn.length;
        int i10 = length2;
        Object[] objArr = null;
        while (i10 >= 0) {
            objArr = (String[]) hashtableOfArrayToObject.getKey(splitOn, i10);
            if (objArr != null) {
                break;
            } else {
                i10--;
            }
        }
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        while (i10 < length2) {
            if (!Util.isValidFolderNameForPackage(splitOn[i10], null, str2)) {
                if (z10) {
                    return;
                }
                ArrayList[] arrayListArr = (ArrayList[]) hashtableOfArrayToObject.get(objArr);
                if (arrayListArr[1] == EMPTY_LIST) {
                    arrayListArr[1] = new ArrayList();
                }
                arrayListArr[1].add(str);
                return;
            }
            int i11 = i10 + 1;
            Object[] objArr2 = new String[i11];
            System.arraycopy(objArr, 0, objArr2, 0, i10);
            objArr2[i10] = javaModelManager.intern(splitOn[i10]);
            ArrayList arrayList = EMPTY_LIST;
            hashtableOfArrayToObject.put(objArr2, new ArrayList[]{arrayList, arrayList});
            i10 = i11;
            objArr = objArr2;
        }
        if (z10) {
            return;
        }
        ArrayList[] arrayListArr2 = (ArrayList[]) hashtableOfArrayToObject.get(splitOn);
        if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(str)) {
            if (arrayListArr2[0] == EMPTY_LIST) {
                arrayListArr2[0] = new ArrayList();
            }
            arrayListArr2[0].add(str.substring(length + 1, str.length() - 6));
        } else {
            if (arrayListArr2[1] == EMPTY_LIST) {
                arrayListArr2[1] = new ArrayList();
            }
            arrayListArr2[1].add(str);
        }
    }

    @Override
    public int internalKind() throws JavaModelException {
        return 2;
    }

    @Override
    public IPath internalPath() {
        return isExternal() ? this.jarPath : super.internalPath();
    }

    @Override
    public boolean isArchive() {
        return true;
    }

    @Override
    public boolean isExternal() {
        return resource() == null;
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        if (this.resource == null) {
            return null;
        }
        return super.resource(packageFragmentRoot);
    }

    @Override
    public boolean resourceExists(IResource iResource) {
        return iResource == null ? JavaModel.getExternalTarget(getPath(), true) != null : super.resourceExists(iResource);
    }

    @Override
    public void toStringAncestors(StringBuffer stringBuffer) {
        if (isExternal()) {
            return;
        }
        super.toStringAncestors(stringBuffer);
    }

    @Override
    public PackageFragment getPackageFragment(String[] strArr, String str) {
        return new JarPackageFragment(this, strArr);
    }

    public JarPackageFragmentRoot(IResource iResource, JavaProject javaProject) {
        super(iResource, javaProject);
        this.jarPath = iResource.getFullPath();
    }
}
