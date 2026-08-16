.class public Lorg/eclipse/jdt/internal/core/JavaModelManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/ISaveParticipant;
.implements Lorg/eclipse/core/runtime/content/IContentTypeManager$IContentTypeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$PersistedClasspathContainer;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;,
        Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity:[I = null

.field public static final ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID:Ljava/lang/String; = "annotationProcessorManager"

.field private static final ASSUMED_EXTERNAL_FILES_CACHE:Ljava/lang/String; = "assumedExternalFilesCache"

.field public static final BATCH_INITIALIZATION_FINISHED:I = 0x3

.field public static final BATCH_INITIALIZATION_IN_PROGRESS:I = 0x2

.field private static final BUFFER_MANAGER_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/buffermanager"

.field private static final BUILDER_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/builder"

.field private static final BUILDER_STATS_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/builder/stats"

.field public static final COMPILATION_PARTICIPANT_EXTPOINT_ID:Ljava/lang/String; = "compilationParticipant"

.field private static final COMPILER_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/compiler"

.field private static final COMPLETION_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/completion"

.field public static final COMPLETION_PERF:Ljava/lang/String; = "org.eclipse.jdt.core/perf/completion"

.field public static final CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

.field public static final CONTAINER_INITIALIZER_PERF:Ljava/lang/String; = "org.eclipse.jdt.core/perf/containerinitializer"

.field public static final CPCONTAINER_INITIALIZER_EXTPOINT_ID:Ljava/lang/String; = "classpathContainerInitializer"

.field public static final CPVARIABLE_INITIALIZER_EXTPOINT_ID:Ljava/lang/String; = "classpathVariableInitializer"

.field public static final CP_CONTAINER_PREFERENCES_PREFIX:Ljava/lang/String; = "org.eclipse.jdt.core.classpathContainer."

.field public static final CP_ENTRY_IGNORE:Ljava/lang/String; = "##<cp entry ignore>##"

.field public static final CP_ENTRY_IGNORE_PATH:Lorg/eclipse/core/runtime/IPath;

.field private static final CP_RESOLVE_ADVANCED_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/cpresolution/advanced"

.field private static final CP_RESOLVE_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/cpresolution"

.field private static final CP_RESOLVE_FAILURE_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/cpresolution/failure"

.field public static CP_RESOLVE_VERBOSE:Z = false

.field public static CP_RESOLVE_VERBOSE_ADVANCED:Z = false

.field public static CP_RESOLVE_VERBOSE_FAILURE:Z = false

.field public static final CP_USERLIBRARY_PREFERENCES_PREFIX:Ljava/lang/String; = "org.eclipse.jdt.core.userLibrary."

.field public static final CP_VARIABLE_PREFERENCES_PREFIX:Ljava/lang/String; = "org.eclipse.jdt.core.classpathVariable."

.field private static final DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug"

.field public static DEBUG_CLASSPATH:Z = false

.field public static DEBUG_INVALID_ARCHIVES:Z = false

.field private static DEBUG_REGISTRATION:Lorg/osgi/framework/ServiceRegistration; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceRegistration<",
            "Lorg/eclipse/osgi/service/debug/DebugOptionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final DELTA_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javadelta"

.field private static final DELTA_DEBUG_VERBOSE:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javadelta/verbose"

.field public static final DELTA_LISTENER_PERF:Ljava/lang/String; = "org.eclipse.jdt.core/perf/javadeltalistener"

.field private static final DEPRECATED_OPTION:I = 0x1

.field private static final DOM_AST_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/dom/ast"

.field private static final DOM_AST_DEBUG_THROW:Ljava/lang/String; = "org.eclipse.jdt.core/debug/dom/ast/throw"

.field private static final DOM_REWRITE_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/dom/rewrite"

.field private static final EXTERNAL_FILES_CACHE:Ljava/lang/String; = "externalFilesCache"

.field private static final FORMATTER_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/formatter"

.field public static final FORMATTER_EXTPOINT_ID:Ljava/lang/String; = "codeFormatter"

.field private static final HIERARCHY_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/hierarchy"

.field private static final INDEX_DEBUG_LARGE_CHUNKS:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/freespacetest"

.field private static final INDEX_DEBUG_PAGE_CACHE:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/pagecache"

.field private static final INDEX_INDEXER_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/indexer"

.field private static final INDEX_INDEXER_INSERTIONS:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/insertions"

.field private static final INDEX_INDEXER_LOG_SIZE_MEGS:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/logsizemegs"

.field private static final INDEX_INDEXER_SCHEDULING:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/scheduling"

.field private static final INDEX_INDEXER_SELFTEST:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/selftest"

.field private static final INDEX_INDEXER_SPACE:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/space"

.field private static final INDEX_INDEXER_TIMING:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/timing"

.field private static final INDEX_LOCKS_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/index/locks"

.field private static final INDEX_MANAGER_ADVANCED_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/indexmanager/advanced"

.field private static final INDEX_MANAGER_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/indexmanager"

.field private static INVALID_ARCHIVE_TTL_MILLISECONDS:J = 0x0L

.field private static final JAVAMODELCACHE_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javamodel/cache"

.field private static final JAVAMODELCACHE_INSERTIONS_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javamodel/insertions"

.field private static final JAVAMODEL_CLASSPATH:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javamodel/classpath"

.field private static final JAVAMODEL_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javamodel"

.field private static final JAVAMODEL_INVALID_ARCHIVES:Ljava/lang/String; = "org.eclipse.jdt.core/debug/javamodel/invalid_archives"

.field public static JRT_ACCESS_VERBOSE:Z = false

.field private static MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager; = null

.field public static final MAX_COMPILED_UNITS_AT_ONCE:Ljava/lang/String; = "maxCompiledUnitsAtOnce"

.field public static final NEED_BATCH_INITIALIZATION:I = 0x1

.field private static final NON_CHAINING_JARS_CACHE:Ljava/lang/String; = "nonChainingJarsCache"

.field public static final NO_BATCH_INITIALIZATION:I = 0x0

.field static final NO_PARTICIPANTS:[[Ljava/lang/Object;

.field public static final NO_WORKING_COPY:[Lorg/eclipse/jdt/core/ICompilationUnit;

.field public static PERF_CONTAINER_INITIALIZER:Z = false

.field public static PERF_VARIABLE_INITIALIZER:Z = false

.field private static final POST_ACTION_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/postaction"

.field static final PREF_DEFAULT:I = 0x1

.field static final PREF_INSTANCE:I = 0x0

.field public static final RECONCILE_PERF:Ljava/lang/String; = "org.eclipse.jdt.core/perf/reconcile"

.field private static final RESOLUTION_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/resolution"

.field private static final RESOLVE_REFERENCED_LIBRARIES_FOR_CONTAINERS:Ljava/lang/String; = "resolveReferencedLibrariesForContainers"

.field private static final SEARCH_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/search"

.field private static final SELECTION_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/selection"

.field public static final SELECTION_PERF:Ljava/lang/String; = "org.eclipse.jdt.core/perf/selection"

.field private static final SOURCE_MAPPER_DEBUG_VERBOSE:Ljava/lang/String; = "org.eclipse.jdt.core/debug/sourcemapper"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final UNKNOWN_OPTION:I = 0x0

.field private static final VALID_OPTION:I = 0x2

.field private static final VARIABLES_AND_CONTAINERS_FILE_VERSION:I = 0x2

.field public static final VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;

.field public static final VARIABLE_INITIALIZER_PERF:Ljava/lang/String; = "org.eclipse.jdt.core/perf/variableinitializer"

.field public static VERBOSE:Z = false

.field private static final ZIP_ACCESS_DEBUG:Ljava/lang/String; = "org.eclipse.jdt.core/debug/zipaccess"

.field public static ZIP_ACCESS_VERBOSE:Z

.field public static throwIoExceptionsInGetZipFile:Z


# instance fields
.field public abortOnMissingSource:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private annotationProcessorManagerFactory:Lorg/eclipse/core/runtime/IConfigurationElement;

.field private assumedExternalFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field public batchContainerInitializations:I

.field public batchContainerInitializationsLock:Ljava/lang/Object;

.field public batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

.field private cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

.field private charArraySymbols:Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;

.field private classpathsBeingResolved:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;>;"
        }
    .end annotation
.end field

.field public final compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

.field private containerInitializationInProgress:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public containerInitializersCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/ClasspathContainerInitializer;",
            ">;"
        }
    .end annotation
.end field

.field public containers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field containersBeingInitialized:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathContainer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field defaultNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

.field public deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

.field deprecatedOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deprecatedVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected elementsOutOfSynchWithBuffers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/eclipse/jdt/internal/core/Openable;",
            ">;"
        }
    .end annotation
.end field

.field private externalFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field private externalFoldersManager:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

.field public indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

.field instanceNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

.field instancePreferencesListener:Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;

.field private final invalidArchives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidArchivesMutex:Ljava/lang/Object;

.field final javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

.field private modulePathManager:Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

.field private nonChainingJars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field optionNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field optionsCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected perProjectInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/resources/IProject;",
            "Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected perWorkingCopyInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/WorkingCopyOwner;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/CompilationUnit;",
            "Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

.field public previousSessionContainers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field public previousSessionVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field propertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

.field public readOnlyVariables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resolveReferencedLibrariesForContainers:Z

.field resourcesPropertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

.field public rootPathToAttachments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected searchScopes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;",
            "*>;"
        }
    .end annotation
