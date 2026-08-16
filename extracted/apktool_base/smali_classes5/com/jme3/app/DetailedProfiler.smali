.class public Lcom/jme3/app/DetailedProfiler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/profile/AppProfiler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/DetailedProfiler$StatLine;
    }
.end annotation


# static fields
.field private static final MAX_FRAMES:I = 0x64

.field private static currentFrame:I


# instance fields
.field private curAppPath:Ljava/lang/String;

.field private curSpPath:Ljava/lang/String;

.field private curVpPath:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/app/DetailedProfiler$StatLine;",
            ">;"
        }
    .end annotation
.end field

.field private frameEnded:Z

.field frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

.field private final idsPool:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastVpStep:Lcom/jme3/profile/VpStep;

.field private ongoingGpuProfiling:Z

.field private final path:Ljava/lang/StringBuilder;

.field private pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/app/DetailedProfiler$StatLine;",
            ">;"
        }
    .end annotation
.end field

.field private prevPath:Ljava/lang/String;

.field private renderer:Lcom/jme3/renderer/Renderer;

.field private startFrame:J

.field private final vpPath:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->prevPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jme3/app/DetailedProfiler;->frameEnded:Z

    iput-boolean v1, p0, Lcom/jme3/app/DetailedProfiler;->ongoingGpuProfiling:Z

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curVpPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curSpPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->lastVpStep:Lcom/jme3/profile/VpStep;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->idsPool:Ljava/util/Deque;

    return-void
.end method

.method public static synthetic access$500()I
    .locals 1

    sget v0, Lcom/jme3/app/DetailedProfiler;->currentFrame:I

    return v0
.end method

.method private addStep(Ljava/lang/String;J)V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfiler;->ongoingGpuProfiling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->stopProfiling()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfiler;->ongoingGpuProfiling:Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->prevPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/DetailedProfiler$StatLine;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$100(Lcom/jme3/app/DetailedProfiler$StatLine;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-static {v0, v1, v2}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$200(Lcom/jme3/app/DetailedProfiler$StatLine;J)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->pool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/DetailedProfiler$StatLine;

    if-nez v0, :cond_2

    new-instance v0, Lcom/jme3/app/DetailedProfiler$StatLine;

    sget v1, Lcom/jme3/app/DetailedProfiler;->currentFrame:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/app/DetailedProfiler$StatLine;-><init>(ILcom/jme3/app/DetailedProfiler$1;)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->pool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p2, p3}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$400(Lcom/jme3/app/DetailedProfiler$StatLine;J)V

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/jme3/app/DetailedProfiler;->getUnusedTaskId()I

    move-result p2

    iget-object p3, v0, Lcom/jme3/app/DetailedProfiler$StatLine;->taskIds:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p3, p2}, Lcom/jme3/renderer/Renderer;->startProfiling(I)V

    :cond_3
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/jme3/app/DetailedProfiler;->ongoingGpuProfiling:Z

    iput-object p1, p0, Lcom/jme3/app/DetailedProfiler;->prevPath:Ljava/lang/String;

    return-void
.end method

