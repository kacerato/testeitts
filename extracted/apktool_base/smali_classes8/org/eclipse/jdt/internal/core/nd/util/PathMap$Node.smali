.class Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/util/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
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
.field children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field depth:I

.field exists:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    return-void
.end method


# virtual methods
.method public addAllKeys(Ljava/util/Set;Lorg/eclipse/core/runtime/IPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;",
            "Lorg/eclipse/core/runtime/IPath;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->buildChildPath(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->addAllKeys(Ljava/util/Set;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_0
.end method

.method public buildChildPath(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;
    .locals 0

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1
.end method

.method public createChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public createNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getSegment(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->createChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->createNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    return-object p1
.end method

.method public getMostSpecificNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getSegment(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getMostSpecificNode(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method public getSegment(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->depth:I

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/StringBuilder;Lorg/eclipse/core/runtime/IPath;)V
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->exists:Z

    if-eqz v0, :cond_0

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->children:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->buildChildPath(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->toString(Ljava/lang/StringBuilder;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
