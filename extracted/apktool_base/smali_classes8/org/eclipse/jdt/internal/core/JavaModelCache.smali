.class public Lorg/eclipse/jdt/internal/core/JavaModelCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG_CACHE_INSERTIONS:Z = false

.field public static final DEFAULT_ACCESSRULE_SIZE:I = 0x400

.field public static final DEFAULT_CHILDREN_SIZE:I = 0x1388

.field public static final DEFAULT_OPENABLE_SIZE:I = 0xfa

.field public static final DEFAULT_PKG_SIZE:I = 0x1f4

.field public static final DEFAULT_PROJECT_SIZE:I = 0x5

.field public static final DEFAULT_ROOT_SIZE:I = 0x32

.field public static final JAR_TYPE_RATIO_PROPERTY:Ljava/lang/String; = "org.eclipse.jdt.core.javamodelcache.jartyperatio"

.field public static final NON_EXISTING_JAR_TYPE_INFO:Ljava/lang/Object;

.field public static final RATIO_PROPERTY:Ljava/lang/String; = "org.eclipse.jdt.core.javamodelcache.ratio"

.field public static VERBOSE:Z = false


# instance fields
.field protected accessRuleCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;",
            "Lorg/eclipse/jdt/internal/core/ClasspathAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field protected childrenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected memoryRatio:D

.field protected modelInfo:Lorg/eclipse/jdt/internal/core/JavaElementInfo;

.field protected openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/ElementCache<",
            "Lorg/eclipse/jdt/core/ITypeRoot;",
            ">;"
        }
    .end annotation
.end field

.field protected pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/ElementCache<",
            "Lorg/eclipse/jdt/core/IPackageFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected projectCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Lorg/eclipse/jdt/internal/core/JavaElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/ElementCache<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->NON_EXISTING_JAR_TYPE_INFO:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->memoryRatio:D

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getMemoryRatio()D

    move-result-wide v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getOpenableRatio()D

    move-result-wide v2

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->projectCache:Ljava/util/HashMap;

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelCache;->VERBOSE:Z

    const-wide v5, 0x406f400000000000L    # 250.0

    const-wide v7, 0x407f400000000000L    # 500.0

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    if-eqz v4, :cond_0

    new-instance v4, Lorg/eclipse/jdt/internal/core/VerboseElementCache;

    mul-double/2addr v9, v0

    double-to-int v9, v9

    const-string v10, "Root cache"

    invoke-direct {v4, v9, v10}, Lorg/eclipse/jdt/internal/core/VerboseElementCache;-><init>(ILjava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    new-instance v4, Lorg/eclipse/jdt/internal/core/VerboseElementCache;

    mul-double/2addr v7, v0

    double-to-int v7, v7

    const-string v8, "Package cache"

    invoke-direct {v4, v7, v8}, Lorg/eclipse/jdt/internal/core/VerboseElementCache;-><init>(ILjava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    new-instance v4, Lorg/eclipse/jdt/internal/core/VerboseElementCache;

    mul-double/2addr v5, v0

    mul-double/2addr v5, v2

    double-to-int v5, v5

    const-string v6, "Openable cache"

    invoke-direct {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/VerboseElementCache;-><init>(ILjava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/eclipse/jdt/internal/core/ElementCache;

    mul-double/2addr v9, v0

    double-to-int v9, v9

    invoke-direct {v4, v9}, Lorg/eclipse/jdt/internal/core/ElementCache;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    new-instance v4, Lorg/eclipse/jdt/internal/core/ElementCache;

    mul-double/2addr v7, v0

    double-to-int v7, v7

    invoke-direct {v4, v7}, Lorg/eclipse/jdt/internal/core/ElementCache;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    new-instance v4, Lorg/eclipse/jdt/internal/core/ElementCache;

    mul-double/2addr v5, v0

    mul-double/2addr v5, v2

    double-to-int v5, v5

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/core/ElementCache;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    :goto_0
    new-instance v4, Ljava/util/HashMap;

    const-wide v5, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v0, v5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/LRUCache;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->accessRuleCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->resetJarTypeCache()V

    return-void
.end method

.method public static getElementType(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, "element"

    goto :goto_0

    :cond_0
    const-string p0, "class file"

    goto :goto_0

    :cond_1
    const-string p0, "compilation unit"

    goto :goto_0

    :cond_2
    const-string p0, "package"

    goto :goto_0

    :cond_3
    const-string p0, "root"

    goto :goto_0

    :cond_4
    const-string p0, "project"

    :goto_0
    return-object p0
.end method

.method private getJarTypeRatio()D
    .locals 2

    const-string v0, "org.eclipse.jdt.core.javamodelcache.jartyperatio"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getRatioForProperty(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private getOpenableRatio()D
    .locals 2

    const-string v0, "org.eclipse.jdt.core.javamodelcache.ratio"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getRatioForProperty(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private getRatioForProperty(Ljava/lang/String;)D
    .locals 4

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse value for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method


# virtual methods
.method public getExistingElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1
.end method

.method public getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->projectCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->modelInfo:Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMemoryRatio()D
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->memoryRatio:D

    double-to-int v0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    const-wide/high16 v2, 0x4190000000000000L    # 6.7108864E7

    div-double/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->memoryRatio:D

    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->memoryRatio:D

    return-wide v0
.end method

.method public peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->projectCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->modelInfo:Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putInfo(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->DEBUG_CACHE_INSERTIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cache putInfo ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getElementType(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/ITypeRoot;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragment;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;->ensureSpaceLimit(Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;->ensureSpaceLimit(Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->projectCache:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaProject;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;->ensureSpaceLimit(Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->modelInfo:Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeFromJarTypeCache(Lorg/eclipse/jdt/internal/core/BinaryType;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->flush(Ljava/lang/Object;)V

    return-void
.end method

.method public removeInfo(Lorg/eclipse/jdt/internal/core/JavaElement;)V
    .locals 5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->DEBUG_CACHE_INSERTIONS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cache removeInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getElementType(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->childrenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    check-cast p1, Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    const-wide v1, 0x406f400000000000L    # 250.0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getMemoryRatio()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getOpenableRatio()D

    move-result-wide v1

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;->resetSpaceLimit(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    const-wide v1, 0x407f400000000000L    # 500.0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getMemoryRatio()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;->resetSpaceLimit(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->projectCache:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getMemoryRatio()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/ElementCache;->resetSpaceLimit(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->modelInfo:Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetJarTypeCache()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/LRUCache;

    const-wide v1, 0x406f400000000000L    # 250.0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getMemoryRatio()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->getJarTypeRatio()D

    move-result-wide v1

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Project cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->projectCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " projects\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->rootCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    const-string v2, "Root cache"

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->pkgCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    const-string v3, "Package cache"

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->openableCache:Lorg/eclipse/jdt/internal/core/ElementCache;

    const-string v3, "Openable cache"

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelCache;->jarTypeCache:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    const-string v2, "Jar type cache"

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
