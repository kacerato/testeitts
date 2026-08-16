.class public Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ITypeHierarchy;
.implements Lorg/eclipse/jdt/core/IElementChangedListener;


# static fields
.field static final CLASS:B = 0x0t

.field static final COMPUTED_FOR:B = 0x2t

.field static final COMPUTE_SUBTYPES:B = 0x1t

.field public static DEBUG:Z = false

.field static final INTERFACE:B = 0x1t

.field static final NO_FLAGS:[B

.field protected static final NO_TYPE:[Lorg/eclipse/jdt/core/IType;

.field static final ROOT:B = 0x4t

.field static final SEPARATOR1:B = 0xat

.field static final SEPARATOR2:B = 0x2ct

.field static final SEPARATOR3:B = 0x3et

.field static final SEPARATOR4:B = 0xdt

.field static final SIZE:I = 0xa

.field static final VERSION:B


# instance fields
.field protected changeCollector:Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;

.field protected changeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected classToSuperclass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IType;",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation
.end field

.field protected computeSubtypes:Z

.field public files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IOpenable;",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;>;"
        }
    .end annotation
.end field

.field protected focusType:Lorg/eclipse/jdt/core/IType;

.field protected interfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation
.end field

.field public missingTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public needsRefresh:Z

.field protected packageRegion:Lorg/eclipse/jdt/internal/core/Region;

.field protected progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

.field protected project:Lorg/eclipse/jdt/core/IJavaProject;

.field protected projectRegion:Lorg/eclipse/jdt/internal/core/Region;

.field protected rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

.field scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

.field protected typeFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeToSubtypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IType;",
            "Lorg/eclipse/jdt/internal/core/TypeVector;",
            ">;"
        }
    .end annotation
.end field

.field protected typeToSuperInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IType;",
            "[",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation
.end field

