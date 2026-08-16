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
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.indexer.Indexer;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.TypeRef;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.util.Util;

public class BinaryTypeFactory {

    public static final class NotInIndexException extends Exception {
        private static final long serialVersionUID = 2859848007651528256L;
    }

    public static IBinaryType create(IOrdinaryClassFile iOrdinaryClassFile, IProgressMonitor iProgressMonitor) throws JavaModelException, ClassFormatException {
        return readType(createDescriptor(iOrdinaryClassFile), iProgressMonitor);
    }

    private static BinaryTypeDescriptor createDescriptor(PackageFragment packageFragment, ClassFile classFile) {
        String str;
        PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) packageFragment.getParent();
        IPath locationForElement = JavaIndex.getLocationForElement(packageFragmentRoot);
        if (locationForElement == null) {
            return null;
        }
        String concatWith = Util.concatWith(packageFragment.names, classFile.getElementName(), '/');
        String concatWith2 = Util.concatWith(packageFragment.names, classFile.getName(), '/');
        String classFilePath = packageFragmentRoot.getClassFilePath(concatWith);
        if (classFilePath != concatWith) {
            concatWith2 = String.valueOf(classFilePath.substring(0, classFilePath.indexOf(classFilePath))) + concatWith2;
            concatWith = classFilePath;
        }
        char[] concat = CharArrayUtils.concat(new char[]{'L'}, concatWith2.toCharArray(), new char[]{';'});
        IPath path = packageFragmentRoot.getPath();
        if (packageFragmentRoot instanceof JarPackageFragmentRoot) {
            str = String.valueOf(packageFragmentRoot.getHandleIdentifier()) + '|' + concatWith;
        } else {
            locationForElement = locationForElement.append(concatWith);
            String obj = path.append(concatWith).toString();
            path = classFile.resource().getFullPath();
            str = obj;
        }
        return new BinaryTypeDescriptor(locationForElement.toString().toCharArray(), concat, path.toString().toCharArray(), str.toCharArray());
    }

    public static ClassFileReader rawReadType(BinaryTypeDescriptor binaryTypeDescriptor, boolean z10) throws JavaModelException, ClassFormatException {
        try {
            return rawReadTypeTestForExists(binaryTypeDescriptor, z10, true);
        } catch (FileNotFoundException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    /* JADX WARN: Type inference failed for: r7v5, types: [org.eclipse.jdt.internal.core.JavaModelManager] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    public static ClassFileReader rawReadTypeTestForExists(BinaryTypeDescriptor binaryTypeDescriptor, boolean z10, boolean z11) throws JavaModelException, ClassFormatException, FileNotFoundException {
        ZipFile zipFile;
        ?? r02 = 0;
        r02 = 0;
        if (binaryTypeDescriptor == null) {
            return null;
        }
        if (binaryTypeDescriptor.isInJarFile()) {
            if (CharOperation.indexOf(JRTUtil.JRT_FS_JAR.toCharArray(), binaryTypeDescriptor.location, false) == -1) {
                try {
                    try {
                        zipFile = JavaModelManager.getJavaModelManager().getZipFile(new Path(new String(binaryTypeDescriptor.workspacePath)), z11);
                    } catch (CoreException e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    ZipEntry entry = zipFile.getEntry(new String(CharArrayUtils.concat(JavaNames.fieldDescriptorToBinaryName(binaryTypeDescriptor.fieldDescriptor), SuffixConstants.SUFFIX_class)));
                    if (entry != null) {
                        try {
                            ClassFileReader classFileReader = new ClassFileReader(org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(entry, zipFile), binaryTypeDescriptor.indexPath, z10);
                            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                            return classFileReader;
                        } catch (IOException e11) {
                            throw new JavaModelException(e11, IJavaModelStatusConstants.IO_EXCEPTION);
                        }
                    }
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                } catch (CoreException e12) {
                    e = e12;
                    r02 = zipFile;
                    throw new JavaModelException(e);
                } catch (Throwable th3) {
                    th = th3;
                    r02 = zipFile;
                    JavaModelManager.getJavaModelManager().closeZipFile(r02);
                    throw th;
                }
            }
            return null;
        }
        IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(new String(binaryTypeDescriptor.workspacePath)));
        try {
            InputStream contents = file.getContents(true);
            try {
                return new ClassFileReader(org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsByteArray(contents, -1), file.getFullPath().toString().toCharArray(), z10);
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
                    r02.addSuppressed(th4);
                } catch (CoreException e13) {
                    if (e13.getStatus().getCode() == 368) {
                        throw new FileNotFoundException();
                    }
                    throw new JavaModelException(e13);
                } catch (IOException e14) {
                    throw new JavaModelException(e14, IJavaModelStatusConstants.IO_EXCEPTION);
                }
            }
            throw null;
        }
    }

    public static IBinaryType readFromIndex(JavaIndex javaIndex, BinaryTypeDescriptor binaryTypeDescriptor, IProgressMonitor iProgressMonitor) throws JavaModelException, NotInIndexException {
        char[] cArr = binaryTypeDescriptor.fieldDescriptor;
        Nd nd2 = javaIndex.getNd();
        if (binaryTypeDescriptor.location != null) {
            Throwable th2 = null;
            try {
                IReader acquireReadLock = nd2.acquireReadLock();
                try {
                    try {
                        TypeRef create = TypeRef.create(nd2, binaryTypeDescriptor.location, cArr);
                        NdType ndType = create.get();
                        if (ndType == null) {
                            if (!javaIndex.isUpToDate(javaIndex.getResourceFile(binaryTypeDescriptor.location))) {
                                throw new NotInIndexException();
                            }
                            if (acquireReadLock != null) {
                                acquireReadLock.close();
                            }
                            return null;
                        }
                        if (!javaIndex.isUpToDate(ndType.getResourceFile())) {
                            throw new NotInIndexException();
                        }
                        IndexBinaryType indexBinaryType = new IndexBinaryType(create, binaryTypeDescriptor.indexPath);
                        indexBinaryType.initSimpleAttributes();
                        if (acquireReadLock != null) {
                            acquireReadLock.close();
                        }
                        return indexBinaryType;
                    } finally {
                    }
                } catch (CoreException e10) {
                    throw new JavaModelException(e10);
                }
            } catch (Throwable th3) {
                if (0 == 0) {
                    throw th3;
                }
                if (null != th3) {
                    try {
                        th2.addSuppressed(th3);
                    } catch (IndexException e11) {
                        Package.log("Index corruption detected. Rebuilding index.", e11);
                        Indexer.getInstance().requestRebuildIndex();
                    }
                }
                throw null;
            }
        }
        throw new NotInIndexException();
    }

    public static IBinaryType readType(BinaryTypeDescriptor binaryTypeDescriptor, IProgressMonitor iProgressMonitor) throws JavaModelException, ClassFormatException {
        if (JavaIndex.isEnabled()) {
            try {
                return readFromIndex(JavaIndex.getIndex(), binaryTypeDescriptor, iProgressMonitor);
            } catch (NotInIndexException unused) {
            }
        }
        return rawReadType(binaryTypeDescriptor, true);
    }

    public static BinaryTypeDescriptor createDescriptor(IOrdinaryClassFile iOrdinaryClassFile) {
        return createDescriptor((PackageFragment) iOrdinaryClassFile.getParent(), (ClassFile) iOrdinaryClassFile);
    }

    public static BinaryTypeDescriptor createDescriptor(IType iType) {
        return createDescriptor(iType.getClassFile());
    }
}
