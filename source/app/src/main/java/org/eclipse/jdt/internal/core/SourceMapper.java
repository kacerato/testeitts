package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.ReferenceInfoAdapter;

public class SourceMapper extends ReferenceInfoAdapter implements ISourceElementRequestor, SuffixConstants {
    public static final SourceRange UNKNOWN_RANGE = new SourceRange(-1, 0);
    public static boolean VERBOSE = false;
    int anonymousClassName;
    int anonymousCounter;
    private boolean areRootPathsComputed;
    protected NamedMember binaryTypeOrModule;
    protected HashMap categories;
    String defaultEncoding;
    String encoding;
    protected HashSet finalParameters;
    private HashMap importsCounterTable;
    private HashMap importsTable;
    protected int[] memberDeclarationStart;
    protected String[] memberName;
    protected SourceRange[] memberNameRange;
    protected char[][][] methodParameterNames;
    protected char[][][] methodParameterTypes;
    int moduleDeclarationStart;
    int moduleModifiers;
    SourceRange moduleNameRange;
    Map options;
    protected HashMap parameterNames;
    protected HashMap parametersRanges;
    protected String rootPath;
    protected ArrayList rootPaths;
    protected IJavaElement searchedElement;
    protected IPath sourcePath;
    protected HashMap sourceRanges;
    int[] typeDeclarationStarts;
    int typeDepth;
    int[] typeModifiers;
    SourceRange[] typeNameRanges;
    IType[] types;

    public class JrtPackageNamesAdderVisitor implements JRTUtil.JrtFileVisitor<Path> {
        public String complianceLevel;
        public boolean containsADefaultPackage;
        public boolean containsJavaSource;
        public final HashSet firstLevelPackageNames;
        final IPackageFragmentRoot root;
        public String sourceLevel;

        public JrtPackageNamesAdderVisitor(HashSet hashSet, String str, String str2, boolean z10, boolean z11, IPackageFragmentRoot iPackageFragmentRoot) {
            this.firstLevelPackageNames = hashSet;
            this.root = iPackageFragmentRoot;
            this.sourceLevel = str;
            this.complianceLevel = str2;
            this.containsADefaultPackage = z10;
            this.containsJavaSource = z11;
        }

        @Override
        public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
            String path3 = path.toString();
            if (Util.isClassFileName(path3)) {
                int indexOf = path3.indexOf(47);
                if (indexOf != -1) {
                    String substring = path3.substring(0, indexOf);
                    if (!this.firstLevelPackageNames.contains(substring)) {
                        if (this.sourceLevel == null) {
                            IJavaProject javaProject = this.root.getJavaProject();
                            this.sourceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                            this.complianceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                        }
                        IStatus validatePackageName = JavaConventions.validatePackageName(substring, this.sourceLevel, this.complianceLevel);
                        if (validatePackageName.isOK() || validatePackageName.getSeverity() == 2) {
                            this.firstLevelPackageNames.add(substring);
                        }
                    }
                } else {
                    this.containsADefaultPackage = true;
                }
            } else if (!this.containsJavaSource && org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(path3)) {
                this.containsJavaSource = true;
            }
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult visitModule(Path path, String str) throws IOException {
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
            return FileVisitResult.CONTINUE;
        }
    }

    public static class LocalVariableElementKey {
        String name;
        String parent;

