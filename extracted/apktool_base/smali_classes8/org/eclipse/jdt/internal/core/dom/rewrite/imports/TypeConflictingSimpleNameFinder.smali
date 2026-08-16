.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;
    }
.end annotation


# instance fields
.field private final javaProject:Lorg/eclipse/jdt/core/IJavaProject;

.field private final searchEngine:Lorg/eclipse/jdt/core/search/SearchEngine;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/search/SearchEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;->javaProject:Lorg/eclipse/jdt/core/IJavaProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;->searchEngine:Lorg/eclipse/jdt/core/search/SearchEngine;

    return-void
.end method

.method private static stringsToCharArrays(Ljava/util/Collection;)[[C
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[[C"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [[C

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public findConflictingSimpleNames(Ljava/util/Set;Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;->javaProject:Lorg/eclipse/jdt/core/IJavaProject;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/eclipse/jdt/core/search/SearchEngine;->createJavaSearchScope([Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v6

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;->searchEngine:Lorg/eclipse/jdt/core/search/SearchEngine;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;->stringsToCharArrays(Ljava/util/Collection;)[[C

    move-result-object v4

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;->stringsToCharArrays(Ljava/util/Collection;)[[C

    move-result-object v5

    const/4 v8, 0x3

    move-object v7, v0

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/core/search/SearchEngine;->searchAllTypeNames([[C[[CLorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/TypeNameRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder$ConflictAccumulatingTypeRequestor;->getNamesFoundInMultipleContainers()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