.field protected workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_FLAGS:[B

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    sput-object v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeListeners:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    .line 8
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    .line 9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/eclipse/jdt/core/search/SearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    .line 12
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->project:Lorg/eclipse/jdt/core/IJavaProject;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 18
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeListeners:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    .line 20
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    .line 21
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->unresolved()Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    .line 24
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 25
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    .line 26
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    return-void
.end method

.method private static bytesToFlags([B)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static flagsToBytes(Ljava/lang/Integer;)[B
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_FLAGS:[B

    return-object p0
.end method

.method private getAllSubtypesForType(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSubtypesForType0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private getAllSubtypesForType0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IType;",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSubtypesForType(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSubtypesForType0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private getAllSuperInterfaces0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IType;",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    array-length v1, v0

    if-eqz v1, :cond_4

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_2

    goto :goto_2

    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSuperInterfaces0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSuperInterfaces0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    :cond_5
    return-object p2
.end method

.method private getAllSupertypes0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IType;",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    array-length v1, v0

    if-eqz v1, :cond_4

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSuperInterfaces0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    if-eqz p1, :cond_6

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSupertypes0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    :cond_6
    return-object p2
.end method

.method private declared-synchronized getClonedChangeListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeListeners:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getExtendingInterfaces0(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isInterface(Lorg/eclipse/jdt/core/IType;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-lt v4, v5, :cond_3

    goto :goto_0

    :cond_3
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getImplementingClasses0(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isInterface(Lorg/eclipse/jdt/core/IType;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/core/IType;

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-lt v4, v5, :cond_2

    goto :goto_0

    :cond_2
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getSubtypesForType(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/TypeVector;

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method private hasSubtypeNamed(Ljava/lang/String;)Z
    .locals 6

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v2, :cond_1

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    :goto_0
    array-length v2, v0

    move v4, v1

    :goto_1
    if-lt v4, v2, :cond_4

    return v1

    :cond_4
    aget-object v5, v0, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private hasTypeNamed(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isAffectedByChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffected(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private isAffectedByJavaModel(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->javaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isAffectedByJavaProject(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v1

    and-int/lit16 v2, v1, 0x200

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v0, v3

    :cond_0
    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    const/4 v1, 0x0

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Region;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    move p3, v1

    :goto_0
    array-length v0, p1

    if-lt p3, v0, :cond_4

    return v1

    :cond_4
    aget-object v0, p1, p3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->javaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    move p3, v1

    :goto_1
    array-length v0, p1

    if-lt p3, v0, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz p1, :cond_9

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->javaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    move p3, v1

    :goto_2
    array-length v0, p1

    if-lt p3, v0, :cond_7

    goto :goto_3

    :cond_7
    aget-object v0, p1, p3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    if-ne v0, v2, :cond_8

    aget-object v0, p1, p3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return v1

    :cond_a
    aget-object v0, p1, p3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    if-ne v0, v2, :cond_b

    aget-object v0, p1, p3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    return v3

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :catch_0
    return v1
.end method

.method private isAffectedByPackageFragment(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/internal/core/PackageFragment;I)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegionContainsSamePackageFragment(Lorg/eclipse/jdt/internal/core/PackageFragment;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/Region;->contains(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    return p1
.end method

.method private isAffectedByPackageFragmentRoot(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x40

    const/4 v3, 0x0

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/Region;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    move v5, v3

    :goto_0
    array-length v6, v4

    if-lt v5, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v4, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_0
    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    return v1

    :catch_0
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    and-int/lit16 v2, v0, 0x80

    if-gtz v2, :cond_5

    const v2, 0x8000

    and-int/2addr v0, v2

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result p1

    return p1

    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Region;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    move p3, v3

    :goto_4
    array-length v0, p1

    if-lt p3, v0, :cond_6

    return v3

    :cond_6
    aget-object v0, p1, p3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/Region;->contains(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    return p1
.end method

.method private isInterface(Lorg/eclipse/jdt/core/IType;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getCachedFlags(Lorg/eclipse/jdt/core/IType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->isInterface()Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->isInterface(I)Z

    move-result p1

    return p1
.end method

.method public static load(Lorg/eclipse/jdt/core/IType;Ljava/io/InputStream;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;-><init>()V

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initialize(I)V

    const/16 v5, 0xa

    new-array v6, v5, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    if-nez v7, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_0

    iput-boolean v3, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;B)[B

    move-result-object v7

    array-length v8, v7

    if-lez v8, :cond_1

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lorg/eclipse/jdt/core/JavaCore;->create(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/IJavaProject;

    iput-object v7, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->project:Lorg/eclipse/jdt/core/IJavaProject;

    new-array v8, v3, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v7, v8, v1

    invoke-static {v8}, Lorg/eclipse/jdt/core/search/SearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v7

    iput-object v7, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    iput-object v7, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v7

    iput-object v7, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    :goto_1
    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;B)[B

    move-result-object v7

    array-length v8, v7

    move v9, v1

    move v10, v9

    :goto_2
    const/16 v11, 0x2c

    if-lt v9, v8, :cond_11

    sub-int/2addr v8, v10

    new-array v9, v8, [B

    invoke-static {v7, v10, v9, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, -0x1

    if-eq v8, v5, :cond_9

    if-ne v8, v9, :cond_2

    goto :goto_5

    :cond_2
    const/16 v9, 0xd

    invoke-static {v0, v9, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;BI)[B

    move-result-object v10

    aput-byte v8, v10, v1

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v12, p2

    invoke-static {v8, v12}, Lorg/eclipse/jdt/core/JavaCore;->create(Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/core/IType;

    array-length v10, v6

    if-ne v10, v7, :cond_3

    mul-int/lit8 v10, v7, 0x2

    new-array v10, v10, [Lorg/eclipse/jdt/core/IType;

    invoke-static {v6, v1, v10, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v10

    :cond_3
    add-int/lit8 v10, v7, 0x1

    aput-object v8, v6, v7

    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;B)[B

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->bytesToFlags([B)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v8, v7}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->cacheFlags(Lorg/eclipse/jdt/core/IType;I)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    and-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_5

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addInterface(Lorg/eclipse/jdt/core/IType;)V

    :cond_5
    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_7

    move-object/from16 v13, p0

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-object v8, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    goto :goto_4

    :cond_6
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_7
    move-object/from16 v13, p0

    :goto_4
    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addRootClass(Lorg/eclipse/jdt/core/IType;)V

    :cond_8
    move v7, v10

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    const/16 v8, 0x3e

    if-eq v7, v5, :cond_b

    if-ne v7, v9, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v0, v8, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;BI)[B

    move-result-object v8

    aput-byte v7, v8, v1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;B)[B

    move-result-object v8

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v6, v7

    aget-object v8, v6, v8

    invoke-virtual {v4, v7, v8}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->cacheSuperclass(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)V

    goto :goto_5

    :cond_b
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    if-eq v7, v5, :cond_f

    if-ne v7, v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v0, v8, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;BI)[B

    move-result-object v10

    aput-byte v7, v10, v1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;B)[B

    move-result-object v10

    array-length v12, v10

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v3

    new-array v12, v12, [Lorg/eclipse/jdt/core/IType;

    move v13, v1

    move v14, v13

    move v15, v14

    :goto_7
    array-length v5, v10

    if-lt v13, v5, :cond_d

    array-length v5, v10

    sub-int/2addr v5, v14

    new-array v5, v5, [B

    array-length v13, v10

    sub-int/2addr v13, v14

    invoke-static {v10, v14, v5, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v15, 0x1

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v6, v5

    aput-object v5, v12, v15

    new-array v5, v10, [Lorg/eclipse/jdt/core/IType;

    invoke-static {v12, v1, v5, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v7, v6, v7

    invoke-virtual {v4, v7, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->cacheSuperInterfaces(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)V

    const/16 v5, 0xa

    goto :goto_6

    :cond_d
    aget-byte v5, v10, v13

    if-ne v5, v11, :cond_e

    sub-int v5, v13, v14

    new-array v8, v5, [B

    invoke-static {v10, v14, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v13, 0x1

    add-int/lit8 v5, v15, 0x1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v1, v6, v1

    aput-object v1, v12, v15

    move v15, v5

    :cond_e
    add-int/2addr v13, v3

    const/4 v1, 0x0

    const/16 v8, 0x3e

    goto :goto_7

    :cond_f
    :goto_8
    if-eq v7, v9, :cond_10

    return-object v4

    :cond_10
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_11
    move-object/from16 v13, p0

    move-object/from16 v12, p2

    aget-byte v1, v7, v9

    if-ne v1, v11, :cond_12

    sub-int v1, v9, v10

    new-array v5, v1, [B

    const/4 v11, 0x0

    invoke-static {v7, v10, v5, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v4, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v9, 0x1

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    :goto_9
    add-int/2addr v9, v3

    move v1, v11

    const/16 v5, 0xa

    goto/16 :goto_2

    :cond_13
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public static readUntil(Ljava/io/InputStream;B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->readUntil(Ljava/io/InputStream;BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static readUntil(Ljava/io/InputStream;BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, -0x1

    if-eq v3, p1, :cond_2

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length v4, v0

    if-ne v4, v2, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 5
    new-array v4, v4, [B

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 6
    aput-byte v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v3, v4, :cond_3

    add-int p0, v2, p2

    .line 7
    new-array p0, p0, [B

    invoke-static {v0, v1, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 8
    :cond_3
    new-instance p0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p0
.end method

.method private toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    .line 31
    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0xa

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 33
    :cond_0
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;IZ)V
    .locals 3

    .line 26
    check-cast p2, Lorg/eclipse/jdt/core/IType;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSupertypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    .line 27
    :goto_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->sortCopy([Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    const/4 v0, 0x0

    .line 28
    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_1

    return-void

    .line 29
    :cond_1
    aget-object v1, p2, v0

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;I)V

    .line 30
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1, v2, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addInterface(Lorg/eclipse/jdt/core/IType;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRootClass(Lorg/eclipse/jdt/core/IType;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->add(Lorg/eclipse/jdt/core/IType;)V

    return-void
.end method

.method public addSubtype(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/TypeVector;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/TypeVector;->add(Lorg/eclipse/jdt/core/IType;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized addTypeHierarchyChangedListener(Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeListeners:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->addElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cacheFlags(Lorg/eclipse/jdt/core/IType;I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeFlags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cacheSuperInterfaces(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addSubtype(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cacheSuperclass(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is it\'s own superclass"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addSubtype(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)V

    :cond_1
    return-void
.end method

.method public checkCanceled()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/SubMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public compute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->build(Z)V

    :cond_0
    return-void
.end method

.method public contains(Lorg/eclipse/jdt/core/IType;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public elementChanged(Lorg/eclipse/jdt/core/ElementChangedEvent;)V
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/ElementChangedEvent;->getDelta()Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/ElementChangedEvent;->getType()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffected(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->fireChange()V

    :cond_1
    return-void
.end method

.method public exists()Z
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->javaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public fireChange()V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getClonedChangeListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FIRING hierarchy change ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    for hierarchy focused on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;

    new-instance v3, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;

    invoke-direct {v3, p0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy$1;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;)V

    invoke-static {v3}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllClasses()[Lorg/eclipse/jdt/core/IType;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->copy()Lorg/eclipse/jdt/internal/core/TypeVector;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/TypeVector;->add(Lorg/eclipse/jdt/core/IType;)V

    goto :goto_0
.end method

.method public getAllInterfaces()[Lorg/eclipse/jdt/core/IType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getAllSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSubtypesForType(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getAllSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSuperInterfaces0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getAllSuperclasses(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperclass(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>()V

    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->add(Lorg/eclipse/jdt/core/IType;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperclass(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_0
.end method

.method public getAllSupertypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllSupertypes0(Lorg/eclipse/jdt/core/IType;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getAllTypes()[Lorg/eclipse/jdt/core/IType;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllClasses()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllInterfaces()[Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    array-length v3, v2

    add-int v4, v1, v3

    new-array v4, v4, [Lorg/eclipse/jdt/core/IType;

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public getCachedFlags(Lorg/eclipse/jdt/core/IType;)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getExtendingInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isInterface(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getExtendingInterfaces0(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getImplementingClasses(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isInterface(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getImplementingClasses0(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getRootClasses()[Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0
.end method

.method public getRootInterfaces()[Lorg/eclipse/jdt/core/IType;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllInterfaces()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/eclipse/jdt/core/IType;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_1

    new-array v0, v4, [Lorg/eclipse/jdt/core/IType;

    if-lez v4, :cond_0

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0

    :cond_1
    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v5, v5

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aget-object v6, v0, v3

    aput-object v6, v1, v4

    move v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getSubclasses(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isInterface(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/TypeVector;

    if-nez p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getSubtypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSubtypesForType(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IType;

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->NO_TYPE:[Lorg/eclipse/jdt/core/IType;

    :cond_0
    return-object p1
.end method

.method public getSuperclass(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isInterface(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    return-object p1
.end method

.method public getSupertypes(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperclass(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>([Lorg/eclipse/jdt/core/IType;)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/TypeVector;->add(Lorg/eclipse/jdt/core/IType;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/TypeVector;->elements()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    return-object v0
.end method

.method public growAndAddToArray([Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 5
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v1, v2, [Lorg/eclipse/jdt/core/IType;

    .line 7
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length p1, p1

    aput-object p2, v1, p1

    return-object v1

    .line 9
    :cond_1
    :goto_0
    new-array p1, v1, [Lorg/eclipse/jdt/core/IType;

    aput-object p2, p1, v0

    return-object p1
.end method

.method public growAndAddToArray([Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public hasFineGrainChanges()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeCollector:Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->needsRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSupertype(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public includesTypeOrSupertype(Lorg/eclipse/jdt/core/IType;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasTypeNamed(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasTypeNamed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperInterfaceNames()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    move v4, v0

    :goto_0
    if-lt v4, v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object v5, p1, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasTypeNamed(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return v0
.end method

.method public initialize(I)V
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance p1, Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/TypeVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSubtypes:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeFlags:Ljava/util/Map;

    new-instance p1, Lorg/eclipse/jdt/internal/core/Region;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/Region;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    new-instance p1, Lorg/eclipse/jdt/internal/core/Region;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/Region;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    return-void
.end method

.method public initializeRegions()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getAllTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v0, v1

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/Region;->add(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->projectRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/Region;->add(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->checkCanceled()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isAffected(Lorg/eclipse/jdt/core/IJavaElementDelta;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByOpenable(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :pswitch_1
    :try_start_2
    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByPackageFragment(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/internal/core/PackageFragment;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :pswitch_2
    :try_start_3
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByPackageFragmentRoot(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :pswitch_3
    :try_start_4
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByJavaProject(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    :pswitch_4
    :try_start_5
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->isAffectedByJavaModel(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return p1

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

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

.method public isAffectedByOpenable(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElement;I)Z
    .locals 7

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    check-cast p2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object v4

    if-eq v0, v4, :cond_1

    return v3

    :cond_1
    if-eq p3, v1, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeCollector:Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;

    if-nez v0, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V

    :cond_3
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addChange(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result p1

    if-eqz p1, :cond_5

    if-ne p3, v1, :cond_5

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeCollector:Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;

    return v3

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->needsRefresh()Z

    move-result p1

    return p1

    :cond_6
    instance-of p3, p2, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz p3, :cond_12

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result p3

    if-eq p3, v2, :cond_10

    const/4 v0, 0x2

    if-eq p3, v0, :cond_e

    if-eq p3, v1, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p3

    array-length v1, p3

    move p2, v3

    :goto_2
    if-lt p2, v1, :cond_8

    goto/16 :goto_5

    :cond_8
    aget-object v4, p3, p2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    instance-of v5, v4, Lorg/eclipse/jdt/core/IType;

    if-eqz v5, :cond_d

    check-cast v4, Lorg/eclipse/jdt/core/IType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v5

    and-int/2addr v5, v0

    if-lez v5, :cond_9

    move v5, v2

    goto :goto_3

    :cond_9
    move v5, v3

    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x800

    if-lez v6, :cond_a

    move v6, v2

    goto :goto_4

    :cond_a
    move v6, v3

    :goto_4
    if-eqz v5, :cond_b

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasSupertype(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->includesTypeOrSupertype(Lorg/eclipse/jdt/core/IType;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    return v2

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_e
    check-cast p2, Lorg/eclipse/jdt/core/IOpenable;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    return v2

    :cond_f
    return v3

    :cond_10
    check-cast p2, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasSupertype(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_11

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->subtypesIncludeSupertypeOf(Lorg/eclipse/jdt/core/IType;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    return v2

    :cond_12
    :goto_5
    return v3
.end method

.method public javaProject()Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    return-object v0
.end method

.method public packageRegionContainsSamePackageFragment(Lorg/eclipse/jdt/internal/core/PackageFragment;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->packageRegion:Lorg/eclipse/jdt/internal/core/Region;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Region;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v1, :cond_0

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_creatingOnType:Ljava/lang/String;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_6

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->hierarchy_creating:Ljava/lang/String;

    :goto_0
    const/16 v2, 0x64

    invoke-static {p1, v1, v2}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATING TYPE HIERARCHY ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATING SUPER TYPE HIERARCHY ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  on type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-wide/16 v1, -0x1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->compute()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initializeRegions()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->needsRefresh:Z

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeCollector:Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATED TYPE HIERARCHY in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATED SUPER TYPE HIERARCHY in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :goto_5
    :try_start_2
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v2

    :goto_6
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    if-eqz p1, :cond_7

    :try_start_3
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_7
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    throw v1

    :goto_8
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized removeTypeHierarchyChangedListener(Lorg/eclipse/jdt/core/ITypeHierarchyChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->changeListeners:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->removeElementChangedListener(Lorg/eclipse/jdt/core/IElementChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public store(Ljava/io/OutputStream;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_d

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_13

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move v5, v2

    :goto_2
    array-length v6, v4

    if-lt v5, v6, :cond_e

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->computeSubtypes:Z

    if-eqz v4, :cond_1

    int-to-byte v3, v3

    goto :goto_3

    :cond_1
    move v3, v2

    :goto_3
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->project:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    move v4, v2

    :goto_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x2c

    if-lt v4, v5, :cond_c

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    move v4, v2

    :goto_5
    if-lt v4, v1, :cond_8

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->classToSuperclass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    :goto_6
    array-length v4, v0

    const/16 v5, 0x3e

    if-lt v1, v4, :cond_7

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeToSuperInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    :goto_7
    array-length v4, v0

    if-lt v1, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_3
    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jdt/core/IJavaElement;

    array-length v8, v4

    if-lez v8, :cond_6

    invoke-virtual {p2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    move v7, v2

    :goto_8
    array-length v8, v4

    if-lt v7, v8, :cond_4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_9

    :cond_4
    aget-object v8, v4, v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_5
    invoke-virtual {p2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_6
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->typeFlags:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->flagsToBytes(Ljava/lang/Integer;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    int-to-byte v7, v7

    goto :goto_a

    :cond_9
    move v7, v2

    :goto_a
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->interfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    :cond_a
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/core/TypeVector;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v5

    if-eqz v5, :cond_b

    or-int/lit8 v5, v7, 0x4

    int-to-byte v7, v5

    :cond_b
    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_d
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_e
    aget-object v6, v4, v5

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_f

    add-int/lit8 v8, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v8

    :cond_f
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/eclipse/jdt/core/IType;

    if-eqz v6, :cond_12

    move v7, v2

    :goto_b
    array-length v8, v6

    if-lt v7, v8, :cond_10

    goto :goto_c

    :cond_10
    aget-object v8, v6, v7

    if-eqz v8, :cond_11

    invoke-virtual {p2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_11

    add-int/lit8 v9, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v9

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_13
    aget-object v6, v4, v5

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_14

    add-int/lit8 v8, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v8

    :cond_14
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/IType;

    if-eqz v6, :cond_15

    invoke-virtual {p2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_15

    add-int/lit8 v7, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :goto_d
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v0, 0x3d9

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public subtypesIncludeSupertypeOf(Lorg/eclipse/jdt/core/IType;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperclassName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    const-string v1, "Object"

    :cond_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasSubtypeNamed(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperInterfaceNames()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    array-length v1, p1

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_2

    return v0

    :cond_2
    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasSubtypeNamed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_4
    return v0

    :catch_1
    move-exception p1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    const-string v1, "Focus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    const-string v1, "<NONE>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 8
    const-string v1, "Super types:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;IZ)V

    .line 10
    const-string v1, "Sub types:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;IZ)V

    goto :goto_3

    .line 12
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->rootClasses:Lorg/eclipse/jdt/internal/core/TypeVector;

    iget v1, v1, Lorg/eclipse/jdt/internal/core/TypeVector;->size:I

    if-lez v1, :cond_4

    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getRootClasses()[Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->sortCopy([Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    .line 14
    const-string v1, "Super types of root classes:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    array-length v5, v4

    move v1, v2

    :goto_1
    if-lt v1, v5, :cond_3

    .line 16
    const-string v1, "Sub types of root classes:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_2
    if-lt v1, v5, :cond_2

    goto :goto_3

    .line 17
    :cond_2
    aget-object v6, v4, v1

    .line 18
    invoke-direct {p0, v0, v6, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;I)V

    .line 19
    invoke-direct {p0, v0, v6, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_3
    aget-object v6, v4, v1

    .line 21
    invoke-direct {p0, v0, v6, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;I)V

    .line 22
    invoke-direct {p0, v0, v6, v3, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->toString(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/core/IJavaElement;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    .line 23
    const-string v1, "No root classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 24
    :cond_5
    const-string v1, "(Hierarchy became stale)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public worked(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/SubMonitor;->worked(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->checkCanceled()V

    :cond_0
    return-void
.end method