        public LocalVariableElementKey(IJavaElement iJavaElement, String str) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(iJavaElement.getParent().getHandleIdentifier());
            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
            stringBuffer.append(iJavaElement.getElementName());
            stringBuffer.append('(');
            if (iJavaElement.getElementType() == 9) {
                String[] parameterTypes = ((IMethod) iJavaElement).getParameterTypes();
                int length = parameterTypes.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 > 0) {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    stringBuffer.append(Signature.getSignatureSimpleName(parameterTypes[i10]));
                }
            }
            stringBuffer.append(')');
            this.parent = String.valueOf(stringBuffer);
            this.name = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            LocalVariableElementKey localVariableElementKey = (LocalVariableElementKey) obj;
            String str = this.name;
            if (str == null) {
                if (localVariableElementKey.name != null) {
                    return false;
                }
            } else if (!str.equals(localVariableElementKey.name)) {
                return false;
            }
            String str2 = this.parent;
            if (str2 == null) {
                if (localVariableElementKey.parent != null) {
                    return false;
                }
            } else if (!str2.equals(localVariableElementKey.parent)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.name;
            int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
            String str2 = this.parent;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('(');
            stringBuffer.append(this.parent);
            stringBuffer.append('.');
            stringBuffer.append(this.name);
            stringBuffer.append(')');
            return String.valueOf(stringBuffer);
        }
    }

    public SourceMapper() {
        this.rootPath = "";
        this.areRootPathsComputed = false;
    }

    private void addCategories(IJavaElement iJavaElement, char[][] cArr) {
        if (cArr == null) {
            return;
        }
        if (this.categories == null) {
            this.categories = new HashMap();
        }
        this.categories.put(iJavaElement, CharOperation.toStrings(cArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0239 A[Catch: all -> 0x003c, TryCatch #11 {all -> 0x003c, blocks: (B:4:0x0003, B:10:0x000c, B:12:0x001f, B:14:0x0042, B:201:0x0061, B:204:0x007f, B:69:0x0192, B:71:0x019d, B:72:0x01b1, B:115:0x01c5, B:120:0x022a, B:121:0x022d, B:125:0x0231, B:127:0x0239, B:128:0x023d, B:132:0x0243, B:133:0x025f, B:135:0x0265, B:137:0x026d, B:138:0x0275, B:139:0x0279, B:141:0x0281, B:144:0x0291, B:146:0x0297, B:147:0x02d0, B:149:0x02d7, B:130:0x0249, B:155:0x0258, B:209:0x008b, B:211:0x008f, B:17:0x0096, B:19:0x009d, B:66:0x00af, B:160:0x011c, B:161:0x011f, B:166:0x0123, B:168:0x0130, B:171:0x0136, B:173:0x0142, B:176:0x0150, B:177:0x0166, B:179:0x0170, B:183:0x0176, B:185:0x017a, B:190:0x0185), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0265 A[Catch: all -> 0x003c, TryCatch #11 {all -> 0x003c, blocks: (B:4:0x0003, B:10:0x000c, B:12:0x001f, B:14:0x0042, B:201:0x0061, B:204:0x007f, B:69:0x0192, B:71:0x019d, B:72:0x01b1, B:115:0x01c5, B:120:0x022a, B:121:0x022d, B:125:0x0231, B:127:0x0239, B:128:0x023d, B:132:0x0243, B:133:0x025f, B:135:0x0265, B:137:0x026d, B:138:0x0275, B:139:0x0279, B:141:0x0281, B:144:0x0291, B:146:0x0297, B:147:0x02d0, B:149:0x02d7, B:130:0x0249, B:155:0x0258, B:209:0x008b, B:211:0x008f, B:17:0x0096, B:19:0x009d, B:66:0x00af, B:160:0x011c, B:161:0x011f, B:166:0x0123, B:168:0x0130, B:171:0x0136, B:173:0x0142, B:176:0x0150, B:177:0x0166, B:179:0x0170, B:183:0x0176, B:185:0x017a, B:190:0x0185), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0297 A[Catch: all -> 0x003c, TryCatch #11 {all -> 0x003c, blocks: (B:4:0x0003, B:10:0x000c, B:12:0x001f, B:14:0x0042, B:201:0x0061, B:204:0x007f, B:69:0x0192, B:71:0x019d, B:72:0x01b1, B:115:0x01c5, B:120:0x022a, B:121:0x022d, B:125:0x0231, B:127:0x0239, B:128:0x023d, B:132:0x0243, B:133:0x025f, B:135:0x0265, B:137:0x026d, B:138:0x0275, B:139:0x0279, B:141:0x0281, B:144:0x0291, B:146:0x0297, B:147:0x02d0, B:149:0x02d7, B:130:0x0249, B:155:0x0258, B:209:0x008b, B:211:0x008f, B:17:0x0096, B:19:0x009d, B:66:0x00af, B:160:0x011c, B:161:0x011f, B:166:0x0123, B:168:0x0130, B:171:0x0136, B:173:0x0142, B:176:0x0150, B:177:0x0166, B:179:0x0170, B:183:0x0176, B:185:0x017a, B:190:0x0185), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0258 A[Catch: all -> 0x003c, TryCatch #11 {all -> 0x003c, blocks: (B:4:0x0003, B:10:0x000c, B:12:0x001f, B:14:0x0042, B:201:0x0061, B:204:0x007f, B:69:0x0192, B:71:0x019d, B:72:0x01b1, B:115:0x01c5, B:120:0x022a, B:121:0x022d, B:125:0x0231, B:127:0x0239, B:128:0x023d, B:132:0x0243, B:133:0x025f, B:135:0x0265, B:137:0x026d, B:138:0x0275, B:139:0x0279, B:141:0x0281, B:144:0x0291, B:146:0x0297, B:147:0x02d0, B:149:0x02d7, B:130:0x0249, B:155:0x0258, B:209:0x008b, B:211:0x008f, B:17:0x0096, B:19:0x009d, B:66:0x00af, B:160:0x011c, B:161:0x011f, B:166:0x0123, B:168:0x0130, B:171:0x0136, B:173:0x0142, B:176:0x0150, B:177:0x0166, B:179:0x0170, B:183:0x0176, B:185:0x017a, B:190:0x0185), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0192 A[Catch: all -> 0x003c, TRY_ENTER, TryCatch #11 {all -> 0x003c, blocks: (B:4:0x0003, B:10:0x000c, B:12:0x001f, B:14:0x0042, B:201:0x0061, B:204:0x007f, B:69:0x0192, B:71:0x019d, B:72:0x01b1, B:115:0x01c5, B:120:0x022a, B:121:0x022d, B:125:0x0231, B:127:0x0239, B:128:0x023d, B:132:0x0243, B:133:0x025f, B:135:0x0265, B:137:0x026d, B:138:0x0275, B:139:0x0279, B:141:0x0281, B:144:0x0291, B:146:0x0297, B:147:0x02d0, B:149:0x02d7, B:130:0x0249, B:155:0x0258, B:209:0x008b, B:211:0x008f, B:17:0x0096, B:19:0x009d, B:66:0x00af, B:160:0x011c, B:161:0x011f, B:166:0x0123, B:168:0x0130, B:171:0x0136, B:173:0x0142, B:176:0x0150, B:177:0x0166, B:179:0x0170, B:183:0x0176, B:185:0x017a, B:190:0x0185), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized void computeAllRootPaths(IJavaElement iJavaElement) {
        long j10;
        JrtPackageNamesAdderVisitor jrtPackageNamesAdderVisitor;
        boolean z10;
        boolean z11;
        ArrayList arrayList;
        int size;
        ZipFile zipFile;
        ZipFile zipFile2;
        try {
            if (this.areRootPathsComputed) {
                return;
            }
            IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) iJavaElement.getAncestor(3);
            IPath path = iPackageFragmentRoot.getPath();
            HashSet hashSet = new HashSet();
            if (VERBOSE) {
                System.out.println("compute all root paths for " + iPackageFragmentRoot.getElementName());
                j10 = System.currentTimeMillis();
            } else {
                j10 = 0;
            }
            long j11 = j10;
            HashSet hashSet2 = new HashSet();
            int i10 = 0;
            boolean z12 = !path.equals(this.sourcePath);
            boolean z13 = false;
            String str = null;
            String str2 = null;
            if (Util.isJrt(path.toOSString())) {
                try {
                    jrtPackageNamesAdderVisitor = new JrtPackageNamesAdderVisitor(hashSet2, null, null, false, z12, iPackageFragmentRoot);
                    JRTUtil.walkModuleImage(iPackageFragmentRoot.getPath().toFile(), jrtPackageNamesAdderVisitor, JRTUtil.NOTIFY_FILES);
                    z10 = jrtPackageNamesAdderVisitor.containsADefaultPackage;
                } catch (IOException e10) {
                    e = e10;
                }
                try {
                    z12 = jrtPackageNamesAdderVisitor.containsJavaSource;
                    z11 = z10;
                } catch (IOException e11) {
                    e = e11;
                    z13 = z10;
                    if (VERBOSE) {
                        e.printStackTrace();
                    }
                    z11 = z13;
                    if (z12) {
                    }
                    int size2 = hashSet.size();
                    arrayList = this.rootPaths;
                    if (arrayList != null) {
                    }
                    size = hashSet.size();
                    if (size > 0) {
                    }
                    this.areRootPathsComputed = true;
                    if (VERBOSE) {
                    }
                }
                if (z12) {
                    Object target = JavaModel.getTarget(this.sourcePath, true);
                    if (target instanceof IContainer) {
                        IContainer iContainer = (IContainer) target;
                        computeRootPath(iContainer, hashSet2, z11, hashSet, iContainer.getFullPath().segmentCount());
                    } else {
                        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
                        try {
                            zipFile = javaModelManager.getZipFile(this.sourcePath);
                        } catch (CoreException unused) {
                            zipFile = null;
                        } catch (Throwable th2) {
                            th = th2;
                            zipFile = null;
                        }
                        try {
                            Enumeration<? extends ZipEntry> entries = zipFile.entries();
                            while (entries.hasMoreElements()) {
                                ZipEntry nextElement = entries.nextElement();
                                if (!nextElement.isDirectory()) {
                                    String name = nextElement.getName();
                                    if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(name)) {
                                        org.eclipse.core.runtime.Path path2 = new org.eclipse.core.runtime.Path(name);
                                        if (path2.segmentCount() > 1) {
                                            int segmentCount = path2.segmentCount();
                                            int i11 = segmentCount - 1;
                                            for (int i12 = 0; i12 < i11; i12++) {
                                                if (hashSet2.contains(path2.segment(i12))) {
                                                    hashSet.add(path2.uptoSegment(i12));
                                                }
                                                if (i12 == segmentCount - 2 && z11) {
                                                    hashSet.add(path2.uptoSegment(i11));
                                                }
                                            }
                                        } else if (z11) {
                                            hashSet.add(new org.eclipse.core.runtime.Path(""));
                                        }
                                    }
                                }
                            }
                        } catch (CoreException unused2) {
                        } catch (Throwable th3) {
                            th = th3;
                            javaModelManager.closeZipFile(zipFile);
                            throw th;
                        }
                        javaModelManager.closeZipFile(zipFile);
                    }
                }
                int size22 = hashSet.size();
                arrayList = this.rootPaths;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        hashSet.add(new org.eclipse.core.runtime.Path((String) it.next()));
                    }
                    this.rootPaths.clear();
                } else {
                    this.rootPaths = new ArrayList(size22);
                }
                size = hashSet.size();
                if (size > 0) {
                    ArrayList arrayList2 = new ArrayList(hashSet);
                    if (size > 1) {
                        Collections.sort(arrayList2, new Comparator() {
                            @Override
                            public int compare(Object obj, Object obj2) {
                                return ((IPath) obj).segmentCount() - ((IPath) obj2).segmentCount();
                            }
                        });
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        this.rootPaths.add(((IPath) it2.next()).toString());
                    }
                }
                this.areRootPathsComputed = true;
                if (VERBOSE) {
                    PrintStream printStream = System.out;
                    printStream.println("Spent " + (System.currentTimeMillis() - j11) + DateFormat.MINUTE_SECOND);
                    printStream.println("Found " + size + " root paths");
                    Iterator it3 = this.rootPaths.iterator();
                    while (it3.hasNext()) {
                        System.out.println("root[" + i10 + "]=" + ((String) it3.next()));
                        i10++;
                    }
                }
            }
            if (iPackageFragmentRoot.isArchive()) {
                JavaModelManager javaModelManager2 = JavaModelManager.getJavaModelManager();
                try {
                    zipFile2 = javaModelManager2.getZipFile(path);
                    try {
                        Enumeration<? extends ZipEntry> entries2 = zipFile2.entries();
                        while (entries2.hasMoreElements()) {
                            ZipEntry nextElement2 = entries2.nextElement();
                            String name2 = nextElement2.getName();
                            if (!nextElement2.isDirectory()) {
                                if (Util.isClassFileName(name2)) {
                                    int indexOf = name2.indexOf(47);
                                    if (indexOf != -1) {
                                        String substring = name2.substring(0, indexOf);
                                        if (!hashSet2.contains(substring)) {
                                            if (str == null) {
                                                IJavaProject javaProject = iPackageFragmentRoot.getJavaProject();
                                                String option = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                                                str2 = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                                                str = option;
                                            }
                                            IStatus validatePackageName = JavaConventions.validatePackageName(substring, str, str2);
                                            if (validatePackageName.isOK() || validatePackageName.getSeverity() == 2) {
                                                hashSet2.add(substring);
                                            }
                                        }
                                    } else {
                                        z13 = true;
                                    }
                                } else if (!z12 && org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(name2)) {
                                    z12 = true;
                                }
                            }
                        }
                    } catch (CoreException unused3) {
                    } catch (Throwable th4) {
                        th = th4;
                        javaModelManager2.closeZipFile(zipFile2);
                        throw th;
                    }
                } catch (CoreException unused4) {
                    zipFile2 = null;
                } catch (Throwable th5) {
                    th = th5;
                    zipFile2 = null;
                }
                javaModelManager2.closeZipFile(zipFile2);
            } else {
                Object target2 = JavaModel.getTarget(iPackageFragmentRoot.getPath(), true);
                if (target2 instanceof IResource) {
                    IContainer iContainer2 = (IResource) target2;
                    if (iContainer2 instanceof IContainer) {
                        try {
                            for (IResource iResource : iContainer2.members()) {
                                String name3 = iResource.getName();
                                if (iResource.getType() == 2) {
                                    if (str == null) {
                                        IJavaProject javaProject2 = iPackageFragmentRoot.getJavaProject();
                                        String option2 = javaProject2.getOption("org.eclipse.jdt.core.compiler.source", true);
                                        str2 = javaProject2.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                                        str = option2;
                                    }
                                    IStatus validatePackageName2 = JavaConventions.validatePackageName(name3, str, str2);
                                    if (validatePackageName2.isOK() || validatePackageName2.getSeverity() == 2) {
                                        hashSet2.add(name3);
                                    }
                                } else if (Util.isClassFileName(name3)) {
                                    z13 = true;
                                } else if (!z12 && org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(name3)) {
                                    z12 = true;
                                }
                            }
                        } catch (CoreException unused5) {
                        }
                    }
                }
            }
            z11 = z13;
            if (z12) {
            }
            int size222 = hashSet.size();
            arrayList = this.rootPaths;
            if (arrayList != null) {
            }
            size = hashSet.size();
            if (size > 0) {
            }
            this.areRootPathsComputed = true;
            if (VERBOSE) {
            }
        } finally {
        }
    }

    private void computeRootPath(IContainer iContainer, HashSet hashSet, boolean z10, Set set, int i10) {
        try {
            IFolder[] members = iContainer.members();
            int length = members.length;
            for (int i11 = 0; i11 < length; i11++) {
                IFolder iFolder = members[i11];
                if (iFolder.getType() == 2) {
                    if (hashSet.contains(iFolder.getName())) {
                        IPath device = iContainer.getFullPath().removeFirstSegments(i10).setDevice((String) null);
                        if (device.segmentCount() >= 1) {
                            set.add(device);
                        }
                        computeRootPath(iFolder, hashSet, z10, set, i10);
                    } else {
                        computeRootPath(iFolder, hashSet, z10, set, i10);
                    }
                }
                if (i11 == length - 1 && z10) {
                    int i12 = 0;
                    while (true) {
                        if (i12 < length) {
                            if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(members[i11].getName())) {
                                set.add(iContainer.getFullPath().removeFirstSegments(i10).setDevice((String) null));
                                break;
                            }
                            i12++;
                        }
                    }
                }
            }
        } catch (CoreException e10) {
            e10.printStackTrace();
        }
    }

    private void enterAbstractMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        int i10 = this.typeDepth;
        if (i10 >= 0) {
            this.memberName[i10] = new String(methodInfo.name);
            SourceRange[] sourceRangeArr = this.memberNameRange;
            int i11 = this.typeDepth;
            int i12 = methodInfo.nameSourceStart;
            sourceRangeArr[i11] = new SourceRange(i12, (methodInfo.nameSourceEnd - i12) + 1);
            int[] iArr = this.memberDeclarationStart;
            int i13 = this.typeDepth;
            iArr[i13] = methodInfo.declarationStart;
            IType iType = this.types[i13];
            int i14 = this.typeModifiers[i13];
            char[][] cArr = methodInfo.parameterTypes;
            if (!methodInfo.isConstructor || iType.getDeclaringType() == null || Flags.isStatic(i14)) {
                this.methodParameterTypes[this.typeDepth] = cArr;
            } else {
                IType declaringType = iType.getDeclaringType();
                String elementName = declaringType.getElementName();
                if (elementName.length() == 0) {
                    IOrdinaryClassFile classFile = declaringType.getClassFile();
                    int length = cArr != null ? cArr.length : 0;
                    char[][] cArr2 = new char[length + 1];
                    String elementName2 = classFile.getElementName();
                    cArr2[0] = elementName2.substring(0, elementName2.indexOf(46)).toCharArray();
                    if (length != 0) {
                        System.arraycopy(cArr, 0, cArr2, 1, length);
                    }
                    this.methodParameterTypes[this.typeDepth] = cArr2;
                } else {
                    int length2 = cArr != null ? cArr.length : 0;
                    char[][] cArr3 = new char[length2 + 1];
                    cArr3[0] = elementName.toCharArray();
                    if (length2 != 0) {
                        System.arraycopy(cArr, 0, cArr3, 1, length2);
                    }
                    this.methodParameterTypes[this.typeDepth] = cArr3;
                }
            }
            char[][][] cArr4 = this.methodParameterNames;
            int i15 = this.typeDepth;
            cArr4[i15] = methodInfo.parameterNames;
            IMethod method = iType.getMethod(this.memberName[i15], convertTypeNamesToSigs(this.methodParameterTypes[i15]));
            ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = methodInfo.typeParameters;
            if (typeParameterInfoArr != null) {
                int length3 = typeParameterInfoArr.length;
                for (int i16 = 0; i16 < length3; i16++) {
                    ISourceElementRequestor.TypeParameterInfo typeParameterInfo = methodInfo.typeParameters[i16];
                    IJavaElement typeParameter = method.getTypeParameter(new String(typeParameterInfo.name));
                    int i17 = typeParameterInfo.declarationStart;
                    SourceRange sourceRange = new SourceRange(i17, (typeParameterInfo.declarationEnd - i17) + 1);
                    int i18 = typeParameterInfo.nameSourceStart;
                    setSourceRange(typeParameter, sourceRange, new SourceRange(i18, (typeParameterInfo.nameSourceEnd - i18) + 1));
                }
            }
            ISourceElementRequestor.ParameterInfo[] parameterInfoArr = methodInfo.parameterInfos;
            if (parameterInfoArr != null) {
                int length4 = parameterInfoArr.length;
                for (int i19 = 0; i19 < length4; i19++) {
                    ISourceElementRequestor.ParameterInfo parameterInfo = methodInfo.parameterInfos[i19];
                    LocalVariableElementKey localVariableElementKey = new LocalVariableElementKey(method, new String(parameterInfo.name));
                    int i20 = parameterInfo.declarationStart;
                    SourceRange sourceRange2 = new SourceRange(i20, (parameterInfo.declarationEnd - i20) + 1);
                    int i21 = parameterInfo.nameSourceStart;
                    this.parametersRanges.put(localVariableElementKey, new SourceRange[]{sourceRange2, new SourceRange(i21, (parameterInfo.nameSourceEnd - i21) + 1)});
                    if (parameterInfo.modifiers != 0) {
                        if (this.finalParameters == null) {
                            this.finalParameters = new HashSet();
                        }
                        this.finalParameters.add(localVariableElementKey);
                    }
                }
            }
            addCategories(method, methodInfo.categories);
        }
    }

    private void exitAbstractMethod(int i10) {
        int i11 = this.typeDepth;
        if (i11 >= 0) {
            IType iType = this.types[i11];
            int i12 = this.memberDeclarationStart[i11];
            SourceRange sourceRange = new SourceRange(i12, (i10 - i12) + 1);
            String[] strArr = this.memberName;
            int i13 = this.typeDepth;
            IMethod method = iType.getMethod(strArr[i13], convertTypeNamesToSigs(this.methodParameterTypes[i13]));
            setSourceRange(method, sourceRange, this.memberNameRange[this.typeDepth]);
            setMethodParameterNames(method, this.methodParameterNames[this.typeDepth]);
        }
    }

    private int findMatchingGenericEnd(char[] cArr, int i10) {
        int length = cArr.length;
        int i11 = 0;
        while (i10 < length) {
            char c10 = cArr[i10];
            if (c10 == '<') {
                i11++;
            } else if (c10 != '>') {
                continue;
            } else {
                if (i11 == 0) {
                    return i10;
                }
                i11--;
            }
            i10++;
        }
        return -1;
    }

    private char[] getSourceForRootPath(String str, String str2) {
        if (!str.equals("")) {
            if (str.endsWith("/")) {
                str2 = str + str2;
            } else {
                str2 = str + '/' + str2;
            }
        }
        return findSource(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0070, code lost:
    
        if (r2 == 'L') goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0072, code lost:
    
        if (r2 == 'Q') goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0074, code lost:
    
        if (r2 == 'T') goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0076, code lost:
    
        r21.append(r18.substring(r1, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x007d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x007e, code lost:
    
        r21.append('Q');
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0081, code lost:
    
        if (r22 == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0083, code lost:
    
        r0 = r18.lastIndexOf(36, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0089, code lost:
    
        if (r0 <= r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x008b, code lost:
    
        r1 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008e, code lost:
    
        if (r1 < r20) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0091, code lost:
    
        r0 = r18.charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0095, code lost:
    
        if (r0 == ';') goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0097, code lost:
    
        if (r0 == '<') goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0099, code lost:
    
        r21.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bd, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x009e, code lost:
    
        r21.append(r0);
        r2 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a4, code lost:
    
        r2 = getUnqualifiedTypeSignature(r18, r2, r20, r21, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b6, code lost:
    
        if (r18.charAt(r2) != '>') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b8, code lost:
    
        r21.append('>');
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bf, code lost:
    
        r21.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c4, code lost:
    
        return r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0090, code lost:
    
        return r20;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x005b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int getUnqualifiedTypeSignature(String str, int i10, int i11, StringBuffer stringBuffer, boolean z10) {
        int i12;
        char charAt;
        int i13;
        int i14 = i10 + 1;
        boolean z11 = false;
        int i15 = i10;
        char charAt2 = str.charAt(i10);
        int i16 = i15;
        while (true) {
            if (i16 >= i11) {
                i16 = i14;
            } else {
                char charAt3 = str.charAt(i16);
                if (charAt3 != '*') {
                    if (charAt3 != '+' && charAt3 != '-') {
                        if (charAt3 == '.') {
                            i16++;
                            i15 = i16;
                        } else if (charAt3 != ';' && charAt3 != '<') {
                            if (charAt3 == '>') {
                                return i16;
                            }
                            if (charAt3 != 'F') {
                                if (charAt3 != 'L' && charAt3 != 'Q') {
                                    if (charAt3 != 'I' && charAt3 != 'J' && charAt3 != 'S') {
                                        if (charAt3 != 'T') {
                                            if (charAt3 != 'Z') {
                                                if (charAt3 != '[') {
                                                    switch (charAt3) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (!z11) {
                                    i16++;
                                    i15 = i16;
                                    z11 = true;
                                }
                            }
                            if (!z11) {
                                stringBuffer.append(charAt3);
                                return i16 + 1;
                            }
                        }
                        i13 = 1;
                        i16 += i13;
                    }
                    stringBuffer.append(charAt3);
                    i15 = i16 + 1;
                    i12 = i16 + 2;
                    charAt = str.charAt(i15);
                } else {
                    stringBuffer.append(charAt3);
                    i15 = i16 + 1;
                    i12 = i16 + 2;
                    charAt = str.charAt(i15);
                }
                i13 = 1;
                char c10 = charAt;
                i14 = i12;
                charAt2 = c10;
                i16 += i13;
            }
        }
    }

    private boolean hasToRetrieveSourceRangesForLocalClass(char[] cArr) {
        int i10;
        if (cArr == null) {
            return false;
        }
        int length = cArr.length;
        int indexOf = CharOperation.indexOf('$', cArr, 0);
        while (indexOf != -1 && (i10 = indexOf + 1) != length) {
            if (Character.isDigit(cArr[i10])) {
                return true;
            }
            indexOf = CharOperation.indexOf('$', cArr, i10);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
    
        r7.rootPath = r5;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private char[] internalFindSource(NamedMember namedMember, String str) {
        char[] cArr;
        long currentTimeMillis = VERBOSE ? System.currentTimeMillis() : 0L;
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        try {
            javaModelManager.cacheZipFiles(this);
            String str2 = this.rootPath;
            if (str2 != null) {
                cArr = getSourceForRootPath(str2, str);
                if (cArr == null) {
                    cArr = getSourceForRootPath("", str);
                }
            } else {
                cArr = null;
            }
            if (cArr == null && !(namedMember.getAncestor(3) instanceof JrtPackageFragmentRoot)) {
                computeAllRootPaths(namedMember);
                ArrayList arrayList = this.rootPaths;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        String str3 = (String) it.next();
                        if (!str3.equals(this.rootPath) && (cArr = getSourceForRootPath(str3, str)) != null) {
                            break;
                        }
                    }
                }
            }
            javaModelManager.flushZipFiles(this);
            if (VERBOSE) {
                System.out.println("spent " + (System.currentTimeMillis() - currentTimeMillis) + "ms for " + namedMember.getElementName());
            }
            return cArr;
        } catch (Throwable th2) {
            javaModelManager.flushZipFiles(this);
            throw th2;
        }
    }

    private char[] readSource(ZipEntry zipEntry, ZipFile zipFile, String str) {
        try {
            byte[] zipEntryByteContent = Util.getZipEntryByteContent(zipEntry, zipFile);
            if (zipEntryByteContent == null) {
                return null;
            }
            if (str == null && (str = this.encoding) == null) {
                str = this.defaultEncoding;
            }
            return Util.bytesToChar(zipEntryByteContent, str);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public void acceptImport(int i10, int i11, int i12, int i13, char[][] cArr, boolean z10, int i14) {
        int intValue;
        char[][] cArr2 = (char[][]) this.importsTable.get(this.binaryTypeOrModule);
        if (cArr2 == null) {
            cArr2 = new char[5];
            intValue = 0;
        } else {
            intValue = ((Integer) this.importsCounterTable.get(this.binaryTypeOrModule)).intValue();
        }
        if (cArr2.length == intValue) {
            char[][] cArr3 = new char[intValue * 2];
            System.arraycopy(cArr2, 0, cArr3, 0, intValue);
            cArr2 = cArr3;
        }
        char[] concatWith = CharOperation.concatWith(cArr, '.');
        if (z10) {
            int length = concatWith.length;
            char[] cArr4 = new char[length + 2];
            System.arraycopy(concatWith, 0, cArr4, 0, length);
            cArr4[length] = '.';
            cArr4[length + 1] = '*';
            concatWith = cArr4;
        }
        cArr2[intValue] = concatWith;
        this.importsTable.put(this.binaryTypeOrModule, cArr2);
        this.importsCounterTable.put(this.binaryTypeOrModule, Integer.valueOf(intValue + 1));
    }

    @Override
    public void acceptLineSeparatorPositions(int[] iArr) {
    }

    @Override
    public void acceptPackage(ImportReference importReference) {
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem) {
    }

    public void close() {
        this.sourceRanges = null;
        this.parameterNames = null;
        this.parametersRanges = null;
        this.finalParameters = null;
    }

    public String[] convertTypeNamesToSigs(char[][] cArr) {
        int length;
        int i10;
        if (cArr != null && (length = cArr.length) != 0) {
            String[] strArr = new String[length];
            for (int i11 = 0; i11 < length; i11++) {
                char[] createCharArrayTypeSignature = Signature.createCharArrayTypeSignature(cArr[i11], false);
                int length2 = createCharArrayTypeSignature.length;
                StringBuffer stringBuffer = null;
                int i12 = -1;
                int i13 = 0;
                int i14 = 0;
                while (i13 < length2) {
                    char c10 = createCharArrayTypeSignature[i13];
                    if (c10 != '.') {
                        if (c10 != 'Q') {
                            if (c10 != ';') {
                                if (c10 == '<') {
                                    int findMatchingGenericEnd = findMatchingGenericEnd(createCharArrayTypeSignature, i13 + 1);
                                    if (findMatchingGenericEnd > 0 && (i10 = findMatchingGenericEnd + 1) < length2 && createCharArrayTypeSignature[i10] == '.') {
                                        if (stringBuffer == null) {
                                            stringBuffer = new StringBuffer();
                                            stringBuffer.append(createCharArrayTypeSignature, 0, i14);
                                        }
                                        stringBuffer.append('Q');
                                        i13 = findMatchingGenericEnd + 2;
                                    }
                                }
                            }
                            if (i12 > i14) {
                                if (stringBuffer == null) {
                                    stringBuffer = new StringBuffer();
                                    stringBuffer.append(createCharArrayTypeSignature, 0, i14);
                                }
                                stringBuffer.append('Q');
                                stringBuffer.append(createCharArrayTypeSignature, i12 + 1, (i13 - i12) - 1);
                            }
                        } else if (stringBuffer != null) {
                            stringBuffer.append(createCharArrayTypeSignature, i14, i13 - i14);
                        }
                        i14 = i13;
                    } else {
                        i12 = i13;
                    }
                    i13++;
                }
                if (stringBuffer == null) {
                    strArr[i11] = new String(createCharArrayTypeSignature);
                } else {
                    stringBuffer.append(createCharArrayTypeSignature, i14, length2 - i14);
                    strArr[i11] = stringBuffer.toString();
                }
            }
            return strArr;
        }
        return CharOperation.NO_STRINGS;
    }

    @Override
    public void enterCompilationUnit() {
    }

    @Override
    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        enterAbstractMethod(methodInfo);
    }

    @Override
    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        int i10 = this.typeDepth;
        if (i10 >= 0) {
            this.memberDeclarationStart[i10] = fieldInfo.declarationStart;
            SourceRange[] sourceRangeArr = this.memberNameRange;
            int i11 = fieldInfo.nameSourceStart;
            sourceRangeArr[i10] = new SourceRange(i11, (fieldInfo.nameSourceEnd - i11) + 1);
            String str = new String(fieldInfo.name);
            String[] strArr = this.memberName;
            int i12 = this.typeDepth;
            strArr[i12] = str;
            addCategories(this.types[i12].getField(str), fieldInfo.categories);
        }
    }

    @Override
    public void enterInitializer(int i10, int i11) {
    }

    @Override
    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        enterAbstractMethod(methodInfo);
    }

    @Override
    public void enterModule(ISourceElementRequestor.ModuleInfo moduleInfo) {
        int i10 = moduleInfo.nameSourceStart;
        this.moduleNameRange = new SourceRange(i10, (moduleInfo.nameSourceEnd - i10) + 1);
        this.moduleDeclarationStart = moduleInfo.declarationStart;
        this.moduleModifiers = moduleInfo.modifiers;
        NamedMember namedMember = this.binaryTypeOrModule;
        if (namedMember instanceof IModuleDescription) {
            addCategories(namedMember, moduleInfo.categories);
        }
    }

    @Override
    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        int i10 = this.typeDepth + 1;
        this.typeDepth = i10;
        IType[] iTypeArr = this.types;
        if (i10 == iTypeArr.length) {
            IType[] iTypeArr2 = new IType[i10 * 2];
            this.types = iTypeArr2;
            System.arraycopy(iTypeArr, 0, iTypeArr2, 0, i10);
            SourceRange[] sourceRangeArr = this.typeNameRanges;
            int i11 = this.typeDepth;
            SourceRange[] sourceRangeArr2 = new SourceRange[i11 * 2];
            this.typeNameRanges = sourceRangeArr2;
            System.arraycopy(sourceRangeArr, 0, sourceRangeArr2, 0, i11);
            int[] iArr = this.typeDeclarationStarts;
            int i12 = this.typeDepth;
            int[] iArr2 = new int[i12 * 2];
            this.typeDeclarationStarts = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i12);
            String[] strArr = this.memberName;
            int i13 = this.typeDepth;
            String[] strArr2 = new String[i13 * 2];
            this.memberName = strArr2;
            System.arraycopy(strArr, 0, strArr2, 0, i13);
            int[] iArr3 = this.memberDeclarationStart;
            int i14 = this.typeDepth;
            int[] iArr4 = new int[i14 * 2];
            this.memberDeclarationStart = iArr4;
            System.arraycopy(iArr3, 0, iArr4, 0, i14);
            SourceRange[] sourceRangeArr3 = this.memberNameRange;
            int i15 = this.typeDepth;
            SourceRange[] sourceRangeArr4 = new SourceRange[i15 * 2];
            this.memberNameRange = sourceRangeArr4;
            System.arraycopy(sourceRangeArr3, 0, sourceRangeArr4, 0, i15);
            char[][][] cArr = this.methodParameterTypes;
            int i16 = this.typeDepth;
            char[][][] cArr2 = new char[i16 * 2][];
            this.methodParameterTypes = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, i16);
            char[][][] cArr3 = this.methodParameterNames;
            int i17 = this.typeDepth;
            char[][][] cArr4 = new char[i17 * 2][];
            this.methodParameterNames = cArr4;
            System.arraycopy(cArr3, 0, cArr4, 0, i17);
            int[] iArr5 = this.typeModifiers;
            int i18 = this.typeDepth;
            int[] iArr6 = new int[i18 * 2];
            this.typeModifiers = iArr6;
            System.arraycopy(iArr5, 0, iArr6, 0, i18);
        }
        char[] cArr5 = typeInfo.name;
        if (cArr5.length == 0) {
            int i19 = this.anonymousCounter + 1;
            this.anonymousCounter = i19;
            if (i19 == this.anonymousClassName) {
                this.types[this.typeDepth] = getType(this.binaryTypeOrModule.getElementName());
            } else {
                this.types[this.typeDepth] = getType(new String(cArr5));
            }
        } else {
            this.types[this.typeDepth] = getType(new String(cArr5));
        }
        SourceRange[] sourceRangeArr5 = this.typeNameRanges;
        int i20 = this.typeDepth;
        int i21 = typeInfo.nameSourceStart;
        sourceRangeArr5[i20] = new SourceRange(i21, (typeInfo.nameSourceEnd - i21) + 1);
        int[] iArr7 = this.typeDeclarationStarts;
        int i22 = this.typeDepth;
        iArr7[i22] = typeInfo.declarationStart;
        IType iType = this.types[i22];
        ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = typeInfo.typeParameters;
        if (typeParameterInfoArr != null) {
            int length = typeParameterInfoArr.length;
            for (int i23 = 0; i23 < length; i23++) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i23];
                IJavaElement typeParameter = iType.getTypeParameter(new String(typeParameterInfo.name));
                int i24 = typeParameterInfo.declarationStart;
                SourceRange sourceRange = new SourceRange(i24, (typeParameterInfo.declarationEnd - i24) + 1);
                int i25 = typeParameterInfo.nameSourceStart;
                setSourceRange(typeParameter, sourceRange, new SourceRange(i25, (typeParameterInfo.nameSourceEnd - i25) + 1));
            }
        }
        this.typeModifiers[this.typeDepth] = typeInfo.modifiers;
        addCategories(iType, typeInfo.categories);
    }

    @Override
    public void exitCompilationUnit(int i10) {
    }

    @Override
    public void exitConstructor(int i10) {
        exitAbstractMethod(i10);
    }

    @Override
    public void exitField(int i10, int i11, int i12) {
        int i13 = this.typeDepth;
        if (i13 >= 0) {
            IField field = this.types[i13].getField(this.memberName[i13]);
            int i14 = this.memberDeclarationStart[this.typeDepth];
            setSourceRange(field, new SourceRange(i14, (i11 - i14) + 1), this.memberNameRange[this.typeDepth]);
        }
    }

    @Override
    public void exitInitializer(int i10) {
    }

    @Override
    public void exitMethod(int i10, Expression expression) {
        exitAbstractMethod(i10);
    }

    @Override
    public void exitModule(int i10) {
        NamedMember namedMember = this.binaryTypeOrModule;
        int i11 = this.moduleDeclarationStart;
        setSourceRange(namedMember, new SourceRange(i11, (i10 - i11) + 1), this.moduleNameRange);
    }

    @Override
    public void exitType(int i10) {
        int i11 = this.typeDepth;
        if (i11 >= 0) {
            IType iType = this.types[i11];
            int i12 = this.typeDeclarationStarts[i11];
            setSourceRange(iType, new SourceRange(i12, (i10 - i12) + 1), this.typeNameRanges[this.typeDepth]);
            this.typeDepth--;
        }
    }

    public char[] findSource(IType iType, IBinaryType iBinaryType) {
        String sourceFileName;
        if (iType.isBinary() && (sourceFileName = ((BinaryType) iType).getSourceFileName(iBinaryType)) != null) {
            return findSource(iType, sourceFileName);
        }
        return null;
    }

    public int getFlags(IJavaElement iJavaElement) {
        if (iJavaElement.getElementType() != 14) {
            return 0;
        }
        LocalVariableElementKey localVariableElementKey = new LocalVariableElementKey(iJavaElement.getParent(), iJavaElement.getElementName());
        HashSet hashSet = this.finalParameters;
        return (hashSet == null || !hashSet.contains(localVariableElementKey)) ? 0 : 16;
    }

    public char[][] getImports(Member member) {
        char[][] cArr = (char[][]) this.importsTable.get(member);
        if (cArr != null) {
            int intValue = ((Integer) this.importsCounterTable.get(member)).intValue();
            if (cArr.length != intValue) {
                char[][] cArr2 = new char[intValue];
                System.arraycopy(cArr, 0, cArr2, 0, intValue);
                cArr = cArr2;
            }
            this.importsTable.put(member, cArr);
        }
        return cArr;
    }

    public char[][] getMethodParameterNames(IMethod iMethod) {
        if (iMethod.isBinary()) {
            IJavaElement[] unqualifiedMethodHandle = getUnqualifiedMethodHandle(iMethod, false);
            iMethod = (unqualifiedMethodHandle[1] == null || this.parameterNames.get(unqualifiedMethodHandle[0]) != null) ? (IMethod) unqualifiedMethodHandle[0] : (IMethod) getUnqualifiedMethodHandle(iMethod, true)[0];
        }
        char[][] cArr = (char[][]) this.parameterNames.get(iMethod);
        if (cArr == null) {
            return null;
        }
        return cArr;
    }

    public SourceRange getNameRange(IJavaElement iJavaElement) {
        int elementType = iJavaElement.getElementType();
        if (elementType != 9) {
            if (elementType == 14) {
                SourceRange[] sourceRangeArr = (SourceRange[]) this.parametersRanges.get(new LocalVariableElementKey(iJavaElement.getParent(), iJavaElement.getElementName()));
                return sourceRangeArr == null ? UNKNOWN_RANGE : sourceRangeArr[1];
            }
            if (elementType == 15) {
                IJavaElement parent = iJavaElement.getParent();
                if (parent.getElementType() == 9) {
                    IMethod iMethod = (IMethod) parent;
                    if (iMethod.isBinary()) {
                        IJavaElement[] unqualifiedMethodHandle = getUnqualifiedMethodHandle(iMethod, false);
                        iJavaElement = ((unqualifiedMethodHandle[1] == null || this.sourceRanges.get(unqualifiedMethodHandle[0]) != null) ? (IMethod) unqualifiedMethodHandle[0] : (IMethod) getUnqualifiedMethodHandle(iMethod, true)[0]).getTypeParameter(iJavaElement.getElementName());
                    }
                }
            }
        } else if (((IMember) iJavaElement).isBinary()) {
            IMethod iMethod2 = (IMethod) iJavaElement;
            IJavaElement[] unqualifiedMethodHandle2 = getUnqualifiedMethodHandle(iMethod2, false);
            iJavaElement = (unqualifiedMethodHandle2[1] == null || this.sourceRanges.get(unqualifiedMethodHandle2[0]) != null) ? unqualifiedMethodHandle2[0] : getUnqualifiedMethodHandle(iMethod2, true)[0];
        }
        SourceRange[] sourceRangeArr2 = (SourceRange[]) this.sourceRanges.get(iJavaElement);
        return sourceRangeArr2 == null ? UNKNOWN_RANGE : sourceRangeArr2[1];
    }

    public SourceRange getSourceRange(IJavaElement iJavaElement) {
        int elementType = iJavaElement.getElementType();
        if (elementType != 9) {
            if (elementType == 14) {
                SourceRange[] sourceRangeArr = (SourceRange[]) this.parametersRanges.get(new LocalVariableElementKey(iJavaElement.getParent(), iJavaElement.getElementName()));
                return sourceRangeArr == null ? UNKNOWN_RANGE : sourceRangeArr[0];
            }
            if (elementType == 15) {
                IJavaElement parent = iJavaElement.getParent();
                if (parent.getElementType() == 9) {
                    IMethod iMethod = (IMethod) parent;
                    if (iMethod.isBinary()) {
                        IJavaElement[] unqualifiedMethodHandle = getUnqualifiedMethodHandle(iMethod, false);
                        iJavaElement = ((unqualifiedMethodHandle[1] == null || this.sourceRanges.get(unqualifiedMethodHandle[0]) != null) ? (IMethod) unqualifiedMethodHandle[0] : (IMethod) getUnqualifiedMethodHandle(iMethod, true)[0]).getTypeParameter(iJavaElement.getElementName());
                    }
                }
            }
        } else if (((IMember) iJavaElement).isBinary()) {
            IMethod iMethod2 = (IMethod) iJavaElement;
            IJavaElement[] unqualifiedMethodHandle2 = getUnqualifiedMethodHandle(iMethod2, false);
            iJavaElement = (unqualifiedMethodHandle2[1] == null || this.sourceRanges.get(unqualifiedMethodHandle2[0]) != null) ? unqualifiedMethodHandle2[0] : getUnqualifiedMethodHandle(iMethod2, true)[0];
        }
        SourceRange[] sourceRangeArr2 = (SourceRange[]) this.sourceRanges.get(iJavaElement);
        return sourceRangeArr2 == null ? UNKNOWN_RANGE : sourceRangeArr2[0];
    }

    public IType getType(String str) {
        IAdaptable iAdaptable = this.binaryTypeOrModule;
        if (!(iAdaptable instanceof IType)) {
            return null;
        }
        IType iType = (IType) iAdaptable;
        if (str.length() != 0) {
            if (iType.getElementName().equals(str)) {
                return iType;
            }
            int i10 = this.typeDepth;
            if (i10 > 1) {
                iType = this.types[i10 - 1];
            }
            return iType.getType(str);
        }
        IJavaElement parent = iType.getParent();
        String elementName = parent.getElementName();
        StringBuffer stringBuffer = new StringBuffer();
        int lastIndexOf = elementName.lastIndexOf(36);
        for (int i11 = 0; i11 <= lastIndexOf; i11++) {
            stringBuffer.append(elementName.charAt(i11));
        }
        stringBuffer.append(Integer.toString(this.anonymousCounter));
        return new BinaryType(new ClassFile((PackageFragment) parent.getParent(), stringBuffer.toString()), str);
    }

    public IJavaElement[] getUnqualifiedMethodHandle(IMethod iMethod, boolean z10) {
        String[] parameterTypes = iMethod.getParameterTypes();
        String[] strArr = new String[parameterTypes.length];
        int i10 = 0;
        boolean z11 = false;
        while (true) {
            boolean z12 = true;
            if (i10 >= parameterTypes.length) {
                break;
            }
            StringBuffer stringBuffer = new StringBuffer();
            String str = parameterTypes[i10];
            getUnqualifiedTypeSignature(str, 0, str.length(), stringBuffer, z10);
            String stringBuffer2 = stringBuffer.toString();
            strArr[i10] = stringBuffer2;
            if (stringBuffer2.lastIndexOf(36) == -1) {
                z12 = false;
            }
            z11 |= z12;
            i10++;
        }
        IJavaElement[] iJavaElementArr = new IJavaElement[2];
        IMethod method = ((IType) iMethod.getParent()).getMethod(iMethod.getElementName(), strArr);
        iJavaElementArr[0] = method;
        if (z11) {
            iJavaElementArr[1] = method;
        }
        return iJavaElementArr;
    }

    public void mapSource(NamedMember namedMember, char[] cArr, IBinaryType iBinaryType) {
        mapSource(namedMember, cArr, iBinaryType, null);
    }

    public void setMethodParameterNames(IMethod iMethod, char[][] cArr) {
        if (cArr == null) {
            cArr = CharOperation.NO_CHAR_CHAR;
        }
        this.parameterNames.put(iMethod, cArr);
    }

    public void setSourceRange(IJavaElement iJavaElement, SourceRange sourceRange, SourceRange sourceRange2) {
        this.sourceRanges.put(iJavaElement, new SourceRange[]{sourceRange, sourceRange2});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized ISourceRange mapSource(NamedMember namedMember, char[] cArr, IBinaryType iBinaryType, IJavaElement iJavaElement) {
        String str;
        boolean z10;
        this.binaryTypeOrModule = namedMember;
        NamedMember namedMember2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        if (this.sourceRanges.get(namedMember) != null) {
            return iJavaElement != null ? getNameRange(iJavaElement) : null;
        }
        this.importsTable.remove(this.binaryTypeOrModule);
        this.importsCounterTable.remove(this.binaryTypeOrModule);
        this.searchedElement = iJavaElement;
        this.types = new IType[1];
        this.typeDeclarationStarts = new int[1];
        this.typeNameRanges = new SourceRange[1];
        this.typeModifiers = new int[1];
        this.typeDepth = -1;
        this.memberDeclarationStart = new int[1];
        this.memberName = new String[1];
        this.memberNameRange = new SourceRange[1];
        this.methodParameterTypes = new char[1][];
        this.methodParameterNames = new char[1][];
        this.anonymousCounter = 0;
        HashMap hashMap = iJavaElement != null ? (HashMap) this.sourceRanges.clone() : null;
        try {
            DefaultProblemFactory defaultProblemFactory = new DefaultProblemFactory();
            this.anonymousClassName = 0;
            NamedMember namedMember3 = this.binaryTypeOrModule;
            if (namedMember3 instanceof BinaryType) {
                if (iBinaryType == null) {
                    try {
                        iBinaryType = (IBinaryType) namedMember3.getElementInfo();
                    } catch (JavaModelException unused) {
                        return null;
                    }
                }
                str = ((BinaryType) this.binaryTypeOrModule).sourceFileName(iBinaryType);
                boolean isAnonymous = iBinaryType.isAnonymous();
                char[] name = iBinaryType.getName();
                if (isAnonymous) {
                    String elementName = this.binaryTypeOrModule.getParent().getElementName();
                    try {
                        this.anonymousClassName = Integer.parseInt(elementName.substring(elementName.lastIndexOf(36) + 1, elementName.length()));
                    } catch (NumberFormatException unused2) {
                    }
                }
                z10 = hasToRetrieveSourceRangesForLocalClass(name);
            } else {
                str = "module-info.class";
                z10 = false;
            }
            String str2 = str;
            SourceElementParser sourceElementParser = new SourceElementParser(this, defaultProblemFactory, new CompilerOptions(this.options), z10, true);
            sourceElementParser.javadocParser.checkDocComment = false;
            IJavaElement compilationUnit = this.binaryTypeOrModule.getCompilationUnit();
            if (compilationUnit == null) {
                compilationUnit = this.binaryTypeOrModule.getParent();
            }
            sourceElementParser.parseCompilationUnit(new BasicCompilationUnit(cArr, (char[][]) null, str2, compilationUnit), z10, null);
            if (iJavaElement != null) {
                SourceRange nameRange = getNameRange(iJavaElement);
                this.sourceRanges = hashMap;
                this.binaryTypeOrModule = null;
                this.searchedElement = null;
                this.types = null;
                this.typeDeclarationStarts = null;
                this.typeNameRanges = null;
                this.typeDepth = -1;
                return nameRange;
            }
            if (iJavaElement != null) {
                this.sourceRanges = hashMap;
            }
            this.binaryTypeOrModule = null;
            this.searchedElement = null;
            this.types = null;
            this.typeDeclarationStarts = null;
            this.typeNameRanges = null;
            this.typeDepth = -1;
            return null;
        } finally {
            if (iJavaElement != null) {
                this.sourceRanges = hashMap;
            }
            this.binaryTypeOrModule = null;
            this.searchedElement = null;
            this.types = null;
            this.typeDeclarationStarts = null;
            this.typeNameRanges = null;
            this.typeDepth = -1;
        }
    }

    public SourceMapper(IPath iPath, String str, Map map) {
        this(iPath, str, map, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public char[] findSource(IType iType, String str) {
        return internalFindSource((NamedMember) iType, org.eclipse.jdt.internal.core.util.Util.concatWith(((PackageFragment) iType.getPackageFragment()).names, str, '/'));
    }

    public SourceMapper(IPath iPath, String str, Map map, String str2) {
        this.rootPath = "";
        this.areRootPathsComputed = false;
        this.options = map;
        this.encoding = str2;
        try {
            this.defaultEncoding = ResourcesPlugin.getWorkspace().getRoot().getDefaultCharset();
        } catch (CoreException unused) {
        }
        if (str != null) {
            this.rootPath = str;
            ArrayList arrayList = new ArrayList();
            this.rootPaths = arrayList;
            arrayList.add(str);
        }
        this.sourcePath = iPath;
        this.sourceRanges = new HashMap();
        this.parametersRanges = new HashMap();
        this.parameterNames = new HashMap();
        this.importsTable = new HashMap();
        this.importsCounterTable = new HashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public char[] findSource(IModuleDescription iModuleDescription) {
        if (iModuleDescription.isBinary()) {
            return internalFindSource((NamedMember) iModuleDescription, "module-info.java");
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:26|27|(6:(11:29|(1:31)(1:54)|32|33|34|35|37|38|(1:40)|42|43)|37|38|(0)|42|43)|55|33|34|35) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0068, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0063, code lost:
    
        r6 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0057 A[Catch: all -> 0x005c, CoreException -> 0x0069, TRY_LEAVE, TryCatch #6 {CoreException -> 0x0069, all -> 0x005c, blocks: (B:38:0x0051, B:40:0x0057), top: B:37:0x0051 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public char[] findSource(String str) {
        String str2;
        JavaModelManager javaModelManager;
        ZipFile zipFile;
        String str3;
        boolean z10 = true;
        Object target = JavaModel.getTarget(this.sourcePath, true);
        ZipFile zipFile2 = null;
        if (target instanceof IContainer) {
            IFile findMember = ((IContainer) target).findMember(str);
            if (!(findMember instanceof IFile)) {
                return null;
            }
            try {
                IFile iFile = findMember;
                if (this.encoding != null) {
                    z10 = false;
                }
                str3 = iFile.getCharset(z10);
            } catch (CoreException unused) {
                str3 = null;
            }
            try {
                IFile iFile2 = findMember;
                if (str3 == null && (str3 = this.encoding) == null) {
                    str3 = this.defaultEncoding;
                }
                return org.eclipse.jdt.internal.core.util.Util.getResourceContentsAsCharArray(iFile2, str3);
            } catch (JavaModelException unused2) {
                return null;
            }
        }
        try {
            if (target instanceof IFile) {
                IFile iFile3 = (IFile) target;
                if (this.encoding != null) {
                    z10 = false;
                }
                str2 = iFile3.getCharset(z10);
                javaModelManager = JavaModelManager.getJavaModelManager();
                zipFile = javaModelManager.getZipFile(this.sourcePath);
                ZipEntry entry = zipFile.getEntry(str);
                char[] readSource = entry != null ? readSource(entry, zipFile, str2) : null;
                javaModelManager.closeZipFile(zipFile);
                return readSource;
            }
            ZipEntry entry2 = zipFile.getEntry(str);
            if (entry2 != null) {
            }
            javaModelManager.closeZipFile(zipFile);
            return readSource;
        } catch (CoreException unused3) {
            javaModelManager.closeZipFile(zipFile);
            return null;
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            javaModelManager.closeZipFile(zipFile2);
            throw th;
        }
        str2 = null;
        javaModelManager = JavaModelManager.getJavaModelManager();
        zipFile = javaModelManager.getZipFile(this.sourcePath);
    }
}
