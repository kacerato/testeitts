.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictingSimpleNameFinder;


# instance fields
.field private final project:Lorg/eclipse/jdt/core/IJavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;->project:Lorg/eclipse/jdt/core/IJavaProject;

    return-void
.end method

.method private extractStaticMemberNames(Lorg/eclipse/jdt/core/IType;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IType;",
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFields()[Lorg/eclipse/jdt/core/IField;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-lt v3, v6, :cond_0

    return-object v0

    :cond_0
    aget-object p1, v5, v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;->isStaticImportableMember(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;->isStaticImportableMember(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static isStaticImportableMember(I)Z
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Flags;->isEnum(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/Flags;->isPrivate(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public findConflictingSimpleNames(Ljava/util/Set;Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Set;
    .locals 5
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;->project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v3, v2, p3}, Lorg/eclipse/jdt/core/IJavaProject;->findType(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;->extractStaticMemberNames(Lorg/eclipse/jdt/core/IType;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
