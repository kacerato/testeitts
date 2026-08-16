.class public Lcom/tonyodev/fetch2/RequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoRetryMaxAttempts:I

.field private downloadOnEnqueue:Z

.field private enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private extras:Lcom/tonyodev/fetch2core/Extras;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupId:I

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private identifier:J

.field private networkType:Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private priority:Lcom/tonyodev/fetch2/Priority;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    sget-object v0, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.RequestInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/RequestInfo;

    iget-wide v3, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    iget v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    iget p1, p1, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAutoRetryMaxAttempts()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    return v0
.end method

.method public final getDownloadOnEnqueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    return v0
.end method

.method public final getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object v0
.end method

.method public final getExtras()Lcom/tonyodev/fetch2core/Extras;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    return v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getIdentifier()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    return-wide v0
.end method

.method public final getNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public final getPriority()Lcom/tonyodev/fetch2/Priority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Extras;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAutoRetryMaxAttempts(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The maximum number of attempts has to be greater than -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDownloadOnEnqueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    return-void
.end method

.method public final setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/EnqueueAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-void
.end method

.method public final setExtras(Lcom/tonyodev/fetch2core/Extras;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Extras;->copy()Lcom/tonyodev/fetch2core/Extras;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-void
.end method

.method public final setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    return-void
.end method

.method public final setIdentifier(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    return-void
.end method

.method public final setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    return-void
.end method

.method public final setPriority(Lcom/tonyodev/fetch2/Priority;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Priority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    iget v2, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    iget-object v3, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    iget-object v5, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-object v6, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    iget-boolean v8, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    iget v9, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    iget-object v10, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RequestInfo(identifier="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", groupId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", headers="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tag="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", enqueueAction="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadOnEnqueue="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", autoRetryMaxAttempts="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extras="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