.end field

.field private stringSymbols:Lorg/eclipse/jdt/internal/core/util/WeakHashSet;

.field private temporaryCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private userLibraryManager:Lorg/eclipse/jdt/internal/core/UserLibraryManager;

.field private variableInitializationInProgress:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field public variablesWithInitializer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public workspaceScope:Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

.field private zipFiles:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->$SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->values()[Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->BAD_FORMAT:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->FILE_NOT_FOUND:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->UNABLE_TO_READ:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->VALID:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->$SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    const-string v1, "##<cp entry ignore>##"

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_ENTRY_IGNORE_PATH:Lorg/eclipse/core/runtime/IPath;

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    const-string v1, "Variable Initialization In Progress"

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_VARIABLE_INITIALIZER:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_CONTAINER_INITIALIZER:Z

    new-array v1, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_WORKING_COPY:[Lorg/eclipse/jdt/core/ICompilationUnit;

    new-array v1, v0, [[Ljava/lang/Object;

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->NO_PARTICIPANTS:[[Ljava/lang/Object;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_CLASSPATH:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_INVALID_ARCHIVES:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->JRT_ACCESS_VERBOSE:Z

    const-wide/32 v1, 0x1d4c0

    sput-wide v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->INVALID_ARCHIVE_TTL_MILLISECONDS:J

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->throwIoExceptionsInGetZipFile:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablesWithInitializer:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedVariables:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->readOnlyVariables:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionVariables:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableInitializationInProgress:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsLock:Ljava/lang/Object;

    new-instance v2, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializersCache:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->classpathsBeingResolved:Ljava/lang/ThreadLocal;

    new-instance v2, Lorg/eclipse/jdt/internal/core/util/WeakHashSet;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/core/util/WeakHashSet;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->stringSymbols:Lorg/eclipse/jdt/internal/core/util/WeakHashSet;

    new-instance v2, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->charArraySymbols:Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->annotationProcessorManagerFactory:Lorg/eclipse/core/runtime/IConfigurationElement;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->rootPathToAttachments:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resolveReferencedLibrariesForContainers:Z

    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFoldersManager:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->elementsOutOfSynchWithBuffers:Ljava/util/HashSet;

    new-instance v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->searchScopes:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchives:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchivesMutex:Ljava/lang/Object;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instancePreferencesListener:Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$2;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instanceNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$3;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->defaultNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    const-string v0, "nonChainingJarsCache"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->loadClasspathListCache(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    const-string v0, "externalFilesCache"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->loadClasspathListCache(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    const-string v0, "assumedExternalFilesCache"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->loadClasspathListCache(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->assumedExternalFiles:Ljava/util/Set;

    const-string v0, "resolveReferencedLibrariesForContainers"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resolveReferencedLibrariesForContainers:Z

    :cond_0
    return-void
.end method

.method private addDeprecatedOptions(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "org.eclipse.jdt.core.compiler.problem.invalidImport"

    const-string v1, "error"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.eclipse.jdt.core.compiler.problem.unreachableCode"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized batchContainerInitializations()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized batchInitializationFinished()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private closeChildren(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static conflictsWithOutputLocation(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)Z
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p0

    array-length p1, p0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, p1, :cond_1

    return v4

    :cond_1
    aget-object v5, p0, v3

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v2

    :cond_2
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    move v4, v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    :catch_0
    return v0
.end method

.method private containerAddInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private containerIsInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private declared-synchronized containersReset([Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v6, v0}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static create(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    .line 7
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    return-object p0

    .line 11
    :cond_2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createClassFileFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createJarPackageFragmentRootFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static create(Lorg/eclipse/core/resources/IFolder;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_3

    .line 14
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFolder;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->determineIfOnClasspath(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-nez p1, :cond_4

    .line 16
    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    aget-object p1, v1, v0

    .line 19
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->determineIfOnClasspath(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return-object v0

    .line 20
    :cond_3
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->determineIfOnClasspath(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    const/16 p1, 0x8

    if-eq v1, p1, :cond_1

    return-object v0

    .line 2
    :cond_1
    check-cast p0, Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IWorkspaceRoot;)Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    check-cast p0, Lorg/eclipse/core/resources/IProject;

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    return-object p0

    .line 4
    :cond_3
    check-cast p0, Lorg/eclipse/core/resources/IFolder;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IFolder;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0

    .line 5
    :cond_4
    check-cast p0, Lorg/eclipse/core/resources/IFile;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static createClassFileFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClassFile;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->determineIfOnClasspath(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v0

    :cond_2
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "module-info.class"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    return-object p0
.end method

.method public static createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->determineIfOnClasspath(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v0

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARNING : creating unit element outside classpath ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static createJarPackageFragmentRootFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    :try_start_0
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static determineIfOnClasspath(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 14

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->projectCache:Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;

    :goto_0
    if-nez v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentsCache:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    :goto_1
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    :goto_2
    array-length v6, v5

    if-lez v6, :cond_e

    const-string v7, "org.eclipse.jdt.core.compiler.source"

    const/4 v8, 0x1

    invoke-interface {p1, v7, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v9, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {p1, v9, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    if-lt v10, v6, :cond_4

    goto/16 :goto_6

    :cond_4
    aget-object v11, v5, v10

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v4, :cond_6

    return-object v2

    :cond_6
    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {v12, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object v13, v11

    check-cast v13, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v13

    check-cast v11, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v11

    invoke-static {p0, v13, v11}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v11

    if-nez v11, :cond_d

    if-eqz v1, :cond_8

    new-instance v1, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {v1, v12, p1}, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_4

    :cond_8
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1, v12}, Lorg/eclipse/jdt/internal/core/JavaProject;->getFolderPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    :goto_4
    if-nez v1, :cond_9

    return-object v2

    :cond_9
    invoke-interface {v12}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p0

    if-ne p0, v8, :cond_a

    invoke-interface {p1, v8}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segments()[Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_b

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->containsKey([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p0

    return-object p0

    :cond_b
    array-length v0, p0

    if-eqz v0, :cond_c

    invoke-static {p1, v7, v9}, Lorg/eclipse/jdt/internal/core/util/Util;->packageName(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v9}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :catch_0
    :cond_e
    :goto_6
    return-object v2
.end method

.method public static final doNotUse()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->doNotUse()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    return-void
.end method

.method private getClasspathBeingResolved()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->classpathsBeingResolved:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->classpathsBeingResolved:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getClasspathListCache(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const-string v0, "nonChainingJarsCache"

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getNonChainingJarsCache()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "externalFilesCache"

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    return-object p1

    :cond_1
    const-string v0, "assumedExternalFilesCache"

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->assumedExternalFiles:Ljava/util/Set;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getClasspathListFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultOptionsNoInitialization()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.compiler.debug.localVariable"

    const-string v2, "generate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.codegen.unusedLocal"

    const-string v2, "preserve"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.taskTags"

    const-string v2, "TODO,FIXME,XXX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.taskPriorities"

    const-string v2, "NORMAL,HIGH,NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.taskCaseSensitive"

    const-string v2, "enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.doc.comment.support"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    const-string v3, "error"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.builder.invalidClasspath"

    const-string v5, "abort"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.builder.duplicateResourceTask"

    const-string v5, "warning"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.builder.cleanOutputFolder"

    const-string v5, "clean"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.computeJavaBuildOrder"

    const-string v5, "ignore"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.circularClasspath"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.classpath.exclusionPatterns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.classpath.multipleOutputLocations"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->getEclipseDefaultSettings()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "org.eclipse.jdt.core.codeComplete.visibilityCheck"

    const-string v3, "disabled"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.deprecationCheck"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.forceImplicitQualification"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.fieldPrefixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.localPrefixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.argumentPrefixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.fieldSuffixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.localSuffixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.argumentSuffixes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.camelCaseMatch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.substringMatch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.codeComplete.suggestStaticImports"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    return-object v0
.end method

.method public static getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFoldersManager:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    return-object v0
.end method

.method private getFromCache(Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;)Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->accessRuleCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->accessRuleCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    return-object v0
.end method

.method public static final getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    return-object v0
.end method

.method public static getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getLocationURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    new-instance v7, Lorg/eclipse/core/runtime/Status;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->file_notFound:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, -0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v7}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    new-instance v7, Lorg/eclipse/core/runtime/Status;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->file_notFound:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, -0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v7}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :cond_2
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getModulePathManager()Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->modulePathManager:Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->modulePathManager:Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    if-nez v3, :cond_0

    iput-object v0, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->modulePathManager:Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->modulePathManager:Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    return-object v0
.end method

.method private getNonChainingJarsCache()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    return-object v0

    :cond_1
    aget-object v5, v1, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-lt v7, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries(Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getRegisteredContainerIDs()[Ljava/lang/String;
    .locals 8

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core"

    const-string v3, "classpathContainerInitializer"

    invoke-interface {v1, v2, v3}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v4, v5

    const-string v7, "id"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public static getRegisteredVariableNames()[Ljava/lang/String;
    .locals 8

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core"

    const-string v3, "classpathVariableInitializer"

    invoke-interface {v1, v2, v3}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v4, v5

    const-string v7, "variable"

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method private getSerializationFile(Lorg/eclipse/core/resources/IProject;)Ljava/io/File;
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "org.eclipse.jdt.core"

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IProject;->getWorkingLocation(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    const-string v0, "state.dat"

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public static getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->userLibraryManager:Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->userLibraryManager:Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    if-nez v3, :cond_0

    iput-object v0, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->userLibraryManager:Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->MANAGER:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->userLibraryManager:Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    return-object v0
.end method

.method private getVariableAndContainersFile()Ljava/io/File;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const-string v1, "variablesAndContainers.dat"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private initializeAllContainers(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_batching_containers_initialization(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/util/HashMap;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IWorkspace;->isTreeLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v0}, Lorg/eclipse/core/resources/IWorkspaceRunnable;->run(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    invoke-interface {v3, v2, v1, v4, v0}, Lorg/eclipse/core/resources/IWorkspace;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/jobs/ISchedulingRule;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v2, "Exception while initializing all containers"

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object p1

    return-object p1

    :goto_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p1

    :cond_4
    aget-object v5, v1, v4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    new-instance v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_4
    if-lt v9, v8, :cond_6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    aget-object v10, v7, v9

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v10

    const/4 v12, 0x5

    if-ne v10, v12, :cond_8

    invoke-virtual {p0, v6, v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v10

    if-nez v10, :cond_8

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method private isDeprecatedOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "org.eclipse.jdt.core.compiler.problem.invalidImport"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.eclipse.jdt.core.compiler.problem.unreachableCode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static isJrt(Ljava/lang/String;)Z
    .locals 1

    .line 2
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isJrt(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p0

    return p0
.end method

.method public static isJrt(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jrt-fs.jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private loadClasspathListCache(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathListFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gtz v2, :cond_0

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read JavaModelManager "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    throw p1
.end method

.method private loadVariablesAndContainers(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V
    .locals 6

    .line 62
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->keys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    aget-object v2, v0, v1

    .line 65
    const-string v3, "org.eclipse.jdt.core.classpathVariable."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/16 v3, 0x27

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-interface {p1, v2, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 69
    const-string v5, "##<cp entry ignore>##"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_1
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v2, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionVariables:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_2
    const-string v3, "org.eclipse.jdt.core.classpathContainer."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-interface {p1, v2, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 76
    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 77
    invoke-static {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->recreatePersistedContainer(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :goto_2
    return-void
.end method

.method public static recreatePersistedContainer(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/16 v0, 0x7c

    const/16 v1, 0x28

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v1, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->recreatePersistedContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private static recreatePersistedContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Z)V
    .locals 3

    .line 7
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    goto :goto_1

    .line 9
    :cond_1
    :try_start_0
    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->decodeClasspath(Ljava/lang/String;Ljava/util/Map;)[[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not recreate persisted container: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 11
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 12
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eq p2, v0, :cond_4

    .line 13
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;

    invoke-direct {v0, p2, p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$15;-><init>([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V

    if-eqz p3, :cond_2

    .line 14
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    .line 15
    :cond_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_3

    .line 16
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {p3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_3
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static registerDebugOptionsListener(Lorg/osgi/framework/BundleContext;)V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    const-string v1, "listener.symbolic.name"

    const-string v2, "org.eclipse.jdt.core"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lorg/eclipse/osgi/service/debug/DebugOptionsListener;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$8;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$8;-><init>()V

    invoke-interface {p0, v1, v2, v0}, Lorg/osgi/framework/BundleContext;->registerService(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;

    move-result-object p0

    sput-object p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_REGISTRATION:Lorg/osgi/framework/ServiceRegistration;

    return-void
.end method

.method private saveBuiltState(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->build_saveStateProgress:Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getSerializationFile(Lorg/eclipse/core/resources/IProject;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "org.eclipse.jdt.core"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v4, "STATE"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->savedState:Ljava/lang/Object;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->savedState:Ljava/lang/Object;

    invoke-static {v4, v3}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->writeState(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_saveStateComplete:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    move-object v7, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v7, v1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    new-instance v1, Lorg/eclipse/core/runtime/Status;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_cannotSaveState:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    new-instance v1, Lorg/eclipse/core/runtime/Status;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_cannotSaveState:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0
.end method

.method private saveClasspathListCache(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathListFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathListCache(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toPortableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v7, p1

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v7, p1

    :goto_2
    :try_start_6
    new-instance p1, Lorg/eclipse/core/runtime/Status;

    const-string v4, "org.eclipse.jdt.core"

    const-string v6, "Problems while saving non-chaining jar cache"

    const/4 v3, 0x4

    const/4 v5, 0x4

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_1
    throw p1
.end method

.method private saveState(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/core/resources/ISaveContext;->getKind()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->triedRead:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveBuiltState(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)V

    :cond_1
    return-void
.end method

.method private saveVariablesAndContainers(Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getVariableAndContainersFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;

    invoke-direct {v0, p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/io/DataOutputStream;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersSaveHelper;->save(Lorg/eclipse/core/resources/ISaveContext;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v7, p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v7, p1

    :goto_0
    :try_start_3
    new-instance p1, Lorg/eclipse/core/runtime/Status;

    const-string v4, "org.eclipse.jdt.core"

    const-string v6, "Problems while saving variables and containers"

    const/4 v3, 0x4

    const/4 v5, 0x4

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    throw p1
.end method

.method private secondaryTypesMerging(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    const/16 v2, 0x3a

    const-string v3, "\t\t+ "

    if-eqz v1, :cond_1

    const-string v1, "JavaModelManager.getSecondaryTypesMerged()"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    const-string v1, "\t- current cache to merge:"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    const/4 v4, 0x0

    iput-object v4, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string v1, "\t- secondary types cache merged:"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/core/resources/IFile;

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesRemoving(Ljava/util/Map;Lorg/eclipse/core/resources/IFile;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method private secondaryTypesRemoving(Ljava/util/Map;Lorg/eclipse/core/resources/IFile;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;",
            "Lorg/eclipse/core/resources/IFile;",
            ")V"
        }
    .end annotation

    .line 22
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    const/16 v1, 0x3a

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "JavaModelManager.removeSecondaryTypesFromMap("

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v2, 0x2c

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v2, 0x29

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    .line 36
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v5, :cond_3

    :goto_3
    if-lt v4, v6, :cond_4

    :cond_3
    move-object/from16 v7, p1

    goto :goto_4

    .line 37
    :cond_4
    aget-object v0, v5, v4

    move-object/from16 v7, p1

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 38
    :goto_4
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_6

    .line 39
    const-string v0, "\t- new secondary types map:"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 40
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_6

    .line 42
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t\t+ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_6
    return-void

    :cond_7
    move-object/from16 v7, p1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 47
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 48
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 49
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    .line 50
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v12, v3

    move v13, v4

    .line 51
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    if-eqz v12, :cond_9

    move v10, v4

    :goto_8
    if-lt v10, v13, :cond_8

    goto :goto_9

    .line 52
    :cond_8
    aget-object v11, v12, v10

    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 53
    :cond_9
    :goto_9
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_2

    if-nez v5, :cond_a

    .line 54
    new-array v5, v2, [Ljava/lang/String;

    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v8, v6, 0x1

    .line 55
    aput-object v9, v5, v6

    move v6, v8

    goto/16 :goto_2

    .line 56
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 58
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/internal/core/JavaElement;

    .line 59
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v14

    move-object/from16 v1, p2

    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-nez v12, :cond_c

    .line 60
    new-array v12, v11, [Ljava/lang/String;

    :cond_c
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v14, v13, 0x1

    .line 61
    aput-object v15, v12, v13

    move v13, v14

    :cond_d
    const/16 v1, 0x3a

    goto :goto_7
.end method

.method private static secondaryTypesSearching(Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Z",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            "Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JavaModelManager.secondaryTypesSearch("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$17;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$17;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p0

    array-length v2, p0

    new-array v3, v2, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v5, v2, :cond_a

    if-ge v6, v2, :cond_2

    new-array p0, v6, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-static {v3, v4, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p0

    :cond_2
    new-instance p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>()V

    invoke-virtual {p0, v3, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllSecondaryTypeNames([Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    new-instance v7, Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result p0

    invoke-direct {v7, p0}, Ljava/util/Hashtable;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, p3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    if-eqz p0, :cond_3

    iget-object p0, p3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    if-eqz p0, :cond_5

    :cond_3
    iput-object v7, p3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    sget-boolean p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz p0, :cond_5

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\t-> secondary paths stored in cache: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p0, p3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    return-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t\t- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v10, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v10, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v7, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    invoke-interface {v10, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    add-int/lit8 v7, v6, 0x1

    aget-object v8, p0, v5

    aput-object v8, v3, v6

    move v6, v7

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private startIndexing()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->reset()V

    :cond_0
    return-void
.end method

.method private throwExceptionIfArchiveInvalid(Lorg/eclipse/core/runtime/IPath;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getArchiveValidity(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->$SWITCH_TABLE$org$eclipse$jdt$internal$core$JavaModelManager$ArchiveValidity()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    move-object v6, p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Archive not found for path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read archive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad format in archive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-nez v6, :cond_3

    return-void

    :cond_3
    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const/4 v4, -0x1

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->status_IOException:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
.end method

.method private traceVariableAndContainers(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getVariableAndContainersFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "{0} {1} bytes in variablesAndContainers.dat in {2}ms"

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterDebugOptionsListener()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_REGISTRATION:Lorg/osgi/framework/ServiceRegistration;

    invoke-interface {v0}, Lorg/osgi/framework/ServiceRegistration;->unregister()V

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_REGISTRATION:Lorg/osgi/framework/ServiceRegistration;

    return-void
.end method

.method private declared-synchronized variableGetDefaultToPreviousSession(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/IPath;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionVariable(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private variableInitializationInProgress()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private verbose_batching_containers_initialization(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - batching containers initialization\n\tproject to init: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tcontainer path to init: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_container_initialization_failed(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    const-string v1, "\tinitializer: "

    const-string v2, "\tcontainer path: "

    const/16 v3, 0xa

    if-ne p3, v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "CPContainer INIT - FAILED (initializer did not initialize container)\n\tproject: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "CPContainer INIT - FAILED (see exception above)\n\tproject: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private verbose_container_null_failure_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - FAILED (and failure container is null)\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tcontainer path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tinitializer: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_container_using_failure_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - FAILED (using failure container)\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tcontainer path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tinitializer: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_container_value_after_initialization(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CPContainer INIT - after resolution\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tproject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tcontainer path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\tcontainer: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :goto_0
    array-length v1, p2

    if-lt p3, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "\t}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string p1, "\tcontainer: {unbound}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_missbehaving_container(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer SET  - missbehaving container\n\tcontainer path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    const-string p1, "\tprojects: {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$4;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$4;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    .line 5
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string p1, "}\n\tvalues on previous session: {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$5;

    invoke-direct {p1, p0, p4, p6}, Lorg/eclipse/jdt/internal/core/JavaModelManager$5;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    .line 8
    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "}\n\tnew values: {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;

    invoke-direct {p1, p0, p4, p5}, Lorg/eclipse/jdt/internal/core/JavaModelManager$6;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    .line 11
    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, "\n\t}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_no_container_initializer_found(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - no initializer found\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tcontainer path: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_reentering_project_container_access(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CPContainer INIT - reentering access to project container during its initialization, will see previous value\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tproject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tcontainer path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\tprevious value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    :goto_0
    array-length v1, p1

    if-lt p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, " \t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, " \t}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "<Fake exception>"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method private verbose_reentering_variable_access(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPVariable INIT - reentering access to variable during its initialization, will see previous value\n\tvariable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tprevious value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "<Fake exception>"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method private verbose_triggering_container_initialization(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer INIT - triggering initialization\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tcontainer path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tinitializer: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_triggering_container_initialization_invocation_trace()V
    .locals 2

    const-string v0, "CPContainer INIT - triggering initialization\n\tinvocation trace:"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "<Fake exception>"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method


# virtual methods
.method public addAssumedExternalFile(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->assumedExternalFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExternalFile(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addInvalidArchive(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;)V
    .locals 7

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_INVALID_ARCHIVES:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid JAR cache: adding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchivesMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchives:Ljava/util/Map;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lorg/eclipse/jdt/internal/core/JavaModelManager;->INVALID_ARCHIVE_TTL_MILLISECONDS:J

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;-><init>(JLorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addNonChainingJar(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized cacheToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cacheZipFiles(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public clearExternalFileState(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeZipFile(Ljava/util/zip/ZipFile;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "("

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") [JavaModelManager.closeZipFile(ZipFile)] NOT closed ZipFile (cache exist!) on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") [JavaModelManager.closeZipFile(ZipFile)] Closing ZipFile on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/Plugin;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v1

    new-instance v2, Lorg/eclipse/core/runtime/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    const-string v4, "org.eclipse.jdt.core"

    invoke-direct {v2, v3, v4, p1, v0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :goto_2
    return-void
.end method

.method public containerBeingInitializedGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IClasspathContainer;

    return-object p1
.end method

.method public containerBeingInitializedPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containerBeingInitializedRemove(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/IClasspathContainer;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    return-object p2
.end method

.method public declared-synchronized containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerIsInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IClasspathContainer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized containerGetDefaultToPreviousSession(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IClasspathContainer;

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized containerIsSet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IClasspathContainer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerAddInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemoveInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p3, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public containerPutIfInitializingWithSameEntries(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;)Z
    .locals 10

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    aget-object v7, p3, v1

    aget-object v0, p2, v1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerIsInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGetDefaultToPreviousSession(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v3

    if-nez v7, :cond_3

    if-nez v3, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    return v2

    :cond_2
    return v1

    :cond_3
    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v8

    if-nez v3, :cond_7

    array-length v3, v8

    if-nez v3, :cond_4

    invoke-virtual {p0, v0, p1, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    return v2

    :cond_4
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_6

    :cond_5
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_6
    return v1

    :cond_7
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v9

    array-length v3, v9

    array-length v4, v8

    if-eq v3, v4, :cond_a

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_9

    :cond_8
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_9
    return v1

    :cond_a
    array-length v3, v8

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_b

    invoke-virtual {p0, v0, p1, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    return v2

    :cond_b
    aget-object v5, v8, v4

    if-nez v5, :cond_e

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez p2, :cond_c

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz p2, :cond_d

    :cond_c
    invoke-virtual {p0, v0, p1, v8}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_d
    return v1

    :cond_e
    aget-object v6, v9, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_10

    :cond_f
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_missbehaving_container(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/IClasspathContainer;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_10
    return v1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public declared-synchronized containerRemove(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public containerRemoveInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerInitializationInProgress:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public contentTypeChanged(Lorg/eclipse/core/runtime/content/IContentTypeManager$ContentTypeChangeEvent;)V
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->resetJavaLikeExtensions()V

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return-void
.end method

.method public createAnnotationProcessorManager()Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->annotationProcessorManagerFactory:Lorg/eclipse/core/runtime/IConfigurationElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getExtensionRegistry()Lorg/eclipse/core/runtime/IExtensionRegistry;

    move-result-object v0

    const-string v3, "org.eclipse.jdt.core"

    const-string v4, "annotationProcessorManager"

    invoke-interface {v0, v3, v4}, Lorg/eclipse/core/runtime/IExtensionRegistry;->getExtensionPoint(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IExtensionPoint;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtensionPoint;->getExtensions()[Lorg/eclipse/core/runtime/IExtension;

    move-result-object v0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    goto :goto_3

    :cond_1
    if-lez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An annotation processor manager is already registered: ignoring "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IExtension;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IExtension;->getConfigurationElements()[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_3

    goto :goto_2

    :cond_3
    aget-object v6, v4, v5

    const-string v7, "annotationProcessorManager"

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IConfigurationElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->annotationProcessorManagerFactory:Lorg/eclipse/core/runtime/IConfigurationElement;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->annotationProcessorManagerFactory:Lorg/eclipse/core/runtime/IConfigurationElement;

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;

    invoke-direct {v3, p0, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$9;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/core/runtime/IConfigurationElement;[Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;)V

    invoke-static {v3}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    aget-object v0, v2, v1

    return-object v0

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public debugNewOpenableCacheStats()Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "Lorg/eclipse/jdt/core/ITypeRoot;",
            "Lorg/eclipse/jdt/internal/core/JavaElementInfo;",
            ">.Stats;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;-><init>(Lorg/eclipse/jdt/internal/core/util/LRUCache;)V

    return-object v0
.end method

.method public discardPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/4 v4, -0x1

    if-nez v3, :cond_1

    monitor-exit v1

    return v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    if-nez v5, :cond_2

    monitor-exit v1

    return v4

    :cond_2
    iget v4, v5, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    if-nez v4, :cond_3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v5, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeInfoAndChildren(Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->closeBuffer()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->buildDeltas()V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object p1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->registerJavaModelDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    :cond_4
    iget p1, v5, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    return p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public doneSaving(Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 0

    return-void
.end method

.method public flushZipFiles(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;

    const-string v1, "("

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") [JavaModelManager.flushZipFiles(String)] NOT found cache for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;->owner:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;->flush()V

    goto :goto_0

    :cond_2
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") [JavaModelManager.flushZipFiles(String)] NOT closed cache, wrong owner, expected: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;->owner:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", got: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized forceBatchInitializations(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    if-eqz p1, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_2
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getAccessRule(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/core/IAccessRule;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;-><init>(Lorg/eclipse/core/runtime/IPath;I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getFromCache(Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;)Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    move-result-object p1

    return-object p1
.end method

.method public getAccessRuleForProblemId([CI)Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;-><init>([CI)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getFromCache(Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;)Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;

    move-result-object p1

    return-object p1
.end method

.method public getArchiveValidity(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchivesMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchives:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->VALID:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    return-object p1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;->evictionTimestamp:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;Z)Ljava/util/zip/ZipFile;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeFromInvalidArchiveCache(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getArchiveValidity(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$InvalidArchiveInfo;->reason:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializations()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializeAllContainers(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchInitializationFinished()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchInitializationFinished()V

    throw p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializeContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v2

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerBeingInitializedRemove(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    new-instance v3, Lorg/eclipse/jdt/internal/core/SetContainerOperation;

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaProject;

    aput-object p2, v4, v0

    new-array p2, v1, [Lorg/eclipse/jdt/core/IClasspathContainer;

    aput-object v2, p2, v0

    invoke-direct {v3, p1, v4, p2}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;-><init>(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getDefaultOptions()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDefaultPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "org.eclipse.jdt.core.encoding"

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addDeprecatedOptions(Ljava/util/Hashtable;)V

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDefaultPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getElementsOutOfSynchWithBuffers()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/eclipse/jdt/internal/core/Openable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->elementsOutOfSynchWithBuffers:Ljava/util/HashSet;

    return-object v0
.end method

.method public declared-synchronized getExistingElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getExistingElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getExternalWorkingCopyProjects()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    return-object v0
.end method

.method public getLastBuiltState(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a Java project"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->triedRead:Z

    if-nez v2, :cond_3

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->triedRead:Z

    if-eqz p2, :cond_2

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->build_readStateProgress:Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->subTask(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->readState(Lorg/eclipse/core/resources/IProject;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->savedState:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception while reading last build state for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->savedState:Ljava/lang/Object;

    return-object p1
.end method

.method public getOpenableCacheSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getSpaceLimit()I

    move-result v0

    return v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "org.eclipse.jdt.core.encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getEncoding()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isDeprecatedOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-string p1, "error"

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOptionLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-interface {v2, p1, v1, v3}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->get(Ljava/lang/String;Ljava/lang/String;[Lorg/osgi/service/prefs/Preferences;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    aget-object p1, p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-interface {v2, p1, v1, v0}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->get(Ljava/lang/String;Ljava/lang/String;[Lorg/osgi/service/prefs/Preferences;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getOption(Ljava/lang/String;ZLorg/eclipse/core/runtime/preferences/IEclipsePreferences;)Ljava/lang/String;
    .locals 3

    .line 11
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOptionLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    .line 12
    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    if-nez p3, :cond_2

    return-object p2

    .line 13
    :cond_2
    invoke-interface {p3, p1, p2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 15
    :cond_4
    invoke-interface {p3, p1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 18
    aget-object p2, p1, v0

    invoke-static {p2}, Lorg/eclipse/jdt/core/JavaCore;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    move-object p2, v2

    .line 19
    :goto_2
    aget-object p1, p1, v0

    invoke-interface {p3, p1, p2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method public getOptionLevel(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getOptions()Ljava/util/Hashtable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionsCache:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v1

    :cond_0
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDefaultOptionsNoInitialization()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionsCache:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionsCache:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "org.eclipse.jdt.core.encoding"

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addDeprecatedOptions(Ljava/util/Hashtable;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->fixTaskTags(Ljava/util/Map;)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionsCache:Ljava/util/Hashtable;

    return-object v0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-interface {v1, v5, v4, v6}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->get(Ljava/lang/String;Ljava/lang/String;[Lorg/osgi/service/prefs/Preferences;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v5, v2

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v5, :cond_5

    goto :goto_1

    :cond_5
    aget-object v8, v2, v7

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v0, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->get(Ljava/lang/String;Ljava/lang/String;[Lorg/osgi/service/prefs/Preferences;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;-><init>(Lorg/eclipse/core/resources/IProject;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    invoke-direct {v1, p1, p4}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    iget p1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->useCount:I

    :cond_3
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPreviousSessionContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IClasspathContainer;

    if-eqz v0, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_reentering_project_container_access(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreviousSessionVariable(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_reentering_variable_access(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReferencedClasspathEntries(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 4

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolvedChainedLibraries()[Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object p1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_2

    return-object p1

    :cond_2
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToResolvedEntries:Ljava/util/Map;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v2, :cond_4

    aput-object v2, p1, v0

    :cond_4
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPreviousSessionVariable(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathVariable(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x1

    if-le v1, v0, :cond_4

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public getTemporaryCache()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object p2, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perWorkingCopyInfos:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    monitor-exit v0

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    array-length v3, p2

    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    add-int v5, v3, v4

    new-array v5, v5, [Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz p2, :cond_6

    move v6, v1

    move v7, v6

    :goto_2
    if-lt v6, v3, :cond_4

    if-eq v7, v3, :cond_3

    add-int/2addr v4, v7

    new-array p1, v4, [Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-static {v5, v1, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, p1

    :cond_3
    move v1, v7

    goto :goto_3

    :cond_4
    aget-object v8, p2, v6

    new-instance v9, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v7, 0x1

    aput-object v8, v5, v7

    move v7, v9

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_7

    monitor-exit v0

    return-object v5

    :cond_7
    add-int/lit8 p2, v1, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getWorkingCopy()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    aput-object v2, v5, v1

    move v1, p2

    goto :goto_4

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getWorkspaceScope()Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->workspaceScope:Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->workspaceScope:Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->workspaceScope:Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    return-object v0
.end method

.method public getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;Z)Ljava/util/zip/ZipFile;

    move-result-object p1

    return-object p1
.end method

.method public getZipFile(Lorg/eclipse/core/runtime/IPath;Z)Ljava/util/zip/ZipFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->throwExceptionIfArchiveInvalid(Lorg/eclipse/core/runtime/IPath;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->zipFiles:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;->getCache(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;

    move-result-object v0

    .line 6
    :try_start_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") [JavaModelManager.getZipFile(IPath)] Creating ZipFile on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v5, p2

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->throwIoExceptionsInGetZipFile:Z

    if-nez v1, :cond_4

    .line 9
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$ZipCache;->setCache(Lorg/eclipse/core/runtime/IPath;Ljava/util/zip/ZipFile;)V

    :cond_3
    return-object v1

    .line 11
    :cond_4
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_1
    instance-of p2, v5, Ljava/util/zip/ZipException;

    if-nez p2, :cond_6

    .line 13
    instance-of p2, v5, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_5

    .line 14
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->FILE_NOT_FOUND:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    goto :goto_2

    .line 15
    :cond_5
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->UNABLE_TO_READ:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    goto :goto_2

    .line 16
    :cond_6
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;->BAD_FORMAT:Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;

    .line 17
    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addInvalidArchive(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaModelManager$ArchiveValidity;)V

    .line 18
    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance p2, Lorg/eclipse/core/runtime/Status;

    const/4 v3, -0x1

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/Messages;->status_IOException:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p1, p2}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
.end method

.method public hasTemporaryCache()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsProgress:Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathContainerInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/ClasspathContainerInitializer;

    move-result-object v1

    if-eqz v1, :cond_19

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_triggering_container_initialization(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V

    :cond_2
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_triggering_container_initialization_invocation_trace()V

    :cond_3
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_CONTAINER_INITIALIZER:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const-string v2, "org.eclipse.jdt.core/perf/containerinitializer"

    invoke-static {v2, p0}, Lorg/eclipse/core/runtime/PerformanceStats;->getStats(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/core/runtime/PerformanceStats;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/eclipse/core/runtime/PerformanceStats;->startRun(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    sget-object v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CONTAINER_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/jdt/core/IClasspathContainer;

    invoke-virtual {p0, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    if-eqz v0, :cond_5

    :try_start_0
    sget-object v5, Lorg/eclipse/jdt/internal/core/util/Messages;->javamodel_configuring:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/eclipse/core/runtime/IProgressMonitor;->subTask(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :cond_5
    :goto_2
    invoke-virtual {v1, p2, p1}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->initialize(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V

    if-eqz v0, :cond_6

    const-string v5, ""

    invoke-interface {v0, v5}, Lorg/eclipse/core/runtime/IProgressMonitor;->subTask(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerBeingInitializedGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_f

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v5

    if-ne v5, v4, :cond_f

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getFailureContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v0

    if-nez v0, :cond_c

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto/16 :goto_7

    :catch_3
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_5

    :catch_5
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_6

    :cond_7
    :goto_3
    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_container_null_failure_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_CONTAINER_INITIALIZER:Z

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    :cond_9
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemoveInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v2, :cond_b

    :cond_a
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_container_initialization_failed(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V

    :cond_b
    return-object v3

    :cond_c
    :try_start_2
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v3, :cond_e

    :cond_d
    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_container_using_failure_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V

    :cond_e
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_f
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_CONTAINER_INITIALIZER:Z

    if-eqz v1, :cond_10

    invoke-virtual {v2}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    :cond_10
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_container_value_after_initialization(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    goto :goto_8

    :goto_4
    :try_start_3
    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v4, :cond_11

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v4, :cond_12

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    throw v0

    :goto_5
    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v4, :cond_13

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v4, :cond_14

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    throw v0

    :goto_6
    instance-of v4, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz v4, :cond_15

    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0

    :cond_15
    new-instance v4, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v4, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_CONTAINER_INITIALIZER:Z

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lorg/eclipse/core/runtime/PerformanceStats;->endRun()V

    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemoveInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v2, :cond_17

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v2, :cond_18

    :cond_17
    invoke-direct {p0, p1, p2, v3, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_container_initialization_failed(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/jdt/core/ClasspathContainerInitializer;)V

    :cond_18
    throw v0

    :cond_19
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$11;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$11;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getFailureContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-nez v1, :cond_1a

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v1, :cond_1b

    :cond_1a
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->verbose_no_container_initializer_found(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    :cond_1b
    :goto_8
    return-object v0
.end method

.method public initializePreferences()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    sget-object v1, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    const-string v2, "org.eclipse.jdt.core"

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    sget-object v1, Lorg/eclipse/core/runtime/preferences/DefaultScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$12;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$12;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instanceNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->parent()Lorg/osgi/service/prefs/Preferences;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instanceNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    aget-object v0, v0, v3

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instancePreferencesListener:Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addPreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$13;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$13;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->defaultNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->parent()Lorg/osgi/service/prefs/Preferences;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->defaultNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    return-void
.end method

.method public declared-synchronized intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->stringSymbols:Lorg/eclipse/jdt/internal/core/util/WeakHashSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/WeakHashSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized intern([C)[C
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->charArraySymbols:Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/WeakHashSetOfCharArray;->add([C)[C

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isAssumedExternalFile(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->assumedExternalFiles:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathBeingResolved()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isExternalFile(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNonChainingJar(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public knowsOption(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public loadVariablesAndContainers()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/eclipse/core/runtime/QualifiedName;

    const-string v1, "org.eclipse.jdt.core"

    const-string v2, "variables"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/core/runtime/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 5
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_0

    .line 7
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    :try_start_3
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 9
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    :try_start_4
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move v7, v3

    :goto_0
    if-lt v7, v6, :cond_2

    goto :goto_4

    .line 12
    :cond_2
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 13
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v4, :cond_3

    .line 14
    check-cast v8, Lorg/w3c/dom/Element;

    .line 15
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "variable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 16
    const-string v9, "name"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 17
    new-instance v10, Lorg/eclipse/core/runtime/Path;

    const-string v11, "path"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 19
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V

    .line 20
    throw v1

    .line 21
    :catch_0
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V

    return-void

    .line 23
    :catch_1
    :try_start_5
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V

    .line 25
    throw v1

    .line 26
    :catch_2
    :goto_3
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDefaultPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->loadVariablesAndContainers(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->loadVariablesAndContainers(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V

    .line 29
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getVariableAndContainersFile()Ljava/io/File;

    move-result-object v0

    .line 30
    :try_start_6
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 31
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    goto :goto_8

    .line 32
    :cond_6
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;

    invoke-direct {v2, p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/io/DataInputStream;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$VariablesAndContainersLoadHelper;->load()V

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto/16 :goto_f

    :catch_3
    move-exception v2

    goto/16 :goto_b

    :catch_4
    move-exception v2

    goto/16 :goto_c

    .line 33
    :cond_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    :goto_6
    add-int/lit8 v6, v2, -0x1

    if-gtz v2, :cond_a

    .line 34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    add-int/lit8 v7, v6, -0x1

    if-gtz v6, :cond_8

    .line 36
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_d

    .line 37
    :cond_8
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-interface {v2, v6}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v6

    .line 39
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    :goto_9
    add-int/lit8 v9, v8, -0x1

    if-gtz v8, :cond_9

    move v6, v7

    goto :goto_7

    .line 40
    :cond_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    .line 41
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 42
    new-array v10, v10, [B

    .line 43
    invoke-virtual {v1, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 44
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6, v8, v11, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->recreatePersistedContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Z)V

    move v8, v9

    goto :goto_9

    .line 45
    :cond_a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 47
    const-string v8, "##<cp entry ignore>##"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_a

    .line 48
    :cond_b
    invoke-static {v7}, Lorg/eclipse/core/runtime/Path;->fromPortableString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    .line 49
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionVariables:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    move v2, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v2

    move-object v1, v5

    goto :goto_b

    :catch_6
    move-exception v2

    move-object v1, v5

    goto :goto_c

    .line 51
    :goto_b
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 52
    const-string v0, "Unable to read variable and containers file (file is corrupt)"

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_c
    if-eqz v1, :cond_e

    goto :goto_8

    .line 53
    :goto_c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    const-string v0, "Unable to read variable and containers file"

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_8

    .line 55
    :catch_7
    :cond_e
    :goto_d
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getRegisteredVariableNames()[Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_e
    array-length v1, v0

    if-lt v3, v1, :cond_f

    .line 57
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getRegisteredContainerIDs()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersReset([Ljava/lang/String;)V

    return-void

    .line 58
    :cond_f
    aget-object v1, v0, v3

    .line 59
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :goto_f
    if-eqz v5, :cond_10

    .line 60
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 61
    :catch_8
    :cond_10
    throw v0
.end method

.method public declared-synchronized peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public prepareToSave(Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized putInfos(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;ZLjava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    instance-of p1, p1, Lorg/eclipse/jdt/core/IParent;

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeChildren(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_3

    monitor-exit p0

    return-object p2

    :cond_3
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->putInfo(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v1, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->putInfo(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;)V

    goto :goto_1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized putJarTypeInfo(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public readState(Lorg/eclipse/core/resources/IProject;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getSerializationFile(Lorg/eclipse/core/resources/IProject;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v2, "STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->readState(Lorg/eclipse/core/resources/IProject;Ljava/io/DataInputStream;)Lorg/eclipse/jdt/internal/core/builder/State;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saved state thinks last build failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_2
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_wrongFileFormat:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->build_wrongFileFormat:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    new-instance v7, Lorg/eclipse/core/runtime/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading last build state for project "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x4

    const-string v3, "org.eclipse.jdt.core"

    const/4 v4, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v7}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :cond_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Project does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Build state file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public rememberScope(Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->searchScopes:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFromInvalidArchiveCache(Lorg/eclipse/core/runtime/IPath;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchivesMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchives:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_INVALID_ARCHIVES:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid JAR cache: removed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_4

    :cond_1
    aget-object v4, v1, v3

    invoke-interface {v4, p1}, Lorg/eclipse/jdt/core/IJavaProject;->findPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_3
    :try_start_2
    const-string v1, "Unable to retrieve the Java model."

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeFromJarTypeCache(Lorg/eclipse/jdt/internal/core/BinaryType;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->removeFromJarTypeCache(Lorg/eclipse/jdt/internal/core/BinaryType;)V

    return-void
.end method

.method public declared-synchronized removeInfoAndChildren(Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_1
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getElementType(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " CLOSING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    :try_start_2
    sput-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->closing(Ljava/lang/Object;)V

    instance-of v2, p1, Lorg/eclipse/jdt/core/IParent;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeChildren(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->removeInfo(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    if-eqz v1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    const-string v3, "-> "

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :try_start_4
    sput-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_5
    sput-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->forgetExternalTimestampsAndIndexes()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetClasspathListCache()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetClasspathListCache()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->nonChainingJars:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_INVALID_ARCHIVES:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchivesMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Invalid JAR cache: clearing cache"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchivesMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->invalidArchives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->assumedExternalFiles:Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_4
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public resetExternalFilesCache()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFiles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized resetJarTypeCache()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->resetJarTypeCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetProjectOptions(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->options:Ljava/util/Hashtable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetProjectPreferences(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->preferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetTemporaryCache()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->temporaryCache:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public resolveVariableEntry(Lorg/eclipse/jdt/core/IClasspathEntry;Z)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 9

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->resolveDotDot(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    instance-of v4, v0, Lorg/eclipse/core/resources/IResource;

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Lorg/eclipse/core/resources/IResource;

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    if-eq v4, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object p2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->combineAccessRules()Z

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result p1

    invoke-static {v3, p2, v0, v1, p1}, Lorg/eclipse/jdt/core/JavaCore;->newProjectEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_8

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getResolvedVariablePath(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v2
.end method

.method public rollback(Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 0

    return-void
.end method

.method public saving(Lorg/eclipse/core/resources/ISaveContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveVariablesAndContainers(Lorg/eclipse/core/resources/ISaveContext;)V

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string v2, "Saved"

    invoke-direct {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->traceVariableAndContainers(Ljava/lang/String;J)V

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/ISaveContext;->getKind()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_2
    const-string v0, "nonChainingJarsCache"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveClasspathListCache(Ljava/lang/String;)V

    const-string v0, "externalFilesCache"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveClasspathListCache(Ljava/lang/String;)V

    const-string v0, "assumedExternalFilesCache"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveClasspathListCache(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/ISaveContext;->needDelta()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->workspaceScope:Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->cleanUpIndexes()V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->externalFoldersManager:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->cleanUp(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/ISaveContext;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveState(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;Lorg/eclipse/core/resources/ISaveContext;)V

    return-void

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->perProjectInfos:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->saveExternalLibTimeStamps()V

    return-void

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v5, p1, [Lorg/eclipse/core/runtime/IStatus;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Lorg/eclipse/core/runtime/MultiStatus;

    const-string v3, "org.eclipse.jdt.core"

    sget-object v6, Lorg/eclipse/jdt/internal/core/util/Messages;->build_cannotSaveStates:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/core/runtime/MultiStatus;-><init>(Ljava/lang/String;I[Lorg/eclipse/core/runtime/IStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1

    :cond_7
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->saveState(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;Lorg/eclipse/core/resources/ISaveContext;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public secondaryTypeAdding(Ljava/lang/String;[C[C)V
    .locals 4

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JavaModelManager.addSecondaryType("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p3, 0x5d

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p3, 0x29

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p3

    invoke-interface {p3}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p3

    invoke-interface {p3, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object p3

    instance-of v0, p3, Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p3}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    :cond_2
    :goto_0
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v2, p3

    check-cast v2, Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast p3, Lorg/eclipse/core/resources/IFile;

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p3

    if-eqz p3, :cond_5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p3, v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p3

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz p1, :cond_7

    const-string p1, "\t- indexing cache:"

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/core/resources/IFile;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t\t+ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_7
    :goto_2
    return-void
.end method

.method public secondaryTypes(Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Z",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JavaModelManager.secondaryTypes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfoCheckExistence(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    :goto_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    if-nez v2, :cond_3

    invoke-static {p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesSearching(Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result p1

    if-lez p1, :cond_5

    if-nez p2, :cond_4

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    return-object p1

    :cond_4
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$16;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$16;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1, p3}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_0
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    return-object p1

    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesMerging(Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public secondaryTypesRemoving(Lorg/eclipse/core/resources/IFile;Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JavaModelManager.removeFromSecondaryTypesCache("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_8

    .line 6
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    if-eqz v2, :cond_8

    .line 8
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-> remove file from cache of project: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->secondaryTypes:Ljava/util/Hashtable;

    invoke-direct {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesRemoving(Ljava/util/Map;Lorg/eclipse/core/resources/IFile;)V

    .line 11
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    if-nez p2, :cond_3

    if-nez v2, :cond_2

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->indexingSecondaryCache:Ljava/util/Map;

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_8

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    .line 15
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v1

    .line 16
    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v3, :cond_8

    :goto_1
    if-lt v1, v4, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    aget-object p1, v3, v1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/core/resources/IFile;

    .line 19
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v3, :cond_7

    .line 20
    new-array v3, v0, [Lorg/eclipse/core/resources/IFile;

    :cond_7
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, v4, 0x1

    .line 21
    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public setBuildOrder([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string v0, "org.eclipse.jdt.core.computeJavaBuildOrder"

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "compute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getDescription()Lorg/eclipse/core/resources/IWorkspaceDescription;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspaceDescription;->getBuildOrder()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    array-length v3, p1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v3, :cond_7

    array-length v7, v2

    move v6, v5

    move v8, v6

    :goto_1
    if-lt v6, v7, :cond_5

    sub-int v4, v7, v8

    add-int/2addr v4, v3

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {p1, v5, v9, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-lt v5, v7, :cond_3

    move-object p1, v9

    :goto_3
    invoke-interface {v1, p1}, Lorg/eclipse/core/resources/IWorkspaceDescription;->setBuildOrder([Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspace;->setDescription(Lorg/eclipse/core/resources/IWorkspaceDescription;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v0

    :cond_3
    aget-object p1, v2, v5

    if-eqz p1, :cond_4

    add-int/lit8 v4, v3, 0x1

    aput-object p1, v9, v3

    move v3, v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    aget-object v9, v2, v6

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    aput-object v9, v2, v6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    aget-object v7, p1, v6

    invoke-virtual {v4, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method public setClasspathBeingResolved(Lorg/eclipse/jdt/core/IJavaProject;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathBeingResolved()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getClasspathBeingResolved()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setLastBuiltState(Lorg/eclipse/core/resources/IProject;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v1

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->triedRead:Z

    iput-object p2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->savedState:Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getSerializationFile(Lorg/eclipse/core/resources/IProject;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setOptions(Ljava/util/Hashtable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDefaultPreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v3

    if-nez p1, :cond_1

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->clear()V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_1
    invoke-interface {v3}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_1
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->fixTaskTags(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionsCache:Ljava/util/Hashtable;

    return-void

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOptionLevel(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "org.eclipse.jdt.core.encoding"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v6, v0

    :cond_6
    invoke-virtual {p0, v5, v6, v3, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->storePreference(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Ljava/util/Map;)Z

    goto :goto_1
.end method

.method public shutdown()V
    .locals 5

    sget-object v0, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    const-string v1, "org.eclipse.jdt.core"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Could not save JavaCore preferences"

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v2, v3}, Lorg/eclipse/core/resources/IWorkspace;->removeResourceChangeListener(Lorg/eclipse/core/resources/IResourceChangeListener;)V

    invoke-interface {v2, v1}, Lorg/eclipse/core/resources/IWorkspace;->removeSaveParticipant(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->shutdown(Lorg/eclipse/core/resources/IWorkspace;)V

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getContentTypeManager()Lorg/eclipse/core/runtime/content/IContentTypeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lorg/eclipse/core/runtime/content/IContentTypeManager;->removeContentTypeChangeListener(Lorg/eclipse/core/runtime/content/IContentTypeManager$IContentTypeChangeListener;)V

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->shutdown()V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->propertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removePreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->parent()Lorg/osgi/service/prefs/Preferences;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->defaultNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    invoke-interface {v0, v3}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removeNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->parent()Lorg/osgi/service/prefs/Preferences;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instanceNodeListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;

    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removeNodeChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    aget-object v0, v0, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->instancePreferencesListener:Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;

    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removePreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    aput-object v3, v0, v2

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getPlugin()Lorg/eclipse/core/resources/ResourcesPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/resources/ResourcesPlugin;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    invoke-interface {v2, v0}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resourcesPropertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->removePreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    :try_start_1
    invoke-static {}, Lorg/eclipse/core/runtime/jobs/Job;->getJobManager()Lorg/eclipse/core/runtime/jobs/IJobManager;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lorg/eclipse/core/runtime/jobs/IJobManager;->join(Ljava/lang/Object;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public startup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cache:Lorg/eclipse/jdt/internal/core/JavaModelCache;

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializePreferences()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$18;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$18;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->propertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    sget-object v0, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    const-string v1, "org.eclipse.jdt.core"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->propertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addPreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$19;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$19;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resourcesPropertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getPlugin()Lorg/eclipse/core/resources/ResourcesPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/resources/ResourcesPlugin;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    invoke-interface {v1, v0}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resourcesPropertyListener:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->addPreferenceChangeListener(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;)V

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getContentTypeManager()Lorg/eclipse/core/runtime/content/IContentTypeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/core/runtime/content/IContentTypeManager;->addContentTypeChangeListener(Lorg/eclipse/core/runtime/content/IContentTypeManager$IContentTypeChangeListener;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->loadVariablesAndContainers()V

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string v2, "Loaded"

    invoke-direct {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->traceVariableAndContainers(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializeRootsWithPreviousSession()V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    const/16 v2, 0x3f

    invoke-interface {v0, v1, v2}, Lorg/eclipse/core/resources/IWorkspace;->addResourceChangeListener(Lorg/eclipse/core/resources/IResourceChangeListener;I)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->start(Lorg/eclipse/core/resources/IWorkspace;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->startIndexing()V

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->savedState_jobName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$20;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/lang/String;Lorg/eclipse/core/resources/IWorkspace;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/eclipse/core/runtime/jobs/Job;->setSystem(Z)V

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lorg/eclipse/core/runtime/jobs/Job;->setPriority(I)V

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public storePreference(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getOptionLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 p4, 0x2

    if-eq v0, p4, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    invoke-interface {p3, p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p3, p1, p2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {p3, p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    :goto_0
    if-lt v1, v0, :cond_4

    :goto_1
    return v2

    :cond_4
    if-eqz p4, :cond_5

    aget-object v3, p1, v1

    invoke-interface {p4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    aget-object v3, p1, v1

    invoke-interface {p3, v3}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    aget-object v3, p1, v1

    invoke-interface {p3, v3, p2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public touchProjects([Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$14;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->synchronizing_projects_job:Ljava/lang/String;

    invoke-direct {p2, p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$14;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/lang/String;[Lorg/eclipse/core/resources/IProject;)V

    invoke-virtual {p2}, Lorg/eclipse/core/resources/WorkspaceJob;->schedule()V

    return-void
.end method

.method public declared-synchronized variableGet(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableInitializationInProgress()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/runtime/IPath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized variableNames()[Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public variablePreferencesPut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.eclipse.jdt.core.classpathVariable."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->flush()V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableInitializationInProgress()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VARIABLE_INITIALIZATION_IN_PROGRESS:Lorg/eclipse/core/runtime/IPath;

    if-ne p2, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_ENTRY_IGNORE_PATH:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablesWithInitializer:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedVariables:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionVariables:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public variablePutIfInitializingWithSameValue([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variableGetDefaultToPreviousSession(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablePut(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    return v2
.end method

.method public verbose_missbehaving_container(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer GET - missbehaving container (returning null classpath entry)\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "\tcontainer path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, "\tclasspath entries: {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelManager$7;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$7;-><init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V

    .line 20
    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, "\n\t}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public verbose_missbehaving_container_null_entries(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPContainer GET - missbehaving container (returning null as classpath entries)\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\tcontainer path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tclasspath entries: <null>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public verifyArchiveContent(Lorg/eclipse/core/runtime/IPath;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isJrt(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->throwExceptionIfArchiveInvalid(Lorg/eclipse/core/runtime/IPath;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isUpToDate(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isCorruptedZipFile()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_3
    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const-string v6, "org.eclipse.jdt.core"

    sget-object v8, Lorg/eclipse/jdt/internal/core/util/Messages;->status_IOException:Ljava/lang/String;

    new-instance v9, Ljava/util/zip/ZipException;

    invoke-direct {v9}, Ljava/util/zip/ZipException;-><init>()V

    const/4 v5, 0x4

    const/4 v7, -0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object v2, p1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v2, :cond_6

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object p1, v2

    :cond_6
    throw p1

    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-void
.end method
