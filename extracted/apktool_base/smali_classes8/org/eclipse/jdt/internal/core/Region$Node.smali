.class final Lorg/eclipse/jdt/internal/core/Region$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "Lorg/eclipse/jdt/internal/core/Region$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearChildren()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    return-void
.end method

.method public countLeafNodes()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Region$Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/Region$Node;->countLeafNodes()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public createChildFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Region$Node;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/Region$Node;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public findChildFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/Region$Node;

    return-object p1
.end method

.method public gatherLeaves([Lorg/eclipse/jdt/core/IJavaElement;I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/Region$Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v1, p1, p2

    move p2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/core/Region$Node;->gatherLeaves([Lorg/eclipse/jdt/core/IJavaElement;I)I

    move-result p2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeChild(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region$Node;->children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
