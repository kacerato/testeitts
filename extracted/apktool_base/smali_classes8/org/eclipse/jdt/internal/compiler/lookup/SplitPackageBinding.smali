.class public Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
.source "SourceFile"


# instance fields
.field declaringModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;"
        }
    .end annotation
.end field

.field public incarnations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->add(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    return-void
.end method

.method public static combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->rank(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)I

    move-result v0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->rank(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    if-le v0, v1, :cond_1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->subsumes(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->subsumes(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->add(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    return-object v0
.end method

.method private static rank(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addWrappingSplitPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addWrappingSplitPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combineWithSiblings(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_0
    return-object p1
.end method

.method public combineWithSiblings(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :goto_0
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    return-object p1

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v4, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v3, p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    invoke-static {v3, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isPackageLookupActive:Z

    throw p1
.end method

.method public findPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_2

    :cond_1
    if-le v1, v2, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->add(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addNotFoundPackage([C)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :goto_3
    return-object v0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-super {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->findPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-eq v2, v3, :cond_0

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDeclaringModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v2, p1, :cond_0

    return-object v1
.end method

.method public getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 5

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_1
    return-object v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    goto :goto_0
.end method

.method public getPackage0Any([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 4

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    goto :goto_0
.end method

.method public getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/16 v0, 0x1e

    invoke-direct {p1, p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object p2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/4 v0, 0x3

    invoke-direct {p1, p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v2

    move-object v1, v4

    goto :goto_0
.end method

.method public getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_2
    return-object v3

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez v5, :cond_1

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    move-object v3, v4

    goto :goto_0
.end method

.method public getType0ForModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->hasCompilationUnit(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v5, p1, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    if-le v3, v2, :cond_3

    return-object p0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method public isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public subsumes(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->declaringModules:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->readableName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v2, ", "

    goto :goto_0
.end method
