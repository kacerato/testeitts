.class Lorg/eclipse/jdt/internal/core/JavaModelManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/osgi/service/debug/DebugOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->registerDebugOptionsListener(Lorg/osgi/framework/BundleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public optionsChanged(Lorg/eclipse/osgi/service/debug/DebugOptions;)V
    .locals 5

    const-string v0, "org.eclipse.jdt.core/debug"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "org.eclipse.jdt.core/debug/buffermanager"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/BufferManager;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v3, "org.eclipse.jdt.core/debug/builder"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v3, "org.eclipse.jdt.core/debug/compiler"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sput-boolean v3, Lorg/eclipse/jdt/internal/compiler/Compiler;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v3, "org.eclipse.jdt.core/debug/builder/stats"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->SHOW_STATS:Z

    if-eqz v0, :cond_4

    const-string v3, "org.eclipse.jdt.core/debug/completion"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    sput-boolean v3, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v3, "org.eclipse.jdt.core/debug/cpresolution"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-eqz v0, :cond_6

    const-string v3, "org.eclipse.jdt.core/debug/cpresolution/advanced"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_ADVANCED:Z

    if-eqz v0, :cond_7

    const-string v3, "org.eclipse.jdt.core/debug/cpresolution/failure"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_8

    const-string v3, "org.eclipse.jdt.core/debug/javadelta"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    move v3, v1

    :goto_8
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v3, "org.eclipse.jdt.core/debug/javadelta/verbose"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    move v3, v1

    :goto_9
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v0, :cond_a

    const-string v3, "org.eclipse.jdt.core/debug/dom/ast"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v3, "org.eclipse.jdt.core/debug/dom/ast/throw"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    move v3, v1

    :goto_b
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG_THROW:Z

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG:Z

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG_THROW:Z

    or-int/2addr v3, v4

    sput-boolean v3, Lorg/eclipse/jdt/internal/core/dom/SourceRangeVerifier;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v3, "org.eclipse.jdt.core/debug/dom/rewrite"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_c

    :cond_c
    move v3, v1

    :goto_c
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v3, "org.eclipse.jdt.core/debug/hierarchy"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    move v3, v1

    :goto_d
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v3, "org.eclipse.jdt.core/debug/indexmanager"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v2

    goto :goto_e

    :cond_e
    move v3, v1

    :goto_e
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_f

    const-string v3, "org.eclipse.jdt.core/debug/indexmanager/advanced"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_f

    :cond_f
    move v3, v1

    :goto_f
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v3, "org.eclipse.jdt.core/debug/javamodel/classpath"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_10

    :cond_10
    move v3, v1

    :goto_10
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_CLASSPATH:Z

    if-eqz v0, :cond_11

    const-string v3, "org.eclipse.jdt.core/debug/javamodel/invalid_archives"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_11

    :cond_11
    move v3, v1

    :goto_11
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->DEBUG_INVALID_ARCHIVES:Z

    if-eqz v0, :cond_12

    const-string v3, "org.eclipse.jdt.core/debug/javamodel"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_12

    :cond_12
    move v3, v1

    :goto_12
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v0, :cond_13

    const-string v3, "org.eclipse.jdt.core/debug/javamodel/cache"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_13

    :cond_13
    move v3, v1

    :goto_13
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z

    if-eqz v0, :cond_14

    const-string v3, "org.eclipse.jdt.core/debug/javamodel/insertions"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_14

    :cond_14
    move v3, v1

    :goto_14
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelCache;->DEBUG_CACHE_INSERTIONS:Z

    if-eqz v0, :cond_15

    const-string v3, "org.eclipse.jdt.core/debug/postaction"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_15

    :cond_15
    move v3, v1

    :goto_15
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->POST_ACTION_VERBOSE:Z

    if-eqz v0, :cond_16

    const-string v3, "org.eclipse.jdt.core/debug/resolution"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v2

    goto :goto_16

    :cond_16
    move v3, v1

    :goto_16
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_17

    const-string v3, "org.eclipse.jdt.core/debug/search"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_17

    :cond_17
    move v3, v1

    :goto_17
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-eqz v0, :cond_18

    const-string v3, "org.eclipse.jdt.core/debug/selection"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v2

    goto :goto_18

    :cond_18
    move v3, v1

    :goto_18
    sput-boolean v3, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v3, "org.eclipse.jdt.core/debug/zipaccess"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v2

    goto :goto_19

    :cond_19
    move v3, v1

    :goto_19
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_1a

    const-string v3, "org.eclipse.jdt.core/debug/sourcemapper"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v2

    goto :goto_1a

    :cond_1a
    move v3, v1

    :goto_1a
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/SourceMapper;->VERBOSE:Z

    if-eqz v0, :cond_1b

    const-string v3, "org.eclipse.jdt.core/debug/formatter"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_1b

    :cond_1b
    move v3, v1

    :goto_1b
    sput-boolean v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v3, "org.eclipse.jdt.core/debug/index/freespacetest"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v2

    goto :goto_1c

    :cond_1c
    move v3, v1

    :goto_1c
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_FREE_SPACE:Z

    if-eqz v0, :cond_1d

    const-string v3, "org.eclipse.jdt.core/debug/index/pagecache"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v2

    goto :goto_1d

    :cond_1d
    move v3, v1

    :goto_1d
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v0, :cond_1e

    const-string v3, "org.eclipse.jdt.core/debug/index/indexer"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_1e

    :cond_1e
    move v3, v1

    :goto_1e
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v3, "org.eclipse.jdt.core/debug/index/insertions"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v2

    goto :goto_1f

    :cond_1f
    move v3, v1

    :goto_1f
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_INSERTIONS:Z

    if-eqz v0, :cond_20

    const-string v3, "org.eclipse.jdt.core/debug/index/space"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v2

    goto :goto_20

    :cond_20
    move v3, v1

    :goto_20
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_ALLOCATIONS:Z

    if-eqz v0, :cond_21

    const-string v3, "org.eclipse.jdt.core/debug/index/timing"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v2

    goto :goto_21

    :cond_21
    move v3, v1

    :goto_21
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_TIMING:Z

    if-eqz v0, :cond_22

    const-string v3, "org.eclipse.jdt.core/debug/index/scheduling"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v2

    goto :goto_22

    :cond_22
    move v3, v1

    :goto_22
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_SCHEDULING:Z

    if-eqz v0, :cond_23

    const-string v3, "org.eclipse.jdt.core/debug/index/selftest"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_23

    :cond_23
    move v3, v1

    :goto_23
    sput-boolean v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_SELFTEST:Z

    if-eqz v0, :cond_24

    const-string v3, "org.eclipse.jdt.core/debug/index/logsizemegs"

    invoke-interface {p1, v3, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getIntegerOption(Ljava/lang/String;I)I

    move-result v3

    goto :goto_24

    :cond_24
    move v3, v1

    :goto_24
    sput v3, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_LOG_SIZE_MB:I

    if-eqz v0, :cond_25

    const-string v0, "org.eclipse.jdt.core/debug/index/locks"

    invoke-interface {p1, v0, v1}, Lorg/eclipse/osgi/service/debug/DebugOptions;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_25

    move v1, v2

    :cond_25
    sput-boolean v1, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    sget-boolean p1, Lorg/eclipse/core/runtime/PerformanceStats;->ENABLED:Z

    if-eqz p1, :cond_26

    const-string p1, "org.eclipse.jdt.core/perf/completion"

    invoke-static {p1}, Lorg/eclipse/core/runtime/PerformanceStats;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->PERF:Z

    const-string p1, "org.eclipse.jdt.core/perf/selection"

    invoke-static {p1}, Lorg/eclipse/core/runtime/PerformanceStats;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->PERF:Z

    const-string p1, "org.eclipse.jdt.core/perf/javadeltalistener"

    invoke-static {p1}, Lorg/eclipse/core/runtime/PerformanceStats;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->PERF:Z

    const-string p1, "org.eclipse.jdt.core/perf/variableinitializer"

    invoke-static {p1}, Lorg/eclipse/core/runtime/PerformanceStats;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_VARIABLE_INITIALIZER:Z

    const-string p1, "org.eclipse.jdt.core/perf/containerinitializer"

    invoke-static {p1}, Lorg/eclipse/core/runtime/PerformanceStats;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->PERF_CONTAINER_INITIALIZER:Z

    const-string p1, "org.eclipse.jdt.core/perf/reconcile"

    invoke-static {p1}, Lorg/eclipse/core/runtime/PerformanceStats;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->PERF:Z

    :cond_26
    return-void
.end method
