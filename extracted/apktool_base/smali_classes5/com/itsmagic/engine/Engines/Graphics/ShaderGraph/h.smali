.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->m(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/f;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lec/f;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec/g;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lec/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lec/g;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "data",
            "nodeMap",
            "node",
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object v1, p3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_3

    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object p2

    :cond_3
    instance-of p1, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/e;

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    check-cast p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/e;

    invoke-interface {p2, p0, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/e;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget p1, p3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromSlot:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "!("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "nodeMap",
            "target",
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v4

    :goto_2
    invoke-static {v4, p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v4, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    return-object v0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "data",
            "map",
            "visited",
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object p0

    if-eqz p0, :cond_5

    move v2, v0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_5

    invoke-static {p1, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-static {v4, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "data",
            "map",
            "visited",
            "visiting",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "toNodeId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "nodeId",
            "inputIndex"
        }
    .end annotation

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const-string v1, ""

    const-string v2, "[INSERT_CODE]"

    const/4 v3, 0x0

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "Base/base_frag.glsl"

    invoke-static {p0}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcc/d;->q(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->b:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->a:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, "Base/base_vertex.glsl"

    invoke-static {p0}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcc/d;->q(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->a:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-static {v4, p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    move v2, v0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "targetNode"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lic/N0;

    if-eqz v1, :cond_1

    check-cast p1, Lic/N0;

    invoke-virtual {p1, p0}, Lic/N0;->I(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result p0

    return p0

    :cond_1
    iget-boolean p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slotStage",
            "desired"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    if-eq p0, v0, :cond_1

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p1, v0, :cond_5

    if-eq p0, v0, :cond_4

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v2
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/Map;

    move-result-object v2

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, p1

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    return-object v6
.end method


# virtual methods
.method public h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "targetNode"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;-><init>()V

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/r;->a()V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->n(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->e:Ljava/util/List;

    const-string p2, "No nodes to compile"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-static {p1, v1, p2, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/util/Set;

    move-result-object v5

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-static {p1, v1, p2, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/util/Set;

    move-result-object v6

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Z

    move-result v9

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Z)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "}"

    const-string v5, ") {"

    const-string v6, "if ("

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    sget-object v7, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, v3, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->E(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10, p1, v1, v3, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v7, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    invoke-virtual {v10, v7, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v10, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    sget-object v7, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, v3, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->E(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v10, p1, v1, v3, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    invoke-virtual {v10, v7, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v10, v7}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const-string v4, "prepareMaterial(material);"

    const-string v5, "material.normal = float3(0.0, 0.0, 1.0);"

    if-ne v2, v3, :cond_8

    invoke-virtual {v10, p2, p1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v.worldPosition = float4("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", v.worldPosition.w);"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, p1, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    invoke-virtual {v10, p1, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    const-string p2, "material.baseColor = float4(1.0);"

    invoke-virtual {v10, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v3, "texture("

    if-ne v1, v2, :cond_9

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, p2, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getUV0())"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_a

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, p2, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", float3(getUV0(), 1.0))"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, p2, p1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {v10, p2, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    invoke-virtual {v10, p2, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "material.baseColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    :cond_b
    :goto_3
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->m()Ljava/lang/String;

    move-result-object p2

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->B()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    invoke-static {}, Lnc/h;->o()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->c(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->C()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v9, :cond_c

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    invoke-static {}, Lnc/b;->l()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->d(Ljava/util/List;Ljava/util/List;)V

    :cond_c
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    invoke-static {}, Lnc/h;->p()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->d(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->e:Ljava/util/List;

    invoke-static {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Shader graph has a loop (DAG required)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_4
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->e:Ljava/util/List;

    const-string p2, "Invalid graph or target node"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
