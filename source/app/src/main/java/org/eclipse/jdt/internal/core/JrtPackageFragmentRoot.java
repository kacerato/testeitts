package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

public class JrtPackageFragmentRoot extends JarPackageFragmentRoot implements IModulePathEntry {
    public static final ThreadLocal<Boolean> workingOnOldClasspath = new ThreadLocal<>();
    String moduleName;

    public JrtPackageFragmentRoot(IPath iPath, String str, JavaProject javaProject) {
        super(iPath, javaProject);
        this.moduleName = str;
    }

    @Override
    public boolean computeChildren(OpenableElementInfo openableElementInfo, IResource iResource) throws JavaModelException {
        final HashtableOfArrayToObject hashtableOfArrayToObject = new HashtableOfArrayToObject();
        String[] strArr = CharOperation.NO_STRINGS;
        ArrayList arrayList = JarPackageFragmentRoot.EMPTY_LIST;
        hashtableOfArrayToObject.put(strArr, new ArrayList[]{arrayList, arrayList});
        try {
            JRTUtil.walkModuleImage(this.jarPath.toFile(), new JRTUtil.JrtFileVisitor<Path>() {
                @Override
                public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    JrtPackageFragmentRoot.this.initRawPackageInfo(hashtableOfArrayToObject, path.toString(), false, "1.8");
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitModule(Path path, String str) throws IOException {
                    if (!JrtPackageFragmentRoot.this.moduleName.equals(str)) {
                        return FileVisitResult.SKIP_SUBTREE;
                    }
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    JrtPackageFragmentRoot.this.initRawPackageInfo(hashtableOfArrayToObject, path.toString(), true, "1.8");
                    return FileVisitResult.CONTINUE;
                }
            }, JRTUtil.NOTIFY_ALL);
        } catch (IOException unused) {
            Util.log(4, "Error reading modules" + toStringWithAncestors());
        }
        openableElementInfo.setChildren(createChildren(hashtableOfArrayToObject));
        ((JarPackageFragmentRootInfo) openableElementInfo).rawPackageInfo = hashtableOfArrayToObject;
        return true;
    }

    @Override
    public SourceMapper createSourceMapper(IPath iPath, IPath iPath2) throws JavaModelException {
        IClasspathEntry classpathEntryFor = ((JavaProject) getParent()).getClasspathEntryFor(getPath());
        String sourceAttachmentEncoding = classpathEntryFor == null ? null : ((ClasspathEntry) classpathEntryFor).getSourceAttachmentEncoding();
        IModule module = getModule();
        String str = module != null ? new String(module.name()) : null;
        if (iPath2 != null) {
            str = iPath2.toOSString();
        }
        return new SourceMapper(iPath, str, getJavaProject().getOptions(true), sourceAttachmentEncoding);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JrtPackageFragmentRoot) {
            JrtPackageFragmentRoot jrtPackageFragmentRoot = (JrtPackageFragmentRoot) obj;
            if (this.moduleName.equals(jrtPackageFragmentRoot.moduleName) && this.jarPath.equals(jrtPackageFragmentRoot.jarPath)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String getElementName() {
        return this.moduleName;
    }

    @Override
    public IModule getModule() {
        IAdaptable moduleDescription = getModuleDescription();
        if (moduleDescription == null) {
            return null;
        }
        try {
            return (IModule) ((JavaElement) moduleDescription).getElementInfo();
        } catch (JavaModelException e10) {
            Util.log((Throwable) e10);
            return null;
        }
    }

    @Override
    public char[][] getModulesDeclaringPackage(String str, String str2) {
        if ((str2 == null || str2.equals(this.moduleName)) && getPackageFragment(str).exists()) {
            return new char[][]{str2.toCharArray()};
        }
        return null;
    }

    @Override
    public PackageFragment getPackageFragment(String[] strArr) {
        return new JarPackageFragment(this, strArr);
    }

    @Override
    public int hashCode() {
        return this.jarPath.hashCode() + this.moduleName.hashCode();
    }

    @Override
    public boolean ignoreErrorStatus(IStatus iStatus) {
        return iStatus.getCode() == 1006 && workingOnOldClasspath.get() == Boolean.TRUE;
    }

    @Override
    public boolean isComplianceJava9OrHigher() {
        return true;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        stringBuffer.append("<module:");
        stringBuffer.append(this.moduleName);
        stringBuffer.append(">");
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }
}
