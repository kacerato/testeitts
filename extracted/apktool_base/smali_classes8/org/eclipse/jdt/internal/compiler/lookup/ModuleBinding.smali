.class public Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;
    }
.end annotation


# static fields
.field public static final ALL_UNNAMED:[C

.field public static final ANY:[C

.field public static final ANY_NAMED:[C

.field public static final UNNAMED:[C


# instance fields
.field public declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

.field public defaultNullness:I

.field public environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private exportRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;",
            "Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;",
            ">;"
        }
    .end annotation
.end field

.field protected exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "[",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field isAuto:Z

.field private isComplete:[Z

.field isPackageLookupActive:Z

.field public mainClassName:[C

.field public modifiers:I

.field public moduleName:[C

.field private openRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;",
            "Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;",
            ">;"
        }
    .end annotation
.end field

.field protected openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field private packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

.field requiredModules:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field protected requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field protected requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field protected services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public tagBits:J

.field private transitiveRequires:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    const-string v1, "ALL-UNNAMED"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ALL_UNNAMED:[C

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY_NAMED:[C

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    .line 5
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->values()[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isComplete:[Z

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    .line 7
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 10
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 11
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 12
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PACKAGES:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 13
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 14
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    .line 15
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isComplete:[Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 20
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    .line 21
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->values()[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isComplete:[Z

    .line 22
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    .line 23
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 24
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    .line 25
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 26
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 27
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PACKAGES:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 28
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 29
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 30
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 31
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 35
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    .line 36
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->values()[Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isComplete:[Z

    .line 37
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    .line 38
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 39
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    .line 40
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 41
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 42
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 43
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$11([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$1(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$6()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private collectAllDependencies(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequiredModules(Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/l;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/l;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private collectTransitiveDependencies(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequiredModules(Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/u;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/u;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private combineWithPackagesFromOtherRelevantModules(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C[[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    :try_start_0
    array-length v2, p2

    sub-int/2addr v2, v1

    aget-object v1, p2, v2

    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->otherRelevantModules([[C)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    return-object p1

    :cond_2
    :try_start_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    :goto_2
    invoke-static {v3, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    throw p1
.end method

.method private completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isComplete:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isComplete:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    invoke-interface {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$0(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method

.method public static synthetic e([C)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$10([C)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$4(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$8(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method

.method public static synthetic h(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->lambda$2()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$0(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->collectAllDependencies(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$1(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->collectTransitiveDependencies(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$10([C)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$11([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$2()Ljava/util/Collection;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequiredModules(Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/q;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/q;-><init>()V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/r;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/r;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private static synthetic lambda$4(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->collectAllDependencies(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$6()Ljava/util/Collection;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequiredModules(Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/t;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/t;-><init>()V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/r;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/r;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private static synthetic lambda$8(Ljava/util/HashSet;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->collectTransitiveDependencies(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public addExports([C[[C)V
    .locals 1

    const/16 v0, 0x2e

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addResolvedExport(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :cond_0
    return-void
.end method

.method public addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 3

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isUnnamed()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-interface {p2, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getUniqueModulesDeclaringPackage([[C[C[C)[[C

    move-result-object v1

    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->combineWithPackagesFromOtherRelevantModules(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C[[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_2
    return-object p1
.end method

.method public addReads([C)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aput-object v0, p1, v1

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    :goto_1
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v3, p1

    if-lt v2, v3, :cond_1

    return-void

    :cond_1
    aget-object p1, p1, v2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    invoke-static {v3, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    if-eq p1, v3, :cond_3

    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aput-object v3, p1, v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->containsKey([C)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingModuleAddReads([C)V

    return-void
.end method

.method public addResolvedExport(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v0, v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aput-object p1, v1, v0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->recordExportRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :cond_2
    :goto_1
    return-void
.end method

.method public addResolvedOpens(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v0, v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aput-object p1, v1, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->recordOpensRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :cond_2
    :goto_1
    return-void
.end method

.method public canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 6

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_1

    return v3

    :cond_1
    aget-object v5, v0, v4

    invoke-virtual {v5, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageExportedTo(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public computeUniqueKey(Z)[C
    .locals 1

    const/16 p1, 0x22

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prepend(C[C)[C

    move-result-object p1

    return-object p1
.end method

.method public dependencyCollector()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/p;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/p;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-object v0
.end method

.method public dependencyGraphCollector()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/s;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/s;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-object v0
.end method

.method public getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->dependencyCollector()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eq v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public getDeclaredPackage([[C[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 4

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    array-length v2, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v2, v0, p1, v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_2
    return-object v2
.end method

.method public getDefaultNullness()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    return v0
.end method

.method public getExportRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportRestrictions:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->elementSize:I

    new-array v0, v0, [[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->asArray([Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v0
.end method

.method public getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOpenRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openRestrictions:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->elementSize:I

    new-array v0, v0, [[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->asArray([Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charArrayToStringArray([[C)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v0
.end method

.method public getPackage([[C[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-eq p1, v2, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p0, v1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1
.end method

.method public getPackageNamesForClassFile()[[C
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v5, v4

    move v0, v2

    :goto_1
    if-lt v0, v5, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v1

    move v4, v2

    :goto_3
    if-lt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, v1, v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->values:[[C

    return-object v0

    :cond_4
    aget-object v1, v4, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getRequiredModules(Z)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/Stream<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequiresTransitive()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequires()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public getRequires()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public getRequiresTransitive()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->completeIfNeeded(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :goto_0
    return-object v0
.end method

.method public getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 11

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    .line 2
    :goto_0
    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object v1

    const/16 v2, 0x2e

    .line 3
    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    .line 4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->declaredPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v2, p1, :cond_3

    return-object v4

    .line 8
    :cond_3
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1

    :cond_4
    xor-int/lit8 v2, p3, 0x1

    .line 9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v6, :cond_c

    .line 10
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object v6

    invoke-interface {v5, v0, p2, v6}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getUniqueModulesDeclaringPackage([[C[C[C)[[C

    move-result-object v5

    if-eqz v5, :cond_b

    .line 12
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->containsEqual([[C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 13
    instance-of v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v6, :cond_5

    .line 14
    move-object v6, p1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v4

    :goto_2
    if-nez v6, :cond_e

    .line 16
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v6, v1, p1, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    goto :goto_5

    :cond_6
    if-eqz p3, :cond_b

    .line 17
    array-length v6, v5

    move v8, v3

    move-object v7, v4

    :goto_3
    if-lt v8, v6, :cond_7

    move-object v6, v7

    goto :goto_5

    :cond_7
    aget-object v9, v5, v8

    .line 18
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 19
    iget-boolean v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    .line 20
    :cond_8
    invoke-virtual {v9, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getDeclaredPackage([[C[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 21
    iget-object p1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p1, :cond_9

    .line 22
    invoke-virtual {p1, v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 23
    :cond_9
    invoke-static {v10, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v7

    move-object p1, v4

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    move-object v6, v4

    goto :goto_5

    .line 24
    :cond_c
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v5, v0, p2}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->isPackage([[C[C)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 25
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v6, v1, p1, v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    move-object v5, v4

    goto :goto_5

    :cond_d
    move-object v5, v4

    move-object v6, v5

    :cond_e
    :goto_5
    if-eqz p3, :cond_10

    if-eqz p1, :cond_f

    if-eqz v6, :cond_f

    .line 26
    invoke-virtual {p1, v6, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 27
    :cond_f
    invoke-direct {p0, v6, v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->combineWithPackagesFromOtherRelevantModules(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C[[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    :cond_10
    if-eqz v6, :cond_15

    .line 28
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p3

    if-nez p3, :cond_11

    goto :goto_7

    .line 29
    :cond_11
    array-length p3, v0

    if-nez p3, :cond_12

    .line 30
    iget-object p1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {p1, p2, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_6

    :cond_12
    if-eqz p1, :cond_13

    .line 31
    invoke-virtual {p1, v6, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    :cond_13
    :goto_6
    if-eqz v2, :cond_14

    return-object v6

    .line 32
    :cond_14
    invoke-virtual {p0, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_7
    if-eqz p1, :cond_17

    if-nez v2, :cond_17

    .line 33
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-nez p3, :cond_17

    if-nez v6, :cond_16

    .line 34
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addNotFoundPackage([C)V

    goto :goto_8

    .line 35
    :cond_16
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {p1, p2, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_17
    :goto_8
    return-object v4
.end method

.method public getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1
.end method

.method public getVisiblePackage([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 4

    if-eqz p1, :cond_5

    .line 37
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 38
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 39
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 40
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_2

    return-object v0

    .line 41
    :cond_2
    aget-object v3, p1, v2

    invoke-virtual {p0, v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 42
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    .line 43
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object p1
.end method

.method public hasUnstableAutoName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeprecated()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    const-wide v2, 0x400000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageExportedTo(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 6

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v0, p0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne p1, p0, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    move v2, v1

    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_4

    goto :goto_2

    :cond_4
    aget-object v4, p1, v2

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->subsumes(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportRestrictions:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ALL_UNNAMED:[C

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->includes([C)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->name()[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->includes([C)Z

    move-result p1

    return p1

    :cond_6
    return v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return v1
.end method

.method public isTransitivelyRequired(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->transitiveRequires:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->collectTransitiveDependencies(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->transitiveRequires:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->transitiveRequires:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUnnamed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public kind()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    return-object v0
.end method

.method public nameForCUCheck()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object v0

    return-object v0
.end method

.method public nameForLookup()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    return-object v0
.end method

.method public otherRelevantModules([[C)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[C)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/m;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/m;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/n;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/n;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/o;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/o;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    return-object v0
.end method

.method public recordExportRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V
    .locals 2

    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportRestrictions:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportRestrictions:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    array-length v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportRestrictions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    :goto_1
    array-length v1, p2

    if-lt p1, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public recordOpensRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V
    .locals 2

    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openRestrictions:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openRestrictions:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    array-length v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openRestrictions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    :goto_1
    array-length v1, p2

    if-lt p1, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    :goto_0
    return-object p1
.end method

.method public retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    invoke-virtual {p0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public setMainClassName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->mainClassName:[C

    return-void
.end method

.method public setPackageNames(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->packageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    return-void
.end method

.method public storeAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 1

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    if-nez p3, :cond_4

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;-><init>()V

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_4

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storeAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;)V

    return-void
.end method

.method public storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "module "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->readableName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v1, v1

    const-string v2, "\n\t"

    const/4 v3, 0x0

    if-lez v1, :cond_5

    const-string v1, "\n/*    requires    */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v4, v4

    if-lt v1, v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v4, :cond_4

    array-length v5, v4

    move v6, v3

    :goto_1
    if-lt v6, v5, :cond_2

    goto :goto_2

    :cond_2
    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object v8, v8, v1

    if-ne v7, v8, :cond_3

    const-string v4, "transitive "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "\nNo Requires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const-string v4, " to "

    const/4 v5, 0x0

    const-string v6, "<unresolved>"

    const-string v7, "\n/*    exports    */\n"

    const-string v8, ", "

    const-string v9, ""

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_4
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v11, v10

    if-lt v1, v11, :cond_6

    goto :goto_8

    :cond_6
    aget-object v10, v10, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v10, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_7
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportRestrictions:Ljava/util/Map;

    if-eqz v11, :cond_8

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    goto :goto_5

    :cond_8
    move-object v10, v5

    :goto_5
    if-eqz v10, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->elementSize:I

    new-array v12, v11, [[C

    invoke-virtual {v10, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->asArray([Ljava/lang/Object;)V

    move v10, v3

    move-object v13, v9

    :goto_6
    if-lt v10, v11, :cond_9

    goto :goto_7

    :cond_9
    aget-object v14, v12, v10

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    move-object v13, v8

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    const-string v1, "\nNo Exports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_9
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v10, v7

    if-lt v1, v10, :cond_c

    goto :goto_d

    :cond_c
    aget-object v7, v7, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v7, :cond_d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_d
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->openRestrictions:Ljava/util/Map;

    if-eqz v10, :cond_e

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    goto :goto_a

    :cond_e
    move-object v7, v5

    :goto_a
    if-eqz v7, :cond_10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->elementSize:I

    new-array v11, v10, [[C

    invoke-virtual {v7, v11}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->asArray([Ljava/lang/Object;)V

    move v7, v3

    move-object v12, v9

    :goto_b
    if-lt v7, v10, :cond_f

    goto :goto_c

    :cond_f
    aget-object v13, v11, v7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    move-object v12, v8

    goto :goto_b

    :cond_10
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    const-string v1, "\nNo Opens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_13

    array-length v1, v1

    if-lez v1, :cond_13

    const-string v1, "\n/*    uses    /*\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_e
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v4

    if-lt v1, v4, :cond_12

    goto :goto_f

    :cond_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_13
    const-string v1, "\nNo Uses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_17

    array-length v1, v1

    if-lez v1, :cond_17

    const-string v1, "\n/*    Services    */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_10
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v4

    if-lt v1, v4, :cond_14

    goto :goto_13

    :cond_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "provides "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    if-eqz v4, :cond_16

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v4

    move v6, v3

    move-object v7, v9

    :goto_11
    if-lt v6, v5, :cond_15

    goto :goto_12

    :cond_15
    aget-object v10, v4, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move-object v7, v8

    goto :goto_11

    :cond_16
    const-string v4, "<missing implementations>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_17
    const-string v1, "\nNo Services"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
