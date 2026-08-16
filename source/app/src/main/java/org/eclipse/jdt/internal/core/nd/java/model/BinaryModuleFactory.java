package org.eclipse.jdt.internal.core.nd.java.model;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JrtPackageFragmentRoot;
import org.eclipse.jdt.internal.core.ModularClassFile;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;

public class BinaryModuleFactory {
    public static BinaryModuleDescriptor createDescriptor(ModularClassFile modularClassFile) {
        return createDescriptor(modularClassFile.getPackageFragmentRoot(), modularClassFile);
    }

    public static IBinaryModule rawReadModule(BinaryModuleDescriptor binaryModuleDescriptor, boolean z10) throws JavaModelException, ClassFormatException {
        try {
            return rawReadModuleTestForExists(binaryModuleDescriptor, z10, true);
        } catch (FileNotFoundException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        }
    }

    public static IBinaryModule rawReadModuleTestForExists(BinaryModuleDescriptor binaryModuleDescriptor, boolean z10, boolean z11) throws JavaModelException, ClassFormatException, FileNotFoundException {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        Throwable th2 = null;
        if (binaryModuleDescriptor == null) {
            return null;
        }
        try {
            if (binaryModuleDescriptor.isInJarFile()) {
                try {
                    zipFile = JavaModelManager.getJavaModelManager().getZipFile(new Path(new String(binaryModuleDescriptor.workspacePath)), z11);
                } catch (CoreException e10) {
                    e = e10;
                }
                try {
                    ZipEntry entry = zipFile.getEntry("module-info.class");
                    if (entry == null) {
                        JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                        return null;
                    }
                    try {
                        IBinaryModule moduleDeclaration = new ClassFileReader(Util.getZipEntryByteContent(entry, zipFile), binaryModuleDescriptor.indexPath, z10).getModuleDeclaration();
                        JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                        return moduleDeclaration;
                    } catch (IOException e11) {
                        throw new JavaModelException(e11, IJavaModelStatusConstants.IO_EXCEPTION);
                    }
                } catch (CoreException e12) {
                    e = e12;
                    throw new JavaModelException(e);
                } catch (Throwable th3) {
                    th = th3;
                    zipFile2 = zipFile;
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile2);
                    throw th;
                }
            }
            IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(new String(binaryModuleDescriptor.workspacePath)));
            try {
                InputStream contents = file.getContents(true);
                try {
                    return new ClassFileReader(Util.getInputStreamAsByteArray(contents, -1), file.getFullPath().toString().toCharArray(), z10).getModuleDeclaration();
                } finally {
                    if (contents != null) {
                        contents.close();
                    }
                }
            } catch (Throwable th4) {
                if (0 == 0) {
                    throw th4;
                }
                if (null != th4) {
                    try {
                        th2.addSuppressed(th4);
                    } catch (IOException e13) {
                        throw new JavaModelException(e13, IJavaModelStatusConstants.IO_EXCEPTION);
                    } catch (CoreException e14) {
                        if (e14.getStatus().getCode() == 368) {
                            throw new FileNotFoundException();
                        }
                        throw new JavaModelException(e14);
                    }
                }
                throw null;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static IBinaryModule readModule(BinaryModuleDescriptor binaryModuleDescriptor, IProgressMonitor iProgressMonitor) throws JavaModelException, ClassFormatException {
        return rawReadModule(binaryModuleDescriptor, true);
    }

    private static BinaryModuleDescriptor createDescriptor(PackageFragmentRoot packageFragmentRoot, ModularClassFile modularClassFile) {
        String str;
        IPath locationForElement = JavaIndex.getLocationForElement(packageFragmentRoot);
        char[] cArr = null;
        if (locationForElement == null) {
            return null;
        }
        IPath path = packageFragmentRoot.getPath();
        if (packageFragmentRoot instanceof JarPackageFragmentRoot) {
            str = String.valueOf(packageFragmentRoot.getHandleIdentifier()) + '|' + ((JarPackageFragmentRoot) packageFragmentRoot).getClassFilePath("module-info.class");
            if (packageFragmentRoot instanceof JrtPackageFragmentRoot) {
                cArr = packageFragmentRoot.getElementName().toCharArray();
            }
        } else {
            locationForElement = locationForElement.append("module-info.class");
            String obj = path.append("module-info.class").toString();
            path = modularClassFile.resource().getFullPath();
            str = obj;
        }
        return new BinaryModuleDescriptor(locationForElement.toString().toCharArray(), cArr, path.toString().toCharArray(), str.toCharArray());
    }
}
