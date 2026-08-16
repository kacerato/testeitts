.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;
    }
.end annotation


# instance fields
.field private final implicitImportContainers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onDemandComputer:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

.field private final staticConflictFinder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;

.field private final typeConflictFinder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->onDemandComputer:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->typeConflictFinder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->staticConflictFinder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->implicitImportContainers:Ljava/util/Set;

    return-void
.end method

.method private extractContainerNames(Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;",
            ">;Z)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->containerOnDemand:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-ne v2, p2, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private extractOnDemandContainerNames(Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;Z)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isOnDemand()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-ne v2, p2, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findConflictingSimpleNames(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;Ljava/util/Set;ZLjava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0, p4, p5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;->findConflictingSimpleNames(Ljava/util/Set;Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-ne v2, p3, :cond_1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->simpleName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public identifyConflicts(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->onDemandComputer:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->identifyPossibleReductions(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->extractContainerNames(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->extractContainerNames(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->extractOnDemandContainerNames(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->implicitImportContainers:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->extractOnDemandContainerNames(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->typeConflictFinder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->findConflictingSimpleNames(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;Ljava/util/Set;ZLjava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Set;

    move-result-object v7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->staticConflictFinder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;

    const/4 v3, 0x1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->findConflictingSimpleNames(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;Ljava/util/Set;ZLjava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;

    invoke-direct {v1, v7, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method
