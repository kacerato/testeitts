package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.Util;

public class JarEntryFile extends JarEntryResource {
    private static final IJarEntryResource[] NO_CHILDREN = new IJarEntryResource[0];

    public JarEntryFile(String str) {
        super(str);
    }

    @Override
    public JarEntryResource clone(Object obj) {
        JarEntryFile jarEntryFile = new JarEntryFile(this.simpleName);
        jarEntryFile.setParent(obj);
        return jarEntryFile;
    }

    @Override
    public IJarEntryResource[] getChildren() {
        return NO_CHILDREN;
    }

    public InputStream getContents() throws CoreException {
        IPackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        try {
            if (Util.isJrt(packageFragmentRoot.getPath().toOSString())) {
                try {
                    Object target = JavaModel.getTarget(packageFragmentRoot.getPath(), false);
                    if (target == null || !(target instanceof File)) {
                        return null;
                    }
                    return JRTUtil.getContentFromJrt((File) target, getEntryName(), packageFragmentRoot.getElementName());
                } catch (IOException e10) {
                    throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
                }
            }
            try {
                ZipFile zipFile = getZipFile();
                if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                    System.out.println("(" + ((Object) Thread.currentThread()) + ") [JarEntryFile.getContents()] Creating ZipFile on " + zipFile.getName());
                }
                String entryName = getEntryName();
                ZipEntry entry = zipFile.getEntry(entryName);
                if (entry == null) {
                    throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, entryName));
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Util.getZipEntryByteContent(entry, zipFile));
                JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                return byteArrayInputStream;
            } catch (IOException e11) {
                throw new JavaModelException(e11, IJavaModelStatusConstants.IO_EXCEPTION);
            }
        } catch (Throwable th2) {
            JavaModelManager.getJavaModelManager().closeZipFile(null);
            throw th2;
        }
    }

    @Override
    public boolean isFile() {
        return true;
    }

    public String toString() {
        return "JarEntryFile[" + getEntryName() + "]";
    }
}
