package org.eclipse.jdt.internal.core;

import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.StringReader;
import java.net.URI;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ISavedState;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceDescription;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.JavaProjectElementInfo;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.dom.SourceRangeVerifier;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.indexer.Indexer;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.NdResourceFile;
import org.eclipse.jdt.internal.core.search.AbstractSearchScope;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.JavaWorkspaceScope;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.core.util.WeakHashSet;
import org.eclipse.jdt.internal.core.util.WeakHashSetOfCharArray;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.debug.DebugOptionsListener;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.prefs.BackingStoreException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class JavaModelManager implements ISaveParticipant, IContentTypeManager.IContentTypeChangeListener {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity = null;
    public static final String ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID = "annotationProcessorManager";
    private static final String ASSUMED_EXTERNAL_FILES_CACHE = "assumedExternalFilesCache";
    public static final int BATCH_INITIALIZATION_FINISHED = 3;
    public static final int BATCH_INITIALIZATION_IN_PROGRESS = 2;
    private static final String BUFFER_MANAGER_DEBUG = "org.eclipse.jdt.core/debug/buffermanager";
    private static final String BUILDER_DEBUG = "org.eclipse.jdt.core/debug/builder";
    private static final String BUILDER_STATS_DEBUG = "org.eclipse.jdt.core/debug/builder/stats";
    public static final String COMPILATION_PARTICIPANT_EXTPOINT_ID = "compilationParticipant";
    private static final String COMPILER_DEBUG = "org.eclipse.jdt.core/debug/compiler";
    private static final String COMPLETION_DEBUG = "org.eclipse.jdt.core/debug/completion";
    public static final String COMPLETION_PERF = "org.eclipse.jdt.core/perf/completion";
    public static final String CONTAINER_INITIALIZER_PERF = "org.eclipse.jdt.core/perf/containerinitializer";
    public static final String CPCONTAINER_INITIALIZER_EXTPOINT_ID = "classpathContainerInitializer";
    public static final String CPVARIABLE_INITIALIZER_EXTPOINT_ID = "classpathVariableInitializer";
    public static final String CP_CONTAINER_PREFERENCES_PREFIX = "org.eclipse.jdt.core.classpathContainer.";
    private static final String CP_RESOLVE_ADVANCED_DEBUG = "org.eclipse.jdt.core/debug/cpresolution/advanced";
    private static final String CP_RESOLVE_DEBUG = "org.eclipse.jdt.core/debug/cpresolution";
    private static final String CP_RESOLVE_FAILURE_DEBUG = "org.eclipse.jdt.core/debug/cpresolution/failure";
    public static final String CP_USERLIBRARY_PREFERENCES_PREFIX = "org.eclipse.jdt.core.userLibrary.";
    public static final String CP_VARIABLE_PREFERENCES_PREFIX = "org.eclipse.jdt.core.classpathVariable.";
    private static final String DEBUG = "org.eclipse.jdt.core/debug";
    private static ServiceRegistration<DebugOptionsListener> DEBUG_REGISTRATION = null;
    private static final String DELTA_DEBUG = "org.eclipse.jdt.core/debug/javadelta";
    private static final String DELTA_DEBUG_VERBOSE = "org.eclipse.jdt.core/debug/javadelta/verbose";
    public static final String DELTA_LISTENER_PERF = "org.eclipse.jdt.core/perf/javadeltalistener";
    private static final int DEPRECATED_OPTION = 1;
    private static final String DOM_AST_DEBUG = "org.eclipse.jdt.core/debug/dom/ast";
    private static final String DOM_AST_DEBUG_THROW = "org.eclipse.jdt.core/debug/dom/ast/throw";
    private static final String DOM_REWRITE_DEBUG = "org.eclipse.jdt.core/debug/dom/rewrite";
    private static final String EXTERNAL_FILES_CACHE = "externalFilesCache";
    private static final String FORMATTER_DEBUG = "org.eclipse.jdt.core/debug/formatter";
    public static final String FORMATTER_EXTPOINT_ID = "codeFormatter";
    private static final String HIERARCHY_DEBUG = "org.eclipse.jdt.core/debug/hierarchy";
    private static final String INDEX_DEBUG_LARGE_CHUNKS = "org.eclipse.jdt.core/debug/index/freespacetest";
    private static final String INDEX_DEBUG_PAGE_CACHE = "org.eclipse.jdt.core/debug/index/pagecache";
    private static final String INDEX_INDEXER_DEBUG = "org.eclipse.jdt.core/debug/index/indexer";
    private static final String INDEX_INDEXER_INSERTIONS = "org.eclipse.jdt.core/debug/index/insertions";
    private static final String INDEX_INDEXER_LOG_SIZE_MEGS = "org.eclipse.jdt.core/debug/index/logsizemegs";
    private static final String INDEX_INDEXER_SCHEDULING = "org.eclipse.jdt.core/debug/index/scheduling";
    private static final String INDEX_INDEXER_SELFTEST = "org.eclipse.jdt.core/debug/index/selftest";
    private static final String INDEX_INDEXER_SPACE = "org.eclipse.jdt.core/debug/index/space";
    private static final String INDEX_INDEXER_TIMING = "org.eclipse.jdt.core/debug/index/timing";
    private static final String INDEX_LOCKS_DEBUG = "org.eclipse.jdt.core/debug/index/locks";
    private static final String INDEX_MANAGER_ADVANCED_DEBUG = "org.eclipse.jdt.core/debug/indexmanager/advanced";
    private static final String INDEX_MANAGER_DEBUG = "org.eclipse.jdt.core/debug/indexmanager";
    private static final String JAVAMODELCACHE_DEBUG = "org.eclipse.jdt.core/debug/javamodel/cache";
    private static final String JAVAMODELCACHE_INSERTIONS_DEBUG = "org.eclipse.jdt.core/debug/javamodel/insertions";
    private static final String JAVAMODEL_CLASSPATH = "org.eclipse.jdt.core/debug/javamodel/classpath";
    private static final String JAVAMODEL_DEBUG = "org.eclipse.jdt.core/debug/javamodel";
    private static final String JAVAMODEL_INVALID_ARCHIVES = "org.eclipse.jdt.core/debug/javamodel/invalid_archives";
    public static final String MAX_COMPILED_UNITS_AT_ONCE = "maxCompiledUnitsAtOnce";
    public static final int NEED_BATCH_INITIALIZATION = 1;
    private static final String NON_CHAINING_JARS_CACHE = "nonChainingJarsCache";
    public static final int NO_BATCH_INITIALIZATION = 0;
    private static final String POST_ACTION_DEBUG = "org.eclipse.jdt.core/debug/postaction";
    static final int PREF_DEFAULT = 1;
    static final int PREF_INSTANCE = 0;
    public static final String RECONCILE_PERF = "org.eclipse.jdt.core/perf/reconcile";
    private static final String RESOLUTION_DEBUG = "org.eclipse.jdt.core/debug/resolution";
    private static final String RESOLVE_REFERENCED_LIBRARIES_FOR_CONTAINERS = "resolveReferencedLibrariesForContainers";
    private static final String SEARCH_DEBUG = "org.eclipse.jdt.core/debug/search";
    private static final String SELECTION_DEBUG = "org.eclipse.jdt.core/debug/selection";
    public static final String SELECTION_PERF = "org.eclipse.jdt.core/perf/selection";
    private static final String SOURCE_MAPPER_DEBUG_VERBOSE = "org.eclipse.jdt.core/debug/sourcemapper";
    public static final String TRUE = "true";
    private static final int UNKNOWN_OPTION = 0;
    private static final int VALID_OPTION = 2;
    private static final int VARIABLES_AND_CONTAINERS_FILE_VERSION = 2;
    public static final String VARIABLE_INITIALIZER_PERF = "org.eclipse.jdt.core/perf/variableinitializer";
    private static final String ZIP_ACCESS_DEBUG = "org.eclipse.jdt.core/debug/zipaccess";
    private Set<IPath> assumedExternalFiles;
    private JavaModelCache cache;
    private Set<IPath> externalFiles;
    public IndexManager indexManager;
    private ModuleSourcePathManager modulePathManager;
    private Set<IPath> nonChainingJars;
    Hashtable<String, String> optionsCache;
    IEclipsePreferences.IPreferenceChangeListener propertyListener;
    boolean resolveReferencedLibrariesForContainers;
    IEclipsePreferences.IPreferenceChangeListener resourcesPropertyListener;
    private UserLibraryManager userLibraryManager;
    public JavaWorkspaceScope workspaceScope;
    public static final String CP_ENTRY_IGNORE = "##<cp entry ignore>##";
    public static final IPath CP_ENTRY_IGNORE_PATH = new Path(CP_ENTRY_IGNORE);
    public static final IPath VARIABLE_INITIALIZATION_IN_PROGRESS = new Path("Variable Initialization In Progress");
    public static final IClasspathContainer CONTAINER_INITIALIZATION_IN_PROGRESS = new IClasspathContainer() {
        @Override
        public IClasspathEntry[] getClasspathEntries() {
            return null;
        }

        @Override
        public String getDescription() {
            return "Container Initialization In Progress";
        }

        @Override
        public int getKind() {
            return 0;
        }

        @Override
        public IPath getPath() {
            return null;
        }

        public String toString() {
            return getDescription();
        }
    };
    public static boolean PERF_VARIABLE_INITIALIZER = false;
    public static boolean PERF_CONTAINER_INITIALIZER = false;
    public static final ICompilationUnit[] NO_WORKING_COPY = new ICompilationUnit[0];
    static final Object[][] NO_PARTICIPANTS = new Object[0];
    private static JavaModelManager MANAGER = new JavaModelManager();
    public static boolean VERBOSE = false;
    public static boolean DEBUG_CLASSPATH = false;
    public static boolean DEBUG_INVALID_ARCHIVES = false;
    public static boolean CP_RESOLVE_VERBOSE = false;
    public static boolean CP_RESOLVE_VERBOSE_ADVANCED = false;
    public static boolean CP_RESOLVE_VERBOSE_FAILURE = false;
    public static boolean ZIP_ACCESS_VERBOSE = false;
    public static boolean JRT_ACCESS_VERBOSE = false;
    private static long INVALID_ARCHIVE_TTL_MILLISECONDS = 120000;
    public static boolean throwIoExceptionsInGetZipFile = false;
    final JavaModel javaModel = new JavaModel();
    public HashMap<String, IPath> variables = new HashMap<>(5);
    public HashSet<String> variablesWithInitializer = new HashSet<>(5);
    public HashMap<String, String> deprecatedVariables = new HashMap<>(5);
    public HashSet<String> readOnlyVariables = new HashSet<>(5);
    public HashMap<String, IPath> previousSessionVariables = new HashMap<>(5);
    private ThreadLocal<Set<String>> variableInitializationInProgress = new ThreadLocal<>();
    public HashMap<IJavaProject, Map<IPath, IClasspathContainer>> containers = new HashMap<>(5);
    public HashMap<IJavaProject, Map<IPath, IClasspathContainer>> previousSessionContainers = new HashMap<>(5);
    private ThreadLocal<Map<IJavaProject, Set<IPath>>> containerInitializationInProgress = new ThreadLocal<>();
    ThreadLocal<Map<IJavaProject, Map<IPath, IClasspathContainer>>> containersBeingInitialized = new ThreadLocal<>();
    public int batchContainerInitializations = 0;
    public Object batchContainerInitializationsLock = new Object();
    public BatchInitializationMonitor batchContainerInitializationsProgress = new BatchInitializationMonitor();
    public Hashtable<String, ClasspathContainerInitializer> containerInitializersCache = new Hashtable<>(5);
    private ThreadLocal<Set<IJavaProject>> classpathsBeingResolved = new ThreadLocal<>();
    private WeakHashSet stringSymbols = new WeakHashSet(5);
    private WeakHashSetOfCharArray charArraySymbols = new WeakHashSetOfCharArray(5);
    private IConfigurationElement annotationProcessorManagerFactory = null;
    public Map<IPath, String> rootPathToAttachments = new Hashtable();
    HashSet<String> optionNames = new HashSet<>(20);
    Map<String, String[]> deprecatedOptions = new HashMap();
    public final IEclipsePreferences[] preferencesLookup = new IEclipsePreferences[2];
    public final CompilationParticipants compilationParticipants = new CompilationParticipants();
    public ThreadLocal<Boolean> abortOnMissingSource = new ThreadLocal<>();
    private ExternalFoldersManager externalFoldersManager = ExternalFoldersManager.getExternalFoldersManager();
    private ThreadLocal<HashMap<IJavaElement, Object>> temporaryCache = new ThreadLocal<>();
    protected HashSet<Openable> elementsOutOfSynchWithBuffers = new HashSet<>(11);
    public DeltaProcessingState deltaState = new DeltaProcessingState();
    protected Map<IProject, PerProjectInfo> perProjectInfos = new HashMap(5);
    protected HashMap<WorkingCopyOwner, Map<CompilationUnit, PerWorkingCopyInfo>> perWorkingCopyInfos = new HashMap<>(5);
    protected WeakHashMap<AbstractSearchScope, ?> searchScopes = new WeakHashMap<>();
    private ThreadLocal<ZipCache> zipFiles = new ThreadLocal<>();
    private final Map<IPath, InvalidArchiveInfo> invalidArchives = new HashMap();
    private final Object invalidArchivesMutex = new Object();
    EclipsePreferencesListener instancePreferencesListener = new EclipsePreferencesListener();
    IEclipsePreferences.INodeChangeListener instanceNodeListener = new IEclipsePreferences.INodeChangeListener() {
        public void added(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
        }

        public void removed(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
            IEclipsePreferences child = nodeChangeEvent.getChild();
            IEclipsePreferences[] iEclipsePreferencesArr = JavaModelManager.this.preferencesLookup;
            if (child == iEclipsePreferencesArr[0]) {
                iEclipsePreferencesArr[0] = InstanceScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
                JavaModelManager.this.preferencesLookup[0].addPreferenceChangeListener(new EclipsePreferencesListener());
            }
        }
    };
    IEclipsePreferences.INodeChangeListener defaultNodeListener = new IEclipsePreferences.INodeChangeListener() {
        public void added(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
        }

        public void removed(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
            IEclipsePreferences child = nodeChangeEvent.getChild();
            IEclipsePreferences[] iEclipsePreferencesArr = JavaModelManager.this.preferencesLookup;
            if (child == iEclipsePreferencesArr[1]) {
                iEclipsePreferencesArr[1] = DefaultScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
            }
        }
    };

    public enum ArchiveValidity {
        BAD_FORMAT,
        UNABLE_TO_READ,
        FILE_NOT_FOUND,
        VALID;

        public static ArchiveValidity[] valuesCustom() {
            ArchiveValidity[] valuesCustom = values();
            int length = valuesCustom.length;
            ArchiveValidity[] archiveValidityArr = new ArchiveValidity[length];
            System.arraycopy(valuesCustom, 0, archiveValidityArr, 0, length);
            return archiveValidityArr;
        }

        public boolean isValid() {
            return this == VALID;
        }
    }

    public static class CompilationParticipants {
        static final int MAX_SOURCE_LEVEL = JavaCore.getAllVersions().size() - 1;
        private HashSet<String> managedMarkerTypes;
        private Object[][] registeredParticipants = null;

        private synchronized Object[][] getRegisteredParticipants() {
            Object[][] objArr = this.registeredParticipants;
            if (objArr != null) {
                return objArr;
            }
            this.managedMarkerTypes = new HashSet<>();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JavaCore.PLUGIN_ID, JavaModelManager.COMPILATION_PARTICIPANT_EXTPOINT_ID);
            if (extensionPoint == null) {
                Object[][] objArr2 = JavaModelManager.NO_PARTICIPANTS;
                this.registeredParticipants = objArr2;
                return objArr2;
            }
            ArrayList<IConfigurationElement> arrayList = new ArrayList<>();
            ArrayList<IConfigurationElement> arrayList2 = new ArrayList<>();
            ArrayList<IConfigurationElement> arrayList3 = new ArrayList<>();
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    if (JavaModelManager.COMPILATION_PARTICIPANT_EXTPOINT_ID.equals(iConfigurationElement.getName())) {
                        if ("true".equals(iConfigurationElement.getAttribute("modifiesEnvironment"))) {
                            arrayList.add(iConfigurationElement);
                        } else if ("true".equals(iConfigurationElement.getAttribute("createsProblems"))) {
                            arrayList2.add(iConfigurationElement);
                        } else {
                            arrayList3.add(iConfigurationElement);
                        }
                        for (IConfigurationElement iConfigurationElement2 : iConfigurationElement.getChildren("managedMarker")) {
                            String attribute = iConfigurationElement2.getAttribute("markerType");
                            if (attribute != null) {
                                this.managedMarkerTypes.add(attribute);
                            }
                        }
                    }
                }
            }
            int size = arrayList.size() + arrayList2.size() + arrayList3.size();
            if (size == 0) {
                Object[][] objArr3 = JavaModelManager.NO_PARTICIPANTS;
                this.registeredParticipants = objArr3;
                return objArr3;
            }
            IConfigurationElement[] iConfigurationElementArr = new IConfigurationElement[size];
            sortParticipants(arrayList3, iConfigurationElementArr, sortParticipants(arrayList2, iConfigurationElementArr, sortParticipants(arrayList, iConfigurationElementArr, 0)));
            Object[][] objArr4 = new Object[MAX_SOURCE_LEVEL];
            for (int i10 = 0; i10 < MAX_SOURCE_LEVEL; i10++) {
                objArr4[i10] = new Object[size];
            }
            for (int i11 = 0; i11 < size; i11++) {
                for (int indexForSourceLevel = indexForSourceLevel(iConfigurationElementArr[i11].getAttribute("requiredSourceLevel")); indexForSourceLevel < MAX_SOURCE_LEVEL; indexForSourceLevel++) {
                    objArr4[indexForSourceLevel][i11] = iConfigurationElementArr[i11];
                }
            }
            this.registeredParticipants = objArr4;
            return objArr4;
        }

        private int indexForSourceLevel(String str) {
            int versionToJdkLevel;
            if (str != null && (versionToJdkLevel = (int) (CompilerOptions.versionToJdkLevel(str) >>> 16)) > 46) {
                return versionToJdkLevel - 45;
            }
            return 0;
        }

        private int sortParticipants(ArrayList<IConfigurationElement> arrayList, IConfigurationElement[] iConfigurationElementArr, int i10) {
            int size = arrayList.size();
            if (size == 0) {
                return i10;
            }
            Object[] array = arrayList.toArray();
            Util.sort(array, new Util.Comparer() {
                @Override
                public int compare(Object obj, Object obj2) {
                    if (obj == obj2) {
                        return 0;
                    }
                    String attribute = ((IConfigurationElement) obj).getAttribute("id");
                    if (attribute == null) {
                        return -1;
                    }
                    for (IConfigurationElement iConfigurationElement : ((IConfigurationElement) obj2).getChildren("requires")) {
                        if (attribute.equals(iConfigurationElement.getAttribute("id"))) {
                            return 1;
                        }
                    }
                    return -1;
                }
            });
            for (int i11 = 0; i11 < size; i11++) {
                iConfigurationElementArr[i10 + i11] = (IConfigurationElement) array[i11];
            }
            return i10 + size;
        }

        public CompilationParticipant[] getCompilationParticipants(IJavaProject iJavaProject) {
            int i10;
            final Object[][] registeredParticipants = getRegisteredParticipants();
            if (registeredParticipants == JavaModelManager.NO_PARTICIPANTS) {
                return null;
            }
            final int indexForSourceLevel = indexForSourceLevel(iJavaProject.getOption("org.eclipse.jdt.core.compiler.source", true));
            Object[] objArr = registeredParticipants[indexForSourceLevel];
            int length = objArr.length;
            CompilationParticipant[] compilationParticipantArr = new CompilationParticipant[length];
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                Object obj = objArr[i12];
                if (obj instanceof IConfigurationElement) {
                    final IConfigurationElement iConfigurationElement = (IConfigurationElement) obj;
                    i10 = i11;
                    final int i13 = i12;
                    SafeRunner.run(new ISafeRunnable() {
                        public void handleException(Throwable th2) {
                            Util.log(th2, "Exception occurred while creating compilation participant");
                        }

                        public void run() throws Exception {
                            Object createExecutableExtension = iConfigurationElement.createExecutableExtension("class");
                            for (int i14 = indexForSourceLevel; i14 < CompilationParticipants.MAX_SOURCE_LEVEL; i14++) {
                                registeredParticipants[i14][i13] = createExecutableExtension;
                            }
                        }
                    });
                } else {
                    i10 = i11;
                }
                Object obj2 = objArr[i12];
                if (obj2 instanceof CompilationParticipant) {
                    CompilationParticipant compilationParticipant = (CompilationParticipant) obj2;
                    if (compilationParticipant.isActive(iJavaProject)) {
                        i11 = i10 + 1;
                        compilationParticipantArr[i10] = compilationParticipant;
                    }
                }
                i11 = i10;
            }
            if (i11 == 0) {
                return null;
            }
            if (i11 >= length) {
                return compilationParticipantArr;
            }
            CompilationParticipant[] compilationParticipantArr2 = new CompilationParticipant[i11];
            System.arraycopy(compilationParticipantArr, 0, compilationParticipantArr2, 0, i11);
            return compilationParticipantArr2;
        }

        public HashSet<String> managedMarkerTypes() {
            if (this.managedMarkerTypes == null) {
                getRegisteredParticipants();
            }
            return this.managedMarkerTypes;
        }
    }

    public static class EclipsePreferencesListener implements IEclipsePreferences.IPreferenceChangeListener {
        public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent preferenceChangeEvent) {
            Path path;
            String key = preferenceChangeEvent.getKey();
            if (key.startsWith(JavaCore.PLUGIN_ID)) {
                if (key.startsWith(JavaModelManager.CP_VARIABLE_PREFERENCES_PREFIX)) {
                    String substring = key.substring(39);
                    JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
                    if (javaModelManager.variablesWithInitializer.contains(substring)) {
                        String str = (String) preferenceChangeEvent.getOldValue();
                        if (str == null) {
                            javaModelManager.variablesWithInitializer.remove(substring);
                        } else {
                            javaModelManager.getInstancePreferences().put(substring, str);
                        }
                    } else {
                        String str2 = (String) preferenceChangeEvent.getNewValue();
                        try {
                            if (str2 != null) {
                                String trim = str2.trim();
                                if (!trim.equals(JavaModelManager.CP_ENTRY_IGNORE)) {
                                    path = new Path(trim);
                                    new SetVariablesOperation(new String[]{substring}, new IPath[]{path}, false).runOperation(null);
                                }
                            }
                            new SetVariablesOperation(new String[]{substring}, new IPath[]{path}, false).runOperation(null);
                        } catch (JavaModelException e10) {
                            Util.log((Throwable) e10, "Could not set classpath variable " + substring + " to " + ((Object) path));
                        }
                        path = null;
                    }
                } else if (key.startsWith(JavaModelManager.CP_CONTAINER_PREFERENCES_PREFIX)) {
                    JavaModelManager.recreatePersistedContainer(key, (String) preferenceChangeEvent.getNewValue(), false);
                } else if (key.equals(JavaCore.CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER) || key.equals(JavaCore.CORE_JAVA_BUILD_RESOURCE_COPY_FILTER) || key.equals(JavaCore.CORE_JAVA_BUILD_DUPLICATE_RESOURCE) || key.equals(JavaCore.CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER) || key.equals(JavaCore.CORE_JAVA_BUILD_INVALID_CLASSPATH) || key.equals(JavaCore.CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS) || key.equals(JavaCore.CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS) || key.equals(JavaCore.CORE_INCOMPLETE_CLASSPATH) || key.equals(JavaCore.CORE_CIRCULAR_CLASSPATH) || key.equals(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL) || key.equals(JavaCore.CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY) || key.equals("org.eclipse.jdt.core.compiler.codegen.targetPlatform") || key.equals(JavaCore.CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE)) {
                    JavaModelManager javaModelManager2 = JavaModelManager.getJavaModelManager();
                    try {
                        IJavaProject[] javaProjects = javaModelManager2.getJavaModel().getJavaProjects();
                        IProject[] iProjectArr = new IProject[javaProjects.length];
                        int length = javaProjects.length;
                        for (int i10 = 0; i10 < length; i10++) {
                            JavaProject javaProject = (JavaProject) javaProjects[i10];
                            iProjectArr[i10] = javaProject.getProject();
                            javaModelManager2.deltaState.addClasspathValidation(javaProject);
                        }
                        javaModelManager2.touchProjects(iProjectArr, null);
                    } catch (JavaModelException unused) {
                    }
                } else if (key.startsWith("org.eclipse.jdt.core.userLibrary.")) {
                    JavaModelManager.getUserLibraryManager().updateUserLibrary(key.substring(33), (String) preferenceChangeEvent.getNewValue());
                }
            }
            try {
                for (IJavaProject iJavaProject : JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects()) {
                    ((JavaProject) iJavaProject).resetCaches();
                }
            } catch (JavaModelException unused2) {
            }
        }
    }

    public static class InvalidArchiveInfo {
        final long evictionTimestamp;
        final ArchiveValidity reason;

        public InvalidArchiveInfo(long j10, ArchiveValidity archiveValidity) {
            this.evictionTimestamp = j10;
            this.reason = archiveValidity;
        }
    }

    public static class PerProjectInfo {
        private static final int JAVADOC_CACHE_INITIAL_SIZE = 10;
        static final IJavaModelStatus NEED_RESOLUTION = new JavaModelStatus();
        volatile Map<IFile, Map<String, Map<String, IType>>> indexingSecondaryCache;
        public Map<IPath, ObjectVector> jrtRoots;
        public Hashtable<String, String> options;
        public IPath outputLocation;
        public IEclipsePreferences preferences;
        public IProject project;
        public IClasspathEntry[] rawClasspath;
        public IJavaModelStatus rawClasspathStatus;
        public IClasspathEntry[] referencedEntries;
        public IClasspathEntry[] resolvedClasspath;
        public Map<IPath, IClasspathEntry> rootPathToRawEntries;
        public Map<IPath, IClasspathEntry> rootPathToResolvedEntries;
        public Hashtable<String, Map<String, IType>> secondaryTypes;
        public IJavaModelStatus unresolvedEntryStatus;
        public int rawTimeStamp = 0;
        public boolean writtingRawClasspath = false;
        public boolean triedRead = false;
        public Object savedState = null;
        public LRUCache<IJavaElement, Object> javadocCache = new LRUCache<>(10);

        public PerProjectInfo(IProject iProject) {
            this.project = iProject;
        }

        private ClasspathChange setClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, IJavaModelStatus iJavaModelStatus, IClasspathEntry[] iClasspathEntryArr3, Map<IPath, IClasspathEntry> map, Map<IPath, IClasspathEntry> map2, IJavaModelStatus iJavaModelStatus2, boolean z10) {
            if (JavaModelManager.DEBUG_CLASSPATH) {
                PrintStream printStream = System.out;
                printStream.println("Setting resolved classpath for " + ((Object) this.project.getFullPath()));
                if (iClasspathEntryArr3 == null) {
                    printStream.println("New classpath = null");
                } else {
                    for (IClasspathEntry iClasspathEntry : iClasspathEntryArr3) {
                        System.out.println(C13155a.f85806a + ((Object) iClasspathEntry));
                    }
                }
            }
            ClasspathChange addClasspathChange = z10 ? addClasspathChange() : null;
            if (iClasspathEntryArr2 != null) {
                this.referencedEntries = iClasspathEntryArr2;
            }
            if (this.referencedEntries == null) {
                this.referencedEntries = ClasspathEntry.NO_ENTRIES;
            }
            this.rawClasspath = iClasspathEntryArr;
            this.outputLocation = iPath;
            this.rawClasspathStatus = iJavaModelStatus;
            this.resolvedClasspath = iClasspathEntryArr3;
            this.rootPathToRawEntries = map;
            this.rootPathToResolvedEntries = map2;
            this.unresolvedEntryStatus = iJavaModelStatus2;
            this.javadocCache = new LRUCache<>(10);
            return addClasspathChange;
        }

        public ClasspathChange addClasspathChange() {
            return JavaModelManager.getJavaModelManager().deltaState.addClasspathChange(this.project, this.rawClasspath, this.outputLocation, this.resolvedClasspath);
        }

        public void forgetExternalTimestampsAndIndexes() {
            IClasspathEntry[] iClasspathEntryArr = this.resolvedClasspath;
            if (iClasspathEntryArr == null) {
                return;
            }
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            IndexManager indexManager = javaModelManager.indexManager;
            Hashtable<IPath, Long> externalLibTimeStamps = javaModelManager.deltaState.getExternalLibTimeStamps();
            Map<IPath, List<DeltaProcessor.RootInfo>> map = JavaModelManager.getDeltaState().otherRoots;
            for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
                if (iClasspathEntry.getEntryKind() == 1) {
                    IPath path = iClasspathEntry.getPath();
                    if (map.get(path) == null) {
                        externalLibTimeStamps.remove(path);
                        indexManager.removeIndex(path);
                    }
                }
            }
        }

        public synchronized IClasspathEntry[] getResolvedClasspath() {
            if (this.unresolvedEntryStatus == NEED_RESOLUTION) {
                return null;
            }
            return this.resolvedClasspath;
        }

        public synchronized IClasspathEntry[][] readAndCacheClasspath(JavaProject javaProject) {
            IClasspathEntry[][] iClasspathEntryArr;
            IJavaModelStatus iJavaModelStatus;
            IPath iPath = null;
            try {
                iClasspathEntryArr = javaProject.readFileEntriesWithException(null);
                iJavaModelStatus = JavaModelStatus.VERIFIED_OK;
            } catch (CoreException unused) {
                iClasspathEntryArr = new IClasspathEntry[][]{JavaProject.INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
                iJavaModelStatus = new JavaModelStatus(1000, Messages.bind(Messages.classpath_cannotReadClasspathFile, javaProject.getElementName()));
            } catch (IOException e10) {
                IClasspathEntry[][] iClasspathEntryArr2 = {JavaProject.INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
                iJavaModelStatus = Messages.file_badFormat.equals(e10.getMessage()) ? new JavaModelStatus(1000, Messages.bind(Messages.classpath_xmlFormatError, javaProject.getElementName(), Messages.file_badFormat)) : new JavaModelStatus(1000, Messages.bind(Messages.classpath_cannotReadClasspathFile, javaProject.getElementName()));
                iClasspathEntryArr = iClasspathEntryArr2;
            } catch (ClasspathEntry.AssertionFailedException e11) {
                IClasspathEntry[][] iClasspathEntryArr3 = {JavaProject.INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
                JavaModelStatus javaModelStatus = new JavaModelStatus(1000, Messages.bind(Messages.classpath_illegalEntryInClasspathFile, (Object[]) new String[]{javaProject.getElementName(), e11.getMessage()}));
                iClasspathEntryArr = iClasspathEntryArr3;
                iJavaModelStatus = javaModelStatus;
            }
            IClasspathEntry[] iClasspathEntryArr4 = iClasspathEntryArr[0];
            int length = iClasspathEntryArr4.length;
            if (length > 0) {
                int i10 = length - 1;
                IClasspathEntry iClasspathEntry = iClasspathEntryArr4[i10];
                if (iClasspathEntry.getContentKind() == 10) {
                    iPath = iClasspathEntry.getPath();
                    IClasspathEntry[] iClasspathEntryArr5 = new IClasspathEntry[i10];
                    System.arraycopy(iClasspathEntryArr[0], 0, iClasspathEntryArr5, 0, i10);
                    iClasspathEntryArr[0] = iClasspathEntryArr5;
                }
            }
            setRawClasspath(iClasspathEntryArr[0], iClasspathEntryArr[1], iPath, iJavaModelStatus);
            return iClasspathEntryArr;
        }

        public void rememberExternalLibTimestamps() {
            IClasspathEntry[] iClasspathEntryArr = this.resolvedClasspath;
            if (iClasspathEntryArr == null) {
                return;
            }
            Hashtable<IPath, Long> externalLibTimeStamps = JavaModelManager.getJavaModelManager().deltaState.getExternalLibTimeStamps();
            for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
                if (iClasspathEntry.getEntryKind() == 1) {
                    IPath path = iClasspathEntry.getPath();
                    if (externalLibTimeStamps.get(path) == null) {
                        Object externalTarget = JavaModel.getExternalTarget(path, true);
                        if (externalTarget instanceof File) {
                            externalLibTimeStamps.put(path, Long.valueOf(DeltaProcessor.getTimeStamp((File) externalTarget)));
                        }
                    }
                }
            }
        }

        public synchronized ClasspathChange resetResolvedClasspath() {
            JavaModelManager.getJavaModelManager().resetClasspathListCache();
            return setResolvedClasspath(null, null, null, null, this.rawTimeStamp, true);
        }

        public synchronized void setJrtPackageRoots(IPath iPath, ObjectVector objectVector) {
            try {
                if (this.jrtRoots == null) {
                    this.jrtRoots = new HashMap();
                }
                this.jrtRoots.put(iPath, objectVector);
            } catch (Throwable th2) {
                throw th2;
            }
        }

        public ClasspathChange setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IPath iPath, IJavaModelStatus iJavaModelStatus) {
            return setRawClasspath(iClasspathEntryArr, null, iPath, iJavaModelStatus);
        }

        public ClasspathChange setResolvedClasspath(IClasspathEntry[] iClasspathEntryArr, Map<IPath, IClasspathEntry> map, Map<IPath, IClasspathEntry> map2, IJavaModelStatus iJavaModelStatus, int i10, boolean z10) {
            return setResolvedClasspath(iClasspathEntryArr, null, map, map2, iJavaModelStatus, i10, z10);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Info for ");
            stringBuffer.append((Object) this.project.getFullPath());
            stringBuffer.append("\nRaw classpath:\n");
            IClasspathEntry[] iClasspathEntryArr = this.rawClasspath;
            if (iClasspathEntryArr == null) {
                stringBuffer.append("  <null>\n");
            } else {
                int length = iClasspathEntryArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    stringBuffer.append(GlideException.a.f59088e);
                    stringBuffer.append((Object) this.rawClasspath[i10]);
                    stringBuffer.append('\n');
                }
            }
            stringBuffer.append("Resolved classpath:\n");
            IClasspathEntry[] iClasspathEntryArr2 = this.resolvedClasspath;
            if (iClasspathEntryArr2 == null) {
                stringBuffer.append("  <null>\n");
            } else {
                for (IClasspathEntry iClasspathEntry : iClasspathEntryArr2) {
                    stringBuffer.append(GlideException.a.f59088e);
                    stringBuffer.append((Object) iClasspathEntry);
                    stringBuffer.append('\n');
                }
            }
            stringBuffer.append("Resolved classpath status: ");
            IJavaModelStatus iJavaModelStatus = this.unresolvedEntryStatus;
            if (iJavaModelStatus == NEED_RESOLUTION) {
                stringBuffer.append("NEED RESOLUTION");
            } else {
                stringBuffer.append(iJavaModelStatus == null ? "<null>\n" : iJavaModelStatus.toString());
            }
            stringBuffer.append("Output location:\n  ");
            IPath iPath = this.outputLocation;
            if (iPath == null) {
                stringBuffer.append("<null>");
            } else {
                stringBuffer.append((Object) iPath);
            }
            return stringBuffer.toString();
        }

        public boolean writeAndCacheClasspath(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath) throws JavaModelException {
            try {
                this.writtingRawClasspath = true;
                if (iClasspathEntryArr2 == null) {
                    iClasspathEntryArr2 = this.referencedEntries;
                }
                if (!javaProject.writeFileEntries(iClasspathEntryArr, iClasspathEntryArr2, iPath)) {
                    this.writtingRawClasspath = false;
                    return false;
                }
                setRawClasspath(iClasspathEntryArr, iClasspathEntryArr2, iPath, JavaModelStatus.VERIFIED_OK);
                this.writtingRawClasspath = false;
                return true;
            } catch (Throwable th2) {
                this.writtingRawClasspath = false;
                throw th2;
            }
        }

        public synchronized ClasspathChange setRawClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, IJavaModelStatus iJavaModelStatus) {
            this.rawTimeStamp++;
            return setClasspath(iClasspathEntryArr, iClasspathEntryArr2, iPath, iJavaModelStatus, null, null, null, null, true);
        }

        public synchronized ClasspathChange setResolvedClasspath(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, Map<IPath, IClasspathEntry> map, Map<IPath, IClasspathEntry> map2, IJavaModelStatus iJavaModelStatus, int i10, boolean z10) {
            if (this.rawTimeStamp != i10) {
                return null;
            }
            return setClasspath(this.rawClasspath, iClasspathEntryArr2, this.outputLocation, this.rawClasspathStatus, iClasspathEntryArr, map, map2, iJavaModelStatus, z10);
        }

        public boolean writeAndCacheClasspath(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr, IPath iPath) throws JavaModelException {
            return writeAndCacheClasspath(javaProject, iClasspathEntryArr, null, iPath);
        }
    }

    public static class PerWorkingCopyInfo implements IProblemRequestor {
        IProblemRequestor problemRequestor;
        int useCount = 0;
        CompilationUnit workingCopy;

        public PerWorkingCopyInfo(CompilationUnit compilationUnit, IProblemRequestor iProblemRequestor) {
            this.workingCopy = compilationUnit;
            this.problemRequestor = iProblemRequestor;
        }

        @Override
        public void acceptProblem(IProblem iProblem) {
            IProblemRequestor problemRequestor = getProblemRequestor();
            if (problemRequestor == null) {
                return;
            }
            problemRequestor.acceptProblem(iProblem);
        }

        @Override
        public void beginReporting() {
            IProblemRequestor problemRequestor = getProblemRequestor();
            if (problemRequestor == null) {
                return;
            }
            problemRequestor.beginReporting();
        }

        @Override
        public void endReporting() {
            IProblemRequestor problemRequestor = getProblemRequestor();
            if (problemRequestor == null) {
                return;
            }
            problemRequestor.endReporting();
        }

        public IProblemRequestor getProblemRequestor() {
            CompilationUnit compilationUnit;
            WorkingCopyOwner workingCopyOwner;
            IProblemRequestor iProblemRequestor = this.problemRequestor;
            return (iProblemRequestor != null || (workingCopyOwner = (compilationUnit = this.workingCopy).owner) == null) ? iProblemRequestor : workingCopyOwner.getProblemRequestor(compilationUnit);
        }

        public ICompilationUnit getWorkingCopy() {
            return this.workingCopy;
        }

        @Override
        public boolean isActive() {
            IProblemRequestor problemRequestor = getProblemRequestor();
            return problemRequestor != null && problemRequestor.isActive();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Info for ");
            stringBuffer.append(this.workingCopy.toStringWithAncestors());
            stringBuffer.append("\nUse count = ");
            stringBuffer.append(this.useCount);
            stringBuffer.append("\nProblem requestor:\n  ");
            stringBuffer.append((Object) this.problemRequestor);
            if (this.problemRequestor == null) {
                IProblemRequestor problemRequestor = getProblemRequestor();
                stringBuffer.append("\nOwner problem requestor:\n  ");
                stringBuffer.append((Object) problemRequestor);
            }
            return stringBuffer.toString();
        }
    }

    public static final class PersistedClasspathContainer implements IClasspathContainer {
        private final IPath containerPath;
        private final IClasspathEntry[] entries;
        private final IJavaProject project;

        public PersistedClasspathContainer(IJavaProject iJavaProject, IPath iPath, IClasspathEntry[] iClasspathEntryArr) {
            this.containerPath = iPath;
            this.entries = iClasspathEntryArr;
            this.project = iJavaProject;
        }

        @Override
        public IClasspathEntry[] getClasspathEntries() {
            return this.entries;
        }

        @Override
        public String getDescription() {
            return "Persisted container [" + ((Object) this.containerPath) + " for project [" + this.project.getElementName() + "]]";
        }

        @Override
        public int getKind() {
            return 0;
        }

        @Override
        public IPath getPath() {
            return this.containerPath;
        }

        public String toString() {
            return getDescription();
        }
    }

    public final class VariablesAndContainersLoadHelper {
        private static final int ARRAY_INCREMENT = 200;
        private IClasspathEntry[] allClasspathEntries = null;
        private int allClasspathEntryCount = 0;
        private final Map<String, IPath> allPaths = new HashMap();
        private String[] allStrings = null;
        private int allStringsCount = 0;

        private final DataInputStream f102518in;

        public VariablesAndContainersLoadHelper(DataInputStream dataInputStream) {
            this.f102518in = dataInputStream;
        }

        private IAccessRule loadAccessRule() throws IOException {
            return JavaModelManager.this.getAccessRuleForProblemId(loadPath().toString().toCharArray(), loadInt());
        }

        private IAccessRule[] loadAccessRules() throws IOException {
            int loadInt = loadInt();
            if (loadInt == 0) {
                return ClasspathEntry.NO_ACCESS_RULES;
            }
            IAccessRule[] iAccessRuleArr = new IAccessRule[loadInt];
            for (int i10 = 0; i10 < loadInt; i10++) {
                iAccessRuleArr[i10] = loadAccessRule();
            }
            return iAccessRuleArr;
        }

        private IClasspathAttribute loadAttribute() throws IOException {
            return new ClasspathAttribute(loadString(), loadString());
        }

        private IClasspathAttribute[] loadAttributes() throws IOException {
            int loadInt = loadInt();
            if (loadInt == 0) {
                return ClasspathEntry.NO_EXTRA_ATTRIBUTES;
            }
            IClasspathAttribute[] iClasspathAttributeArr = new IClasspathAttribute[loadInt];
            for (int i10 = 0; i10 < loadInt; i10++) {
                iClasspathAttributeArr[i10] = loadAttribute();
            }
            return iClasspathAttributeArr;
        }

        private boolean loadBoolean() throws IOException {
            return this.f102518in.readBoolean();
        }

        private IClasspathEntry[] loadClasspathEntries() throws IOException {
            int loadInt = loadInt();
            IClasspathEntry[] iClasspathEntryArr = new IClasspathEntry[loadInt];
            for (int i10 = 0; i10 < loadInt; i10++) {
                iClasspathEntryArr[i10] = loadClasspathEntry();
            }
            return iClasspathEntryArr;
        }

        private IClasspathEntry loadClasspathEntry() throws IOException {
            int i10;
            int loadInt = loadInt();
            if (loadInt < 0 || loadInt > (i10 = this.allClasspathEntryCount)) {
                throw new IOException("Unexpected classpathentry id");
            }
            if (loadInt < i10) {
                return this.allClasspathEntries[loadInt];
            }
            ClasspathEntry classpathEntry = new ClasspathEntry(loadInt(), loadInt(), loadPath(), loadPaths(), loadPaths(), loadPath(), loadPath(), loadPath(), loadBoolean(), loadAccessRules(), loadBoolean(), loadAttributes());
            IClasspathEntry[] iClasspathEntryArr = this.allClasspathEntries;
            if (iClasspathEntryArr == null || loadInt == iClasspathEntryArr.length) {
                IClasspathEntry[] iClasspathEntryArr2 = new IClasspathEntry[loadInt + 200];
                if (loadInt != 0) {
                    System.arraycopy(iClasspathEntryArr, 0, iClasspathEntryArr2, 0, loadInt);
                }
                this.allClasspathEntries = iClasspathEntryArr2;
                iClasspathEntryArr = iClasspathEntryArr2;
            }
            iClasspathEntryArr[loadInt] = classpathEntry;
            this.allClasspathEntryCount = loadInt + 1;
            return classpathEntry;
        }

        private void loadContainers(IJavaProject iJavaProject) throws IOException {
            boolean isAccessible = iJavaProject.getProject().isAccessible();
            int loadInt = loadInt();
            for (int i10 = 0; i10 < loadInt; i10++) {
                IPath loadPath = loadPath();
                IClasspathEntry[] loadClasspathEntries = loadClasspathEntries();
                if (isAccessible) {
                    PersistedClasspathContainer persistedClasspathContainer = new PersistedClasspathContainer(iJavaProject, loadPath, loadClasspathEntries);
                    JavaModelManager.this.containerPut(iJavaProject, loadPath, persistedClasspathContainer);
                    Map<IPath, IClasspathContainer> map = JavaModelManager.this.previousSessionContainers.get(iJavaProject);
                    if (map == null) {
                        map = new HashMap<>();
                        JavaModelManager.this.previousSessionContainers.put(iJavaProject, map);
                    }
                    map.put(loadPath, persistedClasspathContainer);
                }
            }
        }

        private int loadInt() throws IOException {
            return this.f102518in.readInt();
        }

        private IPath loadPath() throws IOException {
            if (loadBoolean()) {
                return null;
            }
            String loadString = loadString();
            IPath iPath = this.allPaths.get(loadString);
            if (iPath != null) {
                return iPath;
            }
            IPath fromPortableString = Path.fromPortableString(loadString);
            this.allPaths.put(loadString, fromPortableString);
            return fromPortableString;
        }

        private IPath[] loadPaths() throws IOException {
            int loadInt = loadInt();
            IPath[] iPathArr = new IPath[loadInt];
            for (int i10 = 0; i10 < loadInt; i10++) {
                iPathArr[i10] = loadPath();
            }
            return iPathArr;
        }

        private void loadProjects(IJavaModel iJavaModel) throws IOException {
            int loadInt = loadInt();
            for (int i10 = 0; i10 < loadInt; i10++) {
                loadContainers(iJavaModel.getJavaProject(loadString()));
            }
        }

        private String loadString() throws IOException {
            int i10;
            int loadInt = loadInt();
            if (loadInt < 0 || loadInt > (i10 = this.allStringsCount)) {
                throw new IOException("Unexpected string id");
            }
            if (loadInt < i10) {
                return this.allStrings[loadInt];
            }
            String readUTF = this.f102518in.readUTF();
            String[] strArr = this.allStrings;
            if (strArr == null || loadInt == strArr.length) {
                String[] strArr2 = new String[loadInt + 200];
                if (loadInt != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, loadInt);
                }
                this.allStrings = strArr2;
                strArr = strArr2;
            }
            strArr[loadInt] = readUTF;
            this.allStringsCount = loadInt + 1;
            return readUTF;
        }

        private void loadVariables() throws IOException {
            int loadInt = loadInt();
            HashMap hashMap = new HashMap(loadInt);
            for (int i10 = 0; i10 < loadInt; i10++) {
                String loadString = loadString();
                IPath loadPath = loadPath();
                if (loadPath != null) {
                    hashMap.put(loadString, loadPath);
                }
            }
            JavaModelManager.this.previousSessionVariables.putAll(hashMap);
            JavaModelManager.this.variables.putAll(hashMap);
        }

        public void load() throws IOException {
            loadProjects(JavaModelManager.this.getJavaModel());
            loadVariables();
        }
    }

    public final class VariablesAndContainersSaveHelper {
        private final DataOutputStream out;
        private final HashtableOfObjectToInt classpathEntryIds = new HashtableOfObjectToInt();
        private final HashtableOfObjectToInt stringIds = new HashtableOfObjectToInt();

        public VariablesAndContainersSaveHelper(DataOutputStream dataOutputStream) {
            this.out = dataOutputStream;
        }

        private void saveAccessRule(ClasspathAccessRule classpathAccessRule) throws IOException {
            saveInt(classpathAccessRule.problemId);
            savePath(classpathAccessRule.getPattern());
        }

        private void saveAccessRules(IAccessRule[] iAccessRuleArr) throws IOException {
            int length = iAccessRuleArr == null ? 0 : iAccessRuleArr.length;
            saveInt(length);
            for (int i10 = 0; i10 < length; i10++) {
                saveAccessRule((ClasspathAccessRule) iAccessRuleArr[i10]);
            }
        }

        private void saveAttribute(IClasspathAttribute iClasspathAttribute) throws IOException {
            saveString(iClasspathAttribute.getName());
            saveString(iClasspathAttribute.getValue());
        }

        private void saveAttributes(IClasspathAttribute[] iClasspathAttributeArr) throws IOException {
            int length = iClasspathAttributeArr == null ? 0 : iClasspathAttributeArr.length;
            saveInt(length);
            for (int i10 = 0; i10 < length; i10++) {
                saveAttribute(iClasspathAttributeArr[i10]);
            }
        }

        private void saveClasspathEntries(IClasspathEntry[] iClasspathEntryArr) throws IOException {
            int length = iClasspathEntryArr == null ? 0 : iClasspathEntryArr.length;
            saveInt(length);
            for (int i10 = 0; i10 < length; i10++) {
                saveClasspathEntry(iClasspathEntryArr[i10]);
            }
        }

        private void saveClasspathEntry(IClasspathEntry iClasspathEntry) throws IOException {
            if (saveNewId(iClasspathEntry, this.classpathEntryIds)) {
                saveInt(iClasspathEntry.getContentKind());
                saveInt(iClasspathEntry.getEntryKind());
                savePath(iClasspathEntry.getPath());
                savePaths(iClasspathEntry.getInclusionPatterns());
                savePaths(iClasspathEntry.getExclusionPatterns());
                savePath(iClasspathEntry.getSourceAttachmentPath());
                savePath(iClasspathEntry.getSourceAttachmentRootPath());
                savePath(iClasspathEntry.getOutputLocation());
                this.out.writeBoolean(iClasspathEntry.isExported());
                saveAccessRules(iClasspathEntry.getAccessRules());
                this.out.writeBoolean(iClasspathEntry.combineAccessRules());
                saveAttributes(iClasspathEntry.getExtraAttributes());
            }
        }

        private void saveContainers(IJavaProject iJavaProject, Map<IPath, IClasspathContainer> map) throws IOException {
            saveInt(map.size());
            for (Map.Entry<IPath, IClasspathContainer> entry : map.entrySet()) {
                IPath key = entry.getKey();
                IClasspathContainer value = entry.getValue();
                if (value == null) {
                    value = JavaModelManager.this.getPreviousSessionContainer(key, iJavaProject);
                }
                IClasspathEntry[] classpathEntries = value != null ? value.getClasspathEntries() : null;
                savePath(key);
                saveClasspathEntries(classpathEntries);
            }
        }

        private void saveInt(int i10) throws IOException {
            this.out.writeInt(i10);
        }

        private boolean saveNewId(Object obj, HashtableOfObjectToInt hashtableOfObjectToInt) throws IOException {
            int i10 = hashtableOfObjectToInt.get(obj);
            if (i10 != -1) {
                saveInt(i10);
                return false;
            }
            int size = hashtableOfObjectToInt.size();
            hashtableOfObjectToInt.put(obj, size);
            saveInt(size);
            return true;
        }

        private void savePath(IPath iPath) throws IOException {
            if (iPath == null) {
                this.out.writeBoolean(true);
            } else {
                this.out.writeBoolean(false);
                saveString(iPath.toPortableString());
            }
        }

        private void savePaths(IPath[] iPathArr) throws IOException {
            int length = iPathArr == null ? 0 : iPathArr.length;
            saveInt(length);
            for (int i10 = 0; i10 < length; i10++) {
                savePath(iPathArr[i10]);
            }
        }

        private void saveProjects(IJavaProject[] iJavaProjectArr) throws IOException, JavaModelException {
            saveInt(iJavaProjectArr.length);
            for (IJavaProject iJavaProject : iJavaProjectArr) {
                saveString(iJavaProject.getElementName());
                Map<IPath, IClasspathContainer> map = JavaModelManager.this.containers.get(iJavaProject);
                saveContainers(iJavaProject, map == null ? Collections.EMPTY_MAP : new HashMap(map));
            }
        }

        private void saveString(String str) throws IOException {
            if (saveNewId(str, this.stringIds)) {
                this.out.writeUTF(str);
            }
        }

        private void saveVariables(Map<String, IPath> map) throws IOException {
            saveInt(map.size());
            for (Map.Entry<String, IPath> entry : map.entrySet()) {
                String key = entry.getKey();
                IPath value = entry.getValue();
                saveString(key);
                savePath(value);
            }
        }

        public void save(ISaveContext iSaveContext) throws IOException, JavaModelException {
            saveProjects(JavaModelManager.this.getJavaModel().getJavaProjects());
            IEclipsePreferences defaultPreferences = JavaModelManager.this.getDefaultPreferences();
            HashMap<String, IPath> hashMap = null;
            for (Map.Entry<String, IPath> entry : JavaModelManager.this.variables.entrySet()) {
                String key = entry.getKey();
                if (defaultPreferences.get(JavaModelManager.CP_VARIABLE_PREFERENCES_PREFIX + key, (String) null) != null || JavaModelManager.CP_ENTRY_IGNORE_PATH.equals(entry.getValue())) {
                    if (hashMap == null) {
                        hashMap = new HashMap<>(JavaModelManager.this.variables);
                    }
                    hashMap.remove(key);
                }
            }
            if (hashMap == null) {
                hashMap = JavaModelManager.this.variables;
            }
            saveVariables(hashMap);
        }
    }

    public static class ZipCache {
        private Map<Object, ZipFile> map = new HashMap();
        Object owner;

        public ZipCache(Object obj) {
            this.owner = obj;
        }

        public void flush() {
            Thread currentThread = Thread.currentThread();
            for (ZipFile zipFile : this.map.values()) {
                try {
                    if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                        System.out.println("(" + ((Object) currentThread) + ") [ZipCache[" + this.owner + "].flush()] Closing ZipFile on " + zipFile.getName());
                    }
                    zipFile.close();
                } catch (IOException e10) {
                    JavaCore.getPlugin().getLog().log(new Status(4, JavaCore.PLUGIN_ID, "Error closing " + zipFile.getName(), e10));
                }
            }
        }

        public ZipFile getCache(IPath iPath) {
            return this.map.get(iPath);
        }

        public void setCache(IPath iPath, ZipFile zipFile) {
            ZipFile put = this.map.put(iPath, zipFile);
            if (put == null || !JavaModelManager.ZIP_ACCESS_VERBOSE) {
                return;
            }
            Thread currentThread = Thread.currentThread();
            System.out.println("(" + ((Object) currentThread) + ") [ZipCache[" + this.owner + "].setCache()] leaked ZipFile on " + put.getName() + " for path: " + ((Object) iPath));
        }
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[ArchiveValidity.valuesCustom().length];
        try {
            iArr2[ArchiveValidity.BAD_FORMAT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[ArchiveValidity.FILE_NOT_FOUND.ordinal()] = 3;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[ArchiveValidity.UNABLE_TO_READ.ordinal()] = 2;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[ArchiveValidity.VALID.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity = iArr2;
        return iArr2;
    }

    private JavaModelManager() {
        this.resolveReferencedLibrariesForContainers = false;
        this.indexManager = null;
        if (Platform.isRunning()) {
            this.indexManager = new IndexManager();
            this.nonChainingJars = loadClasspathListCache(NON_CHAINING_JARS_CACHE);
            this.externalFiles = loadClasspathListCache(EXTERNAL_FILES_CACHE);
            this.assumedExternalFiles = loadClasspathListCache(ASSUMED_EXTERNAL_FILES_CACHE);
            this.resolveReferencedLibrariesForContainers = "true".equalsIgnoreCase(System.getProperty(RESOLVE_REFERENCED_LIBRARIES_FOR_CONTAINERS));
        }
    }

    private void addDeprecatedOptions(Hashtable<String, String> hashtable) {
        hashtable.put(JavaCore.COMPILER_PB_INVALID_IMPORT, "error");
        hashtable.put(JavaCore.COMPILER_PB_UNREACHABLE_CODE, "error");
    }

    private synchronized boolean batchContainerInitializations() {
        int i10 = this.batchContainerInitializations;
        if (i10 != 1) {
            return i10 == 2;
        }
        this.batchContainerInitializations = 2;
        return true;
    }

    private synchronized void batchInitializationFinished() {
        this.batchContainerInitializations = 3;
    }

    private void closeChildren(Object obj) {
        if (obj instanceof JavaElementInfo) {
            for (IJavaElement iJavaElement : ((JavaElementInfo) obj).getChildren()) {
                try {
                    ((JavaElement) iJavaElement).close();
                } catch (JavaModelException unused) {
                }
            }
        }
    }

    public static boolean conflictsWithOutputLocation(IPath iPath, JavaProject javaProject) {
        try {
            IPath outputLocation = javaProject.getOutputLocation();
            if (outputLocation == null) {
                return true;
            }
            if (!outputLocation.isPrefixOf(iPath)) {
                return false;
            }
            boolean z10 = false;
            for (IClasspathEntry iClasspathEntry : javaProject.getResolvedClasspath()) {
                if (iClasspathEntry.getEntryKind() == 3) {
                    if (iClasspathEntry.getPath().equals(outputLocation)) {
                        return false;
                    }
                    if (iClasspathEntry.getOutputLocation() == null) {
                        z10 = true;
                    }
                }
            }
            return z10;
        } catch (JavaModelException unused) {
            return true;
        }
    }

    private void containerAddInitializationInProgress(IJavaProject iJavaProject, IPath iPath) {
        Map<IJavaProject, Set<IPath>> map = this.containerInitializationInProgress.get();
        if (map == null) {
            ThreadLocal<Map<IJavaProject, Set<IPath>>> threadLocal = this.containerInitializationInProgress;
            HashMap hashMap = new HashMap();
            threadLocal.set(hashMap);
            map = hashMap;
        }
        Set<IPath> set = map.get(iJavaProject);
        if (set == null) {
            set = new HashSet<>();
            map.put(iJavaProject, set);
        }
        set.add(iPath);
    }

    private boolean containerIsInitializationInProgress(IJavaProject iJavaProject, IPath iPath) {
        Set<IPath> set;
        Map<IJavaProject, Set<IPath>> map = this.containerInitializationInProgress.get();
        if (map == null || (set = map.get(iJavaProject)) == null) {
            return false;
        }
        return set.contains(iPath);
    }

    private synchronized void containersReset(String[] strArr) {
        for (String str : strArr) {
            for (Map<IPath, IClasspathContainer> map : this.containers.values()) {
                if (map != null) {
                    for (IPath iPath : map.o()) {
                        if (str.equals(iPath.segment(0))) {
                            map.put(iPath, null);
                        }
                    }
                }
            }
        }
    }

    public static IJavaElement create(IResource iResource, IJavaProject iJavaProject) {
        if (iResource == null) {
            return null;
        }
        int type = iResource.getType();
        if (type == 1) {
            return create((IFile) iResource, iJavaProject);
        }
        if (type == 2) {
            return create((IFolder) iResource, iJavaProject);
        }
        if (type == 4) {
            return JavaCore.create((IProject) iResource);
        }
        if (type != 8) {
            return null;
        }
        return JavaCore.create((IWorkspaceRoot) iResource);
    }

    public static IClassFile createClassFileFrom(IFile iFile, IJavaProject iJavaProject) {
        if (iFile == null) {
            return null;
        }
        if (iJavaProject == null) {
            iJavaProject = JavaCore.create(iFile.getProject());
        }
        IPackageFragment iPackageFragment = (IPackageFragment) determineIfOnClasspath(iFile, iJavaProject);
        if (iPackageFragment == null) {
            iPackageFragment = ((PackageFragmentRoot) iJavaProject.getPackageFragmentRoot((IResource) iFile.getParent())).getPackageFragment(CharOperation.NO_STRINGS);
        }
        return "module-info.class".equals(iFile.getName()) ? iPackageFragment.getModularClassFile() : iPackageFragment.getClassFile(iFile.getName());
    }

    public static ICompilationUnit createCompilationUnitFrom(IFile iFile, IJavaProject iJavaProject) {
        if (iFile == null) {
            return null;
        }
        if (iJavaProject == null) {
            iJavaProject = JavaCore.create(iFile.getProject());
        }
        IPackageFragment iPackageFragment = (IPackageFragment) determineIfOnClasspath(iFile, iJavaProject);
        if (iPackageFragment == null) {
            iPackageFragment = ((PackageFragmentRoot) iJavaProject.getPackageFragmentRoot((IResource) iFile.getParent())).getPackageFragment(CharOperation.NO_STRINGS);
            if (VERBOSE) {
                System.out.println("WARNING : creating unit element outside classpath (" + ((Object) Thread.currentThread()) + "): " + ((Object) iFile.getFullPath()));
            }
        }
        return iPackageFragment.getCompilationUnit(iFile.getName());
    }

    public static IPackageFragmentRoot createJarPackageFragmentRootFrom(IFile iFile, IJavaProject iJavaProject) {
        if (iFile == null) {
            return null;
        }
        if (iJavaProject == null) {
            iJavaProject = JavaCore.create(iFile.getProject());
        }
        try {
            if (((JavaProject) iJavaProject).getClasspathEntryFor(iFile.getFullPath()) != null) {
                return iJavaProject.getPackageFragmentRoot((IResource) iFile);
            }
        } catch (JavaModelException unused) {
        }
        return null;
    }

    public static IJavaElement determineIfOnClasspath(IResource iResource, IJavaProject iJavaProject) {
        IPath fullPath = iResource.getFullPath();
        boolean isInternalPathForExternalFolder = ExternalFoldersManager.isInternalPathForExternalFolder(fullPath);
        if (isInternalPathForExternalFolder) {
            fullPath = iResource.getLocation();
        }
        try {
            JavaProjectElementInfo javaProjectElementInfo = (JavaProjectElementInfo) getJavaModelManager().getInfo(iJavaProject);
            JavaProjectElementInfo.ProjectCache projectCache = javaProjectElementInfo == null ? null : javaProjectElementInfo.projectCache;
            HashtableOfArrayToObject hashtableOfArrayToObject = projectCache == null ? null : projectCache.allPkgFragmentsCache;
            boolean isJavaLikeFileName = Util.isJavaLikeFileName(fullPath.lastSegment());
            IClasspathEntry[] rawClasspath = isJavaLikeFileName ? iJavaProject.getRawClasspath() : ((JavaProject) iJavaProject).getResolvedClasspath();
            if (rawClasspath.length > 0) {
                String option = iJavaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                String option2 = iJavaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                for (IClasspathEntry iClasspathEntry : rawClasspath) {
                    if (iClasspathEntry.getEntryKind() != 2) {
                        IPath path = iClasspathEntry.getPath();
                        if (path.equals(fullPath)) {
                            if (isJavaLikeFileName) {
                                return null;
                            }
                            return iJavaProject.getPackageFragmentRoot(iResource);
                        }
                        if (path.isPrefixOf(fullPath) && !Util.isExcluded(iResource, ((ClasspathEntry) iClasspathEntry).fullInclusionPatternChars(), ((ClasspathEntry) iClasspathEntry).fullExclusionPatternChars())) {
                            PackageFragmentRoot externalPackageFragmentRoot = isInternalPathForExternalFolder ? new ExternalPackageFragmentRoot(path, (JavaProject) iJavaProject) : (PackageFragmentRoot) ((JavaProject) iJavaProject).getFolderPackageFragmentRoot(path);
                            if (externalPackageFragmentRoot == null) {
                                return null;
                            }
                            IPath removeFirstSegments = fullPath.removeFirstSegments(path.segmentCount());
                            if (iResource.getType() == 1) {
                                removeFirstSegments = removeFirstSegments.removeLastSegments(1);
                            }
                            String[] segments = removeFirstSegments.segments();
                            if (hashtableOfArrayToObject != null && hashtableOfArrayToObject.containsKey(segments)) {
                                return externalPackageFragmentRoot.getPackageFragment(segments);
                            }
                            if (segments.length == 0 || JavaConventions.validatePackageName(Util.packageName(removeFirstSegments, option, option2), option, option2).getSeverity() != 4) {
                                return externalPackageFragmentRoot.getPackageFragment(segments);
                            }
                            return null;
                        }
                    }
                }
            }
        } catch (JavaModelException unused) {
        }
        return null;
    }

    public static final void doNotUse() {
        MANAGER.deltaState.doNotUse();
        MANAGER = new JavaModelManager();
    }

    private Set<IJavaProject> getClasspathBeingResolved() {
        Set<IJavaProject> set = this.classpathsBeingResolved.get();
        if (set != null) {
            return set;
        }
        HashSet hashSet = new HashSet();
        this.classpathsBeingResolved.set(hashSet);
        return hashSet;
    }

    private Set<IPath> getClasspathListCache(String str) throws CoreException {
        if (str == NON_CHAINING_JARS_CACHE) {
            return getNonChainingJarsCache();
        }
        if (str == EXTERNAL_FILES_CACHE) {
            return this.externalFiles;
        }
        if (str == ASSUMED_EXTERNAL_FILES_CACHE) {
            return this.assumedExternalFiles;
        }
        return null;
    }

    private File getClasspathListFile(String str) {
        return JavaCore.getPlugin().getStateLocation().append(str).toFile();
    }

    private Hashtable<String, String> getDefaultOptionsNoInitialization() {
        Map<String, String> map = new CompilerOptions().getMap();
        map.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
        map.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
        map.put("org.eclipse.jdt.core.compiler.taskTags", JavaCore.DEFAULT_TASK_TAGS);
        map.put("org.eclipse.jdt.core.compiler.taskPriorities", JavaCore.DEFAULT_TASK_PRIORITIES);
        map.put("org.eclipse.jdt.core.compiler.taskCaseSensitive", "enabled");
        map.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
        map.put("org.eclipse.jdt.core.compiler.problem.forbiddenReference", "error");
        map.put(JavaCore.CORE_JAVA_BUILD_RESOURCE_COPY_FILTER, "");
        map.put(JavaCore.CORE_JAVA_BUILD_INVALID_CLASSPATH, JavaCore.ABORT);
        map.put(JavaCore.CORE_JAVA_BUILD_DUPLICATE_RESOURCE, "warning");
        map.put(JavaCore.CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER, JavaCore.CLEAN);
        map.put(JavaCore.CORE_JAVA_BUILD_ORDER, "ignore");
        map.put(JavaCore.CORE_INCOMPLETE_CLASSPATH, "error");
        map.put(JavaCore.CORE_CIRCULAR_CLASSPATH, "error");
        map.put(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL, "ignore");
        map.put(JavaCore.CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY, "error");
        map.put(JavaCore.CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE, "error");
        map.put(JavaCore.CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS, "enabled");
        map.put(JavaCore.CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS, "enabled");
        map.putAll(DefaultCodeFormatterConstants.getEclipseDefaultSettings());
        map.put("org.eclipse.jdt.core.codeComplete.visibilityCheck", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.deprecationCheck", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.forceImplicitQualification", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.fieldPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFieldPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.localPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.argumentPrefixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.fieldSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFieldSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.localSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.argumentSuffixes", "");
        map.put("org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck", "enabled");
        map.put("org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck", "disabled");
        map.put("org.eclipse.jdt.core.codeComplete.camelCaseMatch", "enabled");
        map.put("org.eclipse.jdt.core.codeComplete.substringMatch", "enabled");
        map.put("org.eclipse.jdt.core.codeComplete.suggestStaticImports", "enabled");
        map.put(JavaCore.TIMEOUT_FOR_PARAMETER_NAME_FROM_ATTACHED_JAVADOC, "50");
        return new Hashtable<>(map);
    }

    public static DeltaProcessingState getDeltaState() {
        return MANAGER.deltaState;
    }

    public static ExternalFoldersManager getExternalManager() {
        return MANAGER.externalFoldersManager;
    }

    private ClasspathAccessRule getFromCache(ClasspathAccessRule classpathAccessRule) {
        ClasspathAccessRule classpathAccessRule2 = this.cache.accessRuleCache.get(classpathAccessRule);
        if (classpathAccessRule2 != null) {
            return classpathAccessRule2;
        }
        this.cache.accessRuleCache.put(classpathAccessRule, classpathAccessRule);
        return classpathAccessRule;
    }

    public static IndexManager getIndexManager() {
        return MANAGER.indexManager;
    }

    public static final JavaModelManager getJavaModelManager() {
        return MANAGER;
    }

    public static File getLocalFile(IPath iPath) throws CoreException {
        URI locationURI;
        IResource findMember = ResourcesPlugin.getWorkspace().getRoot().findMember(iPath);
        if (findMember == null) {
            return iPath.toFile();
        }
        if (findMember.getType() != 1 || (locationURI = findMember.getLocationURI()) == null) {
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.file_notFound, iPath.toString()), (Throwable) null));
        }
        File localFile = Util.toLocalFile(locationURI, null);
        if (localFile != null) {
            return localFile;
        }
        throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, -1, Messages.bind(Messages.file_notFound, iPath.toString()), (Throwable) null));
    }

    public static ModuleSourcePathManager getModulePathManager() {
        if (MANAGER.modulePathManager == null) {
            ModuleSourcePathManager moduleSourcePathManager = new ModuleSourcePathManager();
            synchronized (MANAGER) {
                try {
                    JavaModelManager javaModelManager = MANAGER;
                    if (javaModelManager.modulePathManager == null) {
                        javaModelManager.modulePathManager = moduleSourcePathManager;
                    }
                } finally {
                }
            }
        }
        return MANAGER.modulePathManager;
    }

    private Set<IPath> getNonChainingJarsCache() throws CoreException {
        Set<IPath> set = this.nonChainingJars;
        if (set != null && set.size() > 0) {
            return this.nonChainingJars;
        }
        HashSet hashSet = new HashSet();
        for (IJavaProject iJavaProject : getJavaModel().getJavaProjects()) {
            for (IClasspathEntry iClasspathEntry : ((JavaProject) iJavaProject).getResolvedClasspath()) {
                if (iClasspathEntry.getEntryKind() == 1) {
                    IPath path = iClasspathEntry.getPath();
                    if (!hashSet.contains(path) && ClasspathEntry.resolvedChainedLibraries(path).length == 0) {
                        hashSet.add(path);
                    }
                }
            }
        }
        Set<IPath> synchronizedSet = Collections.synchronizedSet(hashSet);
        this.nonChainingJars = synchronizedSet;
        return synchronizedSet;
    }

    public static String[] getRegisteredContainerIDs() {
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(5);
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JavaCore.PLUGIN_ID, CPCONTAINER_INITIALIZER_EXTPOINT_ID);
        if (extensionPoint != null) {
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    String attribute = iConfigurationElement.getAttribute("id");
                    if (attribute != null) {
                        arrayList.add(attribute);
                    }
                }
            }
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    public static String[] getRegisteredVariableNames() {
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(5);
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JavaCore.PLUGIN_ID, CPVARIABLE_INITIALIZER_EXTPOINT_ID);
        if (extensionPoint != null) {
            for (IExtension iExtension : extensionPoint.getExtensions()) {
                for (IConfigurationElement iConfigurationElement : iExtension.getConfigurationElements()) {
                    String attribute = iConfigurationElement.getAttribute("variable");
                    if (attribute != null) {
                        arrayList.add(attribute);
                    }
                }
            }
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    private File getSerializationFile(IProject iProject) {
        if (iProject.exists()) {
            return iProject.getWorkingLocation(JavaCore.PLUGIN_ID).append("state.dat").toFile();
        }
        return null;
    }

    public static UserLibraryManager getUserLibraryManager() {
        if (MANAGER.userLibraryManager == null) {
            UserLibraryManager userLibraryManager = new UserLibraryManager();
            synchronized (MANAGER) {
                try {
                    JavaModelManager javaModelManager = MANAGER;
                    if (javaModelManager.userLibraryManager == null) {
                        javaModelManager.userLibraryManager = userLibraryManager;
                    }
                } finally {
                }
            }
        }
        return MANAGER.userLibraryManager;
    }

    private File getVariableAndContainersFile() {
        return JavaCore.getPlugin().getStateLocation().append("variablesAndContainers.dat").toFile();
    }

    private IClasspathContainer initializeAllContainers(IJavaProject iJavaProject, IPath iPath) throws JavaModelException {
        if (CP_RESOLVE_VERBOSE_ADVANCED) {
            verbose_batching_containers_initialization(iJavaProject, iPath);
        }
        final HashMap hashMap = new HashMap();
        for (IProject iProject : ResourcesPlugin.getWorkspace().getRoot().getProjects()) {
            if (JavaProject.hasJavaNature(iProject)) {
                JavaProject javaProject = new JavaProject(iProject, getJavaModel());
                Set set = (Set) hashMap.get(javaProject);
                for (IClasspathEntry iClasspathEntry : javaProject.getRawClasspath()) {
                    IPath path = iClasspathEntry.getPath();
                    if (iClasspathEntry.getEntryKind() == 5 && containerGet(javaProject, path) == null) {
                        if (set == null) {
                            set = new HashSet();
                            hashMap.put(javaProject, set);
                        }
                        set.add(path);
                    }
                }
            }
        }
        if (iJavaProject != null) {
            Collection collection = (Set) hashMap.get(iJavaProject);
            if (collection == null) {
                collection = new HashSet();
                hashMap.put(iJavaProject, collection);
            }
            collection.add(iPath);
        }
        try {
            try {
                IWorkspaceRunnable iWorkspaceRunnable = new IWorkspaceRunnable() {
                    private void initKnownContainers(Map<IJavaProject, Map<IPath, IClasspathContainer>> map, IProgressMonitor iProgressMonitor) throws JavaModelException {
                        ArrayList arrayList = new ArrayList();
                        for (Map.Entry<IJavaProject, Map<IPath, IClasspathContainer>> entry : map.entrySet()) {
                            IJavaProject key = entry.getKey();
                            for (Map.Entry<IPath, IClasspathContainer> entry2 : entry.getValue().entrySet()) {
                                arrayList.add(new SetContainerOperation(entry2.getKey(), new IJavaProject[]{key}, new IClasspathContainer[]{entry2.getValue()}));
                            }
                        }
                        map.clear();
                        Iterator<E> it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((SetContainerOperation) it.next()).runOperation(iProgressMonitor);
                        }
                    }

                    public void run(IProgressMonitor iProgressMonitor) throws CoreException {
                        try {
                            Set entrySet = hashMap.entrySet();
                            int size = entrySet.size();
                            if (iProgressMonitor != null) {
                                iProgressMonitor.beginTask("", size);
                            }
                            for (Map.Entry entry : new HashSet(entrySet)) {
                                IJavaProject iJavaProject2 = (IJavaProject) entry.getKey();
                                Set set2 = (Set) entry.getValue();
                                if (set2 != null) {
                                    int size2 = set2.size();
                                    IPath[] iPathArr = new IPath[size2];
                                    set2.toArray(iPathArr);
                                    for (int i10 = 0; i10 < size2; i10++) {
                                        IPath iPath2 = iPathArr[i10];
                                        synchronized (JavaModelManager.this.batchContainerInitializationsLock) {
                                            try {
                                                if (!JavaModelManager.this.containerIsSet(iJavaProject2, iPath2)) {
                                                    JavaModelManager.this.initializeContainer(iJavaProject2, iPath2);
                                                    IClasspathContainer containerBeingInitializedGet = JavaModelManager.this.containerBeingInitializedGet(iJavaProject2, iPath2);
                                                    if (containerBeingInitializedGet != null) {
                                                        synchronized (JavaModelManager.this.batchContainerInitializationsLock) {
                                                            try {
                                                                if (JavaModelManager.this.containerIsSet(iJavaProject2, iPath2)) {
                                                                    JavaModelManager.this.containerBeingInitializedRemove(iJavaProject2, iPath2);
                                                                    JavaModelManager.this.containerRemoveInitializationInProgress(iJavaProject2, iPath2);
                                                                } else {
                                                                    JavaModelManager.this.containerPut(iJavaProject2, iPath2, containerBeingInitializedGet);
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                    } else {
                                                        continue;
                                                    }
                                                }
                                            } finally {
                                            }
                                        }
                                    }
                                    if (iProgressMonitor != null) {
                                        iProgressMonitor.worked(1);
                                    }
                                }
                            }
                            Map<IJavaProject, Map<IPath, IClasspathContainer>> map = JavaModelManager.this.containersBeingInitialized.get();
                            while (map != null && !map.isEmpty()) {
                                initKnownContainers(map, iProgressMonitor);
                            }
                            JavaModelManager.this.containersBeingInitialized.set(null);
                            if (iProgressMonitor != null) {
                                iProgressMonitor.done();
                            }
                        } catch (Throwable th2) {
                            if (iProgressMonitor != null) {
                                iProgressMonitor.done();
                            }
                            throw th2;
                        }
                    }
                };
                BatchInitializationMonitor batchInitializationMonitor = this.batchContainerInitializationsProgress;
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                if (workspace.isTreeLocked()) {
                    iWorkspaceRunnable.run(batchInitializationMonitor);
                } else {
                    workspace.run(iWorkspaceRunnable, (ISchedulingRule) null, 1, batchInitializationMonitor);
                }
            } catch (CoreException e10) {
                Util.log((Throwable) e10, "Exception while initializing all containers");
                this.containerInitializationInProgress.set(null);
            }
            return containerGet(iJavaProject, iPath);
        } catch (Throwable th2) {
            this.containerInitializationInProgress.set(null);
            throw th2;
        }
    }

    private boolean isDeprecatedOption(String str) {
        return JavaCore.COMPILER_PB_INVALID_IMPORT.equals(str) || JavaCore.COMPILER_PB_UNREACHABLE_CODE.equals(str);
    }

    public static boolean isJrt(IPath iPath) {
        return iPath.toString().endsWith(JRTUtil.JRT_FS_JAR);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
    
        if (r3 != null) goto L36;
     */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0033: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:25:0x0033 */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Set<IPath> loadClasspathListCache(String str) {
        DataInputStream dataInputStream;
        IOException e10;
        AutoCloseable autoCloseable;
        int readInt;
        HashSet hashSet = new HashSet();
        File classpathListFile = getClasspathListFile(str);
        AutoCloseable autoCloseable2 = null;
        try {
            try {
                dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(classpathListFile)));
                try {
                    readInt = dataInputStream.readInt();
                } catch (IOException e11) {
                    e10 = e11;
                    if (classpathListFile.exists()) {
                        Util.log(e10, "Unable to read JavaModelManager " + str + " file");
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseable2 = autoCloseable;
                if (autoCloseable2 != null) {
                    try {
                        autoCloseable2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e12) {
            dataInputStream = null;
            e10 = e12;
        } catch (Throwable th3) {
            th = th3;
            if (autoCloseable2 != null) {
            }
            throw th;
        }
        while (true) {
            int i10 = readInt - 1;
            if (readInt > 0) {
                hashSet.add(Path.fromPortableString(dataInputStream.readUTF()));
                readInt = i10;
            }
            try {
                break;
            } catch (IOException unused2) {
                return Collections.synchronizedSet(hashSet);
            }
        }
        dataInputStream.close();
    }

    public static void recreatePersistedContainer(String str, String str2, boolean z10) {
        int indexOf = str.indexOf(124, 40);
        if (str2 != null) {
            str2 = str2.trim();
        }
        if (indexOf > 0) {
            recreatePersistedContainer(getJavaModelManager().getJavaModel().getJavaProject(str.substring(40, indexOf).trim()), new Path(str.substring(indexOf + 1).trim()), str2, z10);
        }
    }

    public static void registerDebugOptionsListener(BundleContext bundleContext) {
        Hashtable hashtable = new Hashtable(2);
        hashtable.put("listener.symbolic.name", JavaCore.PLUGIN_ID);
        DEBUG_REGISTRATION = bundleContext.registerService(DebugOptionsListener.class, new DebugOptionsListener() {
            public void optionsChanged(DebugOptions debugOptions) {
                boolean z10 = false;
                boolean booleanOption = debugOptions.getBooleanOption(JavaModelManager.DEBUG, false);
                BufferManager.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.BUFFER_MANAGER_DEBUG, false);
                JavaBuilder.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.BUILDER_DEBUG, false);
                Compiler.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.COMPILER_DEBUG, false);
                JavaBuilder.SHOW_STATS = booleanOption && debugOptions.getBooleanOption(JavaModelManager.BUILDER_STATS_DEBUG, false);
                CompletionEngine.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.COMPLETION_DEBUG, false);
                JavaModelManager.CP_RESOLVE_VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.CP_RESOLVE_DEBUG, false);
                JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED = booleanOption && debugOptions.getBooleanOption(JavaModelManager.CP_RESOLVE_ADVANCED_DEBUG, false);
                JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.CP_RESOLVE_FAILURE_DEBUG, false);
                DeltaProcessor.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.DELTA_DEBUG, false);
                DeltaProcessor.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.DELTA_DEBUG_VERBOSE, false);
                SourceRangeVerifier.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.DOM_AST_DEBUG, false);
                SourceRangeVerifier.DEBUG_THROW = booleanOption && debugOptions.getBooleanOption(JavaModelManager.DOM_AST_DEBUG_THROW, false);
                SourceRangeVerifier.DEBUG |= SourceRangeVerifier.DEBUG_THROW;
                RewriteEventStore.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.DOM_REWRITE_DEBUG, false);
                TypeHierarchy.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.HIERARCHY_DEBUG, false);
                JobManager.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_MANAGER_DEBUG, false);
                IndexManager.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_MANAGER_ADVANCED_DEBUG, false);
                JavaModelManager.DEBUG_CLASSPATH = booleanOption && debugOptions.getBooleanOption(JavaModelManager.JAVAMODEL_CLASSPATH, false);
                JavaModelManager.DEBUG_INVALID_ARCHIVES = booleanOption && debugOptions.getBooleanOption(JavaModelManager.JAVAMODEL_INVALID_ARCHIVES, false);
                JavaModelManager.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.JAVAMODEL_DEBUG, false);
                JavaModelCache.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.JAVAMODELCACHE_DEBUG, false);
                JavaModelCache.DEBUG_CACHE_INSERTIONS = booleanOption && debugOptions.getBooleanOption(JavaModelManager.JAVAMODELCACHE_INSERTIONS_DEBUG, false);
                JavaModelOperation.POST_ACTION_VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.POST_ACTION_DEBUG, false);
                NameLookup.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.RESOLUTION_DEBUG, false);
                BasicSearchEngine.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.SEARCH_DEBUG, false);
                SelectionEngine.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.SELECTION_DEBUG, false);
                JavaModelManager.ZIP_ACCESS_VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.ZIP_ACCESS_DEBUG, false);
                SourceMapper.VERBOSE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.SOURCE_MAPPER_DEBUG_VERBOSE, false);
                DefaultCodeFormatter.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.FORMATTER_DEBUG, false);
                Database.DEBUG_FREE_SPACE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_DEBUG_LARGE_CHUNKS, false);
                Database.DEBUG_PAGE_CACHE = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_DEBUG_PAGE_CACHE, false);
                Indexer.DEBUG = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_INDEXER_DEBUG, false);
                Indexer.DEBUG_INSERTIONS = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_INDEXER_INSERTIONS, false);
                Indexer.DEBUG_ALLOCATIONS = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_INDEXER_SPACE, false);
                Indexer.DEBUG_TIMING = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_INDEXER_TIMING, false);
                Indexer.DEBUG_SCHEDULING = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_INDEXER_SCHEDULING, false);
                Indexer.DEBUG_SELFTEST = booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_INDEXER_SELFTEST, false);
                Indexer.DEBUG_LOG_SIZE_MB = booleanOption ? debugOptions.getIntegerOption(JavaModelManager.INDEX_INDEXER_LOG_SIZE_MEGS, 0) : 0;
                if (booleanOption && debugOptions.getBooleanOption(JavaModelManager.INDEX_LOCKS_DEBUG, false)) {
                    z10 = true;
                }
                Nd.sDEBUG_LOCKS = z10;
                if (PerformanceStats.ENABLED) {
                    CompletionEngine.PERF = PerformanceStats.isEnabled(JavaModelManager.COMPLETION_PERF);
                    SelectionEngine.PERF = PerformanceStats.isEnabled(JavaModelManager.SELECTION_PERF);
                    DeltaProcessor.PERF = PerformanceStats.isEnabled(JavaModelManager.DELTA_LISTENER_PERF);
                    JavaModelManager.PERF_VARIABLE_INITIALIZER = PerformanceStats.isEnabled(JavaModelManager.VARIABLE_INITIALIZER_PERF);
                    JavaModelManager.PERF_CONTAINER_INITIALIZER = PerformanceStats.isEnabled(JavaModelManager.CONTAINER_INITIALIZER_PERF);
                    ReconcileWorkingCopyOperation.PERF = PerformanceStats.isEnabled(JavaModelManager.RECONCILE_PERF);
                }
            }
        }, hashtable);
    }

    private void saveBuiltState(PerProjectInfo perProjectInfo) throws CoreException {
        if (JavaBuilder.DEBUG) {
            System.out.println(Messages.bind(Messages.build_saveStateProgress, perProjectInfo.project.getName()));
        }
        File serializationFile = getSerializationFile(perProjectInfo.project);
        if (serializationFile == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(serializationFile)));
            try {
                dataOutputStream.writeUTF(JavaCore.PLUGIN_ID);
                dataOutputStream.writeUTF("STATE");
                if (perProjectInfo.savedState == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    JavaBuilder.writeState(perProjectInfo.savedState, dataOutputStream);
                }
                dataOutputStream.close();
                if (JavaBuilder.DEBUG) {
                    System.out.println(Messages.bind(Messages.build_saveStateComplete, String.valueOf(System.currentTimeMillis() - currentTimeMillis)));
                }
            } catch (Throwable th2) {
                dataOutputStream.close();
                throw th2;
            }
        } catch (IOException e10) {
            try {
                serializationFile.delete();
            } catch (SecurityException unused) {
            }
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, 2, Messages.bind(Messages.build_cannotSaveState, perProjectInfo.project.getName()), e10));
        } catch (RuntimeException e11) {
            try {
                serializationFile.delete();
            } catch (SecurityException unused2) {
            }
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, 2, Messages.bind(Messages.build_cannotSaveState, perProjectInfo.project.getName()), e11));
        }
    }

    private void saveClasspathListCache(String str) throws CoreException {
        IOException iOException;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(getClasspathListFile(str))));
            } catch (IOException e10) {
                iOException = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Set<IPath> classpathListCache = getClasspathListCache(str);
            synchronized (classpathListCache) {
                dataOutputStream.writeInt(classpathListCache.size());
                Iterator<IPath> it = classpathListCache.iterator();
                while (it.hasNext()) {
                    dataOutputStream.writeUTF(it.next().toPortableString());
                }
            }
            try {
                dataOutputStream.close();
            } catch (IOException unused) {
            }
        } catch (IOException e11) {
            iOException = e11;
            dataOutputStream2 = dataOutputStream;
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, 4, "Problems while saving non-chaining jar cache", iOException));
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private void saveState(PerProjectInfo perProjectInfo, ISaveContext iSaveContext) throws CoreException {
        if (iSaveContext.getKind() != 2 && perProjectInfo.triedRead) {
            saveBuiltState(perProjectInfo);
        }
    }

    private void saveVariablesAndContainers(ISaveContext iSaveContext) throws CoreException {
        IOException iOException;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(getVariableAndContainersFile())));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            iOException = e10;
        }
        try {
            dataOutputStream.writeInt(2);
            new VariablesAndContainersSaveHelper(dataOutputStream).save(iSaveContext);
            try {
                dataOutputStream.close();
            } catch (IOException unused) {
            }
        } catch (IOException e11) {
            iOException = e11;
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, 4, "Problems while saving variables and containers", iOException));
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private Map<String, Map<String, IType>> secondaryTypesMerging(PerProjectInfo perProjectInfo) {
        Hashtable<String, Map<String, IType>> hashtable = perProjectInfo.secondaryTypes;
        if (VERBOSE) {
            Util.verbose("JavaModelManager.getSecondaryTypesMerged()");
            Util.verbose("\t- current cache to merge:");
            for (Map.Entry<String, Map<String, IType>> entry : hashtable.entrySet()) {
                Util.verbose("\t\t+ " + entry.getKey() + ':' + ((Object) entry.getValue()));
            }
        }
        Map<IFile, Map<String, Map<String, IType>>> map = perProjectInfo.indexingSecondaryCache;
        perProjectInfo.indexingSecondaryCache = null;
        if (map == null) {
            return hashtable;
        }
        Iterator<Map.Entry<IFile, Map<String, Map<String, IType>>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<IFile, Map<String, Map<String, IType>>> next = it.next();
            secondaryTypesRemoving(hashtable, next.getKey());
            for (Map.Entry<String, Map<String, IType>> entry2 : next.getValue().entrySet()) {
                String key = entry2.getKey();
                Map<String, IType> map2 = hashtable.get(key);
                if (map2 == null) {
                    hashtable.put(key, entry2.getValue());
                } else {
                    for (Map.Entry<String, IType> entry3 : entry2.getValue().entrySet()) {
                        map2.put(entry3.getKey(), entry3.getValue());
                    }
                }
            }
        }
        if (VERBOSE) {
            Util.verbose("\t- secondary types cache merged:");
            Iterator<Map.Entry<String, Map<String, IType>>> it2 = hashtable.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, Map<String, IType>> next2 = it2.next();
                Util.verbose("\t\t+ " + next2.getKey() + ':' + ((Object) next2.getValue()));
            }
        }
        return hashtable;
    }

    private static Map<String, Map<String, IType>> secondaryTypesSearching(IJavaProject iJavaProject, boolean z10, IProgressMonitor iProgressMonitor, PerProjectInfo perProjectInfo) throws JavaModelException {
        if (VERBOSE || BasicSearchEngine.VERBOSE) {
            StringBuffer stringBuffer = new StringBuffer("JavaModelManager.secondaryTypesSearch(");
            stringBuffer.append(iJavaProject.getElementName());
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(z10);
            stringBuffer.append(')');
            Util.verbose(stringBuffer.toString());
        }
        final Hashtable hashtable = new Hashtable(3);
        IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor = new IRestrictedAccessTypeRequestor() {
            @Override
            public void acceptType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction) {
                String str2 = cArr == null ? "" : new String(cArr);
                Map map = (Map) Hashtable.this.get(str2);
                if (map == null) {
                    map = new HashMap(3);
                }
                map.put(new String(cArr2), str);
                Hashtable.this.put(str2, map);
            }
        };
        IPackageFragmentRoot[] allPackageFragmentRoots = iJavaProject.getAllPackageFragmentRoots();
        int length = allPackageFragmentRoots.length;
        IPackageFragmentRoot[] iPackageFragmentRootArr = new IPackageFragmentRoot[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (allPackageFragmentRoots[i11].getKind() == 1) {
                iPackageFragmentRootArr[i10] = allPackageFragmentRoots[i11];
                i10++;
            }
        }
        if (i10 < length) {
            IPackageFragmentRoot[] iPackageFragmentRootArr2 = new IPackageFragmentRoot[i10];
            System.arraycopy(iPackageFragmentRootArr, 0, iPackageFragmentRootArr2, 0, i10);
            iPackageFragmentRootArr = iPackageFragmentRootArr2;
        }
        new BasicSearchEngine().searchAllSecondaryTypeNames(iPackageFragmentRootArr, iRestrictedAccessTypeRequestor, z10, iProgressMonitor);
        Hashtable<String, Map<String, IType>> hashtable2 = new Hashtable<>(hashtable.size());
        for (Map.Entry entry : hashtable.entrySet()) {
            String str = (String) entry.getKey();
            Map map = (Map) entry.getValue();
            HashMap hashMap = new HashMap(map.size());
            for (Map.Entry entry2 : map.entrySet()) {
                String str2 = (String) entry2.getKey();
                String str3 = (String) entry2.getValue();
                if (Util.isJavaLikeFileName(str3)) {
                    hashMap.put(str2, createCompilationUnitFrom(ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(str3)), null).getType(str2));
                }
            }
            hashtable2.put(str, hashMap);
        }
        if (perProjectInfo.secondaryTypes == null || perProjectInfo.indexingSecondaryCache != null) {
            perProjectInfo.secondaryTypes = hashtable2;
            if (VERBOSE || BasicSearchEngine.VERBOSE) {
                PrintStream printStream = System.out;
                printStream.print(((Object) Thread.currentThread()) + "\t-> secondary paths stored in cache: ");
                printStream.println();
                for (Map.Entry<String, Map<String, IType>> entry3 : hashtable2.entrySet()) {
                    Util.verbose("\t\t- " + entry3.getKey() + '-' + ((Object) entry3.getValue()));
                }
            }
        }
        return perProjectInfo.secondaryTypes;
    }

    private void startIndexing() {
        IndexManager indexManager = this.indexManager;
        if (indexManager != null) {
            indexManager.reset();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0059 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void throwExceptionIfArchiveInvalid(IPath iPath) throws CoreException {
        Throwable zipException;
        Throwable th2;
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity()[getArchiveValidity(iPath).ordinal()];
        if (i10 == 1) {
            zipException = new ZipException("Bad format in archive: " + ((Object) iPath));
        } else if (i10 == 2) {
            zipException = new IOException("Unable to read archive: " + ((Object) iPath));
        } else if (i10 != 3) {
            th2 = null;
            if (th2 == null) {
                throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, -1, Messages.status_IOException, th2));
            }
            return;
        } else {
            zipException = new FileNotFoundException("Archive not found for path: " + ((Object) iPath));
        }
        th2 = zipException;
        if (th2 == null) {
        }
    }

    private void traceVariableAndContainers(String str, long j10) {
        System.out.println(MessageFormat.format("{0} {1} bytes in variablesAndContainers.dat in {2}ms", str, Long.valueOf(getVariableAndContainersFile().length()), Long.valueOf(System.currentTimeMillis() - j10)));
    }

    public static void unregisterDebugOptionsListener() {
        DEBUG_REGISTRATION.unregister();
        DEBUG_REGISTRATION = null;
    }

    private synchronized IPath variableGetDefaultToPreviousSession(String str) {
        IPath iPath = this.variables.get(str);
        if (iPath != null) {
            return iPath;
        }
        return getPreviousSessionVariable(str);
    }

    private Set<String> variableInitializationInProgress() {
        Set<String> set = this.variableInitializationInProgress.get();
        if (set != null) {
            return set;
        }
        HashSet hashSet = new HashSet();
        this.variableInitializationInProgress.set(hashSet);
        return hashSet;
    }

    private void verbose_batching_containers_initialization(IJavaProject iJavaProject, IPath iPath) {
        StringBuilder sb2 = new StringBuilder("CPContainer INIT - batching containers initialization\n\tproject to init: ");
        sb2.append(iJavaProject == null ? "null" : iJavaProject.getElementName());
        sb2.append('\n');
        sb2.append("\tcontainer path to init: ");
        sb2.append((Object) iPath);
        Util.verbose(sb2.toString());
    }

    private void verbose_container_initialization_failed(IJavaProject iJavaProject, IPath iPath, IClasspathContainer iClasspathContainer, ClasspathContainerInitializer classpathContainerInitializer) {
        if (iClasspathContainer == CONTAINER_INITIALIZATION_IN_PROGRESS) {
            Util.verbose("CPContainer INIT - FAILED (initializer did not initialize container)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tinitializer: " + ((Object) classpathContainerInitializer));
            return;
        }
        Util.verbose("CPContainer INIT - FAILED (see exception above)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tinitializer: " + ((Object) classpathContainerInitializer));
    }

    private void verbose_container_null_failure_container(IJavaProject iJavaProject, IPath iPath, ClasspathContainerInitializer classpathContainerInitializer) {
        Util.verbose("CPContainer INIT - FAILED (and failure container is null)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tinitializer: " + ((Object) classpathContainerInitializer));
    }

    private void verbose_container_using_failure_container(IJavaProject iJavaProject, IPath iPath, ClasspathContainerInitializer classpathContainerInitializer) {
        Util.verbose("CPContainer INIT - FAILED (using failure container)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tinitializer: " + ((Object) classpathContainerInitializer));
    }

    private void verbose_container_value_after_initialization(IJavaProject iJavaProject, IPath iPath, IClasspathContainer iClasspathContainer) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CPContainer INIT - after resolution\n");
        stringBuffer.append("\tproject: " + iJavaProject.getElementName() + '\n');
        stringBuffer.append("\tcontainer path: " + ((Object) iPath) + '\n');
        if (iClasspathContainer != null) {
            stringBuffer.append("\tcontainer: " + iClasspathContainer.getDescription() + " {\n");
            IClasspathEntry[] classpathEntries = iClasspathContainer.getClasspathEntries();
            if (classpathEntries != null) {
                for (IClasspathEntry iClasspathEntry : classpathEntries) {
                    stringBuffer.append("\t\t" + ((Object) iClasspathEntry) + '\n');
                }
            }
            stringBuffer.append("\t}");
        } else {
            stringBuffer.append("\tcontainer: {unbound}");
        }
        Util.verbose(stringBuffer.toString());
    }

    private void verbose_missbehaving_container(IPath iPath, IJavaProject[] iJavaProjectArr, IClasspathContainer[] iClasspathContainerArr, final IClasspathContainer iClasspathContainer, final IClasspathEntry[] iClasspathEntryArr, final IClasspathEntry[] iClasspathEntryArr2) {
        Util.verbose("CPContainer SET  - missbehaving container\n\tcontainer path: " + ((Object) iPath) + "\n\tprojects: {" + org.eclipse.jdt.internal.compiler.util.Util.toString(iJavaProjectArr, new Util.Displayable() {
            @Override
            public String displayString(Object obj) {
                return ((IJavaProject) obj).getElementName();
            }
        }) + "}\n\tvalues on previous session: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(iClasspathContainerArr, new Util.Displayable() {
            @Override
            public String displayString(Object obj) {
                StringBuffer stringBuffer = new StringBuffer("\t\t");
                if (obj == null) {
                    stringBuffer.append("<null>");
                    return stringBuffer.toString();
                }
                stringBuffer.append(iClasspathContainer.getDescription());
                stringBuffer.append(" {\n");
                if (iClasspathEntryArr2 == null) {
                    stringBuffer.append(" \t\t\t");
                    stringBuffer.append("<null>\n");
                } else {
                    for (int i10 = 0; i10 < iClasspathEntryArr2.length; i10++) {
                        stringBuffer.append(" \t\t\t");
                        stringBuffer.append((Object) iClasspathEntryArr2[i10]);
                        stringBuffer.append('\n');
                    }
                }
                stringBuffer.append(" \t\t}");
                return stringBuffer.toString();
            }
        }) + "}\n\tnew values: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(iClasspathContainerArr, new Util.Displayable() {
            @Override
            public String displayString(Object obj) {
                StringBuffer stringBuffer = new StringBuffer("\t\t");
                if (obj == null) {
                    stringBuffer.append("<null>");
                    return stringBuffer.toString();
                }
                stringBuffer.append(iClasspathContainer.getDescription());
                stringBuffer.append(" {\n");
                for (int i10 = 0; i10 < iClasspathEntryArr.length; i10++) {
                    stringBuffer.append(" \t\t\t");
                    stringBuffer.append((Object) iClasspathEntryArr[i10]);
                    stringBuffer.append('\n');
                }
                stringBuffer.append(" \t\t}");
                return stringBuffer.toString();
            }
        }) + "\n\t}");
    }

    private void verbose_no_container_initializer_found(IJavaProject iJavaProject, IPath iPath) {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer INIT - no initializer found\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath));
    }

    private void verbose_reentering_project_container_access(IPath iPath, IJavaProject iJavaProject, IClasspathContainer iClasspathContainer) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CPContainer INIT - reentering access to project container during its initialization, will see previous value\n");
        stringBuffer.append("\tproject: " + iJavaProject.getElementName() + '\n');
        stringBuffer.append("\tcontainer path: " + ((Object) iPath) + '\n');
        stringBuffer.append("\tprevious value: ");
        stringBuffer.append(iClasspathContainer.getDescription());
        stringBuffer.append(" {\n");
        IClasspathEntry[] classpathEntries = iClasspathContainer.getClasspathEntries();
        if (classpathEntries != null) {
            for (IClasspathEntry iClasspathEntry : classpathEntries) {
                stringBuffer.append(" \t\t");
                stringBuffer.append((Object) iClasspathEntry);
                stringBuffer.append('\n');
            }
        }
        stringBuffer.append(" \t}");
        org.eclipse.jdt.internal.core.util.Util.verbose(stringBuffer.toString());
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    private void verbose_reentering_variable_access(String str, IPath iPath) {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPVariable INIT - reentering access to variable during its initialization, will see previous value\n\tvariable: " + str + "\n\tprevious value: " + ((Object) iPath));
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    private void verbose_triggering_container_initialization(IJavaProject iJavaProject, IPath iPath, ClasspathContainerInitializer classpathContainerInitializer) {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer INIT - triggering initialization\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tinitializer: " + ((Object) classpathContainerInitializer));
    }

    private void verbose_triggering_container_initialization_invocation_trace() {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer INIT - triggering initialization\n\tinvocation trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public void addAssumedExternalFile(IPath iPath) {
        this.assumedExternalFiles.add(iPath);
    }

    public void addExternalFile(IPath iPath) {
        if (this.externalFiles == null) {
            this.externalFiles = Collections.synchronizedSet(new HashSet());
        }
        Set<IPath> set = this.externalFiles;
        if (set != null) {
            set.add(iPath);
        }
    }

    public void addInvalidArchive(IPath iPath, ArchiveValidity archiveValidity) {
        if (DEBUG_INVALID_ARCHIVES) {
            System.out.println("Invalid JAR cache: adding " + ((Object) iPath) + ", reason: " + ((Object) archiveValidity));
        }
        synchronized (this.invalidArchivesMutex) {
            this.invalidArchives.put(iPath, new InvalidArchiveInfo(System.currentTimeMillis() + INVALID_ARCHIVE_TTL_MILLISECONDS, archiveValidity));
        }
    }

    public void addNonChainingJar(IPath iPath) {
        Set<IPath> set = this.nonChainingJars;
        if (set != null) {
            set.add(iPath);
        }
    }

    public synchronized String cacheToString(String str) {
        return this.cache.toStringFillingRation(str);
    }

    public void cacheZipFiles(Object obj) {
        if (this.zipFiles.get() != null) {
            return;
        }
        this.zipFiles.set(new ZipCache(obj));
    }

    public void clearExternalFileState(IPath iPath) {
        Set<IPath> set = this.externalFiles;
        if (set != null) {
            set.remove(iPath);
        }
    }

    public void closeZipFile(ZipFile zipFile) {
        if (zipFile == null) {
            return;
        }
        if (this.zipFiles.get() != null) {
            if (ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelManager.closeZipFile(ZipFile)] NOT closed ZipFile (cache exist!) on " + zipFile.getName());
                return;
            }
            return;
        }
        try {
            if (ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelManager.closeZipFile(ZipFile)] Closing ZipFile on " + zipFile.getName());
            }
            zipFile.close();
        } catch (IOException e10) {
            JavaCore.getPlugin().getLog().log(new Status(4, JavaCore.PLUGIN_ID, "Error closing " + zipFile.getName(), e10));
        }
    }

    public IClasspathContainer containerBeingInitializedGet(IJavaProject iJavaProject, IPath iPath) {
        Map<IPath, IClasspathContainer> map;
        Map<IJavaProject, Map<IPath, IClasspathContainer>> map2 = this.containersBeingInitialized.get();
        if (map2 == null || (map = map2.get(iJavaProject)) == null) {
            return null;
        }
        return map.get(iPath);
    }

    public void containerBeingInitializedPut(IJavaProject iJavaProject, IPath iPath, IClasspathContainer iClasspathContainer) {
        Map<IJavaProject, Map<IPath, IClasspathContainer>> map = this.containersBeingInitialized.get();
        if (map == null) {
            ThreadLocal<Map<IJavaProject, Map<IPath, IClasspathContainer>>> threadLocal = this.containersBeingInitialized;
            HashMap hashMap = new HashMap();
            threadLocal.set(hashMap);
            map = hashMap;
        }
        Map<IPath, IClasspathContainer> map2 = map.get(iJavaProject);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(iJavaProject, map2);
        }
        map2.put(iPath, iClasspathContainer);
    }

    public IClasspathContainer containerBeingInitializedRemove(IJavaProject iJavaProject, IPath iPath) {
        Map<IPath, IClasspathContainer> map;
        Map<IJavaProject, Map<IPath, IClasspathContainer>> map2 = this.containersBeingInitialized.get();
        if (map2 == null || (map = map2.get(iJavaProject)) == null) {
            return null;
        }
        IClasspathContainer remove = map.remove(iPath);
        if (map.size() == 0) {
            map2.remove(iJavaProject);
        }
        if (map2.size() == 0) {
            this.containersBeingInitialized.set(null);
        }
        return remove;
    }

    public synchronized IClasspathContainer containerGet(IJavaProject iJavaProject, IPath iPath) {
        if (containerIsInitializationInProgress(iJavaProject, iPath)) {
            return CONTAINER_INITIALIZATION_IN_PROGRESS;
        }
        Map<IPath, IClasspathContainer> map = this.containers.get(iJavaProject);
        if (map == null) {
            return null;
        }
        return map.get(iPath);
    }

    public synchronized IClasspathContainer containerGetDefaultToPreviousSession(IJavaProject iJavaProject, IPath iPath) {
        Map<IPath, IClasspathContainer> map = this.containers.get(iJavaProject);
        if (map == null) {
            return getPreviousSessionContainer(iPath, iJavaProject);
        }
        IClasspathContainer iClasspathContainer = map.get(iPath);
        if (iClasspathContainer != null) {
            return iClasspathContainer;
        }
        return getPreviousSessionContainer(iPath, iJavaProject);
    }

    public synchronized boolean containerIsSet(IJavaProject iJavaProject, IPath iPath) {
        Map<IPath, IClasspathContainer> map = this.containers.get(iJavaProject);
        if (map == null) {
            return false;
        }
        return map.get(iPath) != null;
    }

    public synchronized void containerPut(IJavaProject iJavaProject, IPath iPath, IClasspathContainer iClasspathContainer) {
        if (iClasspathContainer == CONTAINER_INITIALIZATION_IN_PROGRESS) {
            containerAddInitializationInProgress(iJavaProject, iPath);
            return;
        }
        containerRemoveInitializationInProgress(iJavaProject, iPath);
        Map<IPath, IClasspathContainer> map = this.containers.get(iJavaProject);
        if (map == null) {
            map = new HashMap<>(1);
            this.containers.put(iJavaProject, map);
        }
        if (iClasspathContainer == null) {
            map.remove(iPath);
        } else {
            map.put(iPath, iClasspathContainer);
        }
        Map<IPath, IClasspathContainer> map2 = this.previousSessionContainers.get(iJavaProject);
        if (map2 != null) {
            map2.remove(iPath);
        }
    }

    public boolean containerPutIfInitializingWithSameEntries(IPath iPath, IJavaProject[] iJavaProjectArr, IClasspathContainer[] iClasspathContainerArr) {
        if (iJavaProjectArr.length != 1) {
            return false;
        }
        IClasspathContainer iClasspathContainer = iClasspathContainerArr[0];
        IJavaProject iJavaProject = iJavaProjectArr[0];
        if (!containerIsInitializationInProgress(iJavaProject, iPath)) {
            return false;
        }
        IClasspathContainer containerGetDefaultToPreviousSession = containerGetDefaultToPreviousSession(iJavaProject, iPath);
        if (iClasspathContainer == null) {
            if (containerGetDefaultToPreviousSession != null) {
                return false;
            }
            containerPut(iJavaProject, iPath, null);
            return true;
        }
        IClasspathEntry[] classpathEntries = iClasspathContainer.getClasspathEntries();
        if (containerGetDefaultToPreviousSession == null) {
            if (classpathEntries.length == 0) {
                containerPut(iJavaProject, iPath, iClasspathContainer);
                return true;
            }
            if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                verbose_missbehaving_container(iPath, iJavaProjectArr, iClasspathContainerArr, iClasspathContainer, classpathEntries, null);
            }
            return false;
        }
        IClasspathEntry[] classpathEntries2 = containerGetDefaultToPreviousSession.getClasspathEntries();
        if (classpathEntries2.length != classpathEntries.length) {
            if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                verbose_missbehaving_container(iPath, iJavaProjectArr, iClasspathContainerArr, iClasspathContainer, classpathEntries, classpathEntries2);
            }
            return false;
        }
        int length = classpathEntries.length;
        for (int i10 = 0; i10 < length; i10++) {
            IClasspathEntry iClasspathEntry = classpathEntries[i10];
            if (iClasspathEntry == null) {
                if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                    verbose_missbehaving_container(iJavaProject, iPath, classpathEntries);
                }
                return false;
            }
            if (!iClasspathEntry.equals(classpathEntries2[i10])) {
                if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                    verbose_missbehaving_container(iPath, iJavaProjectArr, iClasspathContainerArr, iClasspathContainer, classpathEntries, classpathEntries2);
                }
                return false;
            }
        }
        containerPut(iJavaProject, iPath, iClasspathContainer);
        return true;
    }

    public synchronized void containerRemove(IJavaProject iJavaProject) {
        try {
            Map<IJavaProject, Set<IPath>> map = this.containerInitializationInProgress.get();
            if (map != null) {
                map.remove(iJavaProject);
            }
            this.containers.remove(iJavaProject);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void containerRemoveInitializationInProgress(IJavaProject iJavaProject, IPath iPath) {
        Set<IPath> set;
        Map<IJavaProject, Set<IPath>> map = this.containerInitializationInProgress.get();
        if (map == null || (set = map.get(iJavaProject)) == null) {
            return;
        }
        set.remove(iPath);
        if (set.size() == 0) {
            map.remove(iJavaProject);
        }
        if (map.size() == 0) {
            this.containerInitializationInProgress.set(null);
        }
    }

    public void contentTypeChanged(IContentTypeManager.ContentTypeChangeEvent contentTypeChangeEvent) {
        org.eclipse.jdt.internal.core.util.Util.resetJavaLikeExtensions();
        try {
            for (IJavaProject iJavaProject : getJavaModelManager().getJavaModel().getJavaProjects()) {
                PerProjectInfo perProjectInfo = getPerProjectInfo(iJavaProject.getProject(), false);
                if (perProjectInfo != null) {
                    perProjectInfo.secondaryTypes = null;
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    public AbstractAnnotationProcessorManager createAnnotationProcessorManager() {
        synchronized (this) {
            try {
                if (this.annotationProcessorManagerFactory == null) {
                    IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JavaCore.PLUGIN_ID, ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID);
                    if (extensionPoint != null) {
                        IExtension[] extensions = extensionPoint.getExtensions();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= extensions.length) {
                                break;
                            }
                            if (i10 > 0) {
                                org.eclipse.jdt.internal.core.util.Util.log((Throwable) null, "An annotation processor manager is already registered: ignoring " + extensions[i10].getUniqueIdentifier());
                                break;
                            }
                            IConfigurationElement[] configurationElements = extensions[i10].getConfigurationElements();
                            int i11 = 0;
                            while (true) {
                                if (i11 >= configurationElements.length) {
                                    break;
                                }
                                IConfigurationElement iConfigurationElement = configurationElements[i11];
                                if (ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID.equals(iConfigurationElement.getName())) {
                                    this.annotationProcessorManagerFactory = iConfigurationElement;
                                    break;
                                }
                                i11++;
                            }
                            i10++;
                        }
                    } else {
                        return null;
                    }
                }
                final IConfigurationElement iConfigurationElement2 = this.annotationProcessorManagerFactory;
                if (iConfigurationElement2 == null) {
                    return null;
                }
                final AbstractAnnotationProcessorManager[] abstractAnnotationProcessorManagerArr = {null};
                SafeRunner.run(new ISafeRunnable() {
                    public void handleException(Throwable th2) {
                        org.eclipse.jdt.internal.core.util.Util.log(th2, "Exception occurred while loading annotation processor manager");
                    }

                    public void run() throws Exception {
                        Object createExecutableExtension = iConfigurationElement2.createExecutableExtension("class");
                        if (createExecutableExtension instanceof AbstractAnnotationProcessorManager) {
                            abstractAnnotationProcessorManagerArr[0] = (AbstractAnnotationProcessorManager) createExecutableExtension;
                        }
                    }
                });
                return abstractAnnotationProcessorManagerArr[0];
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public LRUCache<ITypeRoot, JavaElementInfo>.Stats debugNewOpenableCacheStats() {
        ElementCache<ITypeRoot> elementCache = this.cache.openableCache;
        elementCache.getClass();
        return new LRUCache.Stats();
    }

    public int discardPerWorkingCopyInfo(CompilationUnit compilationUnit) throws JavaModelException {
        JavaElementDeltaBuilder javaElementDeltaBuilder = (compilationUnit.isPrimary() && compilationUnit.hasUnsavedChanges()) ? new JavaElementDeltaBuilder(compilationUnit) : null;
        synchronized (this.perWorkingCopyInfos) {
            try {
                WorkingCopyOwner workingCopyOwner = compilationUnit.owner;
                Map<CompilationUnit, PerWorkingCopyInfo> map = this.perWorkingCopyInfos.get(workingCopyOwner);
                if (map == null) {
                    return -1;
                }
                PerWorkingCopyInfo perWorkingCopyInfo = map.get(compilationUnit);
                if (perWorkingCopyInfo == null) {
                    return -1;
                }
                int i10 = perWorkingCopyInfo.useCount - 1;
                perWorkingCopyInfo.useCount = i10;
                if (i10 == 0) {
                    map.remove(compilationUnit);
                    if (map.isEmpty()) {
                        this.perWorkingCopyInfos.remove(workingCopyOwner);
                    }
                }
                if (perWorkingCopyInfo.useCount == 0) {
                    removeInfoAndChildren(compilationUnit);
                    compilationUnit.closeBuffer();
                    if (javaElementDeltaBuilder != null) {
                        javaElementDeltaBuilder.buildDeltas();
                        if (javaElementDeltaBuilder.delta != null) {
                            getDeltaProcessor().registerJavaModelDelta(javaElementDeltaBuilder.delta);
                        }
                    }
                }
                return perWorkingCopyInfo.useCount;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void doneSaving(ISaveContext iSaveContext) {
    }

    public void flushZipFiles(Object obj) {
        ZipCache zipCache = this.zipFiles.get();
        if (zipCache == null) {
            if (ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelManager.flushZipFiles(String)] NOT found cache for " + obj);
                return;
            }
            return;
        }
        if (zipCache.owner == obj) {
            this.zipFiles.set(null);
            zipCache.flush();
        } else if (ZIP_ACCESS_VERBOSE) {
            System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelManager.flushZipFiles(String)] NOT closed cache, wrong owner, expected: " + zipCache.owner + ", got: " + obj);
        }
    }

    public synchronized boolean forceBatchInitializations(boolean z10) {
        int i10 = this.batchContainerInitializations;
        if (i10 == 0) {
            this.batchContainerInitializations = 1;
            return true;
        }
        if (i10 != 3) {
            return false;
        }
        if (z10) {
            return false;
        }
        this.batchContainerInitializations = 1;
        return true;
    }

    public IAccessRule getAccessRule(IPath iPath, int i10) {
        return getFromCache(new ClasspathAccessRule(iPath, i10));
    }

    public ClasspathAccessRule getAccessRuleForProblemId(char[] cArr, int i10) {
        return getFromCache(new ClasspathAccessRule(cArr, i10));
    }

    public ArchiveValidity getArchiveValidity(IPath iPath) {
        InvalidArchiveInfo invalidArchiveInfo;
        synchronized (this.invalidArchivesMutex) {
            invalidArchiveInfo = this.invalidArchives.get(iPath);
        }
        if (invalidArchiveInfo == null) {
            return ArchiveValidity.VALID;
        }
        if (System.currentTimeMillis() <= invalidArchiveInfo.evictionTimestamp) {
            return invalidArchiveInfo.reason;
        }
        try {
            getZipFile(iPath, false);
            removeFromInvalidArchiveCache(iPath);
        } catch (CoreException unused) {
        }
        return getArchiveValidity(iPath);
    }

    public IClasspathContainer getClasspathContainer(IPath iPath, IJavaProject iJavaProject) throws JavaModelException {
        IClasspathContainer containerGet = containerGet(iJavaProject, iPath);
        if (containerGet != null) {
            return containerGet;
        }
        if (batchContainerInitializations()) {
            try {
                return initializeAllContainers(iJavaProject, iPath);
            } finally {
                batchInitializationFinished();
            }
        }
        IClasspathContainer initializeContainer = initializeContainer(iJavaProject, iPath);
        containerBeingInitializedRemove(iJavaProject, iPath);
        new SetContainerOperation(iPath, new IJavaProject[]{iJavaProject}, new IClasspathContainer[]{initializeContainer}).runOperation(null);
        return initializeContainer;
    }

    public Hashtable<String, String> getDefaultOptions() {
        Hashtable<String, String> hashtable = new Hashtable<>(10);
        IEclipsePreferences defaultPreferences = getDefaultPreferences();
        Iterator<String> it = this.optionNames.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String str = defaultPreferences.get(next, (String) null);
            if (str != null) {
                hashtable.put(next, str);
            }
        }
        hashtable.put("org.eclipse.jdt.core.encoding", JavaCore.getEncoding());
        addDeprecatedOptions(hashtable);
        return hashtable;
    }

    public IEclipsePreferences getDefaultPreferences() {
        return this.preferencesLookup[1];
    }

    public DeltaProcessor getDeltaProcessor() {
        return this.deltaState.getDeltaProcessor();
    }

    public HashSet<Openable> getElementsOutOfSynchWithBuffers() {
        return this.elementsOutOfSynchWithBuffers;
    }

    public synchronized IJavaElement getExistingElement(IJavaElement iJavaElement) {
        return this.cache.getExistingElement(iJavaElement);
    }

    public HashSet<IJavaProject> getExternalWorkingCopyProjects() {
        HashSet<IJavaProject> hashSet;
        synchronized (this.perWorkingCopyInfos) {
            try {
                Iterator<Map<CompilationUnit, PerWorkingCopyInfo>> it = this.perWorkingCopyInfos.values().iterator();
                hashSet = null;
                while (it.hasNext()) {
                    Iterator<CompilationUnit> it2 = it.next().o().iterator();
                    while (it2.hasNext()) {
                        IJavaProject javaProject = it2.next().getJavaProject();
                        if (javaProject.getElementName().equals(" ")) {
                            if (hashSet == null) {
                                hashSet = new HashSet<>();
                            }
                            hashSet.add(javaProject);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hashSet;
    }

    public synchronized Object getInfo(IJavaElement iJavaElement) {
        Object obj;
        HashMap<IJavaElement, Object> hashMap = this.temporaryCache.get();
        return (hashMap == null || (obj = hashMap.get(iJavaElement)) == null) ? this.cache.getInfo(iJavaElement) : obj;
    }

    public IEclipsePreferences getInstancePreferences() {
        return this.preferencesLookup[0];
    }

    public final JavaModel getJavaModel() {
        return this.javaModel;
    }

    public Object getLastBuiltState(IProject iProject, IProgressMonitor iProgressMonitor) {
        if (!JavaProject.hasJavaNature(iProject)) {
            if (!JavaBuilder.DEBUG) {
                return null;
            }
            System.out.println(((Object) iProject) + " is not a Java project");
            return null;
        }
        PerProjectInfo perProjectInfo = getPerProjectInfo(iProject, true);
        if (!perProjectInfo.triedRead) {
            perProjectInfo.triedRead = true;
            if (iProgressMonitor != null) {
                try {
                    iProgressMonitor.subTask(Messages.bind(Messages.build_readStateProgress, iProject.getName()));
                } catch (CoreException e10) {
                    org.eclipse.jdt.internal.core.util.Util.log((Throwable) e10, "Exception while reading last build state for: " + ((Object) iProject));
                }
            }
            perProjectInfo.savedState = readState(iProject);
        }
        return perProjectInfo.savedState;
    }

    public int getOpenableCacheSize() {
        return this.cache.openableCache.getSpaceLimit();
    }

    public String getOption(String str) {
        if ("org.eclipse.jdt.core.encoding".equals(str)) {
            return JavaCore.getEncoding();
        }
        if (isDeprecatedOption(str)) {
            return "error";
        }
        int optionLevel = getOptionLevel(str);
        if (optionLevel == 0) {
            return null;
        }
        IPreferencesService preferencesService = Platform.getPreferencesService();
        String str2 = preferencesService.get(str, (String) null, this.preferencesLookup);
        if (str2 == null && optionLevel == 1) {
            str2 = preferencesService.get(this.deprecatedOptions.get(str)[0], (String) null, this.preferencesLookup);
        }
        if (str2 == null) {
            return null;
        }
        return str2.trim();
    }

    public int getOptionLevel(String str) {
        if (this.optionNames.contains(str)) {
            return 2;
        }
        return this.deprecatedOptions.get(str) != null ? 1 : 0;
    }

    public Hashtable<String, String> getOptions() {
        Hashtable<String, String> hashtable = this.optionsCache;
        if (hashtable != null) {
            return new Hashtable<>(hashtable);
        }
        if (!Platform.isRunning()) {
            this.optionsCache = getDefaultOptionsNoInitialization();
            return new Hashtable<>(this.optionsCache);
        }
        Hashtable<String, String> hashtable2 = new Hashtable<>(10);
        IPreferencesService preferencesService = Platform.getPreferencesService();
        Iterator<String> it = this.optionNames.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String str = preferencesService.get(next, (String) null, this.preferencesLookup);
            if (str != null) {
                hashtable2.put(next, str);
            }
        }
        for (Map.Entry<String, String[]> entry : this.deprecatedOptions.entrySet()) {
            String key = entry.getKey();
            String str2 = preferencesService.get(key, (String) null, this.preferencesLookup);
            if (str2 != null) {
                hashtable2.put(key, str2);
                for (String str3 : entry.getValue()) {
                    if (!hashtable2.containsKey(str3)) {
                        hashtable2.put(str3, str2);
                    }
                }
            }
        }
        hashtable2.put("org.eclipse.jdt.core.encoding", JavaCore.getEncoding());
        addDeprecatedOptions(hashtable2);
        org.eclipse.jdt.internal.core.util.Util.fixTaskTags(hashtable2);
        this.optionsCache = new Hashtable<>(hashtable2);
        return hashtable2;
    }

    public PerProjectInfo getPerProjectInfo(IProject iProject, boolean z10) {
        PerProjectInfo perProjectInfo;
        synchronized (this.perProjectInfos) {
            try {
                perProjectInfo = this.perProjectInfos.get(iProject);
                if (perProjectInfo == null && z10) {
                    perProjectInfo = new PerProjectInfo(iProject);
                    this.perProjectInfos.put(iProject, perProjectInfo);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return perProjectInfo;
    }

    public PerProjectInfo getPerProjectInfoCheckExistence(IProject iProject) throws JavaModelException {
        PerProjectInfo perProjectInfo = getPerProjectInfo(iProject, false);
        if (perProjectInfo != null) {
            return perProjectInfo;
        }
        if (JavaProject.hasJavaNature(iProject)) {
            return getPerProjectInfo(iProject, true);
        }
        throw ((JavaProject) JavaCore.create(iProject)).newNotPresentException();
    }

    public PerWorkingCopyInfo getPerWorkingCopyInfo(CompilationUnit compilationUnit, boolean z10, boolean z11, IProblemRequestor iProblemRequestor) {
        PerWorkingCopyInfo perWorkingCopyInfo;
        synchronized (this.perWorkingCopyInfos) {
            try {
                WorkingCopyOwner workingCopyOwner = compilationUnit.owner;
                Map<CompilationUnit, PerWorkingCopyInfo> map = this.perWorkingCopyInfos.get(workingCopyOwner);
                if (map == null && z10) {
                    map = new HashMap<>();
                    this.perWorkingCopyInfos.put(workingCopyOwner, map);
                }
                perWorkingCopyInfo = map == null ? null : map.get(compilationUnit);
                if (perWorkingCopyInfo == null && z10) {
                    perWorkingCopyInfo = new PerWorkingCopyInfo(compilationUnit, iProblemRequestor);
                    map.put(compilationUnit, perWorkingCopyInfo);
                }
                if (perWorkingCopyInfo != null && z11) {
                    perWorkingCopyInfo.useCount++;
                }
            } finally {
            }
        }
        return perWorkingCopyInfo;
    }

    public IClasspathContainer getPreviousSessionContainer(IPath iPath, IJavaProject iJavaProject) {
        IClasspathContainer iClasspathContainer;
        Map<IPath, IClasspathContainer> map = this.previousSessionContainers.get(iJavaProject);
        if (map == null || (iClasspathContainer = map.get(iPath)) == null) {
            return null;
        }
        if (CP_RESOLVE_VERBOSE_ADVANCED) {
            verbose_reentering_project_container_access(iPath, iJavaProject, iClasspathContainer);
        }
        return iClasspathContainer;
    }

    public IPath getPreviousSessionVariable(String str) {
        IPath iPath = this.previousSessionVariables.get(str);
        if (iPath == null) {
            return null;
        }
        if (CP_RESOLVE_VERBOSE_ADVANCED) {
            verbose_reentering_variable_access(str, iPath);
        }
        return iPath;
    }

    public IClasspathEntry[] getReferencedClasspathEntries(IClasspathEntry iClasspathEntry, IJavaProject iJavaProject) {
        IClasspathEntry[] resolvedChainedLibraries = ((ClasspathEntry) iClasspathEntry).resolvedChainedLibraries();
        if (iJavaProject == null) {
            return resolvedChainedLibraries;
        }
        PerProjectInfo perProjectInfo = getPerProjectInfo(iJavaProject.getProject(), false);
        if (perProjectInfo == null) {
            return resolvedChainedLibraries;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(resolvedChainedLibraries.length);
        for (int i10 = 0; i10 < resolvedChainedLibraries.length; i10++) {
            if (!linkedHashSet.contains(resolvedChainedLibraries[i10].getPath())) {
                IClasspathEntry iClasspathEntry2 = perProjectInfo.rootPathToResolvedEntries.get(resolvedChainedLibraries[i10].getPath());
                if (iClasspathEntry2 != null) {
                    resolvedChainedLibraries[i10] = iClasspathEntry2;
                }
                linkedHashSet.add(resolvedChainedLibraries[i10].getPath());
            }
        }
        return resolvedChainedLibraries;
    }

    public IPath getResolvedVariablePath(IPath iPath, boolean z10) {
        int segmentCount;
        if (iPath == null || (segmentCount = iPath.segmentCount()) == 0) {
            return null;
        }
        String segment = iPath.segment(0);
        IPath previousSessionVariable = z10 ? getPreviousSessionVariable(segment) : JavaCore.getClasspathVariable(segment);
        if (previousSessionVariable == null) {
            return null;
        }
        return segmentCount > 1 ? previousSessionVariable.append(iPath.removeFirstSegments(1)) : previousSessionVariable;
    }

    public HashMap<IJavaElement, Object> getTemporaryCache() {
        HashMap<IJavaElement, Object> hashMap = this.temporaryCache.get();
        if (hashMap != null) {
            return hashMap;
        }
        HashMap<IJavaElement, Object> hashMap2 = new HashMap<>();
        this.temporaryCache.set(hashMap2);
        return hashMap2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001d A[Catch: all -> 0x000f, DONT_GENERATE, TryCatch #0 {all -> 0x000f, blocks: (B:36:0x0006, B:38:0x000a, B:6:0x0013, B:8:0x001d, B:13:0x0024, B:25:0x0034, B:17:0x003d, B:19:0x0054, B:21:0x0059, B:27:0x005c, B:28:0x0064, B:32:0x006a, B:30:0x006c, B:34:0x0023), top: B:35:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ICompilationUnit[] getWorkingCopies(WorkingCopyOwner workingCopyOwner, boolean z10) {
        ICompilationUnit[] workingCopies;
        Map<CompilationUnit, PerWorkingCopyInfo> map;
        synchronized (this.perWorkingCopyInfos) {
            int i10 = 0;
            if (z10) {
                try {
                    DefaultWorkingCopyOwner defaultWorkingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
                    if (workingCopyOwner != defaultWorkingCopyOwner) {
                        workingCopies = getWorkingCopies(defaultWorkingCopyOwner, false);
                        map = this.perWorkingCopyInfos.get(workingCopyOwner);
                        if (map != null) {
                            return workingCopies;
                        }
                        int length = workingCopies == null ? 0 : workingCopies.length;
                        int size = map.size();
                        ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[length + size];
                        if (workingCopies != null) {
                            int i11 = 0;
                            for (int i12 = 0; i12 < length; i12++) {
                                ICompilationUnit iCompilationUnit = workingCopies[i12];
                                if (!map.containsKey(new CompilationUnit((PackageFragment) iCompilationUnit.getParent(), iCompilationUnit.getElementName(), workingCopyOwner))) {
                                    iCompilationUnitArr[i11] = iCompilationUnit;
                                    i11++;
                                }
                            }
                            if (i11 != length) {
                                ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[size + i11];
                                System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, i11);
                                iCompilationUnitArr = iCompilationUnitArr2;
                            }
                            i10 = i11;
                        }
                        Iterator<PerWorkingCopyInfo> it = map.values().iterator();
                        while (it.hasNext()) {
                            iCompilationUnitArr[i10] = it.next().getWorkingCopy();
                            i10++;
                        }
                        return iCompilationUnitArr;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            workingCopies = null;
            map = this.perWorkingCopyInfos.get(workingCopyOwner);
            if (map != null) {
            }
        }
    }

    public JavaWorkspaceScope getWorkspaceScope() {
        if (this.workspaceScope == null) {
            this.workspaceScope = new JavaWorkspaceScope();
        }
        return this.workspaceScope;
    }

    public ZipFile getZipFile(IPath iPath) throws CoreException {
        return getZipFile(iPath, true);
    }

    public boolean hasTemporaryCache() {
        return this.temporaryCache.get() != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ff A[Catch: all -> 0x0067, TryCatch #4 {all -> 0x0067, blocks: (B:103:0x0059, B:22:0x0073, B:24:0x0078, B:25:0x007d, B:62:0x00e3, B:64:0x00e7, B:66:0x00ee, B:67:0x00eb, B:70:0x00ef, B:72:0x00f3, B:74:0x00fa, B:75:0x00f7, B:78:0x00fb, B:80:0x00ff, B:81:0x0101, B:82:0x0102, B:83:0x0107), top: B:20:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0102 A[Catch: all -> 0x0067, TryCatch #4 {all -> 0x0067, blocks: (B:103:0x0059, B:22:0x0073, B:24:0x0078, B:25:0x007d, B:62:0x00e3, B:64:0x00e7, B:66:0x00ee, B:67:0x00eb, B:70:0x00ef, B:72:0x00f3, B:74:0x00fa, B:75:0x00f7, B:78:0x00fb, B:80:0x00ff, B:81:0x0101, B:82:0x0102, B:83:0x0107), top: B:20:0x0057 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IClasspathContainer initializeContainer(IJavaProject iJavaProject, IPath iPath) throws JavaModelException {
        IClasspathContainer failureContainer;
        PerformanceStats performanceStats;
        BatchInitializationMonitor batchInitializationMonitor = this.batchContainerInitializationsProgress;
        if (batchInitializationMonitor != null && batchInitializationMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        ClasspathContainerInitializer classpathContainerInitializer = JavaCore.getClasspathContainerInitializer(iPath.segment(0));
        if (classpathContainerInitializer != null) {
            if (CP_RESOLVE_VERBOSE) {
                verbose_triggering_container_initialization(iJavaProject, iPath, classpathContainerInitializer);
            }
            if (CP_RESOLVE_VERBOSE_ADVANCED) {
                verbose_triggering_container_initialization_invocation_trace();
            }
            IClasspathContainer iClasspathContainer = null;
            if (PERF_CONTAINER_INITIALIZER) {
                performanceStats = PerformanceStats.getStats(CONTAINER_INITIALIZER_PERF, this);
                performanceStats.startRun(((Object) iPath) + " of " + ((Object) iJavaProject.getPath()));
            } else {
                performanceStats = null;
            }
            IClasspathContainer iClasspathContainer2 = CONTAINER_INITIALIZATION_IN_PROGRESS;
            containerPut(iJavaProject, iPath, iClasspathContainer2);
            try {
                if (batchInitializationMonitor != null) {
                    try {
                        batchInitializationMonitor.subTask(Messages.bind(Messages.javamodel_configuring, classpathContainerInitializer.getDescription(iPath, iJavaProject)));
                    } catch (RuntimeException e10) {
                        e = e10;
                        if (!CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                            e.printStackTrace();
                        }
                        throw e;
                    } catch (CoreException e11) {
                        e = e11;
                        if (e instanceof JavaModelException) {
                            throw new JavaModelException(e);
                        }
                        throw ((JavaModelException) e);
                    } catch (Error e12) {
                        e = e12;
                        if (!CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                            e.printStackTrace();
                        }
                        throw e;
                    }
                }
                classpathContainerInitializer.initialize(iPath, iJavaProject);
                if (batchInitializationMonitor != null) {
                    batchInitializationMonitor.subTask("");
                }
                failureContainer = containerBeingInitializedGet(iJavaProject, iPath);
                if (failureContainer == null) {
                    try {
                        if (containerGet(iJavaProject, iPath) == iClasspathContainer2) {
                            failureContainer = classpathContainerInitializer.getFailureContainer(iPath, iJavaProject);
                            if (failureContainer == null) {
                                if (!CP_RESOLVE_VERBOSE) {
                                    if (CP_RESOLVE_VERBOSE_FAILURE) {
                                    }
                                    if (PERF_CONTAINER_INITIALIZER) {
                                        performanceStats.endRun();
                                    }
                                    containerRemoveInitializationInProgress(iJavaProject, iPath);
                                    if (!CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                                        verbose_container_initialization_failed(iJavaProject, iPath, failureContainer, classpathContainerInitializer);
                                    }
                                    return null;
                                }
                                verbose_container_null_failure_container(iJavaProject, iPath, classpathContainerInitializer);
                                if (PERF_CONTAINER_INITIALIZER) {
                                }
                                containerRemoveInitializationInProgress(iJavaProject, iPath);
                                if (!CP_RESOLVE_VERBOSE) {
                                }
                                verbose_container_initialization_failed(iJavaProject, iPath, failureContainer, classpathContainerInitializer);
                                return null;
                            }
                            if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                                verbose_container_using_failure_container(iJavaProject, iPath, classpathContainerInitializer);
                            }
                            containerPut(iJavaProject, iPath, failureContainer);
                        }
                    } catch (Error e13) {
                        e = e13;
                        if (!CP_RESOLVE_VERBOSE) {
                        }
                        e.printStackTrace();
                        throw e;
                    } catch (RuntimeException e14) {
                        e = e14;
                        if (!CP_RESOLVE_VERBOSE) {
                        }
                        e.printStackTrace();
                        throw e;
                    } catch (CoreException e15) {
                        e = e15;
                        if (e instanceof JavaModelException) {
                        }
                    } catch (Throwable th2) {
                        iClasspathContainer = failureContainer;
                        th = th2;
                        if (PERF_CONTAINER_INITIALIZER) {
                            performanceStats.endRun();
                        }
                        containerRemoveInitializationInProgress(iJavaProject, iPath);
                        if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                            verbose_container_initialization_failed(iJavaProject, iPath, iClasspathContainer, classpathContainerInitializer);
                        }
                        throw th;
                    }
                }
                if (PERF_CONTAINER_INITIALIZER) {
                    performanceStats.endRun();
                }
                if (CP_RESOLVE_VERBOSE_ADVANCED) {
                    verbose_container_value_after_initialization(iJavaProject, iPath, failureContainer);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            failureContainer = new ClasspathContainerInitializer() {
                @Override
                public void initialize(IPath iPath2, IJavaProject iJavaProject2) throws CoreException {
                }
            }.getFailureContainer(iPath, iJavaProject);
            if (CP_RESOLVE_VERBOSE_ADVANCED || CP_RESOLVE_VERBOSE_FAILURE) {
                verbose_no_container_initializer_found(iJavaProject, iPath);
            }
        }
        return failureContainer;
    }

    public void initializePreferences() {
        this.preferencesLookup[0] = InstanceScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
        this.preferencesLookup[1] = DefaultScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
        this.instanceNodeListener = new IEclipsePreferences.INodeChangeListener() {
            public void added(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
            }

            public void removed(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
                IEclipsePreferences child = nodeChangeEvent.getChild();
                IEclipsePreferences[] iEclipsePreferencesArr = JavaModelManager.this.preferencesLookup;
                if (child == iEclipsePreferencesArr[0]) {
                    iEclipsePreferencesArr[0] = InstanceScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
                    JavaModelManager.this.preferencesLookup[0].addPreferenceChangeListener(new EclipsePreferencesListener());
                }
            }
        };
        this.preferencesLookup[0].parent().addNodeChangeListener(this.instanceNodeListener);
        IEclipsePreferences iEclipsePreferences = this.preferencesLookup[0];
        EclipsePreferencesListener eclipsePreferencesListener = new EclipsePreferencesListener();
        this.instancePreferencesListener = eclipsePreferencesListener;
        iEclipsePreferences.addPreferenceChangeListener(eclipsePreferencesListener);
        this.defaultNodeListener = new IEclipsePreferences.INodeChangeListener() {
            public void added(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
            }

            public void removed(IEclipsePreferences.NodeChangeEvent nodeChangeEvent) {
                IEclipsePreferences child = nodeChangeEvent.getChild();
                IEclipsePreferences[] iEclipsePreferencesArr = JavaModelManager.this.preferencesLookup;
                if (child == iEclipsePreferencesArr[1]) {
                    iEclipsePreferencesArr[1] = DefaultScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
                }
            }
        };
        this.preferencesLookup[1].parent().addNodeChangeListener(this.defaultNodeListener);
    }

    public synchronized char[] intern(char[] cArr) {
        return this.charArraySymbols.add(cArr);
    }

    public boolean isAssumedExternalFile(IPath iPath) {
        Set<IPath> set = this.assumedExternalFiles;
        if (set == null) {
            return false;
        }
        return set.contains(iPath);
    }

    public boolean isClasspathBeingResolved(IJavaProject iJavaProject) {
        return getClasspathBeingResolved().contains(iJavaProject);
    }

    public boolean isExternalFile(IPath iPath) {
        Set<IPath> set = this.externalFiles;
        return set != null && set.contains(iPath);
    }

    public boolean isNonChainingJar(IPath iPath) {
        Set<IPath> set = this.nonChainingJars;
        return set != null && set.contains(iPath);
    }

    public boolean knowsOption(String str) {
        boolean contains = this.optionNames.contains(str);
        if (contains) {
            return contains;
        }
        return this.deprecatedOptions.get(str) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x00d4, code lost:
    
        if (r1 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x019d, code lost:
    
        if (r1 != null) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01af A[LOOP:0: B:18:0x01a4->B:20:0x01af, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadVariablesAndContainers() throws CoreException {
        DataInputStream dataInputStream;
        int readInt;
        QualifiedName qualifiedName = new QualifiedName(JavaCore.PLUGIN_ID, "variables");
        IWorkspaceRoot persistentProperty = ResourcesPlugin.getWorkspace().getRoot().getPersistentProperty(qualifiedName);
        IWorkspaceRoot iWorkspaceRoot = null;
        if (persistentProperty != null) {
            try {
                StringReader stringReader = new StringReader(persistentProperty);
                try {
                    Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(stringReader)).getDocumentElement();
                    if (documentElement == null) {
                        ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(qualifiedName, (String) null);
                        return;
                    }
                    if (!documentElement.getNodeName().equalsIgnoreCase("variables")) {
                        ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(qualifiedName, (String) null);
                        return;
                    }
                    NodeList childNodes = documentElement.getChildNodes();
                    int length = childNodes.getLength();
                    for (int i10 = 0; i10 < length; i10++) {
                        Node item = childNodes.item(i10);
                        if (item.getNodeType() == 1) {
                            Element element = (Element) item;
                            if (element.getNodeName().equalsIgnoreCase("variable")) {
                                variablePut(element.getAttribute("name"), new Path(element.getAttribute("path")));
                            }
                        }
                    }
                } catch (ParserConfigurationException unused) {
                    ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(qualifiedName, (String) null);
                } catch (SAXException unused2) {
                    ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(qualifiedName, (String) null);
                } finally {
                    stringReader.close();
                }
            } catch (IOException unused3) {
                persistentProperty = ResourcesPlugin.getWorkspace().getRoot();
                persistentProperty.setPersistentProperty(qualifiedName, (String) null);
                loadVariablesAndContainers(getDefaultPreferences());
                loadVariablesAndContainers(getInstancePreferences());
                File variableAndContainersFile = getVariableAndContainersFile();
                try {
                    try {
                        dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(variableAndContainersFile)));
                        try {
                            readInt = dataInputStream.readInt();
                        } catch (IOException e10) {
                            e = e10;
                            if (variableAndContainersFile.exists()) {
                                org.eclipse.jdt.internal.core.util.Util.log(e, "Unable to read variable and containers file");
                            }
                        } catch (RuntimeException e11) {
                            e = e11;
                            if (variableAndContainersFile.exists()) {
                                org.eclipse.jdt.internal.core.util.Util.log(e, "Unable to read variable and containers file (file is corrupt)");
                            }
                            if (dataInputStream != null) {
                                dataInputStream.close();
                            }
                            while (r3 < r0.length) {
                            }
                            containersReset(getRegisteredContainerIDs());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        iWorkspaceRoot = persistentProperty;
                        if (iWorkspaceRoot != null) {
                            try {
                                iWorkspaceRoot.close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    e = e12;
                    dataInputStream = null;
                } catch (RuntimeException e13) {
                    e = e13;
                    dataInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (iWorkspaceRoot != null) {
                    }
                    throw th;
                }
                try {
                    if (readInt == 1) {
                        int readInt2 = dataInputStream.readInt();
                        while (true) {
                            int i11 = readInt2 - 1;
                            if (readInt2 <= 0) {
                                break;
                            }
                            String readUTF = dataInputStream.readUTF();
                            String readUTF2 = dataInputStream.readUTF();
                            if (!CP_ENTRY_IGNORE.equals(readUTF2)) {
                                IPath fromPortableString = Path.fromPortableString(readUTF2);
                                this.variables.put(readUTF, fromPortableString);
                                this.previousSessionVariables.put(readUTF, fromPortableString);
                            }
                            readInt2 = i11;
                        }
                        JavaModel javaModel = getJavaModel();
                        int readInt3 = dataInputStream.readInt();
                        while (true) {
                            int i12 = readInt3 - 1;
                            if (readInt3 > 0) {
                                IJavaProject javaProject = javaModel.getJavaProject(dataInputStream.readUTF());
                                int readInt4 = dataInputStream.readInt();
                                while (true) {
                                    int i13 = readInt4 - 1;
                                    if (readInt4 <= 0) {
                                        break;
                                    }
                                    IPath fromPortableString2 = Path.fromPortableString(dataInputStream.readUTF());
                                    byte[] bArr = new byte[dataInputStream.readInt()];
                                    dataInputStream.readFully(bArr);
                                    recreatePersistedContainer(javaProject, fromPortableString2, new String(bArr), true);
                                    readInt4 = i13;
                                }
                                readInt3 = i12;
                            }
                        }
                        dataInputStream.close();
                    } else if (readInt == 2) {
                        new VariablesAndContainersLoadHelper(dataInputStream).load();
                    }
                    dataInputStream.close();
                } catch (IOException unused5) {
                    for (String str : getRegisteredVariableNames()) {
                        this.variables.put(str, null);
                    }
                    containersReset(getRegisteredContainerIDs());
                }
            } catch (Throwable th4) {
                ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(qualifiedName, (String) null);
                throw th4;
            }
        }
    }

    public synchronized Object peekAtInfo(IJavaElement iJavaElement) {
        Object obj;
        HashMap<IJavaElement, Object> hashMap = this.temporaryCache.get();
        return (hashMap == null || (obj = hashMap.get(iJavaElement)) == null) ? this.cache.peekAtInfo(iJavaElement) : obj;
    }

    public void prepareToSave(ISaveContext iSaveContext) {
    }

    public synchronized Object putInfos(IJavaElement iJavaElement, Object obj, boolean z10, Map<IJavaElement, Object> map) {
        try {
            Object peekAtInfo = this.cache.peekAtInfo(iJavaElement);
            if (peekAtInfo != null && !z10) {
                return peekAtInfo;
            }
            if (iJavaElement instanceof IParent) {
                closeChildren(peekAtInfo);
            }
            Iterator<Map.Entry<IJavaElement, Object>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<IJavaElement, Object> next = it.next();
                IJavaElement key = next.getKey();
                if (key instanceof JarPackageFragmentRoot) {
                    JavaElementInfo javaElementInfo = (JavaElementInfo) next.getValue();
                    it.remove();
                    this.cache.putInfo(key, javaElementInfo);
                }
            }
            for (Map.Entry<IJavaElement, Object> entry : map.entrySet()) {
                this.cache.putInfo(entry.getKey(), entry.getValue());
            }
            return obj;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putJarTypeInfo(IJavaElement iJavaElement, Object obj) {
        this.cache.jarTypeCache.put(iJavaElement, obj);
    }

    public Object readState(IProject iProject) throws CoreException {
        File serializationFile = getSerializationFile(iProject);
        if (serializationFile == null || !serializationFile.exists()) {
            if (!JavaBuilder.DEBUG) {
                return null;
            }
            if (serializationFile == null) {
                System.out.println("Project does not exist: " + ((Object) iProject));
                return null;
            }
            System.out.println("Build state file " + serializationFile.getPath() + " does not exist");
            return null;
        }
        try {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(serializationFile)));
            try {
                if (!dataInputStream.readUTF().equals(JavaCore.PLUGIN_ID)) {
                    throw new IOException(Messages.build_wrongFileFormat);
                }
                if (!dataInputStream.readUTF().equals("STATE")) {
                    throw new IOException(Messages.build_wrongFileFormat);
                }
                if (dataInputStream.readBoolean()) {
                    return JavaBuilder.readState(iProject, dataInputStream);
                }
                if (JavaBuilder.DEBUG) {
                    System.out.println("Saved state thinks last build failed for " + iProject.getName());
                }
                return null;
            } finally {
                dataInputStream.close();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, 2, "Error reading last build state for project " + iProject.getName(), e10));
        }
    }

    public void rememberScope(AbstractSearchScope abstractSearchScope) {
        this.searchScopes.put(abstractSearchScope, null);
    }

    public void removeFromInvalidArchiveCache(IPath iPath) {
        synchronized (this.invalidArchivesMutex) {
            if (this.invalidArchives.remove(iPath) != null) {
                if (DEBUG_INVALID_ARCHIVES) {
                    System.out.println("Invalid JAR cache: removed " + ((Object) iPath));
                }
                try {
                    for (IJavaProject iJavaProject : getJavaModel().getJavaProjects()) {
                        if (iJavaProject.findPackageFragmentRoot(iPath) != null) {
                            ((JavaProject) iJavaProject).resetCaches();
                        }
                    }
                } catch (JavaModelException e10) {
                    org.eclipse.jdt.internal.core.util.Util.log((Throwable) e10, "Unable to retrieve the Java model.");
                }
            }
        }
    }

    public void removeFromJarTypeCache(BinaryType binaryType) {
        this.cache.removeFromJarTypeCache(binaryType);
    }

    public synchronized Object removeInfoAndChildren(JavaElement javaElement) throws JavaModelException {
        Object peekAtInfo = this.cache.peekAtInfo(javaElement);
        if (peekAtInfo == null) {
            return null;
        }
        boolean z10 = false;
        try {
            if (JavaModelCache.VERBOSE) {
                String elementType = JavaModelCache.getElementType(javaElement);
                System.out.println(((Object) Thread.currentThread()) + " CLOSING " + elementType + " " + javaElement.toStringWithAncestors());
                try {
                    JavaModelCache.VERBOSE = false;
                    z10 = true;
                } catch (Throwable th2) {
                    th = th2;
                    z10 = true;
                    JavaModelCache.VERBOSE = z10;
                    throw th;
                }
            }
            javaElement.closing(peekAtInfo);
            if (javaElement instanceof IParent) {
                closeChildren(peekAtInfo);
            }
            this.cache.removeInfo(javaElement);
            if (z10) {
                System.out.println(this.cache.toStringFillingRation("-> "));
            }
            JavaModelCache.VERBOSE = z10;
            return peekAtInfo;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void removePerProjectInfo(JavaProject javaProject, boolean z10) {
        synchronized (this.perProjectInfos) {
            try {
                IProject project = javaProject.getProject();
                PerProjectInfo perProjectInfo = this.perProjectInfos.get(project);
                if (perProjectInfo != null) {
                    this.perProjectInfos.remove(project);
                    if (z10) {
                        perProjectInfo.forgetExternalTimestampsAndIndexes();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        resetClasspathListCache();
    }

    public void resetClasspathListCache() {
        Set<IPath> set = this.nonChainingJars;
        if (set != null) {
            set.clear();
        }
        if (DEBUG_INVALID_ARCHIVES) {
            synchronized (this.invalidArchivesMutex) {
                try {
                    if (!this.invalidArchives.isEmpty()) {
                        System.out.println("Invalid JAR cache: clearing cache");
                    }
                } finally {
                }
            }
        }
        synchronized (this.invalidArchivesMutex) {
            this.invalidArchives.clear();
        }
        Set<IPath> set2 = this.externalFiles;
        if (set2 != null) {
            set2.clear();
        }
        Set<IPath> set3 = this.assumedExternalFiles;
        if (set3 != null) {
            set3.clear();
        }
    }

    public void resetExternalFilesCache() {
        Set<IPath> set = this.externalFiles;
        if (set != null) {
            set.clear();
        }
    }

    public synchronized void resetJarTypeCache() {
        this.cache.resetJarTypeCache();
    }

    public void resetProjectOptions(JavaProject javaProject) {
        synchronized (this.perProjectInfos) {
            try {
                PerProjectInfo perProjectInfo = this.perProjectInfos.get(javaProject.getProject());
                if (perProjectInfo != null) {
                    perProjectInfo.options = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void resetProjectPreferences(JavaProject javaProject) {
        synchronized (this.perProjectInfos) {
            try {
                PerProjectInfo perProjectInfo = this.perProjectInfos.get(javaProject.getProject());
                if (perProjectInfo != null) {
                    perProjectInfo.preferences = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void resetTemporaryCache() {
        this.temporaryCache.set(null);
    }

    public IClasspathEntry resolveVariableEntry(IClasspathEntry iClasspathEntry, boolean z10) {
        IPath resolveDotDot;
        Object target;
        if (iClasspathEntry.getEntryKind() != 4) {
            return iClasspathEntry;
        }
        IPath resolvedVariablePath = getResolvedVariablePath(iClasspathEntry.getPath(), z10);
        if (resolvedVariablePath == null || (target = JavaModel.getTarget((resolveDotDot = ClasspathEntry.resolveDotDot(null, resolvedVariablePath)), false)) == null) {
            return null;
        }
        if (target instanceof IResource) {
            int type = ((IResource) target).getType();
            if (type != 1 && type != 2) {
                if (type == 4) {
                    return JavaCore.newProjectEntry(resolveDotDot, iClasspathEntry.getAccessRules(), iClasspathEntry.combineAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
                }
            }
            return JavaCore.newLibraryEntry(resolveDotDot, getResolvedVariablePath(iClasspathEntry.getSourceAttachmentPath(), z10), getResolvedVariablePath(iClasspathEntry.getSourceAttachmentRootPath(), z10), iClasspathEntry.getAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
        }
        if (!(target instanceof File) || (JavaModel.getFile(target) == null && !resolveDotDot.isAbsolute())) {
            return null;
        }
        return JavaCore.newLibraryEntry(resolveDotDot, getResolvedVariablePath(iClasspathEntry.getSourceAttachmentPath(), z10), getResolvedVariablePath(iClasspathEntry.getSourceAttachmentRootPath(), z10), iClasspathEntry.getAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
    }

    public void rollback(ISaveContext iSaveContext) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        if (r0 != 2) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void saving(ISaveContext iSaveContext) throws CoreException {
        ArrayList arrayList;
        long currentTimeMillis = VERBOSE ? System.currentTimeMillis() : -1L;
        saveVariablesAndContainers(iSaveContext);
        if (VERBOSE) {
            traceVariableAndContainers("Saved", currentTimeMillis);
        }
        int kind = iSaveContext.getKind();
        ArrayList arrayList2 = null;
        if (kind == 1) {
            saveClasspathListCache(NON_CHAINING_JARS_CACHE);
            saveClasspathListCache(EXTERNAL_FILES_CACHE);
            saveClasspathListCache(ASSUMED_EXTERNAL_FILES_CACHE);
            iSaveContext.needDelta();
            IndexManager indexManager = this.indexManager;
            if (indexManager != null && this.workspaceScope != null) {
                indexManager.cleanUpIndexes();
            }
        }
        this.externalFoldersManager.cleanUp(null);
        IProject project = iSaveContext.getProject();
        if (project != null) {
            if (JavaProject.hasJavaNature(project)) {
                saveState(getPerProjectInfo(project, true), iSaveContext);
                return;
            }
            return;
        }
        synchronized (this.perProjectInfos) {
            arrayList = new ArrayList(this.perProjectInfos.values());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                saveState((PerProjectInfo) it.next(), iSaveContext);
            } catch (CoreException e10) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(e10.getStatus());
            }
        }
        if (arrayList2 == null) {
            this.deltaState.saveExternalLibTimeStamps();
        } else {
            IStatus[] iStatusArr = new IStatus[arrayList2.size()];
            arrayList2.toArray(iStatusArr);
            throw new CoreException(new MultiStatus(JavaCore.PLUGIN_ID, 4, iStatusArr, Messages.build_cannotSaveStates, (Throwable) null));
        }
    }

    public void secondaryTypeAdding(String str, char[] cArr, char[] cArr2) {
        Map map;
        if (VERBOSE) {
            StringBuffer stringBuffer = new StringBuffer("JavaModelManager.addSecondaryType(");
            stringBuffer.append(str);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append('[');
            stringBuffer.append(new String(cArr2));
            stringBuffer.append('.');
            stringBuffer.append(new String(cArr));
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
            stringBuffer.append(')');
            org.eclipse.jdt.internal.core.util.Util.verbose(stringBuffer.toString());
        }
        IFile findMember = ResourcesPlugin.getWorkspace().getRoot().findMember(str);
        if ((findMember instanceof IFile) && org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(str)) {
            try {
                PerProjectInfo perProjectInfoCheckExistence = getPerProjectInfoCheckExistence(findMember.getProject());
                if (perProjectInfoCheckExistence.secondaryTypes == null) {
                    perProjectInfoCheckExistence.secondaryTypes = new Hashtable<>(3);
                    map = new HashMap(3);
                    perProjectInfoCheckExistence.indexingSecondaryCache = map;
                } else {
                    map = perProjectInfoCheckExistence.indexingSecondaryCache;
                    if (map == null) {
                        map = new HashMap(3);
                        perProjectInfoCheckExistence.indexingSecondaryCache = map;
                    }
                }
                Map map2 = (Map) map.get(findMember);
                if (map2 == null) {
                    map2 = new HashMap(3);
                    map.put(findMember, map2);
                }
                ICompilationUnit createCompilationUnitFrom = createCompilationUnitFrom(findMember, null);
                if (createCompilationUnitFrom != null) {
                    String str2 = new String(cArr);
                    IType type = createCompilationUnitFrom.getType(str2);
                    String elementName = type.getPackageFragment().getElementName();
                    Map map3 = (Map) map2.get(elementName);
                    if (map3 == null) {
                        map3 = new HashMap(3);
                        map2.put(elementName, map3);
                    }
                    map3.put(str2, type);
                }
                if (VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("\t- indexing cache:");
                    for (Map.Entry entry : map.entrySet()) {
                        org.eclipse.jdt.internal.core.util.Util.verbose("\t\t+ " + ((Object) ((IFile) entry.getKey()).getFullPath()) + ':' + entry.getValue());
                    }
                }
            } catch (JavaModelException unused) {
            }
        }
    }

    public Map<String, Map<String, IType>> secondaryTypes(IJavaProject iJavaProject, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (VERBOSE) {
            StringBuffer stringBuffer = new StringBuffer("JavaModelManager.secondaryTypes(");
            stringBuffer.append(iJavaProject.getElementName());
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(z10);
            stringBuffer.append(')');
            org.eclipse.jdt.internal.core.util.Util.verbose(stringBuffer.toString());
        }
        PerProjectInfo perProjectInfoCheckExistence = getPerProjectInfoCheckExistence(iJavaProject.getProject());
        Map<IFile, Map<String, Map<String, IType>>> map = perProjectInfoCheckExistence.secondaryTypes == null ? null : perProjectInfoCheckExistence.indexingSecondaryCache;
        Hashtable<String, Map<String, IType>> hashtable = perProjectInfoCheckExistence.secondaryTypes;
        if (hashtable != null && map == null) {
            return hashtable;
        }
        if (hashtable == null) {
            return secondaryTypesSearching(iJavaProject, z10, iProgressMonitor, perProjectInfoCheckExistence);
        }
        if (this.indexManager.awaitingJobsCount() > 0) {
            if (!z10) {
                return perProjectInfoCheckExistence.secondaryTypes;
            }
            try {
                this.indexManager.performConcurrentJob(new IJob() {
                    @Override
                    public boolean belongsTo(String str) {
                        return true;
                    }

                    @Override
                    public void cancel() {
                    }

                    @Override
                    public void ensureReadyToRun() {
                    }

                    @Override
                    public boolean execute(IProgressMonitor iProgressMonitor2) {
                        return iProgressMonitor2 == null || !iProgressMonitor2.isCanceled();
                    }

                    @Override
                    public String getJobFamily() {
                        return "";
                    }
                }, 3, iProgressMonitor);
            } catch (OperationCanceledException unused) {
                return perProjectInfoCheckExistence.secondaryTypes;
            }
        }
        return secondaryTypesMerging(perProjectInfoCheckExistence);
    }

    public void secondaryTypesRemoving(IFile iFile, boolean z10) {
        if (VERBOSE) {
            StringBuffer stringBuffer = new StringBuffer("JavaModelManager.removeFromSecondaryTypesCache(");
            stringBuffer.append(iFile.getName());
            stringBuffer.append(')');
            org.eclipse.jdt.internal.core.util.Util.verbose(stringBuffer.toString());
        }
        if (iFile != null) {
            PerProjectInfo perProjectInfo = getPerProjectInfo(iFile.getProject(), false);
            if (perProjectInfo == null || perProjectInfo.secondaryTypes == null) {
                return;
            }
            if (VERBOSE) {
                org.eclipse.jdt.internal.core.util.Util.verbose("-> remove file from cache of project: " + iFile.getProject().getName());
            }
            secondaryTypesRemoving(perProjectInfo.secondaryTypes, iFile);
            Map<IFile, Map<String, Map<String, IType>>> map = perProjectInfo.indexingSecondaryCache;
            if (!z10) {
                if (map == null) {
                    perProjectInfo.indexingSecondaryCache = new HashMap();
                    return;
                }
                return;
            }
            if (map != null) {
                Set<IFile> o10 = map.o();
                int size = o10.size();
                IFile[] iFileArr = null;
                int i10 = 0;
                for (IFile iFile2 : o10) {
                    if (iFile.equals(iFile2)) {
                        if (iFileArr == null) {
                            iFileArr = new IFile[size];
                        }
                        size--;
                        iFileArr[i10] = iFile2;
                        i10++;
                    }
                }
                if (iFileArr != null) {
                    for (int i11 = 0; i11 < i10; i11++) {
                        map.remove(iFileArr[i11]);
                    }
                }
            }
        }
    }

    public void setBuildOrder(String[] strArr) throws JavaModelException {
        if (JavaCore.COMPUTE.equals(JavaCore.getOption(JavaCore.CORE_JAVA_BUILD_ORDER)) && strArr != null && strArr.length > 1) {
            IWorkspace workspace = ResourcesPlugin.getWorkspace();
            IWorkspaceDescription description = workspace.getDescription();
            String[] buildOrder = description.getBuildOrder();
            if (buildOrder != null) {
                int length = strArr.length;
                HashMap hashMap = new HashMap(length);
                for (String str : strArr) {
                    hashMap.put(str, str);
                }
                int length2 = buildOrder.length;
                int i10 = 0;
                for (int i11 = 0; i11 < length2; i11++) {
                    if (hashMap.containsKey(buildOrder[i11])) {
                        buildOrder[i11] = null;
                        i10++;
                    }
                }
                String[] strArr2 = new String[(length2 - i10) + length];
                System.arraycopy(strArr, 0, strArr2, 0, length);
                for (String str2 : buildOrder) {
                    if (str2 != null) {
                        strArr2[length] = str2;
                        length++;
                    }
                }
                strArr = strArr2;
            }
            description.setBuildOrder(strArr);
            try {
                workspace.setDescription(description);
            } catch (CoreException e10) {
                throw new JavaModelException(e10);
            }
        }
    }

    public void setClasspathBeingResolved(IJavaProject iJavaProject, boolean z10) {
        if (z10) {
            getClasspathBeingResolved().add(iJavaProject);
        } else {
            getClasspathBeingResolved().remove(iJavaProject);
        }
    }

    public void setLastBuiltState(IProject iProject, Object obj) {
        if (JavaProject.hasJavaNature(iProject)) {
            PerProjectInfo perProjectInfo = getPerProjectInfo(iProject, true);
            perProjectInfo.triedRead = true;
            perProjectInfo.savedState = obj;
        }
        if (obj == null) {
            try {
                File serializationFile = getSerializationFile(iProject);
                if (serializationFile == null || !serializationFile.exists()) {
                    return;
                }
                serializationFile.delete();
            } catch (SecurityException unused) {
            }
        }
    }

    public void setOptions(Hashtable<String, String> hashtable) {
        Hashtable<String, String> hashtable2 = hashtable == null ? null : new Hashtable<>(hashtable);
        IEclipsePreferences defaultPreferences = getDefaultPreferences();
        IEclipsePreferences instancePreferences = getInstancePreferences();
        try {
            if (hashtable == null) {
                instancePreferences.clear();
            } else {
                Enumeration<String> keys = hashtable.keys();
                while (keys.hasMoreElements()) {
                    String nextElement = keys.nextElement();
                    if (getOptionLevel(nextElement) != 0) {
                        if (!nextElement.equals("org.eclipse.jdt.core.encoding")) {
                            String str = hashtable.get(nextElement);
                            String str2 = defaultPreferences.get(nextElement, (String) null);
                            if (str2 != null && str2.equals(str)) {
                                str = null;
                            }
                            storePreference(nextElement, str, instancePreferences, hashtable);
                        } else if (hashtable2 != null) {
                            hashtable2.put(nextElement, JavaCore.getEncoding());
                        }
                    }
                }
                instancePreferences.flush();
            }
        } catch (BackingStoreException unused) {
        }
        org.eclipse.jdt.internal.core.util.Util.fixTaskTags(hashtable2);
        this.optionsCache = hashtable2;
    }

    public void shutdown() {
        IEclipsePreferences node = InstanceScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
        try {
            node.flush();
        } catch (BackingStoreException e10) {
            org.eclipse.jdt.internal.core.util.Util.log((Throwable) e10, "Could not save JavaCore preferences");
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        workspace.removeResourceChangeListener(this.deltaState);
        workspace.removeSaveParticipant(JavaCore.PLUGIN_ID);
        ExternalAnnotationTracker.shutdown(workspace);
        IContentTypeManager contentTypeManager = Platform.getContentTypeManager();
        if (contentTypeManager != null) {
            contentTypeManager.removeContentTypeChangeListener(this);
        }
        IndexManager indexManager = this.indexManager;
        if (indexManager != null) {
            indexManager.shutdown();
        }
        node.removePreferenceChangeListener(this.propertyListener);
        this.preferencesLookup[1].parent().removeNodeChangeListener(this.defaultNodeListener);
        IEclipsePreferences[] iEclipsePreferencesArr = this.preferencesLookup;
        iEclipsePreferencesArr[1] = null;
        iEclipsePreferencesArr[0].parent().removeNodeChangeListener(this.instanceNodeListener);
        this.preferencesLookup[0].removePreferenceChangeListener(this.instancePreferencesListener);
        this.preferencesLookup[0] = null;
        InstanceScope.INSTANCE.getNode(ResourcesPlugin.getPlugin().getBundle().getSymbolicName()).removePreferenceChangeListener(this.resourcesPropertyListener);
        try {
            Job.getJobManager().join(JavaCore.PLUGIN_ID, (IProgressMonitor) null);
        } catch (InterruptedException unused) {
        }
    }

    public void startup() throws CoreException {
        try {
            this.cache = new JavaModelCache();
            JavaCore.getPlugin().getStateLocation();
            initializePreferences();
            this.propertyListener = new IEclipsePreferences.IPreferenceChangeListener() {
                public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent preferenceChangeEvent) {
                    JavaModelManager.this.optionsCache = null;
                }
            };
            InstanceScope.INSTANCE.getNode(JavaCore.PLUGIN_ID).addPreferenceChangeListener(this.propertyListener);
            this.resourcesPropertyListener = new IEclipsePreferences.IPreferenceChangeListener() {
                public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent preferenceChangeEvent) {
                    if ("encoding".equals(preferenceChangeEvent.getKey())) {
                        JavaModelManager.this.optionsCache = null;
                    }
                }
            };
            InstanceScope.INSTANCE.getNode(ResourcesPlugin.getPlugin().getBundle().getSymbolicName()).addPreferenceChangeListener(this.resourcesPropertyListener);
            Platform.getContentTypeManager().addContentTypeChangeListener(this);
            long currentTimeMillis = VERBOSE ? System.currentTimeMillis() : -1L;
            loadVariablesAndContainers();
            if (VERBOSE) {
                traceVariableAndContainers("Loaded", currentTimeMillis);
            }
            this.deltaState.initializeRootsWithPreviousSession();
            final IWorkspace workspace = ResourcesPlugin.getWorkspace();
            workspace.addResourceChangeListener(this.deltaState, 63);
            ExternalAnnotationTracker.start(workspace);
            startIndexing();
            Job job = new Job(Messages.savedState_jobName) {
                public IStatus run(IProgressMonitor iProgressMonitor) {
                    try {
                        IWorkspace iWorkspace = workspace;
                        final IWorkspace iWorkspace2 = workspace;
                        iWorkspace.run(new IWorkspaceRunnable() {
                            public void run(IProgressMonitor iProgressMonitor2) throws CoreException {
                                ISavedState addSaveParticipant = iWorkspace2.addSaveParticipant(JavaCore.PLUGIN_ID, JavaModelManager.this);
                                if (addSaveParticipant != null) {
                                    JavaModelManager.this.deltaState.getDeltaProcessor().overridenEventType = 1;
                                    addSaveParticipant.processResourceChangeEvents(JavaModelManager.this.deltaState);
                                }
                            }
                        }, iProgressMonitor);
                        return Status.OK_STATUS;
                    } catch (CoreException e10) {
                        return e10.getStatus();
                    }
                }
            };
            job.setSystem(true);
            job.setPriority(20);
            job.schedule();
        } catch (RuntimeException e10) {
            try {
                shutdown();
            } catch (RuntimeException e11) {
                e10.addSuppressed(e11);
            }
            throw e10;
        }
    }

    public boolean storePreference(String str, String str2, IEclipsePreferences iEclipsePreferences, Map<String, String> map) {
        int optionLevel = getOptionLevel(str);
        if (optionLevel == 0) {
            return false;
        }
        if (optionLevel == 1) {
            iEclipsePreferences.remove(str);
            String[] strArr = this.deprecatedOptions.get(str);
            int length = strArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (map == null || !map.containsKey(strArr[i10])) {
                    if (str2 == null) {
                        iEclipsePreferences.remove(strArr[i10]);
                    } else {
                        iEclipsePreferences.put(strArr[i10], str2);
                    }
                }
            }
        } else {
            if (optionLevel != 2) {
                return false;
            }
            if (str2 == null) {
                iEclipsePreferences.remove(str);
            } else {
                iEclipsePreferences.put(str, str2);
            }
        }
        return true;
    }

    public void touchProjects(final IProject[] iProjectArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new WorkspaceJob(Messages.synchronizing_projects_job) {
            public boolean belongsTo(Object obj) {
                return ResourcesPlugin.FAMILY_MANUAL_REFRESH == obj;
            }

            public IStatus runInWorkspace(IProgressMonitor iProgressMonitor2) throws CoreException {
                SubMonitor convert = SubMonitor.convert(iProgressMonitor2, iProjectArr.length);
                for (IProject iProject : iProjectArr) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Touching project " + iProject.getName());
                    }
                    if (iProject.isAccessible()) {
                        iProject.touch(convert.split(1));
                    }
                }
                return Status.OK_STATUS;
            }
        }.schedule();
    }

    public synchronized IPath variableGet(String str) {
        if (variableInitializationInProgress().contains(str)) {
            return VARIABLE_INITIALIZATION_IN_PROGRESS;
        }
        return this.variables.get(str);
    }

    public synchronized String[] variableNames() {
        String[] strArr;
        strArr = new String[this.variables.size()];
        Iterator<String> it = this.variables.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            strArr[i10] = it.next();
            i10 = i11;
        }
        return strArr;
    }

    public void variablePreferencesPut(String str, IPath iPath) {
        String str2 = CP_VARIABLE_PREFERENCES_PREFIX + str;
        if (iPath == null) {
            getInstancePreferences().remove(str2);
        } else {
            getInstancePreferences().put(str2, iPath.toString());
        }
        try {
            getInstancePreferences().flush();
        } catch (BackingStoreException unused) {
        }
    }

    public synchronized void variablePut(String str, IPath iPath) {
        Set<String> variableInitializationInProgress = variableInitializationInProgress();
        if (iPath == VARIABLE_INITIALIZATION_IN_PROGRESS) {
            variableInitializationInProgress.add(str);
            return;
        }
        variableInitializationInProgress.remove(str);
        if (iPath == null) {
            this.variables.put(str, CP_ENTRY_IGNORE_PATH);
            this.variablesWithInitializer.remove(str);
            this.deprecatedVariables.remove(str);
        } else {
            this.variables.put(str, iPath);
        }
        this.previousSessionVariables.remove(str);
    }

    public boolean variablePutIfInitializingWithSameValue(String[] strArr, IPath[] iPathArr) {
        String str;
        IPath variableGetDefaultToPreviousSession;
        if (strArr.length != 1 || (variableGetDefaultToPreviousSession = variableGetDefaultToPreviousSession((str = strArr[0]))) == null) {
            return false;
        }
        IPath iPath = iPathArr[0];
        if (!variableGetDefaultToPreviousSession.equals(iPath)) {
            return false;
        }
        variablePut(str, iPath);
        return true;
    }

    public void verbose_missbehaving_container_null_entries(IJavaProject iJavaProject, IPath iPath) {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer GET - missbehaving container (returning null as classpath entries)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tclasspath entries: <null>");
    }

    public void verifyArchiveContent(IPath iPath) throws CoreException {
        if (isJrt(iPath)) {
            return;
        }
        throwExceptionIfArchiveInvalid(iPath);
        if (JavaIndex.isEnabled()) {
            JavaIndex index = JavaIndex.getIndex();
            String absolutePath = getLocalFile(iPath).getAbsolutePath();
            try {
                IReader acquireReadLock = index.getNd().acquireReadLock();
                try {
                    NdResourceFile resourceFile = index.getResourceFile(absolutePath.toCharArray());
                    if (index.isUpToDate(resourceFile)) {
                        if (resourceFile.isCorruptedZipFile()) {
                            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, -1, Messages.status_IOException, new ZipException()));
                        }
                        if (acquireReadLock != null) {
                            acquireReadLock.close();
                            return;
                        }
                        return;
                    }
                    if (acquireReadLock != null) {
                        acquireReadLock.close();
                    }
                } finally {
                }
            } finally {
            }
        }
        closeZipFile(getZipFile(iPath));
    }

    public static boolean isJrt(String str) {
        return isJrt((IPath) new Path(str));
    }

    public ZipFile getZipFile(IPath iPath, boolean z10) throws CoreException {
        ArchiveValidity archiveValidity;
        ZipFile cache;
        if (z10) {
            throwExceptionIfArchiveInvalid(iPath);
        }
        ZipCache zipCache = this.zipFiles.get();
        if (zipCache != null && (cache = zipCache.getCache(iPath)) != null) {
            return cache;
        }
        File localFile = getLocalFile(iPath);
        try {
            if (ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelManager.getZipFile(IPath)] Creating ZipFile on " + ((Object) localFile));
            }
            if (!throwIoExceptionsInGetZipFile) {
                ZipFile zipFile = new ZipFile(localFile);
                if (zipCache != null) {
                    zipCache.setCache(iPath, zipFile);
                }
                return zipFile;
            }
            throw new IOException();
        } catch (IOException e10) {
            if (!(e10 instanceof ZipException)) {
                if (e10 instanceof FileNotFoundException) {
                    archiveValidity = ArchiveValidity.FILE_NOT_FOUND;
                } else {
                    archiveValidity = ArchiveValidity.UNABLE_TO_READ;
                }
            } else {
                archiveValidity = ArchiveValidity.BAD_FORMAT;
            }
            addInvalidArchive(iPath, archiveValidity);
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, -1, Messages.status_IOException, e10));
        }
    }

    public synchronized String intern(String str) {
        return (String) this.stringSymbols.add(str);
    }

    public static IJavaElement create(IFile iFile, IJavaProject iJavaProject) {
        if (iFile == null) {
            return null;
        }
        if (iJavaProject == null) {
            iJavaProject = JavaCore.create(iFile.getProject());
        }
        if (iFile.getFileExtension() == null) {
            return null;
        }
        String name = iFile.getName();
        if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(name)) {
            return createCompilationUnitFrom(iFile, iJavaProject);
        }
        if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
            return createClassFileFrom(iFile, iJavaProject);
        }
        return createJarPackageFragmentRootFrom(iFile, iJavaProject);
    }

    private static void recreatePersistedContainer(final IJavaProject iJavaProject, final IPath iPath, String str, boolean z10) {
        final IClasspathEntry[] iClasspathEntryArr;
        if (iJavaProject.getProject().isAccessible()) {
            if (str == null) {
                getJavaModelManager().containerPut(iJavaProject, iPath, null);
                return;
            }
            try {
                iClasspathEntryArr = ((JavaProject) iJavaProject).decodeClasspath(str, null)[0];
            } catch (IOException e10) {
                org.eclipse.jdt.internal.core.util.Util.log(e10, "Could not recreate persisted container: \n" + str);
                iClasspathEntryArr = JavaProject.INVALID_CLASSPATH;
            }
            if (iClasspathEntryArr != JavaProject.INVALID_CLASSPATH) {
                IClasspathContainer iClasspathContainer = new IClasspathContainer() {
                    @Override
                    public IClasspathEntry[] getClasspathEntries() {
                        return iClasspathEntryArr;
                    }

                    @Override
                    public String getDescription() {
                        return "Persisted container [" + ((Object) iPath) + " for project [" + iJavaProject.getElementName() + "]";
                    }

                    @Override
                    public int getKind() {
                        return 0;
                    }

                    @Override
                    public IPath getPath() {
                        return iPath;
                    }

                    public String toString() {
                        return getDescription();
                    }
                };
                if (z10) {
                    getJavaModelManager().containerPut(iJavaProject, iPath, iClasspathContainer);
                }
                Map<IPath, IClasspathContainer> map = getJavaModelManager().previousSessionContainers.get(iJavaProject);
                if (map == null) {
                    map = new HashMap<>(1);
                    getJavaModelManager().previousSessionContainers.put(iJavaProject, map);
                }
                map.put(iPath, iClasspathContainer);
            }
        }
    }

    public String getOption(String str, boolean z10, IEclipsePreferences iEclipsePreferences) {
        int optionLevel = getOptionLevel(str);
        if (optionLevel == 1) {
            String str2 = iEclipsePreferences.get(str, (String) null);
            if (str2 != null) {
                return str2.trim();
            }
            String[] strArr = this.deprecatedOptions.get(str);
            String str3 = iEclipsePreferences.get(strArr[0], z10 ? JavaCore.getOption(strArr[0]) : null);
            if (str3 == null) {
                return null;
            }
            return str3.trim();
        }
        if (optionLevel != 2) {
            return null;
        }
        String option = z10 ? JavaCore.getOption(str) : null;
        if (iEclipsePreferences == null) {
            return option;
        }
        String str4 = iEclipsePreferences.get(str, option);
        if (str4 == null) {
            return null;
        }
        return str4.trim();
    }

    public static IJavaElement create(IFolder iFolder, IJavaProject iJavaProject) {
        if (iFolder == null) {
            return null;
        }
        if (iJavaProject == null) {
            IJavaElement determineIfOnClasspath = determineIfOnClasspath(iFolder, JavaCore.create(iFolder.getProject()));
            if (determineIfOnClasspath != null) {
                return determineIfOnClasspath;
            }
            try {
                for (IJavaProject iJavaProject2 : getJavaModelManager().getJavaModel().getJavaProjects()) {
                    determineIfOnClasspath = determineIfOnClasspath(iFolder, iJavaProject2);
                    if (determineIfOnClasspath != null) {
                        return determineIfOnClasspath;
                    }
                }
                return determineIfOnClasspath;
            } catch (JavaModelException unused) {
                return null;
            }
        }
        return determineIfOnClasspath(iFolder, iJavaProject);
    }

    public void verbose_missbehaving_container(IJavaProject iJavaProject, IPath iPath, IClasspathEntry[] iClasspathEntryArr) {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer GET - missbehaving container (returning null classpath entry)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath) + "\n\tclasspath entries: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(iClasspathEntryArr, new Util.Displayable() {
            @Override
            public String displayString(Object obj) {
                StringBuffer stringBuffer = new StringBuffer("\t\t");
                if (obj == null) {
                    stringBuffer.append("<null>");
                    return stringBuffer.toString();
                }
                stringBuffer.append(obj);
                return stringBuffer.toString();
            }
        }) + "\n\t}");
    }

    private void secondaryTypesRemoving(Map<String, Map<String, IType>> map, IFile iFile) {
        char c10 = ':';
        if (VERBOSE) {
            StringBuffer stringBuffer = new StringBuffer("JavaModelManager.removeSecondaryTypesFromMap(");
            for (Map.Entry<String, Map<String, IType>> entry : map.entrySet()) {
                stringBuffer.append(String.valueOf(entry.getKey()) + ':' + ((Object) entry.getValue()));
            }
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append((Object) iFile.getFullPath());
            stringBuffer.append(')');
            org.eclipse.jdt.internal.core.util.Util.verbose(stringBuffer.toString());
        }
        Set<Map.Entry<String, Map<String, IType>>> entrySet = map.entrySet();
        int size = entrySet.size();
        String[] strArr = null;
        int i10 = 0;
        for (Map.Entry<String, Map<String, IType>> entry2 : entrySet) {
            String key = entry2.getKey();
            Map<String, IType> value = entry2.getValue();
            Set<Map.Entry<String, IType>> entrySet2 = value.entrySet();
            int size2 = entrySet2.size();
            String[] strArr2 = null;
            int i11 = 0;
            for (Map.Entry<String, IType> entry3 : entrySet2) {
                String key2 = entry3.getKey();
                if (iFile.equals(((JavaElement) entry3.getValue()).resource())) {
                    if (strArr2 == null) {
                        strArr2 = new String[size2];
                    }
                    size2--;
                    strArr2[i11] = key2;
                    i11++;
                }
                c10 = ':';
            }
            if (strArr2 != null) {
                for (int i12 = 0; i12 < i11; i12++) {
                    value.remove(strArr2[i12]);
                }
            }
            if (value.size() == 0) {
                if (strArr == null) {
                    strArr = new String[size];
                }
                size--;
                strArr[i10] = key;
                i10++;
            }
        }
        if (strArr != null) {
            for (int i13 = 0; i13 < i10; i13++) {
                map.remove(strArr[i13]);
            }
        }
        if (VERBOSE) {
            org.eclipse.jdt.internal.core.util.Util.verbose("\t- new secondary types map:");
            for (Map.Entry<String, Map<String, IType>> entry4 : map.entrySet()) {
                org.eclipse.jdt.internal.core.util.Util.verbose("\t\t+ " + entry4.getKey() + c10 + ((Object) entry4.getValue()));
            }
        }
    }

    private void loadVariablesAndContainers(IEclipsePreferences iEclipsePreferences) {
        String str;
        try {
            for (String str2 : iEclipsePreferences.keys()) {
                if (str2.startsWith(CP_VARIABLE_PREFERENCES_PREFIX)) {
                    String substring = str2.substring(39);
                    String str3 = iEclipsePreferences.get(str2, (String) null);
                    if (str3 != null) {
                        String trim = str3.trim();
                        if (CP_ENTRY_IGNORE.equals(trim)) {
                            iEclipsePreferences.remove(str2);
                        } else {
                            IPath path = new Path(trim);
                            this.variables.put(substring, path);
                            this.previousSessionVariables.put(substring, path);
                        }
                    }
                } else if (str2.startsWith(CP_CONTAINER_PREFERENCES_PREFIX) && (str = iEclipsePreferences.get(str2, (String) null)) != null) {
                    iEclipsePreferences.remove(str2);
                    recreatePersistedContainer(str2, str, true);
                }
            }
        } catch (BackingStoreException unused) {
        }
    }
}
