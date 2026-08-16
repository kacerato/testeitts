.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:J


# instance fields
.field public transient a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;"
        }
    .end annotation
.end field

.field public transient b:Z

.field public branchConnections:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;",
            ">;"
        }
    .end annotation
.end field

.field public transient c:J

.field public connections:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;",
            ">;"
        }
    .end annotation
.end field

.field public transient d:Ljava/lang/Runnable;

.field public serializedNodes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->serializedNodes:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static d()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e:J

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->c()V

    return-void
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->id:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    return-void
.end method

.method public e()V
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/r;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->m()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->serializedNodes:Ljava/util/List;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeRecord;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeRecord;->serializedType:Ljava/lang/String;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeRecord;->data:Lcom/google/gson/JsonObject;

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->c(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->m()V

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public g(LIc/h;)LIc/k;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v2, :cond_0

    iget-object v3, v0, LIc/k;->a:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->i(LIc/h;)LIc/k;

    move-result-object v2

    iget-object v2, v2, LIc/k;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->f()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c:J

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public n(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->C(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/j;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/k;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/k;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    return-void
.end method

.method public p(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendingSaveListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->serializedNodes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->serializedNodes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->serializedNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->t()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/google/gson/JsonObject;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->serializedNodes:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeRecord;

    invoke-direct {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeRecord;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method
