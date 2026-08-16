package org.eclipse.jdt.internal.core;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.jar.Manifest;
import java.util.stream.Collectors;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IExportedPreferences;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.eval.IEvaluationContext;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AutomaticModuleNaming;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.AbstractModule;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProjectElementInfo;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.eval.EvaluationContextWrapper;
import org.eclipse.jdt.internal.core.util.JavaElementFinder;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.openjdk.tools.doclint.DocLint;
import org.osgi.service.prefs.BackingStoreException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class JavaProject extends Openable implements IJavaProject, IProjectNature, SuffixConstants {
    public static final String CLASSPATH_FILENAME = ".classpath";
    private static ArrayList CP_RESOLUTION_BP_LISTENERS = null;
    public static final String DEFAULT_PREFERENCES_DIRNAME = ".settings";
    public static final String JAVA_CORE_PREFS_FILE = "org.eclipse.jdt.core.prefs";
    private static final String PREF_FILENAME = ".jprefs";
    private IEclipsePreferences.IPreferenceChangeListener preferencesChangeListener;
    private IEclipsePreferences.INodeChangeListener preferencesNodeListener;
    protected IProject project;
    public static final IClasspathEntry[] INVALID_CLASSPATH = new IClasspathEntry[0];
    protected static final boolean IS_CASE_SENSITIVE = !new File("Temp").equals(new File("temp"));
    protected static final String[] NO_PREREQUISITES = CharOperation.NO_STRINGS;
    private static final IClasspathEntry[] RESOLUTION_IN_PROGRESS = new IClasspathEntry[0];

    public static class ClasspathResolutionBreakpointListener {
        public void breakpoint(int i10) {
        }
    }

    public class JImageModuleFragmentBridge extends JarPackageFragmentRoot {
        public JImageModuleFragmentBridge(IPath iPath) {
            super(iPath, JavaProject.this);
        }

        @Override
        public boolean computeChildren(OpenableElementInfo openableElementInfo, IResource iResource) throws JavaModelException {
            return true;
        }

        @Override
        public PackageFragment getPackageFragment(String[] strArr) {
            return getPackageFragment(strArr, null);
        }

        public boolean isModule() {
            return true;
        }

        @Override
        public PackageFragment getPackageFragment(String[] strArr, String str) {
            IPath iPath = this.jarPath;
            if (str == null) {
                str = JRTUtil.JAVA_BASE;
            }
            return new JarPackageFragment(new JrtPackageFragmentRoot(iPath, str, JavaProject.this), strArr);
        }
    }

    public static class ModuleLookup {
        File jrtFile;
        Map<String, JrtPackageFragmentRoot> modNames2Roots = new HashMap();
        Map<String, IModule> modules = new HashMap();
        Set<IModule> resultModuleSet = new HashSet();

        public ModuleLookup(File file) {
            this.jrtFile = file;
        }

        private IModule getModule(String str) {
            JrtPackageFragmentRoot jrtPackageFragmentRoot;
            IModule iModule = this.modules.get(str);
            if (iModule != null || (jrtPackageFragmentRoot = this.modNames2Roots.get(str)) == null) {
                return iModule;
            }
            try {
                iModule = JRTUtil.getClassfile(this.jrtFile, "module-info.class", jrtPackageFragmentRoot.moduleName, null).getModuleDeclaration();
                this.modules.put(str, iModule);
                return iModule;
            } catch (IOException | ClassFormatException e10) {
                JavaCore.getJavaCore().getLog().log(new Status(4, JavaCore.PLUGIN_ID, "Failed to read module-info.class", e10));
                return iModule;
            }
        }

        public void addTransitive(String str) {
            IModule module = getModule(str);
            if (module == null || !this.resultModuleSet.add(module)) {
                return;
            }
            for (IModule.IModuleReference iModuleReference : module.requires()) {
                addTransitive(String.valueOf(iModuleReference.name()));
            }
        }

        public JrtPackageFragmentRoot getRoot(IModule iModule) {
            return this.modNames2Roots.get(String.valueOf(iModule.name()));
        }

        public void recordRoot(JrtPackageFragmentRoot jrtPackageFragmentRoot) {
            this.modNames2Roots.put(jrtPackageFragmentRoot.moduleName, jrtPackageFragmentRoot);
        }
    }

    public static class ResolvedClasspath {
        IClasspathEntry[] resolvedClasspath;
        IJavaModelStatus unresolvedEntryStatus = JavaModelStatus.VERIFIED_OK;
        HashMap rawReverseMap = new HashMap();
        Map rootPathToResolvedEntries = new HashMap();
        IClasspathEntry[] referencedEntries = null;
    }

    public JavaProject() {
        super(null);
    }

    public static synchronized void addCPResolutionBPListener(ClasspathResolutionBreakpointListener classpathResolutionBreakpointListener) {
        synchronized (JavaProject.class) {
            try {
                if (CP_RESOLUTION_BP_LISTENERS == null) {
                    CP_RESOLUTION_BP_LISTENERS = new ArrayList();
                }
                CP_RESOLUTION_BP_LISTENERS.add(classpathResolutionBreakpointListener);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void addToResult(IClasspathEntry iClasspathEntry, IClasspathEntry iClasspathEntry2, ResolvedClasspath resolvedClasspath, LinkedHashSet linkedHashSet, ExternalFoldersManager externalFoldersManager, Map map, boolean z10, Map map2) {
        ClasspathEntry classpathEntry;
        HashMap hashMap = resolvedClasspath.rawReverseMap;
        IPath path = iClasspathEntry2.getPath();
        if (hashMap.get(path) == null) {
            resolvedClasspath.rawReverseMap.put(path, iClasspathEntry);
            resolvedClasspath.rootPathToResolvedEntries.put(path, iClasspathEntry2);
            linkedHashSet.add(iClasspathEntry2);
            if (z10 && (classpathEntry = (ClasspathEntry) map.get(path)) != null) {
                copyFromOldChainedEntry((ClasspathEntry) iClasspathEntry2, classpathEntry);
            }
        }
        if (iClasspathEntry2.getEntryKind() == 1 && ExternalFoldersManager.isExternalFolderPath(path)) {
            externalFoldersManager.addFolder(path, true);
        }
        IPath sourceAttachmentPath = iClasspathEntry2.getSourceAttachmentPath();
        if (sourceAttachmentPath != null && driveExists(sourceAttachmentPath, map2) && ExternalFoldersManager.isExternalFolderPath(sourceAttachmentPath)) {
            externalFoldersManager.addFolder(sourceAttachmentPath, true);
        }
    }

    public static boolean areClasspathsEqual(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, IPath iPath2) {
        int length = iClasspathEntryArr.length;
        if (length != iClasspathEntryArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!iClasspathEntryArr[i10].equals(iClasspathEntryArr2[i10])) {
                return false;
            }
        }
        if (iPath == null) {
            return iPath2 == null;
        }
        return iPath.equals(iPath2);
    }

    private static void breakpoint(int i10, JavaProject javaProject) {
        ClasspathResolutionBreakpointListener[] bPListeners = getBPListeners();
        if (bPListeners == null) {
            return;
        }
        for (ClasspathResolutionBreakpointListener classpathResolutionBreakpointListener : bPListeners) {
            classpathResolutionBreakpointListener.breakpoint(i10);
        }
    }

    public static IPath canonicalizedPath(IPath iPath) {
        throw null;
    }

    private void computeExpandedClasspath(ClasspathEntry classpathEntry, HashMap<String, Boolean> hashMap, ArrayList<ClasspathEntry> arrayList, boolean z10) throws JavaModelException {
        ClasspathEntry combineWith;
        IClasspathEntry[] resolvedClasspath = getResolvedClasspath();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        boolean z11 = classpathEntry == null;
        for (IClasspathEntry iClasspathEntry : resolvedClasspath) {
            ClasspathEntry classpathEntry2 = (ClasspathEntry) iClasspathEntry;
            if ((!z10 || !classpathEntry2.isTest()) && (z11 || classpathEntry2.isExported())) {
                String rootID = classpathEntry2.rootID();
                if (classpathEntry2.getEntryKind() == 2) {
                    boolean z12 = z10 || classpathEntry2.isWithoutTestCode();
                    Boolean bool = hashMap.get(rootID);
                    Boolean bool2 = Boolean.FALSE;
                    if (bool != bool2) {
                        if (bool != Boolean.TRUE) {
                            hashMap.put(rootID, Boolean.valueOf(z12));
                            combineWith = classpathEntry2.combineWith(classpathEntry);
                            arrayList.add(combineWith);
                        } else if (!z12) {
                            hashMap.put(rootID, bool2);
                            int i10 = 0;
                            while (true) {
                                if (i10 >= arrayList.size()) {
                                    break;
                                }
                                ClasspathEntry classpathEntry3 = arrayList.get(i10);
                                if (classpathEntry3.rootID().equals(rootID)) {
                                    arrayList.set(i10, classpathEntry3.withExtraAttributeRemoved(IClasspathAttribute.WITHOUT_TEST_CODE));
                                    break;
                                }
                                i10++;
                            }
                            combineWith = classpathEntry2.combineWith(classpathEntry);
                        }
                        IProject findMember = root.findMember(classpathEntry2.getPath());
                        if (findMember != null && findMember.getType() == 4) {
                            IProject iProject = findMember;
                            if (hasJavaNature(iProject)) {
                                ((JavaProject) JavaCore.create(iProject)).computeExpandedClasspath(combineWith, hashMap, arrayList, z12);
                            }
                        }
                    }
                } else if (!hashMap.containsKey(rootID)) {
                    arrayList.add(classpathEntry2.combineWith(classpathEntry));
                    hashMap.put(rootID, Boolean.valueOf(z10));
                }
            }
        }
    }

    private void copyFromOldChainedEntry(ClasspathEntry classpathEntry, ClasspathEntry classpathEntry2) {
        IPath sourceAttachmentPath = classpathEntry2.getSourceAttachmentPath();
        if (sourceAttachmentPath != null) {
            classpathEntry.sourceAttachmentPath = sourceAttachmentPath;
        }
        IPath sourceAttachmentRootPath = classpathEntry2.getSourceAttachmentRootPath();
        if (sourceAttachmentRootPath != null) {
            classpathEntry.sourceAttachmentRootPath = sourceAttachmentRootPath;
        }
        IClasspathAttribute[] extraAttributes = classpathEntry2.getExtraAttributes();
        if (extraAttributes != null) {
            classpathEntry.extraAttributes = extraAttributes;
        }
    }

    public static List<String> defaultRootModules(Iterable<IPackageFragmentRoot> iterable) {
        return internalDefaultRootModules(iterable, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((IPackageFragmentRoot) obj).getElementName();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                IModule lambda$6;
                lambda$6 = JavaProject.lambda$6((IPackageFragmentRoot) obj);
                return lambda$6;
            }
        });
    }

    private boolean driveExists(IPath iPath, Map map) {
        String device = iPath.getDevice();
        if (device == null) {
            return true;
        }
        Boolean bool = (Boolean) map.get(device);
        if (bool != null) {
            return bool.booleanValue();
        }
        if (new File(device).exists()) {
            map.put(device, Boolean.TRUE);
            return true;
        }
        map.put(device, Boolean.FALSE);
        return false;
    }

    private ObjectVector filterLimitedModules(IPath iPath, ObjectVector objectVector, List<String> list) {
        HashSet hashSet = new HashSet(list);
        ModuleLookup moduleLookup = new ModuleLookup(iPath.toFile());
        for (int i10 = 0; i10 < objectVector.size(); i10++) {
            moduleLookup.recordRoot((JrtPackageFragmentRoot) objectVector.elementAt(i10));
        }
        for (int i11 = 0; i11 < objectVector.size(); i11++) {
            String str = ((JrtPackageFragmentRoot) objectVector.elementAt(i11)).moduleName;
            if (hashSet.contains(str)) {
                moduleLookup.addTransitive(str);
            }
        }
        ObjectVector objectVector2 = new ObjectVector(moduleLookup.resultModuleSet.size());
        Iterator<IModule> it = moduleLookup.resultModuleSet.iterator();
        while (it.hasNext()) {
            objectVector2.add(moduleLookup.getRoot(it.next()));
        }
        return objectVector2;
    }

    private IPackageFragment findPackageFragment0(IPath iPath) throws JavaModelException {
        return newNameLookup((WorkingCopyOwner) null).findPackageFragment(iPath);
    }

    private static synchronized ClasspathResolutionBreakpointListener[] getBPListeners() {
        synchronized (JavaProject.class) {
            ArrayList arrayList = CP_RESOLUTION_BP_LISTENERS;
            if (arrayList == null) {
                return null;
            }
            return (ClasspathResolutionBreakpointListener[]) arrayList.toArray(new ClasspathResolutionBreakpointListener[arrayList.size()]);
        }
    }

    private int getJavaCommandIndex(ICommand[] iCommandArr) {
        for (int i10 = 0; i10 < iCommandArr.length; i10++) {
            if (iCommandArr[i10].getBuilderName().equals(JavaCore.BUILDER_ID)) {
                return i10;
            }
        }
        return -1;
    }

    private IPath getPluginWorkingLocation() {
        return this.project.getWorkingLocation(JavaCore.PLUGIN_ID);
    }

    public static boolean hasJavaNature(IProject iProject) {
        try {
            return iProject.hasNature(JavaCore.NATURE_ID);
        } catch (CoreException unused) {
            return " ".equals(iProject.getName());
        }
    }

    private boolean hasUTF8BOM(byte[] bArr) {
        if (bArr.length <= IContentDescription.BOM_UTF_8.length) {
            return false;
        }
        int length = IContentDescription.BOM_UTF_8.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (IContentDescription.BOM_UTF_8[i10] != bArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public static <T> List<String> internalDefaultRootModules(Iterable<T> iterable, Function<T, String> function, Function<T, IModule> function2) {
        boolean z10;
        IModule apply;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            String apply2 = function.apply(it.next());
            if ("java.se".equals(apply2)) {
                arrayList.add(apply2);
                z10 = true;
                break;
            }
        }
        for (T t10 : iterable) {
            String apply3 = function.apply(t10);
            boolean startsWith = apply3.startsWith("java.");
            boolean z11 = !startsWith;
            if (!z10) {
                z11 |= startsWith;
            }
            if (z11 && (apply = function2.apply(t10)) != null) {
                IModule.IPackageExport[] exports = apply.exports();
                int length = exports.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        if (!exports[i10].isQualified()) {
                            arrayList.add(apply3);
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean isOnClasspathEntry(IPath iPath, boolean z10, boolean z11, IClasspathEntry iClasspathEntry) {
        IPath path = iClasspathEntry.getPath();
        if (z11) {
            if (path.equals(iPath)) {
                return true;
            }
        } else if (path.isPrefixOf(iPath)) {
            ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry;
            if (!Util.isExcluded(iPath, classpathEntry.fullInclusionPatternChars(), classpathEntry.fullExclusionPatternChars(), z10)) {
                return true;
            }
        }
        return path.isAbsolute() && path.equals(ResourcesPlugin.getWorkspace().getRoot().getLocation().append(iPath));
    }

    private boolean isUnNamedModule() throws JavaModelException {
        if (((JavaProjectElementInfo) getElementInfo()).getModule() != null) {
            return false;
        }
        for (IClasspathEntry iClasspathEntry : getRawClasspath()) {
            if (!getPatchedModules(iClasspathEntry).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public static boolean lambda$1(IResource iResource) {
        return iResource != null;
    }

    public static IJavaProject lambda$2(IResource iResource) {
        return JavaCore.create((IProject) iResource);
    }

    public static boolean lambda$3(IJavaProject iJavaProject) {
        return iJavaProject != null;
    }

    public static IModule lambda$6(IPackageFragmentRoot iPackageFragmentRoot) {
        if (iPackageFragmentRoot instanceof JrtPackageFragmentRoot) {
            return ((JrtPackageFragmentRoot) iPackageFragmentRoot).getModule();
        }
        return null;
    }

    private void loadModulesInJimage(final IPath iPath, final ObjectVector objectVector, final Map map, final IClasspathEntry iClasspathEntry, final IClasspathEntry iClasspathEntry2) {
        try {
            JRTUtil.walkModuleImage(iPath.toFile(), new JRTUtil.JrtFileVisitor<Path>() {
                @Override
                public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    return FileVisitResult.SKIP_SIBLINGS;
                }

                @Override
                public FileVisitResult visitModule(Path path, String str) throws IOException {
                    JrtPackageFragmentRoot jrtPackageFragmentRoot = new JrtPackageFragmentRoot(iPath, str, JavaProject.this);
                    objectVector.add(jrtPackageFragmentRoot);
                    Map map2 = map;
                    if (map2 != null) {
                        map2.put(jrtPackageFragmentRoot, ((ClasspathEntry) iClasspathEntry).combineWith((ClasspathEntry) iClasspathEntry2));
                    }
                    return FileVisitResult.SKIP_SUBTREE;
                }

                @Override
                public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    return FileVisitResult.SKIP_SIBLINGS;
                }
            }, JRTUtil.NOTIFY_MODULES);
        } catch (IOException unused) {
            Util.log(4, "Error reading modules from " + iPath.toOSString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        if (r2 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        if (r2 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private IEclipsePreferences loadPreferences() {
        IExportedPreferences iExportedPreferences;
        IPath pluginWorkingLocation = getPluginWorkingLocation();
        IExportedPreferences iExportedPreferences2 = null;
        if (pluginWorkingLocation != null) {
            File file = pluginWorkingLocation.append(PREF_FILENAME).toFile();
            if (file.exists()) {
                try {
                    iExportedPreferences = new BufferedInputStream(new FileInputStream(file));
                } catch (IOException unused) {
                    iExportedPreferences = null;
                } catch (CoreException unused2) {
                    iExportedPreferences = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    iExportedPreferences2 = Platform.getPreferencesService().readPreferences(iExportedPreferences);
                } catch (CoreException unused3) {
                } catch (IOException unused4) {
                } catch (Throwable th3) {
                    th = th3;
                    iExportedPreferences2 = iExportedPreferences;
                    if (iExportedPreferences2 != null) {
                        try {
                            iExportedPreferences2.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
                try {
                    iExportedPreferences.close();
                } catch (IOException unused6) {
                    file.delete();
                    return iExportedPreferences2;
                }
            }
        }
        return iExportedPreferences2;
    }

    private IClasspathEntry[][] readFileEntries(Map map) {
        try {
            return readFileEntriesWithException(map);
        } catch (IOException e10) {
            Util.log(e10, "Exception while reading " + ((Object) getPath().append(".classpath")));
            return new IClasspathEntry[][]{INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
        } catch (CoreException e11) {
            Util.log((Throwable) e11, "Exception while reading " + ((Object) getPath().append(".classpath")));
            return new IClasspathEntry[][]{INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
        } catch (ClasspathEntry.AssertionFailedException e12) {
            Util.log(e12, "Exception while reading " + ((Object) getPath().append(".classpath")));
            return new IClasspathEntry[][]{INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
        }
    }

    public static synchronized void removeCPResolutionBPListener(ClasspathResolutionBreakpointListener classpathResolutionBreakpointListener) {
        synchronized (JavaProject.class) {
            ArrayList arrayList = CP_RESOLUTION_BP_LISTENERS;
            if (arrayList == null) {
                return;
            }
            arrayList.remove(classpathResolutionBreakpointListener);
            if (CP_RESOLUTION_BP_LISTENERS.size() == 0) {
                CP_RESOLUTION_BP_LISTENERS = null;
            }
        }
    }

    private void setJavaCommand(IProjectDescription iProjectDescription, ICommand iCommand) throws CoreException {
        ICommand[] buildSpec = iProjectDescription.getBuildSpec();
        int javaCommandIndex = getJavaCommandIndex(buildSpec);
        if (javaCommandIndex == -1) {
            ICommand[] iCommandArr = new ICommand[buildSpec.length + 1];
            System.arraycopy(buildSpec, 0, iCommandArr, 1, buildSpec.length);
            iCommandArr[0] = iCommand;
            buildSpec = iCommandArr;
        } else {
            buildSpec[javaCommandIndex] = iCommand;
        }
        iProjectDescription.setBuildSpec(buildSpec);
        this.project.setDescription(iProjectDescription, (IProgressMonitor) null);
    }

    private void updatePreferences(IEclipsePreferences iEclipsePreferences) {
        IEclipsePreferences loadPreferences = loadPreferences();
        if (loadPreferences != null) {
            try {
                for (String str : loadPreferences.childrenNames()) {
                    String str2 = loadPreferences.get(str, "");
                    if (!"".equals(str2)) {
                        iEclipsePreferences.put(str, str2);
                    }
                }
                iEclipsePreferences.flush();
            } catch (BackingStoreException unused) {
            }
        }
    }

    public static void validateCycles(Map map) throws JavaModelException {
        int i10;
        final IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        IProject[] projects = root.getProjects();
        int length = projects.length;
        JavaProject[] javaProjectArr = new JavaProject[length];
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < length) {
            if (hasJavaNature(projects[i11])) {
                JavaProject javaProject = (JavaProject) JavaCore.create(projects[i11]);
                javaProjectArr[i11] = javaProject;
                if (!hashSet.contains(javaProject.getPath())) {
                    arrayList.clear();
                    i10 = i11;
                    javaProject.updateCycleParticipants(arrayList, linkedHashSet, root, hashSet, map);
                    i11 = i10 + 1;
                }
            }
            i10 = i11;
            i11 = i10 + 1;
        }
        String str = (String) linkedHashSet.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                IResource findMember;
                findMember = root.findMember((IPath) obj);
                return findMember;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$1;
                lambda$1 = JavaProject.lambda$1((IResource) obj);
                return lambda$1;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                IJavaProject lambda$2;
                lambda$2 = JavaProject.lambda$2((IResource) obj);
                return lambda$2;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$3;
                lambda$3 = JavaProject.lambda$3((IJavaProject) obj);
                return lambda$3;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String elementName;
                elementName = ((IJavaProject) obj).getElementName();
                return elementName;
            }
        }).collect(Collectors.joining(", "));
        for (int i12 = 0; i12 < length; i12++) {
            JavaProject javaProject2 = javaProjectArr[i12];
            if (javaProject2 != null) {
                if (linkedHashSet.contains(javaProject2.getPath())) {
                    IMarker cycleMarker = javaProject2.getCycleMarker();
                    int i13 = "error".equals(javaProject2.getOption(JavaCore.CORE_CIRCULAR_CLASSPATH, true)) ? 2 : 1;
                    if (cycleMarker != null) {
                        try {
                            if (((Integer) cycleMarker.getAttribute("severity")).intValue() != i13) {
                                cycleMarker.setAttribute("severity", i13);
                            }
                            String attribute = cycleMarker.getAttribute("message", "");
                            String message = new JavaModelStatus(1001, javaProject2, str).getMessage();
                            if (!message.equals(attribute)) {
                                cycleMarker.setAttribute("message", message);
                            }
                        } catch (CoreException e10) {
                            throw new JavaModelException(e10);
                        }
                    } else {
                        javaProject2.createClasspathProblemMarker(new JavaModelStatus(1001, javaProject2, str));
                    }
                } else {
                    javaProject2.flushClasspathProblemMarkers(true, false, false);
                }
            }
        }
    }

    private void verbose_reentering_classpath_resolution() {
        Util.verbose("CPResolution: reentering raw classpath resolution, will use empty classpath instead\tproject: " + getElementName() + "\n\tinvocation stack trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public void addToBuildSpec(String str) throws CoreException {
        IProjectDescription description = this.project.getDescription();
        if (getJavaCommandIndex(description.getBuildSpec()) == -1) {
            ICommand newCommand = description.newCommand();
            newCommand.setBuilderName(str);
            setJavaCommand(description, newCommand);
        }
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        IModuleDescription moduleDescription;
        IModuleDescription iModuleDescription = null;
        IPackageFragmentRoot[] computePackageFragmentRoots = computePackageFragmentRoots(getResolvedClasspath(), false, true, null);
        openableElementInfo.setChildren(computePackageFragmentRoots);
        for (IPackageFragmentRoot iPackageFragmentRoot : computePackageFragmentRoots) {
            if (iPackageFragmentRoot.getKind() == 1 && (moduleDescription = iPackageFragmentRoot.getModuleDescription()) != null) {
                if (iModuleDescription != null) {
                    throw new JavaModelException((IStatus) new Status(4, JavaCore.PLUGIN_ID, Messages.bind(Messages.classpath_duplicateEntryPath, "module-info.java", getElementName())));
                }
                JavaModelManager.getModulePathManager().addEntry(moduleDescription, this);
                openableElementInfo.setModule(moduleDescription);
                iModuleDescription = moduleDescription;
            }
        }
        return true;
    }

    @Override
    public void close() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo;
        IEclipsePreferences iEclipsePreferences;
        if (hasJavaNature(this.project) && (perProjectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfo(this.project, false)) != null && (iEclipsePreferences = perProjectInfo.preferences) != null) {
            IEclipsePreferences parent = iEclipsePreferences.parent();
            IEclipsePreferences.INodeChangeListener iNodeChangeListener = this.preferencesNodeListener;
            if (iNodeChangeListener != null) {
                parent.removeNodeChangeListener(iNodeChangeListener);
                this.preferencesNodeListener = null;
            }
            IEclipsePreferences.IPreferenceChangeListener iPreferenceChangeListener = this.preferencesChangeListener;
            if (iPreferenceChangeListener != null) {
                perProjectInfo.preferences.removePreferenceChangeListener(iPreferenceChangeListener);
                this.preferencesChangeListener = null;
            }
        }
        super.close();
    }

    public IPackageFragmentRoot[] computePackageFragmentRoots(IClasspathEntry iClasspathEntry) {
        try {
            return computePackageFragmentRoots(new IClasspathEntry[]{iClasspathEntry}, false, true, null);
        } catch (JavaModelException unused) {
            return new IPackageFragmentRoot[0];
        }
    }

    public String computeSharedPropertyFileName(QualifiedName qualifiedName) {
        return String.valueOf('.') + qualifiedName.getLocalName();
    }

    public void configure() throws CoreException {
        addToBuildSpec(JavaCore.BUILDER_ID);
    }

    public boolean contains(IResource iResource) {
        IFolder folder;
        try {
            IClasspathEntry[] resolvedClasspath = getResolvedClasspath();
            IPath outputLocation = getOutputLocation();
            IPath fullPath = iResource.getFullPath();
            IClasspathEntry iClasspathEntry = null;
            if (!outputLocation.isPrefixOf(fullPath)) {
                outputLocation = null;
            }
            ExternalFoldersManager externalManager = JavaModelManager.getExternalManager();
            int length = resolvedClasspath.length;
            for (int i10 = 0; i10 < length; i10++) {
                IClasspathEntry iClasspathEntry2 = resolvedClasspath[i10];
                IPath path = iClasspathEntry2.getPath();
                if (iClasspathEntry2.getEntryKind() == 1 && (folder = externalManager.getFolder(path)) != null) {
                    path = folder.getFullPath();
                }
                if ((iClasspathEntry == null || iClasspathEntry.getPath().isPrefixOf(path)) && path.isPrefixOf(fullPath)) {
                    iClasspathEntry = iClasspathEntry2;
                }
                IPath outputLocation2 = resolvedClasspath[i10].getOutputLocation();
                if (outputLocation2 != null && outputLocation2.isPrefixOf(fullPath)) {
                    outputLocation = outputLocation2;
                }
            }
            if (iClasspathEntry != null) {
                if (outputLocation != null && outputLocation.segmentCount() > 1 && iClasspathEntry.getPath().segmentCount() == 1) {
                    return false;
                }
                if (iResource instanceof IFolder) {
                    return true;
                }
                int entryKind = iClasspathEntry.getEntryKind();
                if (entryKind == 1) {
                    return !Util.isJavaLikeFileName(fullPath.lastSegment());
                }
                if (entryKind == 3) {
                    return !org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(fullPath.lastSegment());
                }
            }
            return outputLocation == null;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
    
        if (r19.getSeverity() != 2) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createClasspathProblemMarker(IJavaModelStatus iJavaModelStatus) {
        boolean z10;
        String[] strArr = CharOperation.NO_STRINGS;
        int code = iJavaModelStatus.getCode();
        boolean z11 = true;
        boolean z12 = false;
        try {
            if (code != 1000) {
                if (code == 1001) {
                    r4 = "error".equals(getOption(JavaCore.CORE_CIRCULAR_CLASSPATH, true)) ? 2 : 1;
                    z10 = false;
                } else if (code == 1004) {
                    String option = getOption(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL, true);
                    if (!"error".equals(option)) {
                        if (!"warning".equals(option)) {
                            return;
                        }
                        r4 = 1;
                    }
                    z10 = false;
                } else if (code != 1013) {
                    if (code != 1017) {
                        IPath path = iJavaModelStatus.getPath();
                        if (path != null) {
                            strArr = new String[]{path.toString()};
                        }
                        if ("error".equals(getOption(JavaCore.CORE_INCOMPLETE_CLASSPATH, true))) {
                        }
                        r4 = 1;
                    } else if (!"error".equals(getOption(JavaCore.CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY, true))) {
                        return;
                    }
                    z10 = false;
                } else {
                    String option2 = getOption(JavaCore.CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE, true);
                    if ("error".equals(option2)) {
                        z10 = true;
                    } else {
                        if (!"warning".equals(option2)) {
                            return;
                        }
                        z10 = true;
                        r4 = 1;
                    }
                    z11 = false;
                }
                this.project.createMarker(IJavaModelMarker.BUILDPATH_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", "location", IJavaModelMarker.CYCLE_DETECTED, IJavaModelMarker.CLASSPATH_FILE_FORMAT, IJavaModelMarker.OUTPUT_OVERLAPPING_SOURCE, "id", IJavaModelMarker.ARGUMENTS, IJavaModelMarker.CATEGORY_ID, "sourceId"}, new Object[]{iJavaModelStatus.getMessage(), Integer.valueOf(r4), Messages.classpath_buildPath, !z11 ? "true" : "false", !z12 ? "true" : "false", !z10 ? "true" : "false", Integer.valueOf(iJavaModelStatus.getCode()), Util.getProblemArgumentsForMarker(strArr), 10, JavaBuilder.SOURCE_ID});
                return;
            }
            z10 = false;
            z12 = true;
            this.project.createMarker(IJavaModelMarker.BUILDPATH_PROBLEM_MARKER).setAttributes(new String[]{"message", "severity", "location", IJavaModelMarker.CYCLE_DETECTED, IJavaModelMarker.CLASSPATH_FILE_FORMAT, IJavaModelMarker.OUTPUT_OVERLAPPING_SOURCE, "id", IJavaModelMarker.ARGUMENTS, IJavaModelMarker.CATEGORY_ID, "sourceId"}, new Object[]{iJavaModelStatus.getMessage(), Integer.valueOf(r4), Messages.classpath_buildPath, !z11 ? "true" : "false", !z12 ? "true" : "false", !z10 ? "true" : "false", Integer.valueOf(iJavaModelStatus.getCode()), Util.getProblemArgumentsForMarker(strArr), 10, JavaBuilder.SOURCE_ID});
            return;
        } catch (CoreException e10) {
            if (JavaModelManager.VERBOSE) {
                e10.printStackTrace();
                return;
            }
            return;
        }
        z11 = z10;
    }

    @Override
    public Object createElementInfo() {
        return new JavaProjectElementInfo();
    }

    public IClasspathEntry[][] decodeClasspath(String str, Map map) throws IOException, ClasspathEntry.AssertionFailedException {
        IClasspathEntry elementDecode;
        IClasspathEntry elementDecode2;
        ArrayList arrayList = new ArrayList();
        StringReader stringReader = new StringReader(str);
        try {
            try {
                try {
                    Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(stringReader)).getDocumentElement();
                    stringReader.close();
                    if (!documentElement.getNodeName().equalsIgnoreCase(ClasspathEntry.TAG_CLASSPATH)) {
                        throw new IOException(Messages.file_badFormat);
                    }
                    NodeList elementsByTagName = documentElement.getElementsByTagName(ClasspathEntry.TAG_CLASSPATHENTRY);
                    int length = elementsByTagName.getLength();
                    IClasspathEntry iClasspathEntry = null;
                    for (int i10 = 0; i10 < length; i10++) {
                        Node item = elementsByTagName.item(i10);
                        if (item.getNodeType() == 1 && (elementDecode2 = ClasspathEntry.elementDecode((Element) item, this, map)) != null) {
                            if (elementDecode2.getContentKind() == 10) {
                                iClasspathEntry = elementDecode2;
                            } else {
                                arrayList.add(elementDecode2);
                            }
                        }
                    }
                    int size = arrayList.size();
                    IClasspathEntry[][] iClasspathEntryArr = new IClasspathEntry[2];
                    IClasspathEntry[] iClasspathEntryArr2 = new IClasspathEntry[(iClasspathEntry == null ? 0 : 1) + size];
                    iClasspathEntryArr[0] = iClasspathEntryArr2;
                    arrayList.toArray(iClasspathEntryArr2);
                    if (iClasspathEntry != null) {
                        iClasspathEntryArr[0][size] = iClasspathEntry;
                    }
                    arrayList.clear();
                    NodeList elementsByTagName2 = documentElement.getElementsByTagName(ClasspathEntry.TAG_REFERENCED_ENTRY);
                    int length2 = elementsByTagName2.getLength();
                    for (int i11 = 0; i11 < length2; i11++) {
                        Node item2 = elementsByTagName2.item(i11);
                        if (item2.getNodeType() == 1 && (elementDecode = ClasspathEntry.elementDecode((Element) item2, this, map)) != null) {
                            arrayList.add(elementDecode);
                        }
                    }
                    IClasspathEntry[] iClasspathEntryArr3 = new IClasspathEntry[arrayList.size()];
                    iClasspathEntryArr[1] = iClasspathEntryArr3;
                    arrayList.toArray(iClasspathEntryArr3);
                    return iClasspathEntryArr;
                } catch (ParserConfigurationException e10) {
                    throw new IOException(Messages.file_badFormat, e10);
                }
            } catch (SAXException e11) {
                throw new IOException(Messages.file_badFormat, e11);
            }
        } catch (Throwable th2) {
            stringReader.close();
            throw th2;
        }
    }

    @Override
    public IClasspathEntry decodeClasspathEntry(String str) {
        if (str == null) {
            return null;
        }
        try {
            StringReader stringReader = new StringReader(str);
            try {
                try {
                    try {
                        Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(stringReader)).getDocumentElement();
                        stringReader.close();
                        if (documentElement.getNodeName().equalsIgnoreCase(ClasspathEntry.TAG_CLASSPATHENTRY) && documentElement.getNodeType() == 1) {
                            return ClasspathEntry.elementDecode(documentElement, this, null);
                        }
                        return null;
                    } catch (SAXException unused) {
                        return null;
                    }
                } finally {
                    stringReader.close();
                }
            } catch (ParserConfigurationException unused2) {
                return null;
            }
        } catch (IOException unused3) {
        }
    }

    public void deconfigure() throws CoreException {
        removeFromBuildSpec(JavaCore.BUILDER_ID);
    }

    public IClasspathEntry[] defaultClasspath() {
        return new IClasspathEntry[]{JavaCore.newSourceEntry(this.project.getFullPath())};
    }

    public IPath defaultOutputLocation() {
        return this.project.getFullPath().append("bin");
    }

    @Override
    public Set<String> determineModulesOfProjectsWithNonEmptyClasspath() throws JavaModelException {
        return ModuleUpdater.determineModulesOfProjectsWithNonEmptyClasspath(this, getExpandedClasspath());
    }

    public String encodeClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, boolean z10, Map map) throws JavaModelException {
        IClasspathEntry[] iClasspathEntryArr3 = iClasspathEntryArr2;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF8");
            boolean z11 = true;
            XMLWriter xMLWriter = new XMLWriter(outputStreamWriter, this, true);
            xMLWriter.startTag(ClasspathEntry.TAG_CLASSPATH, z10);
            int i10 = 0;
            while (i10 < iClasspathEntryArr.length) {
                boolean z12 = z11 ? 1 : 0;
                int i11 = i10;
                XMLWriter xMLWriter2 = xMLWriter;
                ((ClasspathEntry) iClasspathEntryArr[i10]).elementEncode(xMLWriter, this.project.getFullPath(), z10, true, map, false);
                i10 = i11 + 1;
                z11 = z12;
                xMLWriter = xMLWriter2;
                iClasspathEntryArr3 = iClasspathEntryArr2;
            }
            if (iPath != null) {
                IPath makeRelative = iPath.removeFirstSegments(z11 ? 1 : 0).makeRelative();
                HashMap hashMap = new HashMap();
                hashMap.put("kind", ClasspathEntry.kindToString(10));
                hashMap.put("path", String.valueOf(makeRelative));
                xMLWriter.printTag(ClasspathEntry.TAG_CLASSPATHENTRY, hashMap, z10, true, true);
            }
            if (iClasspathEntryArr3 != null) {
                int i12 = 0;
                while (i12 < iClasspathEntryArr3.length) {
                    ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntryArr3[i12];
                    IPath fullPath = this.project.getFullPath();
                    boolean z13 = z11 ? 1 : 0;
                    classpathEntry.elementEncode(xMLWriter, fullPath, z10, true, map, true);
                    i12++;
                    z11 = z13;
                    iClasspathEntryArr3 = iClasspathEntryArr2;
                }
            }
            xMLWriter.endTag(ClasspathEntry.TAG_CLASSPATH, z10, z11);
            outputStreamWriter.flush();
            outputStreamWriter.close();
            return byteArrayOutputStream.toString("UTF8");
        } catch (IOException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        }
    }

    @Override
    public String encodeClasspathEntry(IClasspathEntry iClasspathEntry) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF8");
            ((ClasspathEntry) iClasspathEntry).elementEncode(new XMLWriter(outputStreamWriter, this, false), this.project.getFullPath(), true, true, null, iClasspathEntry.getReferencingEntry() != null);
            outputStreamWriter.flush();
            outputStreamWriter.close();
            return byteArrayOutputStream.toString("UTF8");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JavaProject) {
            return this.project.equals(((JavaProject) obj).getProject());
        }
        return false;
    }

    @Override
    public IJavaElement findElement(IPath iPath) throws JavaModelException {
        return findElement(iPath, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IModuleDescription findModule(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return findModule(str, newNameLookup(workingCopyOwner));
    }

    public IJavaElement findPackageFragment(String str) throws JavaModelException {
        IPackageFragment[] findPackageFragments = newNameLookup((WorkingCopyOwner) null).findPackageFragments(str, false);
        if (findPackageFragments == null) {
            return null;
        }
        for (IPackageFragment iPackageFragment : findPackageFragments) {
            if (equals(iPackageFragment.getParent().getParent())) {
                return iPackageFragment;
            }
        }
        return findPackageFragments[0];
    }

    @Override
    public IPackageFragmentRoot findPackageFragmentRoot(IPath iPath) throws JavaModelException {
        return findPackageFragmentRoot0(canonicalizedPath(iPath));
    }

    public IPackageFragmentRoot findPackageFragmentRoot0(IPath iPath) throws JavaModelException {
        IPackageFragmentRoot[] allPackageFragmentRoots = getAllPackageFragmentRoots();
        if (!iPath.isAbsolute()) {
            throw new IllegalArgumentException(Messages.path_mustBeAbsolute);
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : allPackageFragmentRoots) {
            if (iPackageFragmentRoot.getPath() != null && iPackageFragmentRoot.getPath().equals(iPath)) {
                return iPackageFragmentRoot;
            }
        }
        return null;
    }

    @Override
    public IPackageFragmentRoot[] findPackageFragmentRoots(IClasspathEntry iClasspathEntry) {
        try {
            for (IClasspathEntry iClasspathEntry2 : getRawClasspath()) {
                if (iClasspathEntry2.equals(iClasspathEntry)) {
                    return computePackageFragmentRoots(resolveClasspath(new IClasspathEntry[]{iClasspathEntry}), false, true, null);
                }
            }
        } catch (JavaModelException unused) {
        }
        return new IPackageFragmentRoot[0];
    }

    @Override
    public IType findType(String str) throws JavaModelException {
        return findType(str, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IPackageFragmentRoot[] findUnfilteredPackageFragmentRoots(IClasspathEntry iClasspathEntry) {
        try {
            return computePackageFragmentRoots(resolveClasspath(new IClasspathEntry[]{iClasspathEntry}), false, false, null);
        } catch (JavaModelException unused) {
            return new IPackageFragmentRoot[0];
        }
    }

    public void flushClasspathProblemMarkers(boolean z10, boolean z11, boolean z12) {
        try {
            if (this.project.isAccessible()) {
                for (IMarker iMarker : this.project.findMarkers(IJavaModelMarker.BUILDPATH_PROBLEM_MARKER, false, 0)) {
                    if (z10 && z11 && z12) {
                        iMarker.delete();
                    } else {
                        String str = (String) iMarker.getAttribute(IJavaModelMarker.CYCLE_DETECTED);
                        String str2 = (String) iMarker.getAttribute(IJavaModelMarker.CLASSPATH_FILE_FORMAT);
                        String str3 = (String) iMarker.getAttribute(IJavaModelMarker.OUTPUT_OVERLAPPING_SOURCE);
                        boolean z13 = true;
                        if (z10 == (str != null && str.equals("true"))) {
                            if (z12 == (str3 != null && str3.equals("true"))) {
                                if (str2 == null || !str2.equals("true")) {
                                    z13 = false;
                                }
                                if (z11 == z13) {
                                    iMarker.delete();
                                }
                            }
                        }
                    }
                }
            }
        } catch (CoreException e10) {
            if (JavaModelManager.VERBOSE) {
                e10.printStackTrace();
            }
        }
    }

    public IPath[] getAccessRestrictions(String str) {
        char[][] splitOn;
        int length;
        String option = getOption(str, true);
        if (option == null || option.length() == 0 || (length = (splitOn = CharOperation.splitOn('|', option.toCharArray())).length) <= 0) {
            return null;
        }
        IPath[] iPathArr = new IPath[length];
        for (int i10 = 0; i10 < splitOn.length; i10++) {
            iPathArr[i10] = new org.eclipse.core.runtime.Path(new String(splitOn[i10]));
        }
        return iPathArr;
    }

    @Override
    public IPackageFragmentRoot[] getAllPackageFragmentRoots() throws JavaModelException {
        return getAllPackageFragmentRoots(null, false);
    }

    public IModuleDescription getAutomaticModuleDescription() throws JavaModelException {
        char[] determineAutomaticModuleNameFromManifest = AutomaticModuleNaming.determineAutomaticModuleNameFromManifest(getManifest());
        boolean z10 = true;
        if (determineAutomaticModuleNameFromManifest == null) {
            determineAutomaticModuleNameFromManifest = AutomaticModuleNaming.determineAutomaticModuleNameFromFileName(getElementName(), true, false);
            z10 = false;
        }
        return new AbstractModule.AutoModule(this, String.valueOf(determineAutomaticModuleNameFromManifest), z10);
    }

    @Override
    public IClasspathEntry getClasspathEntryFor(IPath iPath) throws JavaModelException {
        Map<IPath, IClasspathEntry> map;
        getResolvedClasspath();
        JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
        if (perProjectInfo == null || (map = perProjectInfo.rootPathToResolvedEntries) == null) {
            return null;
        }
        IClasspathEntry iClasspathEntry = map.get(iPath);
        return iClasspathEntry == null ? map.get(getProject().getWorkspace().getRoot().getLocation().append(iPath)) : iClasspathEntry;
    }

    public IMarker getCycleMarker() {
        try {
            if (!this.project.isAccessible()) {
                return null;
            }
            for (IMarker iMarker : this.project.findMarkers(IJavaModelMarker.BUILDPATH_PROBLEM_MARKER, false, 0)) {
                String str = (String) iMarker.getAttribute(IJavaModelMarker.CYCLE_DETECTED);
                if (str != null && str.equals("true")) {
                    return iMarker;
                }
            }
            return null;
        } catch (CoreException unused) {
            return null;
        }
    }

    public IEclipsePreferences getEclipsePreferences() {
        if (!hasJavaNature(this.project)) {
            return null;
        }
        JavaModelManager.PerProjectInfo perProjectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfo(this.project, true);
        IEclipsePreferences iEclipsePreferences = perProjectInfo.preferences;
        if (iEclipsePreferences != null) {
            return iEclipsePreferences;
        }
        final IEclipsePreferences node = new ProjectScope(getProject()).getNode(JavaCore.PLUGIN_ID);
        updatePreferences(node);
        perProjectInfo.preferences = node;
        IEclipsePreferences parent = node.parent();
        if (parent != null) {
            IEclipsePreferences.INodeChangeListener iNodeChangeListener = this.preferencesNodeListener;
            if (iNodeChangeListener != null) {
                parent.removeNodeChangeListener(iNodeChangeListener);
            }
            IEclipsePreferences.INodeChangeListener iNodeChangeListener2 = new IEclipsePreferences.INodeChangeListener() {
                public void added(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
                }

                public void removed(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
                    if (nodeChangeEvent.getChild() == node) {
                        JavaModelManager.getJavaModelManager().resetProjectPreferences(JavaProject.this);
                    }
                }
            };
            this.preferencesNodeListener = iNodeChangeListener2;
            parent.addNodeChangeListener(iNodeChangeListener2);
        }
        IEclipsePreferences.IPreferenceChangeListener iPreferenceChangeListener = this.preferencesChangeListener;
        if (iPreferenceChangeListener != null) {
            node.removePreferenceChangeListener(iPreferenceChangeListener);
        }
        IEclipsePreferences.IPreferenceChangeListener iPreferenceChangeListener2 = new IEclipsePreferences.IPreferenceChangeListener() {
            public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent preferenceChangeEvent) {
                String key = preferenceChangeEvent.getKey();
                JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
                if (key.startsWith(JavaCore.PLUGIN_ID)) {
                    if (key.equals(JavaCore.CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER) || key.equals(JavaCore.CORE_JAVA_BUILD_RESOURCE_COPY_FILTER) || key.equals(JavaCore.CORE_JAVA_BUILD_DUPLICATE_RESOURCE) || key.equals(JavaCore.CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER) || key.equals(JavaCore.CORE_JAVA_BUILD_INVALID_CLASSPATH) || key.equals(JavaCore.CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS) || key.equals(JavaCore.CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS) || key.equals(JavaCore.CORE_INCOMPLETE_CLASSPATH) || key.equals(JavaCore.CORE_CIRCULAR_CLASSPATH) || key.equals(JavaCore.CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE) || key.equals(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL) || key.equals(JavaCore.CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY) || key.equals("org.eclipse.jdt.core.compiler.codegen.targetPlatform")) {
                        javaModelManager.deltaState.addClasspathValidation(JavaProject.this);
                    }
                    javaModelManager.resetProjectOptions(JavaProject.this);
                    JavaProject.this.resetCaches();
                }
            }
        };
        this.preferencesChangeListener = iPreferenceChangeListener2;
        node.addPreferenceChangeListener(iPreferenceChangeListener2);
        return node;
    }

    @Override
    public String getElementName() {
        return this.project.getName();
    }

    @Override
    public int getElementType() {
        return 2;
    }

    public IClasspathEntry[] getExpandedClasspath() throws JavaModelException {
        return getExpandedClasspath(false);
    }

    public IPackageFragmentRoot getFolderPackageFragmentRoot(IPath iPath) {
        return iPath.segmentCount() == 1 ? getPackageFragmentRoot((IResource) this.project) : getPackageFragmentRoot((IResource) this.project.getWorkspace().getRoot().getFolder(iPath));
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
    
        r6 = (org.eclipse.jdt.internal.core.JavaElement) getPackageFragmentRoot((org.eclipse.core.runtime.IPath) new org.eclipse.core.runtime.Path(r6));
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        String str2;
        String str3 = null;
        if (str.charAt(0) != '/') {
            return null;
        }
        String str4 = "";
        loop0: while (true) {
            str2 = str3;
            while (mementoTokenizer.hasMoreTokens() && (str3 = mementoTokenizer.nextToken()) != MementoTokenizer.PACKAGEFRAGMENT && str3 != MementoTokenizer.COUNT) {
                if (str3 != MementoTokenizer.MODULE) {
                    str4 = String.valueOf(str4) + str3;
                } else if (mementoTokenizer.hasMoreTokens() && (str3 = mementoTokenizer.nextToken()) != null) {
                    break;
                }
            }
        }
        JavaElement jrtPackageFragmentRoot = new JrtPackageFragmentRoot(new org.eclipse.core.runtime.Path(str4), str2, this);
        return (str3 == null || str3.charAt(0) != '<') ? jrtPackageFragmentRoot.getHandleFromMemento(mementoTokenizer, workingCopyOwner) : jrtPackageFragmentRoot.getHandleFromMemento(str3, mementoTokenizer, workingCopyOwner);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '=';
    }

    public JavaProjectElementInfo getJavaProjectElementInfo() throws JavaModelException {
        return (JavaProjectElementInfo) getElementInfo();
    }

    public Manifest getManifest() {
        Throwable th2;
        IFile file = getProject().getFile(new org.eclipse.core.runtime.Path("META-INF/MANIFEST.MF"));
        if (file.exists()) {
            try {
                InputStream contents = file.getContents();
                try {
                    Manifest manifest = new Manifest(contents);
                    if (contents != null) {
                        contents.close();
                    }
                    return manifest;
                } catch (Throwable th3) {
                    th2 = th3;
                    if (contents != null) {
                        try {
                            contents.close();
                        } catch (Throwable th4) {
                            th = th4;
                            if (th2 == null) {
                                throw th;
                            }
                            if (th2 != th) {
                                try {
                                    th2.addSuppressed(th);
                                } catch (IOException | CoreException unused) {
                                }
                            }
                            throw th2;
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th5) {
                th = th5;
                th2 = null;
            }
        }
        return null;
    }

    @Override
    public IModuleDescription getModuleDescription() throws JavaModelException {
        IModuleDescription module = ((JavaProjectElementInfo) getElementInfo()).getModule();
        if (module != null) {
            return module;
        }
        for (IClasspathEntry iClasspathEntry : getRawClasspath()) {
            List<String> patchedModules = getPatchedModules(iClasspathEntry);
            if (patchedModules.size() == 1) {
                String str = patchedModules.get(0);
                int entryKind = iClasspathEntry.getEntryKind();
                if (entryKind != 1) {
                    if (entryKind == 2) {
                        IModuleDescription moduleDescription = getJavaModel().getJavaProject(iClasspathEntry.getPath().toString()).getModuleDescription();
                        if (moduleDescription != null && moduleDescription.getElementName().equals(str)) {
                            return moduleDescription;
                        }
                    } else if (entryKind != 5) {
                        continue;
                    }
                }
                for (IPackageFragmentRoot iPackageFragmentRoot : findPackageFragmentRoots(iClasspathEntry)) {
                    IModuleDescription moduleDescription2 = iPackageFragmentRoot.getModuleDescription();
                    if (moduleDescription2 != null && moduleDescription2.getElementName().equals(str)) {
                        return moduleDescription2;
                    }
                }
            }
        }
        return null;
    }

    @Override
    public Object[] getNonJavaResources() throws JavaModelException {
        return ((JavaProjectElementInfo) getElementInfo()).getNonJavaResources(this);
    }

    public String getOption(String str, boolean z10) {
        return JavaModelManager.getJavaModelManager().getOption(str, z10, getEclipsePreferences());
    }

    @Override
    public Map<String, String> getOptions(boolean z10) {
        Hashtable<String, String> hashtable;
        String[] strArr;
        Hashtable<String, String> options = z10 ? JavaCore.getOptions() : new Hashtable<>(5);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        HashSet<String> hashSet = javaModelManager.optionNames;
        try {
            JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
            hashtable = perProjectInfo.options;
            if (hashtable == null) {
                IEclipsePreferences eclipsePreferences = getEclipsePreferences();
                if (eclipsePreferences == null) {
                    return options;
                }
                String[] keys = eclipsePreferences.keys();
                Hashtable<String, String> hashtable2 = new Hashtable<>(keys.length);
                for (String str : keys) {
                    String str2 = eclipsePreferences.get(str, (String) null);
                    if (str2 != null) {
                        String trim = str2.trim();
                        hashtable2.put(str, trim);
                        if (!hashSet.contains(str) && (strArr = javaModelManager.deprecatedOptions.get(str)) != null) {
                            for (String str3 : strArr) {
                                if (!hashtable2.containsKey(str3)) {
                                    hashtable2.put(str3, trim);
                                }
                            }
                        }
                    }
                }
                perProjectInfo.options = hashtable2;
                hashtable = hashtable2;
            }
        } catch (JavaModelException unused) {
            hashtable = new Hashtable<>();
        } catch (BackingStoreException unused2) {
            hashtable = new Hashtable<>();
        }
        if (!z10) {
            Util.fixTaskTags(hashtable);
            return hashtable;
        }
        for (Map.Entry<String, String> entry : hashtable.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value != null && javaModelManager.knowsOption(key)) {
                options.put(key, value.trim());
            }
        }
        Util.fixTaskTags(options);
        return options;
    }

    @Override
    public IPath getOutputLocation() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
        IPath iPath = perProjectInfo.outputLocation;
        if (iPath != null) {
            return iPath;
        }
        getRawClasspath();
        IPath iPath2 = perProjectInfo.outputLocation;
        return iPath2 == null ? defaultOutputLocation() : iPath2;
    }

    public IPackageFragmentRoot getPackageFragmentRoot(IPath iPath) {
        if (!iPath.isAbsolute()) {
            iPath = getPath().append(iPath);
        }
        int segmentCount = iPath.segmentCount();
        if (segmentCount == 0) {
            return null;
        }
        if (iPath.getDevice() == null && JavaModel.getExternalTarget(iPath, true) == null) {
            IWorkspaceRoot root = this.project.getWorkspace().getRoot();
            IFile findMember = root.findMember(iPath);
            if (findMember == null) {
                if (iPath.getFileExtension() != null) {
                    if (!root.getProject(iPath.segment(0)).exists()) {
                        return getPackageFragmentRoot0(iPath);
                    }
                    findMember = root.getFile(iPath);
                } else if (segmentCount == 1) {
                    String segment = iPath.segment(0);
                    if (getElementName().equals(segment)) {
                        findMember = this.project;
                    } else {
                        findMember = root.getProject(segment);
                    }
                } else {
                    findMember = root.getFolder(iPath);
                }
            }
            return getPackageFragmentRoot((IResource) findMember);
        }
        return getPackageFragmentRoot0(iPath);
    }

    public IPackageFragmentRoot getPackageFragmentRoot0(IPath iPath) {
        IFolder folder = JavaModelManager.getExternalManager().getFolder(iPath);
        if (folder != null) {
            return new ExternalPackageFragmentRoot(folder, iPath, this);
        }
        if (JavaModelManager.isJrt(iPath)) {
            return new JImageModuleFragmentBridge(iPath);
        }
        Object target = JavaModel.getTarget(iPath, true);
        return ((target instanceof File) && JavaModel.isFile(target) && JavaModel.isJmod((File) target)) ? new JModPackageFragmentRoot(iPath, this) : new JarPackageFragmentRoot(iPath, this);
    }

    @Override
    public IPackageFragmentRoot[] getPackageFragmentRoots() throws JavaModelException {
        IJavaElement[] children = getChildren();
        int length = children.length;
        IPackageFragmentRoot[] iPackageFragmentRootArr = new IPackageFragmentRoot[length];
        System.arraycopy(children, 0, iPackageFragmentRootArr, 0, length);
        return iPackageFragmentRootArr;
    }

    @Override
    public IPackageFragment[] getPackageFragments() throws JavaModelException {
        return getPackageFragmentsInRoots(getPackageFragmentRoots());
    }

    public IPackageFragment[] getPackageFragmentsInRoots(IPackageFragmentRoot[] iPackageFragmentRootArr) {
        ArrayList arrayList = new ArrayList();
        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
            try {
                for (IJavaElement iJavaElement : iPackageFragmentRoot.getChildren()) {
                    arrayList.add(iJavaElement);
                }
            } catch (JavaModelException unused) {
            }
        }
        IPackageFragment[] iPackageFragmentArr = new IPackageFragment[arrayList.size()];
        arrayList.toArray(iPackageFragmentArr);
        return iPackageFragmentArr;
    }

    public List<String> getPatchedModules(IClasspathEntry iClasspathEntry) {
        String extraAttribute = ClasspathEntry.getExtraAttribute(iClasspathEntry, IClasspathAttribute.PATCH_MODULE);
        if (extraAttribute == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        IPath path = getPath();
        for (String str : extraAttribute.split("::")) {
            int indexOf = str.indexOf(61);
            if (indexOf == -1) {
                arrayList.add(str);
            } else if (indexOf < str.length() - 1) {
                String[] split = str.substring(indexOf + 1).split(File.pathSeparator);
                int length = split.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        if (path.isPrefixOf(new org.eclipse.core.runtime.Path(split[i10]))) {
                            arrayList.add(str.substring(0, indexOf));
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        return arrayList;
    }

    @Override
    public IPath getPath() {
        return this.project.getFullPath();
    }

    public JavaModelManager.PerProjectInfo getPerProjectInfo() throws JavaModelException {
        return JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(this.project);
    }

    @Override
    public IProject getProject() {
        return this.project;
    }

    @Deprecated
    public JavaProjectElementInfo.ProjectCache getProjectCache() throws JavaModelException {
        return getProjectCache(false);
    }

    @Override
    public IClasspathEntry[] getRawClasspath() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
        IClasspathEntry[] iClasspathEntryArr = perProjectInfo.rawClasspath;
        if (iClasspathEntryArr != null) {
            return iClasspathEntryArr;
        }
        IClasspathEntry[] iClasspathEntryArr2 = perProjectInfo.readAndCacheClasspath(this)[0];
        return iClasspathEntryArr2 == INVALID_CLASSPATH ? defaultClasspath() : iClasspathEntryArr2;
    }

    @Override
    public IClasspathEntry[] getReferencedClasspathEntries() throws JavaModelException {
        return getPerProjectInfo().referencedEntries;
    }

    @Override
    public String[] getRequiredProjectNames() throws JavaModelException {
        return projectPrerequisites(getResolvedClasspath());
    }

    public IClasspathEntry[] getResolvedClasspath() throws JavaModelException {
        JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
        IClasspathEntry[] resolvedClasspath = perProjectInfo.getResolvedClasspath();
        if (resolvedClasspath != null) {
            return resolvedClasspath;
        }
        resolveClasspath(perProjectInfo, false, true);
        IClasspathEntry[] resolvedClasspath2 = perProjectInfo.getResolvedClasspath();
        if (resolvedClasspath2 != null) {
            return resolvedClasspath2;
        }
        JavaModelManager.PerProjectInfo newTemporaryInfo = newTemporaryInfo();
        resolveClasspath(newTemporaryInfo, false, true);
        return newTemporaryInfo.getResolvedClasspath();
    }

    public String getSharedProperty(String str) throws CoreException {
        File localFile;
        IFile file = this.project.getFile(str);
        if (file.exists()) {
            byte[] resourceContentsAsByteArray = Util.getResourceContentsAsByteArray(file);
            try {
                return new String(resourceContentsAsByteArray, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                Util.log(e10, "Could not read .classpath with UTF-8 encoding");
                return new String(resourceContentsAsByteArray);
            }
        }
        URI locationURI = file.getLocationURI();
        if (locationURI == null || (localFile = Util.toLocalFile(locationURI, null)) == null || !localFile.exists()) {
            return null;
        }
        try {
            byte[] fileByteContent = org.eclipse.jdt.internal.compiler.util.Util.getFileByteContent(localFile);
            try {
                return new String(fileByteContent, "UTF-8");
            } catch (UnsupportedEncodingException e11) {
                Util.log(e11, "Could not read .classpath with UTF-8 encoding");
                return new String(fileByteContent);
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public SourceMapper getSourceMapper() {
        return null;
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        if (exists()) {
            return this.project;
        }
        throw newNotPresentException();
    }

    @Override
    public boolean hasBuildState() {
        return JavaModelManager.getJavaModelManager().getLastBuiltState(this.project, null) != null;
    }

    @Override
    public boolean hasClasspathCycle(IClasspathEntry[] iClasspathEntryArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        HashMap hashMap = new HashMap(1);
        hashMap.put(this, iClasspathEntryArr);
        updateCycleParticipants(new ArrayList(2), linkedHashSet, ResourcesPlugin.getWorkspace().getRoot(), new HashSet(2), hashMap);
        return !linkedHashSet.isEmpty();
    }

    public boolean hasCycleMarker() {
        return getCycleMarker() != null;
    }

    public boolean hasSource() {
        try {
            for (IClasspathEntry iClasspathEntry : getRawClasspath()) {
                if (iClasspathEntry.getEntryKind() == 3) {
                    return true;
                }
            }
            return false;
        } catch (JavaModelException unused) {
            return true;
        }
    }

    @Override
    public int hashCode() {
        return this.project.hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isOnClasspath(IJavaElement iJavaElement) {
        boolean z10;
        boolean z11;
        boolean z12;
        try {
            IClasspathEntry[] rawClasspath = getRawClasspath();
            int elementType = iJavaElement.getElementType();
            if (elementType != 1) {
                if (elementType != 2) {
                    if (elementType == 3) {
                        z10 = false;
                        z11 = false;
                        z12 = true;
                    } else if (elementType == 4) {
                        z12 = false;
                        z11 = !((IPackageFragmentRoot) iJavaElement.getParent()).isArchive();
                        z10 = false;
                    } else if (elementType != 5) {
                        z10 = iJavaElement.getAncestor(5) != null;
                        z11 = false;
                    } else {
                        z11 = false;
                        z12 = false;
                        z10 = true;
                    }
                    IPath path = iJavaElement.getPath();
                    for (IClasspathEntry iClasspathEntry : rawClasspath) {
                        int entryKind = iClasspathEntry.getEntryKind();
                        if ((entryKind == 1 || entryKind == 2 || entryKind == 3) && isOnClasspathEntry(path, z11, z12, iClasspathEntry)) {
                            return true;
                        }
                    }
                    if (!z10) {
                        return false;
                    }
                    try {
                        for (IClasspathEntry iClasspathEntry2 : getResolvedClasspath()) {
                            if (isOnClasspathEntry(path, z11, z12, iClasspathEntry2)) {
                                return true;
                            }
                        }
                        return false;
                    } catch (JavaModelException unused) {
                        return false;
                    }
                }
                z10 = false;
                z11 = false;
                z12 = z11;
                IPath path2 = iJavaElement.getPath();
                while (r9 < r8) {
                }
                if (!z10) {
                }
            }
        } catch (JavaModelException unused2) {
        }
        return false;
    }

    @Override
    public IEvaluationContext newEvaluationContext() {
        EvaluationContext evaluationContext = new EvaluationContext();
        evaluationContext.setLineSeparator(Util.getLineSeparator((String) null, this));
        return new EvaluationContextWrapper(evaluationContext, this);
    }

    public NameLookup newNameLookup(ICompilationUnit[] iCompilationUnitArr) throws JavaModelException {
        return newNameLookup(iCompilationUnitArr, false);
    }

    public SearchableEnvironment newSearchableNameEnvironment(ICompilationUnit[] iCompilationUnitArr) throws JavaModelException {
        return newSearchableNameEnvironment(iCompilationUnitArr, false);
    }

    public JavaModelManager.PerProjectInfo newTemporaryInfo() {
        return new JavaModelManager.PerProjectInfo(this.project.getProject()) {
            @Override
            public ClasspathChange addClasspathChange() {
                return null;
            }
        };
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IRegion iRegion, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return newTypeHierarchy(iRegion, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    public String[] projectPrerequisites(IClasspathEntry[] iClasspathEntryArr) throws JavaModelException {
        ArrayList arrayList = new ArrayList();
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            if (iClasspathEntry.getEntryKind() == 2) {
                arrayList.add(iClasspathEntry.getPath().lastSegment());
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return NO_PREREQUISITES;
        }
        String[] strArr = new String[size];
        arrayList.toArray(strArr);
        return strArr;
    }

    public IClasspathEntry[][] readFileEntriesWithException(Map map) throws CoreException, IOException, ClasspathEntry.AssertionFailedException {
        byte[] fileByteContent;
        String str;
        IFile file = this.project.getFile(".classpath");
        if (file.exists()) {
            fileByteContent = Util.getResourceContentsAsByteArray(file);
        } else {
            URI locationURI = file.getLocationURI();
            if (locationURI == null) {
                throw new IOException("Cannot obtain a location URI for " + ((Object) file));
            }
            File localFile = Util.toLocalFile(locationURI, null);
            if (localFile == null) {
                throw new IOException("Unable to fetch file from " + ((Object) locationURI));
            }
            try {
                fileByteContent = org.eclipse.jdt.internal.compiler.util.Util.getFileByteContent(localFile);
            } catch (IOException e10) {
                if (localFile.exists()) {
                    throw e10;
                }
                return new IClasspathEntry[][]{defaultClasspath(), ClasspathEntry.NO_ENTRIES};
            }
        }
        if (hasUTF8BOM(fileByteContent)) {
            int length = fileByteContent.length - IContentDescription.BOM_UTF_8.length;
            byte[] bArr = new byte[length];
            System.arraycopy(fileByteContent, IContentDescription.BOM_UTF_8.length, bArr, 0, length);
            fileByteContent = bArr;
        }
        try {
            str = new String(fileByteContent, "UTF-8");
        } catch (UnsupportedEncodingException e11) {
            Util.log(e11, "Could not read .classpath with UTF-8 encoding");
            str = new String(fileByteContent);
        }
        return decodeClasspath(str, map);
    }

    @Override
    public IPath readOutputLocation() {
        IClasspathEntry[] iClasspathEntryArr = readFileEntries(null)[0];
        if (iClasspathEntryArr == INVALID_CLASSPATH) {
            return defaultOutputLocation();
        }
        if (iClasspathEntryArr.length <= 0) {
            return null;
        }
        IClasspathEntry iClasspathEntry = iClasspathEntryArr[iClasspathEntryArr.length - 1];
        if (iClasspathEntry.getContentKind() == 10) {
            return iClasspathEntry.getPath();
        }
        return null;
    }

    @Override
    public IClasspathEntry[] readRawClasspath() {
        IClasspathEntry[][] readFileEntries = readFileEntries(null);
        IClasspathEntry[] iClasspathEntryArr = readFileEntries[0];
        if (iClasspathEntryArr == INVALID_CLASSPATH) {
            return defaultClasspath();
        }
        if (iClasspathEntryArr.length > 0 && iClasspathEntryArr[iClasspathEntryArr.length - 1].getContentKind() == 10) {
            IClasspathEntry[] iClasspathEntryArr2 = readFileEntries[0];
            int length = iClasspathEntryArr2.length - 1;
            IClasspathEntry[] iClasspathEntryArr3 = new IClasspathEntry[length];
            System.arraycopy(iClasspathEntryArr2, 0, iClasspathEntryArr3, 0, length);
            readFileEntries[0] = iClasspathEntryArr3;
        }
        return readFileEntries[0];
    }

    public void removeFromBuildSpec(String str) throws CoreException {
        IProjectDescription description = this.project.getDescription();
        ICommand[] buildSpec = description.getBuildSpec();
        for (int i10 = 0; i10 < buildSpec.length; i10++) {
            if (buildSpec[i10].getBuilderName().equals(str)) {
                ICommand[] iCommandArr = new ICommand[buildSpec.length - 1];
                System.arraycopy(buildSpec, 0, iCommandArr, 0, i10);
                System.arraycopy(buildSpec, i10 + 1, iCommandArr, i10, (buildSpec.length - i10) - 1);
                description.setBuildSpec(iCommandArr);
                this.project.setDescription(description, (IProgressMonitor) null);
                return;
            }
        }
    }

    public void resetCaches() {
        JavaProjectElementInfo javaProjectElementInfo = (JavaProjectElementInfo) JavaModelManager.getJavaModelManager().peekAtInfo(this);
        if (javaProjectElementInfo != null) {
            javaProjectElementInfo.resetCaches();
        }
    }

    public ClasspathChange resetResolvedClasspath() {
        try {
            return getPerProjectInfo().resetResolvedClasspath();
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public IClasspathEntry[] resolveClasspath(IClasspathEntry[] iClasspathEntryArr) throws JavaModelException {
        return resolveClasspath(iClasspathEntryArr, false, true).resolvedClasspath;
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        return this.project;
    }

    public String rootID() {
        return "[PRJ]" + ((Object) this.project.getFullPath());
    }

    public void setModuleDescription(IModuleDescription iModuleDescription) throws JavaModelException {
        JavaProjectElementInfo javaProjectElementInfo = (JavaProjectElementInfo) getElementInfo();
        IModuleDescription module = javaProjectElementInfo.getModule();
        if (module != null && !((IPackageFragmentRoot) module.getAncestor(3)).equals((IPackageFragmentRoot) iModuleDescription.getAncestor(3))) {
            throw new JavaModelException((IStatus) new Status(4, JavaCore.PLUGIN_ID, Messages.bind(Messages.classpath_duplicateEntryPath, "module-info.java", getElementName())));
        }
        javaProjectElementInfo.setModule(iModuleDescription);
    }

    @Override
    public void setOption(String str, String str2) {
        IEclipsePreferences eclipsePreferences = getEclipsePreferences();
        if (JavaModelManager.getJavaModelManager().storePreference(str, str2, eclipsePreferences, null)) {
            try {
                eclipsePreferences.flush();
            } catch (BackingStoreException unused) {
            }
        }
    }

    @Override
    public void setOptions(Map<String, String> map) {
        IEclipsePreferences eclipsePreferences = getEclipsePreferences();
        if (eclipsePreferences == null) {
            return;
        }
        try {
            if (map == null) {
                eclipsePreferences.clear();
            } else {
                JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    javaModelManager.storePreference(entry.getKey(), entry.getValue(), eclipsePreferences, map);
                }
                for (String str : eclipsePreferences.keys()) {
                    if (!map.containsKey(str)) {
                        eclipsePreferences.remove(str);
                    }
                }
            }
            eclipsePreferences.flush();
            getPerProjectInfo().options = null;
        } catch (BackingStoreException | JavaModelException unused) {
        }
    }

    @Override
    public void setOutputLocation(IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iPath == null) {
            throw new IllegalArgumentException(Messages.path_nullPath);
        }
        if (iPath.equals(getOutputLocation())) {
            return;
        }
        setRawClasspath(getRawClasspath(), iPath, iProgressMonitor);
    }

    public void setProject(IProject iProject) {
        this.project = iProject;
        this.parent = JavaModelManager.getJavaModelManager().getJavaModel();
    }

    @Override
    public void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        setRawClasspath(iClasspathEntryArr, getOutputLocation(), z10, iProgressMonitor);
    }

    public void setSharedProperty(String str, String str2) throws CoreException {
        byte[] bytes;
        IFile file = this.project.getFile(str);
        try {
            bytes = str2.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            Util.log(e10, "Could not write .classpath with UTF-8 encoding ");
            bytes = str2.getBytes();
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        if (!file.exists()) {
            file.create(byteArrayInputStream, 1, (IProgressMonitor) null);
            return;
        }
        if (file.isReadOnly()) {
            ResourcesPlugin.getWorkspace().validateEdit(new IFile[]{file}, IWorkspace.VALIDATE_PROMPT);
        }
        file.setContents(byteArrayInputStream, 1, (IProgressMonitor) null);
    }

    public void updateCycleParticipants(ArrayList arrayList, LinkedHashSet linkedHashSet, IWorkspaceRoot iWorkspaceRoot, HashSet hashSet, Map map) {
        IClasspathEntry[] iClasspathEntryArr;
        IProject findMember;
        IPath path = getPath();
        arrayList.add(path);
        hashSet.add(path);
        if (map != null) {
            try {
                iClasspathEntryArr = (IClasspathEntry[]) map.get(this);
            } catch (JavaModelException unused) {
            }
        } else {
            iClasspathEntryArr = null;
        }
        if (iClasspathEntryArr == null) {
            iClasspathEntryArr = getResolvedClasspath();
        }
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            if (iClasspathEntry.getEntryKind() == 2) {
                IPath path2 = iClasspathEntry.getPath();
                int indexOf = linkedHashSet.contains(path2) ? 0 : arrayList.indexOf(path2);
                if (indexOf >= 0) {
                    int size = arrayList.size();
                    while (indexOf < size) {
                        linkedHashSet.add(arrayList.get(indexOf));
                        indexOf++;
                    }
                } else if (!hashSet.contains(path2) && (findMember = iWorkspaceRoot.findMember(path2)) != null && findMember.getType() == 4) {
                    ((JavaProject) JavaCore.create(findMember)).updateCycleParticipants(arrayList, linkedHashSet, iWorkspaceRoot, hashSet, map);
                }
            }
        }
        arrayList.remove(path);
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        try {
            return !((IProject) iResource).hasNature(JavaCore.NATURE_ID) ? newDoesNotExistStatus() : JavaModelStatus.VERIFIED_OK;
        } catch (CoreException unused) {
            return newDoesNotExistStatus();
        }
    }

    public boolean writeFileEntries(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath) throws JavaModelException {
        if (!this.project.isAccessible()) {
            return false;
        }
        HashMap hashMap = new HashMap();
        IClasspathEntry[][] readFileEntries = readFileEntries(hashMap);
        IClasspathEntry[] iClasspathEntryArr3 = readFileEntries[0];
        if (iClasspathEntryArr3 != INVALID_CLASSPATH && areClasspathsEqual(iClasspathEntryArr, iPath, iClasspathEntryArr3) && (iClasspathEntryArr2 == null || areClasspathsEqual(iClasspathEntryArr2, readFileEntries[1]))) {
            return false;
        }
        try {
            setSharedProperty(".classpath", encodeClasspath(iClasspathEntryArr, iClasspathEntryArr2, iPath, true, hashMap));
            return true;
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public JavaProject(IProject iProject, JavaElement javaElement) {
        super(javaElement);
        this.project = iProject;
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    @Override
    public IJavaElement findElement(IPath iPath, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        if (iPath != null && !iPath.isAbsolute()) {
            try {
                String fileExtension = iPath.getFileExtension();
                if (fileExtension == null) {
                    return findPackageFragment(iPath.toString().replace('/', '.'));
                }
                if (!Util.isJavaLikeFileName(iPath.lastSegment()) && !fileExtension.equalsIgnoreCase("class")) {
                    return null;
                }
                String replace = iPath.removeLastSegments(1).toString().replace('/', '.');
                String lastSegment = iPath.lastSegment();
                String substring = lastSegment.substring(0, (lastSegment.length() - fileExtension.length()) - 1);
                if (replace.length() > 0) {
                    substring = replace + "." + substring;
                }
                NameLookup.Answer findType = newNameLookup(workingCopyOwner).findType(substring, false, 30, true, false, false, null);
                if (findType != null) {
                    return findType.type.getParent();
                }
                return null;
            } catch (JavaModelException e10) {
                if (e10.getStatus().getCode() == 969) {
                    return null;
                }
                throw e10;
            }
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, iPath));
    }

    @Override
    public IType findType(String str, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return findType(str, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Deprecated
    public IPackageFragmentRoot[] getAllPackageFragmentRoots(Map map) throws JavaModelException {
        return getAllPackageFragmentRoots(map, false);
    }

    public IClasspathEntry[] getExpandedClasspath(boolean z10) throws JavaModelException {
        ArrayList<ClasspathEntry> arrayList = new ArrayList<>();
        HashMap<String, Boolean> hashMap = new HashMap<>(5);
        hashMap.put(rootID(), Boolean.valueOf(z10));
        computeExpandedClasspath(null, hashMap, arrayList, z10);
        IClasspathEntry[] iClasspathEntryArr = new IClasspathEntry[arrayList.size()];
        arrayList.toArray(iClasspathEntryArr);
        return iClasspathEntryArr;
    }

    public JavaProjectElementInfo.ProjectCache getProjectCache(boolean z10) throws JavaModelException {
        return ((JavaProjectElementInfo) getElementInfo()).getProjectCache(this, z10);
    }

    public NameLookup newNameLookup(ICompilationUnit[] iCompilationUnitArr, boolean z10) throws JavaModelException {
        return getJavaProjectElementInfo().newNameLookup(this, iCompilationUnitArr, z10);
    }

    public SearchableEnvironment newSearchableNameEnvironment(ICompilationUnit[] iCompilationUnitArr, boolean z10) throws JavaModelException {
        return new SearchableEnvironment(this, iCompilationUnitArr, z10);
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IRegion iRegion, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iRegion != null) {
            CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation(iRegion, JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true), (IType) null, true);
            createTypeHierarchyOperation.runOperation(iProgressMonitor);
            return createTypeHierarchyOperation.getResult();
        }
        throw new IllegalArgumentException(Messages.hierarchy_nullRegion);
    }

    public ResolvedClasspath resolveClasspath(IClasspathEntry[] iClasspathEntryArr, boolean z10, boolean z11) throws JavaModelException {
        return resolveClasspath(iClasspathEntryArr, null, z10, z11);
    }

    public IModuleDescription findModule(String str, NameLookup nameLookup) throws JavaModelException {
        NameLookup.Answer findModule = nameLookup.findModule(str.toCharArray());
        if (findModule != null) {
            return findModule.module;
        }
        return null;
    }

    public IType findType(String str, NameLookup nameLookup, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        NameLookup.Answer findType = nameLookup.findType(str, false, 30, z10, true, false, iProgressMonitor);
        if (findType == null) {
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                return null;
            }
            IType findType2 = findType(str.substring(0, lastIndexOf), nameLookup, z10, iProgressMonitor);
            if (findType2 != null) {
                findType2 = findType2.getType(str.substring(lastIndexOf + 1));
                if (!findType2.exists()) {
                    return null;
                }
            }
            return findType2;
        }
        return findType.type;
    }

    public IPackageFragmentRoot[] getAllPackageFragmentRoots(Map map, boolean z10) throws JavaModelException {
        return computePackageFragmentRoots(getResolvedClasspath(), true, true, map, z10);
    }

    public NameLookup newNameLookup(WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return newNameLookup(workingCopyOwner, false);
    }

    public SearchableEnvironment newSearchableNameEnvironment(WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return newSearchableNameEnvironment(workingCopyOwner, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ResolvedClasspath resolveClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, boolean z10, boolean z11) throws JavaModelException {
        int i10;
        int i11;
        int i12;
        LinkedHashSet linkedHashSet;
        LinkedHashSet linkedHashSet2;
        Map map;
        int i13;
        int i14;
        IClasspathEntry[] iClasspathEntryArr3;
        int i15;
        int i16;
        IClasspathEntry[] iClasspathEntryArr4;
        int i17;
        int i18;
        int i19;
        IClasspathEntry[] iClasspathEntryArr5;
        IClasspathEntry iClasspathEntry;
        int i20;
        int i21;
        IClasspathEntry[] iClasspathEntryArr6;
        int i22;
        int i23;
        IClasspathEntry[] iClasspathEntryArr7;
        IClasspathEntry[] iClasspathEntryArr8 = iClasspathEntryArr;
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        ExternalFoldersManager externalManager = JavaModelManager.getExternalManager();
        ResolvedClasspath resolvedClasspath = new ResolvedClasspath();
        Map hashMap = new HashMap();
        Map hashMap2 = new HashMap();
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        LinkedHashSet linkedHashSet4 = new LinkedHashSet();
        int i24 = 1;
        if (z11) {
            for (IClasspathEntry iClasspathEntry2 : iClasspathEntryArr8) {
                if (iClasspathEntry2.getEntryKind() == 1) {
                    linkedHashSet3.add(ClasspathEntry.resolveDotDot(getProject().getLocation(), iClasspathEntry2.getPath()));
                }
            }
            if (iClasspathEntryArr2 != null) {
                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                for (int i25 = 0; i25 < iClasspathEntryArr2.length; i25++) {
                    IPath path = iClasspathEntryArr2[i25].getPath();
                    if (!linkedHashSet3.contains(path) && hashMap2.get(path) == 0) {
                        hashMap2.put(path, iClasspathEntryArr2[i25]);
                        linkedHashSet5.add(iClasspathEntryArr2[i25]);
                    }
                }
                if (linkedHashSet5.size() > 0) {
                    IClasspathEntry[] iClasspathEntryArr9 = new IClasspathEntry[linkedHashSet5.size()];
                    resolvedClasspath.referencedEntries = iClasspathEntryArr9;
                    linkedHashSet5.toArray(iClasspathEntryArr9);
                }
            }
        }
        int length = iClasspathEntryArr8.length;
        int i26 = 0;
        while (i26 < length) {
            IClasspathEntry iClasspathEntry3 = iClasspathEntryArr8[i26];
            int entryKind = iClasspathEntry3.getEntryKind();
            if (entryKind != i24) {
                if (entryKind == 4) {
                    i10 = i26;
                    i11 = length;
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet3;
                    map = hashMap2;
                    try {
                        IClasspathEntry resolveVariableEntry = javaModelManager.resolveVariableEntry(iClasspathEntry3, z10);
                        if (resolveVariableEntry == null) {
                            resolvedClasspath.unresolvedEntryStatus = new JavaModelStatus(IJavaModelStatusConstants.CP_VARIABLE_PATH_UNBOUND, this, iClasspathEntry3.getPath());
                        } else {
                            if (z11) {
                                int i27 = 1;
                                if (resolveVariableEntry.getEntryKind() == 1 && resolvedClasspath.rawReverseMap.get(resolveVariableEntry.getPath()) == null) {
                                    IClasspathEntry[] resolvedChainedLibraries = ((ClasspathEntry) resolveVariableEntry).resolvedChainedLibraries();
                                    int length2 = resolvedChainedLibraries.length;
                                    int i28 = 0;
                                    while (i28 < length2) {
                                        if (linkedHashSet2.contains(resolvedChainedLibraries[i28].getPath())) {
                                            i15 = i28;
                                            i16 = length2;
                                            iClasspathEntryArr4 = resolvedChainedLibraries;
                                            i17 = i27;
                                        } else {
                                            i15 = i28;
                                            i16 = length2;
                                            iClasspathEntryArr4 = resolvedChainedLibraries;
                                            i17 = i27;
                                            addToResult(iClasspathEntry3, resolvedChainedLibraries[i28], resolvedClasspath, linkedHashSet, externalManager, map, true, hashMap);
                                        }
                                        i28 = i15 + 1;
                                        i27 = i17;
                                        length2 = i16;
                                        resolvedChainedLibraries = iClasspathEntryArr4;
                                    }
                                }
                                i12 = i27;
                            } else {
                                i12 = 1;
                            }
                            addToResult(iClasspathEntry3, resolveVariableEntry, resolvedClasspath, linkedHashSet, externalManager, map, false, hashMap);
                        }
                    } catch (ClasspathEntry.AssertionFailedException e10) {
                        i12 = 1;
                        resolvedClasspath.unresolvedEntryStatus = new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, e10.getMessage());
                    }
                } else if (entryKind != 5) {
                    i10 = i26;
                    i11 = length;
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet3;
                    map = hashMap2;
                    addToResult(iClasspathEntry3, iClasspathEntry3, resolvedClasspath, linkedHashSet4, externalManager, hashMap2, false, hashMap);
                } else {
                    i10 = i26;
                    i11 = length;
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet3;
                    map = hashMap2;
                    IPath path2 = iClasspathEntry3.getPath();
                    IClasspathContainer previousSessionContainer = z10 ? javaModelManager.getPreviousSessionContainer(path2, this) : JavaCore.getClasspathContainer(path2, this);
                    if (previousSessionContainer == null) {
                        resolvedClasspath.unresolvedEntryStatus = new JavaModelStatus(IJavaModelStatusConstants.CP_CONTAINER_PATH_UNBOUND, this, iClasspathEntry3.getPath());
                    } else {
                        IClasspathEntry[] classpathEntries = previousSessionContainer.getClasspathEntries();
                        if (classpathEntries == null) {
                            if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                                JavaModelManager.getJavaModelManager().verbose_missbehaving_container_null_entries(this, iClasspathEntry3.getPath());
                            }
                        } else {
                            int length3 = classpathEntries.length;
                            int i29 = 0;
                            while (true) {
                                if (i29 >= length3) {
                                    break;
                                }
                                ClasspathEntry classpathEntry = (ClasspathEntry) classpathEntries[i29];
                                if (classpathEntry == null) {
                                    if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                                        JavaModelManager.getJavaModelManager().verbose_missbehaving_container(this, iClasspathEntry3.getPath(), classpathEntries);
                                    }
                                } else {
                                    ClasspathEntry combineWith = classpathEntry.combineWith((ClasspathEntry) iClasspathEntry3);
                                    if (combineWith.getEntryKind() == 1) {
                                        ClasspathEntry resolvedDotDot = combineWith.resolvedDotDot(getProject().getLocation());
                                        if (z11 && JavaModelManager.getJavaModelManager().resolveReferencedLibrariesForContainers && resolvedClasspath.rawReverseMap.get(resolvedDotDot.getPath()) == null) {
                                            IClasspathEntry[] resolvedChainedLibraries2 = resolvedDotDot.resolvedChainedLibraries();
                                            int length4 = resolvedChainedLibraries2.length;
                                            int i30 = 0;
                                            while (i30 < length4) {
                                                if (linkedHashSet2.contains(resolvedChainedLibraries2[i30].getPath())) {
                                                    i20 = i30;
                                                    i21 = length4;
                                                    iClasspathEntryArr6 = resolvedChainedLibraries2;
                                                    i22 = i29;
                                                    i23 = length3;
                                                    iClasspathEntryArr7 = classpathEntries;
                                                } else {
                                                    i20 = i30;
                                                    i21 = length4;
                                                    iClasspathEntryArr6 = resolvedChainedLibraries2;
                                                    i22 = i29;
                                                    i23 = length3;
                                                    iClasspathEntryArr7 = classpathEntries;
                                                    addToResult(iClasspathEntry3, resolvedChainedLibraries2[i30], resolvedClasspath, linkedHashSet, externalManager, map, false, hashMap);
                                                }
                                                i30 = i20 + 1;
                                                length4 = i21;
                                                classpathEntries = iClasspathEntryArr7;
                                                resolvedChainedLibraries2 = iClasspathEntryArr6;
                                                i29 = i22;
                                                length3 = i23;
                                            }
                                        }
                                        i18 = i29;
                                        i19 = length3;
                                        iClasspathEntryArr5 = classpathEntries;
                                        iClasspathEntry = resolvedDotDot;
                                    } else {
                                        i18 = i29;
                                        i19 = length3;
                                        iClasspathEntryArr5 = classpathEntries;
                                        iClasspathEntry = combineWith;
                                    }
                                    addToResult(iClasspathEntry3, iClasspathEntry, resolvedClasspath, linkedHashSet, externalManager, map, false, hashMap);
                                    i29 = i18 + 1;
                                    classpathEntries = iClasspathEntryArr5;
                                    length3 = i19;
                                }
                            }
                        }
                    }
                }
                i12 = 1;
            } else {
                i10 = i26;
                i11 = length;
                i12 = i24;
                linkedHashSet = linkedHashSet4;
                linkedHashSet2 = linkedHashSet3;
                map = hashMap2;
                ClasspathEntry resolvedDotDot2 = ((ClasspathEntry) iClasspathEntry3).resolvedDotDot(getProject().getLocation());
                if (z11 && resolvedClasspath.rawReverseMap.get(resolvedDotDot2.getPath()) == null) {
                    IClasspathEntry[] resolvedChainedLibraries3 = resolvedDotDot2.resolvedChainedLibraries();
                    int length5 = resolvedChainedLibraries3.length;
                    int i31 = 0;
                    while (i31 < length5) {
                        if (linkedHashSet2.contains(resolvedChainedLibraries3[i31].getPath())) {
                            i13 = i31;
                            i14 = length5;
                            iClasspathEntryArr3 = resolvedChainedLibraries3;
                        } else {
                            i13 = i31;
                            i14 = length5;
                            iClasspathEntryArr3 = resolvedChainedLibraries3;
                            addToResult(iClasspathEntry3, resolvedChainedLibraries3[i31], resolvedClasspath, linkedHashSet, externalManager, map, true, hashMap);
                        }
                        i31 = i13 + 1;
                        resolvedChainedLibraries3 = iClasspathEntryArr3;
                        length5 = i14;
                    }
                }
                addToResult(iClasspathEntry3, resolvedDotDot2, resolvedClasspath, linkedHashSet, externalManager, map, false, hashMap);
            }
            i26 = i10 + 1;
            linkedHashSet3 = linkedHashSet2;
            hashMap2 = map;
            length = i11;
            linkedHashSet4 = linkedHashSet;
            i24 = i12;
            iClasspathEntryArr8 = iClasspathEntryArr;
        }
        IClasspathEntry[] iClasspathEntryArr10 = new IClasspathEntry[linkedHashSet4.size()];
        resolvedClasspath.resolvedClasspath = iClasspathEntryArr10;
        linkedHashSet4.toArray(iClasspathEntryArr10);
        return resolvedClasspath;
    }

    @Override
    public void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IPath iPath, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        setRawClasspath(iClasspathEntryArr, null, iPath, z10, iProgressMonitor);
    }

    public void computePackageFragmentRoots(IClasspathEntry iClasspathEntry, ObjectVector objectVector, HashSet hashSet, IClasspathEntry iClasspathEntry2, boolean z10, boolean z11, Map map) throws JavaModelException {
        computePackageFragmentRoots(iClasspathEntry, objectVector, hashSet, iClasspathEntry2, z10, z11, map, false);
    }

    @Override
    public IPackageFragmentRoot[] getPackageFragmentRoots(IClasspathEntry iClasspathEntry) {
        return findPackageFragmentRoots(iClasspathEntry);
    }

    public NameLookup newNameLookup(WorkingCopyOwner workingCopyOwner, boolean z10) throws JavaModelException {
        return newNameLookup(workingCopyOwner == null ? null : JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true));
    }

    public SearchableEnvironment newSearchableNameEnvironment(WorkingCopyOwner workingCopyOwner, boolean z10) throws JavaModelException {
        return new SearchableEnvironment(this, workingCopyOwner, z10);
    }

    @Override
    public void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException {
        setRawClasspath(iClasspathEntryArr, iPath, true, iProgressMonitor);
    }

    private static boolean areClasspathsEqual(IClasspathEntry[] iClasspathEntryArr, IPath iPath, IClasspathEntry[] iClasspathEntryArr2) {
        int length;
        if (iClasspathEntryArr2 == null || iClasspathEntryArr2.length == 0 || (length = iClasspathEntryArr2.length) != iClasspathEntryArr.length + 1) {
            return false;
        }
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (i10 >= i11) {
                IClasspathEntry iClasspathEntry = iClasspathEntryArr2[i11];
                return iClasspathEntry.getContentKind() == 10 && iClasspathEntry.getPath().equals(iPath);
            }
            if (!iClasspathEntryArr2[i10].equals(iClasspathEntryArr[i10])) {
                return false;
            }
            i10++;
        }
    }

    public void computePackageFragmentRoots(IClasspathEntry iClasspathEntry, ObjectVector objectVector, HashSet hashSet, IClasspathEntry iClasspathEntry2, boolean z10, Map map) throws JavaModelException {
        computePackageFragmentRoots(iClasspathEntry, objectVector, hashSet, iClasspathEntry2, z10, true, map);
    }

    @Override
    public void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, IProgressMonitor iProgressMonitor) throws JavaModelException {
        setRawClasspath(iClasspathEntryArr, iClasspathEntryArr2, iPath, true, iProgressMonitor);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void computePackageFragmentRoots(IClasspathEntry iClasspathEntry, ObjectVector objectVector, HashSet hashSet, IClasspathEntry iClasspathEntry2, boolean z10, boolean z11, Map map, boolean z12) throws JavaModelException {
        Object target;
        String str;
        Map map2;
        HashSet hashSet2;
        ObjectVector objectVector2;
        IPackageFragmentRoot externalPackageFragmentRoot;
        ObjectVector objectVector3;
        List<String> defaultRootModules;
        ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry;
        String rootID = classpathEntry.rootID();
        if (hashSet.contains(rootID)) {
            return;
        }
        if (z12 && classpathEntry.isTest()) {
            return;
        }
        IPath fullPath = this.project.getFullPath();
        IPath path = iClasspathEntry.getPath();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        int entryKind = iClasspathEntry.getEntryKind();
        IPackageFragmentRoot iPackageFragmentRoot = null;
        if (entryKind != 1) {
            if (entryKind != 2) {
                if (entryKind == 3 && fullPath.isPrefixOf(path)) {
                    Object target2 = JavaModel.getTarget(path, true);
                    if (target2 == null) {
                        return;
                    }
                    if ((target2 instanceof IFolder) || (target2 instanceof IProject)) {
                        iPackageFragmentRoot = getPackageFragmentRoot((IResource) target2);
                    }
                }
            } else {
                if (!z10) {
                    return;
                }
                if (iClasspathEntry2 != null && !iClasspathEntry.isExported()) {
                    return;
                }
                IProject findMember = root.findMember(path);
                if (findMember != null && findMember.getType() == 4) {
                    IProject iProject = findMember;
                    if (hasJavaNature(iProject)) {
                        hashSet.add(rootID);
                        JavaProject javaProject = (JavaProject) JavaCore.create(iProject);
                        javaProject.computePackageFragmentRoots(javaProject.getResolvedClasspath(), objectVector, hashSet, map == null ? iClasspathEntry : ((ClasspathEntry) iClasspathEntry).combineWith((ClasspathEntry) iClasspathEntry2), z10, z11, map, z12);
                    }
                }
            }
        } else {
            if ((iClasspathEntry2 != null && !iClasspathEntry.isExported()) || (target = JavaModel.getTarget(path, true)) == null) {
                return;
            }
            if (target instanceof IResource) {
                iPackageFragmentRoot = getPackageFragmentRoot((IResource) target, path);
            } else if (target instanceof File) {
                if (JavaModel.isFile(target)) {
                    File file = (File) target;
                    if (JavaModel.isJimage(file)) {
                        JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
                        Map<IPath, ObjectVector> map3 = perProjectInfo.jrtRoots;
                        if (map3 != null && map3.containsKey(path)) {
                            objectVector3 = perProjectInfo.jrtRoots.get(path);
                            str = rootID;
                            map2 = map;
                            hashSet2 = hashSet;
                            objectVector2 = objectVector;
                        } else {
                            ObjectVector objectVector4 = new ObjectVector();
                            str = rootID;
                            map2 = map;
                            hashSet2 = hashSet;
                            objectVector2 = objectVector;
                            loadModulesInJimage(path, objectVector4, map, iClasspathEntry, iClasspathEntry2);
                            perProjectInfo.setJrtPackageRoots(path, objectVector4);
                            hashSet2.add(str);
                            objectVector3 = objectVector4;
                        }
                        if (z11) {
                            String extraAttribute = ClasspathEntry.getExtraAttribute(iClasspathEntry, IClasspathAttribute.LIMIT_MODULES);
                            if (extraAttribute != null) {
                                defaultRootModules = Arrays.asList(extraAttribute.split(DocLint.SEPARATOR));
                            } else {
                                defaultRootModules = isUnNamedModule() ? defaultRootModules(objectVector3) : null;
                            }
                            if (defaultRootModules != null) {
                                objectVector3 = filterLimitedModules(path, objectVector3, defaultRootModules);
                            }
                        }
                        objectVector2.addAll(objectVector3);
                        externalPackageFragmentRoot = iPackageFragmentRoot;
                        if (externalPackageFragmentRoot != null) {
                            objectVector2.add(externalPackageFragmentRoot);
                            hashSet2.add(str);
                            if (map2 != null) {
                                map2.put(externalPackageFragmentRoot, ((ClasspathEntry) iClasspathEntry).combineWith((ClasspathEntry) iClasspathEntry2));
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    str = rootID;
                    map2 = map;
                    hashSet2 = hashSet;
                    objectVector2 = objectVector;
                    if (JavaModel.isJmod(file)) {
                        externalPackageFragmentRoot = new JModPackageFragmentRoot(path, this);
                    } else {
                        externalPackageFragmentRoot = new JarPackageFragmentRoot(path, this);
                    }
                    if (externalPackageFragmentRoot != null) {
                    }
                } else {
                    str = rootID;
                    map2 = map;
                    hashSet2 = hashSet;
                    objectVector2 = objectVector;
                    if (((File) target).isDirectory()) {
                        externalPackageFragmentRoot = new ExternalPackageFragmentRoot(path, this);
                        if (externalPackageFragmentRoot != null) {
                        }
                    }
                    externalPackageFragmentRoot = iPackageFragmentRoot;
                    if (externalPackageFragmentRoot != null) {
                    }
                }
            }
        }
        str = rootID;
        map2 = map;
        hashSet2 = hashSet;
        objectVector2 = objectVector;
        externalPackageFragmentRoot = iPackageFragmentRoot;
        if (externalPackageFragmentRoot != null) {
        }
    }

    public void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iClasspathEntryArr == null) {
            try {
                iClasspathEntryArr = defaultClasspath();
            } catch (JavaModelException e10) {
                JavaModelManager.getJavaModelManager().getDeltaProcessor().flush();
                throw e10;
            }
        }
        new SetClasspathOperation(this, iClasspathEntryArr, iClasspathEntryArr2, iPath, z10).runOperation(iProgressMonitor);
    }

    @Override
    public IPackageFragment findPackageFragment(IPath iPath) throws JavaModelException {
        return findPackageFragment0(canonicalizedPath(iPath));
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IType iType, IRegion iRegion, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return newTypeHierarchy(iType, iRegion, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public IClasspathEntry[] getResolvedClasspath(boolean z10) throws JavaModelException {
        IClasspathEntry[] resolvedClasspath;
        IJavaModelStatus iJavaModelStatus;
        IClasspathEntry[] resolvedClasspath2;
        IJavaModelStatus iJavaModelStatus2;
        if (JavaModelManager.getJavaModelManager().isClasspathBeingResolved(this)) {
            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                verbose_reentering_classpath_resolution();
            }
            return RESOLUTION_IN_PROGRESS;
        }
        JavaModelManager.PerProjectInfo perProjectInfo = getPerProjectInfo();
        synchronized (perProjectInfo) {
            resolvedClasspath = perProjectInfo.getResolvedClasspath();
            iJavaModelStatus = perProjectInfo.unresolvedEntryStatus;
        }
        if (resolvedClasspath == null || (iJavaModelStatus != null && !iJavaModelStatus.isOK())) {
            resolveClasspath(perProjectInfo, false, true);
            synchronized (perProjectInfo) {
                resolvedClasspath2 = perProjectInfo.getResolvedClasspath();
                iJavaModelStatus2 = perProjectInfo.unresolvedEntryStatus;
            }
            if (resolvedClasspath2 == null) {
                JavaModelManager.PerProjectInfo newTemporaryInfo = newTemporaryInfo();
                resolveClasspath(newTemporaryInfo, false, true);
                resolvedClasspath = newTemporaryInfo.getResolvedClasspath();
                iJavaModelStatus = newTemporaryInfo.unresolvedEntryStatus;
            } else {
                resolvedClasspath = resolvedClasspath2;
                iJavaModelStatus = iJavaModelStatus2;
            }
        }
        if (z10 || iJavaModelStatus == null || iJavaModelStatus.isOK()) {
            return resolvedClasspath;
        }
        throw new JavaModelException(iJavaModelStatus);
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IType iType, IRegion iRegion, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iType == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullFocusType);
        }
        if (iRegion != null) {
            CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation(iRegion, JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true), iType, true);
            createTypeHierarchyOperation.runOperation(iProgressMonitor);
            return createTypeHierarchyOperation.getResult();
        }
        throw new IllegalArgumentException(Messages.hierarchy_nullRegion);
    }

    @Override
    public IType findType(String str, String str2) throws JavaModelException {
        return findType(str, str2, DefaultWorkingCopyOwner.PRIMARY);
    }

    public boolean writeFileEntries(IClasspathEntry[] iClasspathEntryArr, IPath iPath) throws JavaModelException {
        return writeFileEntries(iClasspathEntryArr, ClasspathEntry.NO_ENTRIES, iPath);
    }

    @Override
    public IType findType(String str, String str2, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return findType(str, str2, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    public IType findType(String str, String str2, NameLookup nameLookup, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        NameLookup.Answer findType = nameLookup.findType(str2, str, false, 30, z10, true, false, iProgressMonitor);
        if (findType == null) {
            return null;
        }
        return findType.type;
    }

    @Override
    public void setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        setRawClasspath(iClasspathEntryArr, getOutputLocation(), true, iProgressMonitor);
    }

    private static boolean areClasspathsEqual(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2) {
        if (iClasspathEntryArr == iClasspathEntryArr2) {
            return true;
        }
        if (iClasspathEntryArr == null) {
            return false;
        }
        int length = iClasspathEntryArr.length;
        if (iClasspathEntryArr2 == null || iClasspathEntryArr2.length != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!iClasspathEntryArr[i10].equals(iClasspathEntryArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public IType findType(String str, String str2, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return findType(str, str2, newNameLookup(workingCopyOwner), false, null);
    }

    public boolean isOnClasspath(IResource iResource) {
        IPath fullPath = iResource.getFullPath();
        int type = iResource.getType();
        boolean z10 = type == 2 || type == 4;
        try {
            for (IClasspathEntry iClasspathEntry : getResolvedClasspath()) {
                IPath path = iClasspathEntry.getPath();
                if (path.equals(fullPath)) {
                    return true;
                }
                if (path.isAbsolute() && path.equals(ResourcesPlugin.getWorkspace().getRoot().getLocation().append(fullPath))) {
                    return true;
                }
                if (path.isPrefixOf(fullPath)) {
                    ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry;
                    if (!Util.isExcluded(fullPath, classpathEntry.fullInclusionPatternChars(), classpathEntry.fullExclusionPatternChars(), z10)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    @Override
    public IType findType(String str, String str2, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return findType(str, str2, newNameLookup(workingCopyOwner), true, iProgressMonitor);
    }

    @Override
    public IType findType(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return findType(str, newNameLookup(workingCopyOwner), false, (IProgressMonitor) null);
    }

    @Override
    public IPackageFragmentRoot getPackageFragmentRoot(IResource iResource) {
        return getPackageFragmentRoot(iResource, null);
    }

    @Override
    public IType findType(String str, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return findType(str, newNameLookup(workingCopyOwner), true, iProgressMonitor);
    }

    public IPackageFragmentRoot getPackageFragmentRoot(IResource iResource, IPath iPath) {
        int type = iResource.getType();
        if (type == 1) {
            return new JarPackageFragmentRoot(iResource, this);
        }
        if (type != 2) {
            if (type != 4) {
                return null;
            }
            return new PackageFragmentRoot(iResource, this);
        }
        if (ExternalFoldersManager.isInternalPathForExternalFolder(iResource.getFullPath())) {
            return new ExternalPackageFragmentRoot(iResource, iPath, this);
        }
        return new PackageFragmentRoot(iResource, this);
    }

    @Override
    public IJavaElement findElement(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        JavaElementFinder javaElementFinder = new JavaElementFinder(str, this, workingCopyOwner);
        javaElementFinder.parse();
        CoreException coreException = javaElementFinder.exception;
        if (coreException == null) {
            return javaElementFinder.element;
        }
        throw coreException;
    }

    @Override
    public IPackageFragmentRoot getPackageFragmentRoot(String str) {
        return getPackageFragmentRoot0(canonicalizedPath(new org.eclipse.core.runtime.Path(str)));
    }

    public IPackageFragmentRoot[] computePackageFragmentRoots(IClasspathEntry[] iClasspathEntryArr, boolean z10, boolean z11, Map map) throws JavaModelException {
        return computePackageFragmentRoots(iClasspathEntryArr, z10, z11, map, false);
    }

    public IPackageFragmentRoot[] computePackageFragmentRoots(IClasspathEntry[] iClasspathEntryArr, boolean z10, boolean z11, Map map, boolean z12) throws JavaModelException {
        ObjectVector objectVector = new ObjectVector();
        computePackageFragmentRoots(iClasspathEntryArr, objectVector, new HashSet(5), (IClasspathEntry) null, z10, z11, map, z12);
        IPackageFragmentRoot[] iPackageFragmentRootArr = new IPackageFragmentRoot[objectVector.size()];
        objectVector.copyInto(iPackageFragmentRootArr);
        return iPackageFragmentRootArr;
    }

    @Deprecated
    public void computePackageFragmentRoots(IClasspathEntry[] iClasspathEntryArr, ObjectVector objectVector, HashSet hashSet, IClasspathEntry iClasspathEntry, boolean z10, boolean z11, Map map) throws JavaModelException {
        computePackageFragmentRoots(iClasspathEntryArr, objectVector, hashSet, iClasspathEntry, z10, z11, map, false);
    }

    public void computePackageFragmentRoots(IClasspathEntry[] iClasspathEntryArr, ObjectVector objectVector, HashSet hashSet, IClasspathEntry iClasspathEntry, boolean z10, boolean z11, Map map, boolean z12) throws JavaModelException {
        if (iClasspathEntry == null) {
            hashSet.add(rootID());
        }
        for (IClasspathEntry iClasspathEntry2 : iClasspathEntryArr) {
            computePackageFragmentRoots(iClasspathEntry2, objectVector, hashSet, iClasspathEntry, z10, z11, map, z12);
        }
    }

    public void resolveClasspath(JavaModelManager.PerProjectInfo perProjectInfo, boolean z10, boolean z11) throws JavaModelException {
        int i10;
        if (CP_RESOLUTION_BP_LISTENERS != null) {
            breakpoint(1, this);
        }
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        boolean isClasspathBeingResolved = javaModelManager.isClasspathBeingResolved(this);
        if (!isClasspathBeingResolved) {
            try {
                javaModelManager.setClasspathBeingResolved(this, true);
            } catch (Throwable th2) {
                if (!isClasspathBeingResolved) {
                    javaModelManager.setClasspathBeingResolved(this, false);
                }
                if (CP_RESOLUTION_BP_LISTENERS != null) {
                    breakpoint(3, this);
                }
                throw th2;
            }
        }
        IClasspathEntry[][] iClasspathEntryArr = new IClasspathEntry[2];
        synchronized (perProjectInfo) {
            try {
                IClasspathEntry[] iClasspathEntryArr2 = perProjectInfo.rawClasspath;
                iClasspathEntryArr[0] = iClasspathEntryArr2;
                iClasspathEntryArr[1] = perProjectInfo.referencedEntries;
                if (iClasspathEntryArr2 == null) {
                    iClasspathEntryArr = perProjectInfo.readAndCacheClasspath(this);
                }
                i10 = perProjectInfo.rawTimeStamp;
            } finally {
            }
        }
        ResolvedClasspath resolveClasspath = resolveClasspath(iClasspathEntryArr[0], iClasspathEntryArr[1], z10, true);
        if (CP_RESOLUTION_BP_LISTENERS != null) {
            breakpoint(2, this);
        }
        perProjectInfo.setResolvedClasspath(resolveClasspath.resolvedClasspath, resolveClasspath.referencedEntries, resolveClasspath.rawReverseMap, resolveClasspath.rootPathToResolvedEntries, z10 ? JavaModelManager.PerProjectInfo.NEED_RESOLUTION : resolveClasspath.unresolvedEntryStatus, i10, z11);
        if (!isClasspathBeingResolved) {
            javaModelManager.setClasspathBeingResolved(this, false);
        }
        if (CP_RESOLUTION_BP_LISTENERS != null) {
            breakpoint(3, this);
        }
    }
}
