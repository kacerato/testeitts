.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;,
        Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;,
        Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;,
        Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;
    }
.end annotation


# static fields
.field public static final u:I = -0x80000000


# instance fields
.field public transient a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;"
        }
    .end annotation
.end field

.field public attributes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;",
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
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;",
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
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;",
            ">;"
        }
    .end annotation
.end field

.field public transient d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public transient f:Z

.field public transient g:Z

.field public transient h:Z

.field public transient i:Z

.field public transient j:Z

.field public transient k:J

.field public transient l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

.field public transient m:J

.field public transient n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;",
            ">;"
        }
    .end annotation
.end field

.field public transient o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public transient p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public transient q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public transient r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;",
            ">;>;"
        }
    .end annotation
.end field

.field public transient s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;",
            ">;>;"
        }
    .end annotation
.end field

.field public serializedNodes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public transient t:Ljava/lang/Runnable;

.field public variables:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j:Z

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k:J

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->m:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Long;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t0(Ljava/lang/Long;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->v0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->u0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t0(Ljava/lang/Long;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

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

.method public static synthetic v0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

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

.method public static synthetic w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->ownerNodeId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "context",
            "operationId"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->o()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    return p1

    :catchall_0
    move-exception p1

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    throw p1
.end method

.method public A0()Ljava/lang/String;
    .locals 1

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/Class;Lj9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventClass",
            "collision"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;",
            "Lj9/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a1()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, LPa/c;

    if-eqz v2, :cond_2

    check-cast v1, LPa/a;

    invoke-virtual {v1, p2}, LPa/a;->G0(Lj9/a;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final B0(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v0

    :goto_0
    if-ltz v3, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-nez v6, :cond_2

    :cond_1
    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {v1, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return v5

    :cond_7
    :goto_3
    return v0
.end method

.method public varargs C(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a1()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->H0(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public C0()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/Class;Lj9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventClass",
            "collision"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;",
            "Lj9/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a1()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, LPa/d;

    if-eqz v2, :cond_2

    check-cast v1, LPa/a;

    invoke-virtual {v1, p2}, LPa/a;->G0(Lj9/a;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public D0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s0()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->i0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public E(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a1()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, LLa/a;

    if-eqz v2, :cond_2

    check-cast v1, LLa/a;

    invoke-virtual {v1}, LLa/a;->G0()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public E0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j0()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public F(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ownerNode"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void
.end method

.method public final F0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;Ljava/lang/Object;Lga/H;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "variable",
            "value",
            "desiredType"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_2

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q0(Ljava/lang/Object;)Lga/H;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p2, p3}, Lga/m;->c(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p2, p3}, Lga/m;->R(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p1

    :pswitch_1
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->e:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p2, p3}, Lga/m;->g0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->e:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object p1

    :pswitch_2
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {p2, p3}, Lga/m;->q0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-object p1

    :pswitch_3
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2, p3}, Lga/m;->o0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :pswitch_4
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p2, p3}, Lga/m;->m0(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p1

    :cond_3
    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->C()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :cond_2
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->FINISHED:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    if-eq p1, p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y(Ljava/lang/Long;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->b1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    return-void
.end method

.method public G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
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
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->C()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->u()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->e()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final H0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "rootEvent",
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->g:I

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, v0

    if-ge v1, v2, :cond_7

    aget-object v2, v0, v1

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    move-object v4, p2

    goto :goto_1

    :cond_4
    move-object v4, p1

    :goto_1
    const/high16 v5, -0x80000000

    invoke-virtual {p0, v3, v4, p3, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->m0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->g:I

    return-void

    :goto_4
    iget p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->g:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->g:I

    throw p1
.end method

.method public I()V
    .locals 5

    invoke-static {}, Lga/q;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->B0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->z0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f1()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->B0(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->z0()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;->serializedType:Ljava/lang/String;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;->data:Lcom/google/gson/JsonObject;

    invoke-static {v4, v3}, Lga/o;->c(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->B0(Ljava/util/List;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s0()V

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g:Z

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->i0()V

    :cond_b
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->z0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f1()V

    return-void
.end method

.method public final I0()V
    .locals 5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->ownerNodeId:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->input:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r:Ljava/util/Map;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s:Ljava/util/Map;

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->ownerNodeId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->slotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j:Z

    return-void
.end method

.method public final J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "rootEvent",
            "context",
            "incomingBranchSlot"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    invoke-direct {p3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    iget-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->b:Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p0(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->a:Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p0(Ljava/util/Map;Ljava/lang/String;)V

    iget-wide v3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->h:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, p1

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->k(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_5
    const/high16 v3, -0x80000000

    if-eq p4, v3, :cond_6

    iget-object v3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {p4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->n0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->b:Ljava/util/Map;

    invoke-virtual {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->v(Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->b:Ljava/util/Map;

    invoke-virtual {p0, p2, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->v(Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    throw p1
.end method

.method public final J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "nextNode",
            "context"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lga/f;

    invoke-direct {v2}, Lga/f;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    iget-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->d:Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ownerNode"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->L(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void
.end method

.method public K0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->W(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->L0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Object;)V

    return-void
.end method

.method public final L(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Ljava/lang/Long;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->C()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void

    :cond_7
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    move-object v4, v0

    goto :goto_3

    :cond_c
    move-object v4, p1

    :goto_3
    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-virtual {p0, v3, v4, p2, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, p1, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_2

    :cond_d
    return-void
.end method

.method public final L0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->f:Lga/y;

    invoke-virtual {v0, p2}, Lga/y;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->f:Lga/y;

    invoke-virtual {p1, p2}, Lga/y;->g(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public M(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "slot"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void
.end method

.method public M0(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    const-string v4, "@@ASSET@@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoCode: REPLACING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " TO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->r0(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "slot",
            "context"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S0([Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I

    move-result v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Ljava/lang/Long;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-gez v0, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->C()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    sget-object v3, Lga/H;->BRANCH:Lga/H;

    if-ne p2, v3, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    if-eq v0, v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-nez p2, :cond_c

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-nez v6, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_4

    :cond_e
    iget v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    if-eq v0, v7, :cond_f

    goto :goto_4

    :cond_f
    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void

    :cond_12
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {p0, p1, v5, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_5

    :cond_14
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1, v5, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_6

    :cond_15
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v5

    if-nez v5, :cond_17

    goto :goto_7

    :cond_17
    if-eqz v1, :cond_18

    move-object v6, v1

    goto :goto_8

    :cond_18
    move-object v6, p1

    :goto_8
    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-virtual {p0, v5, v6, p3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0, p1, v5, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_7

    :cond_19
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_1b

    move-object v4, v1

    goto :goto_a

    :cond_1b
    move-object v4, p1

    :goto_a
    const/high16 v5, -0x80000000

    invoke-virtual {p0, v2, v4, p3, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, p1, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_9

    :cond_1c
    if-nez p2, :cond_22

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_b

    :cond_1e
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_c

    :cond_20
    if-eqz v1, :cond_21

    move-object v3, v1

    goto :goto_d

    :cond_21
    move-object v3, p1

    :goto_d
    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-virtual {p0, v2, v3, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0, p1, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    goto :goto_c

    :cond_22
    return-void
.end method

.method public N0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
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
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->O0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j0()V

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v1, Lga/g;

    invoke-direct {v1, p1}, Lga/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v1, Lga/h;

    invoke-direct {v1, p1}, Lga/h;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    if-eqz v0, :cond_5

    new-instance v1, Lga/i;

    invoke-direct {v1, p1}, Lga/i;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->z0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    return-void
.end method

.method public O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->R(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    return-object p1
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeId"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y(Ljava/lang/Long;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public P(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->U(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    return-object p1
.end method

.method public final P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V

    return-object p1
.end method

.method public Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-eq p2, v3, :cond_3

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    return-object v1
.end method

.method public final Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "context"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->h:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public R(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->f()Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    return-object p1
.end method

.method public final R0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "slot"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S0([Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X(Ljava/lang/String;IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S0([Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I

    move-result p2

    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X(Ljava/lang/String;IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public S(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->f()Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    return-object p1
.end method

.method public final S0([Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slots",
            "target"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    if-ne v3, p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_6

    aget-object v2, p1, v1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    iget-object v3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    if-eq v2, v3, :cond_5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v0
.end method

.method public T(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 0
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
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->U0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    return-void
.end method

.method public U(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public final U0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventNode"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lga/f;

    invoke-direct {v2}, Lga/f;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->c1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    return-void
.end method

.method public V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public V0(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->U(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, p2, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    instance-of p2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1, p2, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    return v1
.end method

.method public final W(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public W0(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, p2, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    instance-of p2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->R(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1, p2, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    return v1
.end method

.method public final X(Ljava/lang/String;IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "slotIndex",
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I0()V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s:Ljava/util/Map;

    :goto_0
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public X0(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t:Ljava/lang/Runnable;

    return-void
.end method

.method public final Y(Ljava/lang/Long;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "operationId",
            "rootEvent"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lga/j;

    invoke-direct {v1, p1}, Lga/j;-><init>(Ljava/lang/Long;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz v0, :cond_4

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->f:Lga/y;

    invoke-virtual {p1}, Lga/y;->e()V

    :cond_4
    :goto_1
    return-void
.end method

.method public Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "ownerComponent"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method

.method public Z(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "slot",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->R0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->W(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->type:Lga/H;

    :goto_0
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;Ljava/lang/Object;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j()V

    :cond_1
    return-object p3
.end method

.method public a0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a1()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->l0()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final b1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventNode"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->c1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    return-void
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final c1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventNode"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lga/f;

    invoke-direct {v2}, Lga/f;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->m:J

    iput-wide v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->h:J

    iput-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    iget-wide v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, -0x80000000

    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->J(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;I)Z

    return-void
.end method

.method public d0(LIc/h;)LIc/k;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    const-string v5, "@@ASSET@@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, LIc/k;->a:Ljava/util/List;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->file:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_2

    iget-object v3, v0, LIc/k;->a:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w(LIc/h;)LIc/k;

    move-result-object v2

    iget-object v2, v2, LIc/k;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final d1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;Ljava/lang/Object;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "variable",
            "value",
            "desiredType",
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->F0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->a:Ljava/lang/Object;

    if-eq v0, p3, :cond_1

    invoke-virtual {p0, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->L0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Object;)V

    :cond_1
    if-eq p3, p2, :cond_2

    invoke-virtual {p0, p4, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->L0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Object;)V

    :cond_2
    return-object p3
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->W(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->f:Lga/y;

    invoke-virtual {p1, p2}, Lga/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lga/y;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;",
            ">;"
        }
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->f()Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e1()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

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

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->L()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v1}, Lga/o;->f(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/google/gson/JsonObject;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->serializedNodes:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;

    invoke-direct {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    return-void
.end method

.method public f0(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->exposeInInspector:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;

    invoke-direct {v4, p0, p2, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawSliderNode;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawSliderNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$g;

    invoke-direct {v4, p0, p2, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawSliderNode;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawTextNode;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawTextNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$h;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawTextNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$i;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawObjectFileNode;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawObjectFileNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$j;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawObjectFileNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".go"

    invoke-direct {v3, v4, v2, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat2Node;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat2Node;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat2Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v3, v2}, LF5/c;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat3Node;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat3Node;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3, v2}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat4Node;

    if-eqz v3, :cond_a

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat4Node;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;

    const-string v4, " C2"

    const-string v5, " C1"

    const-string v6, " C0"

    if-eqz v3, :cond_b

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3, v6}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3, v5}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3, v2}, LF5/c;->K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;

    if-eqz v3, :cond_c

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v6, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v5, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v4, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " C3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    if-eqz v3, :cond_d

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;

    if-eqz v3, :cond_e

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$l;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;

    if-eqz v3, :cond_f

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;->value:Lec/a;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$m;

    invoke-direct {v5, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object v2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    const-class v6, Lec/a;

    invoke-static {v3, v6, v4, v5, v2}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;

    if-eqz v3, :cond_10

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;->value:Lcc/e;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$n;

    invoke-direct {v5, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawUvSourceNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object v2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    const-class v6, Lcc/e;

    invoke-static {v3, v6, v4, v5, v2}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    if-eqz v3, :cond_11

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawCubemapNode;

    if-eqz v3, :cond_12

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawCubemapNode;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$b;

    invoke-direct {v4, p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawCubemapNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v3, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$c;

    invoke-direct {v4, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-static {v3, v2, p1, v4}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    return-object v0
.end method

.method public f1()V
    .locals 6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v5

    invoke-virtual {p0, v0, v2, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Z)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Z)V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->variables:Ljava/util/List;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i:Z

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I0()V

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->id:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->s0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->z0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f1()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->i0()V

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->l0()V

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    return-void
.end method

.method public g0()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->m()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "nextNode",
            "context"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_0
    iget-object p2, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final h(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "next",
            "node",
            "slots",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            "[",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;",
            "Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_4

    aget-object v1, p3, v0

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    sget-object v3, Lga/H;->BRANCH:Lga/H;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X(Ljava/lang/String;IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;-><init>()V

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->guid:Ljava/lang/String;

    :cond_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->ownerNodeId:Ljava/lang/String;

    iput v0, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->slotIndex:I

    iput-boolean p4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->input:Z

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->slotName:Ljava/lang/String;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    iput-object v1, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->type:Lga/H;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public h1()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E0()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ownerNode"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->j:Z

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)V

    return-void
.end method

.method public i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-object v0
.end method

.method public i1()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F0()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 5

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k:J

    return-void

    :cond_0
    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k:J

    return-void
.end method

.method public j0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method

.method public final j1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nodeId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->f:Lga/y;

    invoke-virtual {v0}, Lga/y;->e()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eq v1, v2, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->f:Lga/y;

    invoke-virtual {v1}, Lga/y;->e()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->m:J

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public k0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final l(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Ljava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "operationId"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public l0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    return v0
.end method

.method public final m(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNodeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    :goto_2
    return-object v0
.end method

.method public m0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "slot"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->W(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S0([Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->w(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILga/H;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X(Ljava/lang/String;IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->a:Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->w(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILga/H;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->w(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILga/H;)Ljava/lang/Object;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X(Ljava/lang/String;IZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;Ljava/lang/Object;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-static {v0, p1}, Lga/m;->c(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->R0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->a:Ljava/lang/Object;

    :cond_8
    :goto_2
    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/util/ArrayDeque;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public n0()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->k:J

    return-wide v0
.end method

.method public final o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentNodeId",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_2
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "slot"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->S0([Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    if-eq p2, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ownerNode",
            "rootEvent",
            "context",
            "operationId"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->FINISHED:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->P0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    move-result-object p3

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->p()Z

    move-result p1

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p0, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p3, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_3

    if-nez p1, :cond_6

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->FINISHED:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_3
    invoke-virtual {p0, v3, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)I

    move-result v1

    if-lez v1, :cond_5

    if-nez p1, :cond_4

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->WAITING:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v1

    if-nez v1, :cond_7

    if-nez p1, :cond_6

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->FINISHED:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_6
    move v1, v4

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    iget-boolean v3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->j:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0, v1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->z(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->CAUGHT:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_8
    invoke-virtual {p0, v1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->A(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->CAUGHT:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_9
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    move-result-object v1

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->CAUGHT:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    if-ne v1, v3, :cond_a

    return-object v3

    :cond_a
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->WAITING:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    if-ne v1, v3, :cond_b

    move v2, v4

    :cond_b
    if-nez p1, :cond_6

    return-object v1

    :cond_c
    :goto_2
    if-nez v1, :cond_d

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->FINISHED:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    return-object p1

    :cond_d
    if-eqz v2, :cond_e

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->WAITING:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    goto :goto_3

    :cond_e
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;->FINISHED:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$o;

    :goto_3
    return-object p1
.end method

.method public final p0(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "counts",
            "nodeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lga/f;

    invoke-direct {v1}, Lga/f;-><init>()V

    invoke-interface {p1, p2, v0, v1}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventNodeId"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->p:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final q0(Ljava/lang/Object;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_0

    sget-object p1, Lga/H;->FLOAT2:Lga/H;

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_1

    sget-object p1, Lga/H;->FLOAT3:Lga/H;

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v0, :cond_2

    sget-object p1, Lga/H;->FLOAT4:Lga/H;

    return-object p1

    :cond_2
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_3

    sget-object p1, Lga/H;->QUATERNION:Lga/H;

    return-object p1

    :cond_3
    instance-of p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p1, :cond_4

    sget-object p1, Lga/H;->COLOR:Lga/H;

    return-object p1

    :cond_4
    sget-object p1, Lga/H;->DYNAMIC:Lga/H;

    return-object p1
.end method

.method public r()I
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->q()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public r0(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->R(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "vector",
            "component",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$d;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public final s0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nodeId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x4

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    const-string v1, "W"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p2

    aput-object p2, p1, v2

    return-object v0
.end method

.method public final u()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V

    :goto_0
    return-object v0
.end method

.method public final v(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "counts",
            "nodeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final w(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILga/H;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex",
            "type"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lga/m;->e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lga/F;

    if-eqz v0, :cond_1

    check-cast p1, Lga/F;

    invoke-interface {p1, p2, p3}, Lga/F;->a(ILga/H;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lga/m;->u(Ljava/lang/String;Lga/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-static {p3, p1}, Lga/m;->f(Lga/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childNodeId",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public x0(LLb/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->f0(LLb/a;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public y(Ljava/lang/Class;Lj9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventClass",
            "collision"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;",
            "Lj9/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a1()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, LPa/b;

    if-eqz v2, :cond_2

    check-cast v1, LPa/a;

    invoke-virtual {v1, p2}, LPa/a;->G0(Lj9/a;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public y0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->c:J

    return-void
.end method

.method public final z(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;Ljava/lang/Long;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "context",
            "operationId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->j:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->n()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    if-eqz p1, :cond_2

    iput-boolean v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;->j:Z

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$p;

    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final z0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->j()V

    return-void
.end method
