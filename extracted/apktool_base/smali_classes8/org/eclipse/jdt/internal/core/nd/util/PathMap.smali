.class public Lorg/eclipse/jdt/internal/core/nd/util/PathMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;,
        Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    return-void
.end method


# virtual methods
.method public containsKeyStartingWith(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getMostSpecificNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getMostSpecificNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    return p1
.end method

.method public get(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getMostSpecificNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object v0

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->value:Ljava/lang/Object;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMostSpecific(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getMostSpecificNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    sget-object v2, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->addAllKeys(Ljava/util/Set;Lorg/eclipse/core/runtime/IPath;)V

    return-object v0
.end method

.method public put(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->createNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->value:Ljava/lang/Object;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap;->root:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    sget-object v2, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->toString(Ljava/lang/StringBuilder;Lorg/eclipse/core/runtime/IPath;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