.method private closeFrame()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jme3/app/DetailedProfiler;->ongoingGpuProfiling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->stopProfiling()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfiler;->ongoingGpuProfiling:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->prevPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-static {v1}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$300(Lcom/jme3/app/DetailedProfiler$StatLine;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/jme3/app/DetailedProfiler;->currentFrame:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jme3/app/DetailedProfiler;->currentFrame:I

    :cond_2
    return-void
.end method

.method private varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnusedTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->idsPool:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {p0, v0}, Lcom/jme3/app/DetailedProfiler;->poolTaskIds(Lcom/jme3/renderer/Renderer;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->idsPool:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private poolTaskIds(Lcom/jme3/renderer/Renderer;)V
    .locals 4

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/jme3/renderer/Renderer;->generateProfilingTasks(I)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/jme3/app/DetailedProfiler;->idsPool:Ljava/util/Deque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appStep(Lcom/jme3/profile/AppStep;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    sget-object v0, Lcom/jme3/profile/AppStep;->BeginFrame:Lcom/jme3/profile/AppStep;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->pool:Ljava/util/Map;

    new-instance v0, Lcom/jme3/app/DetailedProfiler$StatLine;

    sget v2, Lcom/jme3/app/DetailedProfiler;->currentFrame:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/jme3/app/DetailedProfiler$StatLine;-><init>(ILcom/jme3/app/DetailedProfiler$1;)V

    iput-object v0, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-virtual {v0}, Lcom/jme3/app/DetailedProfiler$StatLine;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-static {v4}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$100(Lcom/jme3/app/DetailedProfiler$StatLine;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$200(Lcom/jme3/app/DetailedProfiler$StatLine;J)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-static {v0}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$300(Lcom/jme3/app/DetailedProfiler$StatLine;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$400(Lcom/jme3/app/DetailedProfiler$StatLine;J)V

    iput-boolean v1, p0, Lcom/jme3/app/DetailedProfiler;->frameEnded:Z

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/app/DetailedProfiler$StatLine;

    iget-object v3, v2, Lcom/jme3/app/DetailedProfiler$StatLine;->taskIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v6, v5}, Lcom/jme3/renderer/Renderer;->isTaskResultAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v6, v5}, Lcom/jme3/renderer/Renderer;->getProfilingTime(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/jme3/app/DetailedProfiler$StatLine;->setValueGpu(J)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v5, p0, Lcom/jme3/app/DetailedProfiler;->idsPool:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jme3/app/DetailedProfiler;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/jme3/app/DetailedProfiler;->frameEnded:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/jme3/app/DetailedProfiler;->addStep(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/jme3/app/DetailedProfiler;->startFrame:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jme3/app/DetailedProfiler$StatLine;->access$200(Lcom/jme3/app/DetailedProfiler$StatLine;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/DetailedProfiler;->frameEnded:Z

    goto :goto_1

    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/jme3/app/DetailedProfiler;->addStep(Ljava/lang/String;J)V

    :cond_8
    :goto_1
    sget-object v0, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/jme3/app/DetailedProfiler;->closeFrame()V

    :cond_9
    return-void
.end method

.method public varargs appSubStep([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/jme3/app/DetailedProfiler;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/app/DetailedProfiler;->addStep(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public getAverageFrameTime()D
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->frameTime:Lcom/jme3/app/DetailedProfiler$StatLine;

    invoke-virtual {v0}, Lcom/jme3/app/DetailedProfiler$StatLine;->getAverageCpu()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/app/DetailedProfiler$StatLine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRenderer(Lcom/jme3/renderer/Renderer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/DetailedProfiler;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {p0, p1}, Lcom/jme3/app/DetailedProfiler;->poolTaskIds(Lcom/jme3/renderer/Renderer;)V

    return-void
.end method

.method public varargs spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string p1, ""

    invoke-direct {p0, p1, p2}, Lcom/jme3/app/DetailedProfiler;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/DetailedProfiler;->curSpPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->curVpPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->curSpPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/app/DetailedProfiler;->addStep(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->data:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Bucket"

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->lastVpStep:Lcom/jme3/profile/VpStep;

    sget-object v1, Lcom/jme3/profile/VpStep;->PostQueue:Lcom/jme3/profile/VpStep;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/jme3/profile/VpStep;->PostFrame:Lcom/jme3/profile/VpStep;

    if-ne v0, v1, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curVpPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curSpPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/app/DetailedProfiler;->curVpPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/app/DetailedProfiler;->curVpPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/app/DetailedProfiler;->curAppPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jme3/app/DetailedProfiler;->vpPath:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/app/DetailedProfiler;->curVpPath:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/jme3/app/DetailedProfiler;->lastVpStep:Lcom/jme3/profile/VpStep;

    iget-object p1, p0, Lcom/jme3/app/DetailedProfiler;->path:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/app/DetailedProfiler;->addStep(Ljava/lang/String;J)V

    :cond_4
    return-void
.end method
