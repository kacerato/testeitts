.class public Lcom/jme3/app/BasicProfiler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/profile/AppProfiler;


# instance fields
.field private frameIndex:I

.field private frames:[J

.field private lastUpdate:J

.field private mesh:Lcom/jme3/scene/Mesh;

.field private renderTime:J

.field private size:I

.field private startTime:J

.field private updateInterval:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x500

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/app/BasicProfiler;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    const-wide/32 v0, 0xf4240

    .line 4
    iput-wide v0, p0, Lcom/jme3/app/BasicProfiler;->updateInterval:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/jme3/app/BasicProfiler;->lastUpdate:J

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/app/BasicProfiler;->setFrameCount(I)V

    return-void
.end method


# virtual methods
.method public appStep(Lcom/jme3/profile/AppStep;)V
    .locals 7

    sget-object v0, Lcom/jme3/app/BasicProfiler$1;->$SwitchMap$com$jme3$profile$AppStep:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/jme3/app/BasicProfiler;->frames:[J

    iget v3, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    iget-wide v5, p0, Lcom/jme3/app/BasicProfiler;->renderTime:J

    sub-long/2addr v1, v5

    aput-wide v1, p1, v4

    add-int/2addr v3, v0

    iput v3, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    iget p1, p0, Lcom/jme3/app/BasicProfiler;->size:I

    if-lt v3, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    :cond_1
    iget-wide v0, p0, Lcom/jme3/app/BasicProfiler;->startTime:J

    iget-wide v2, p0, Lcom/jme3/app/BasicProfiler;->lastUpdate:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jme3/app/BasicProfiler;->updateInterval:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/jme3/app/BasicProfiler;->updateMesh()V

    iget-wide v0, p0, Lcom/jme3/app/BasicProfiler;->startTime:J

    iput-wide v0, p0, Lcom/jme3/app/BasicProfiler;->lastUpdate:J

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jme3/app/BasicProfiler;->renderTime:J

    iget-object p1, p0, Lcom/jme3/app/BasicProfiler;->frames:[J

    iget v0, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lcom/jme3/app/BasicProfiler;->startTime:J

    sub-long/2addr v2, v4

    aput-wide v2, p1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/app/BasicProfiler;->startTime:J

    :cond_4
    :goto_0
    return-void
.end method

.method public varargs appSubStep([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final createMesh()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    iget v2, p0, Lcom/jme3/app/BasicProfiler;->size:I

    mul-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/jme3/app/BasicProfiler;->size:I

    mul-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/app/BasicProfiler;->size:I

    if-ge v1, v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/jme3/app/BasicProfiler;->size:I

    return v0
.end method

.method public getMesh()Lcom/jme3/scene/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    return-object v0
.end method

.method public getUpdateInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/BasicProfiler;->updateInterval:J

    return-wide v0
.end method

.method public final setFrameCount(I)V
    .locals 1

    iget v0, p0, Lcom/jme3/app/BasicProfiler;->size:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/jme3/app/BasicProfiler;->size:I

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jme3/app/BasicProfiler;->frames:[J

    invoke-virtual {p0}, Lcom/jme3/app/BasicProfiler;->createMesh()V

    iget v0, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    if-lt v0, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/app/BasicProfiler;->frameIndex:I

    :cond_1
    return-void
.end method

.method public setUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/app/BasicProfiler;->updateInterval:J

    return-void
.end method

.method public varargs spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateMesh()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/app/BasicProfiler;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/app/BasicProfiler;->frames:[J

    mul-int/lit8 v3, v1, 0x2

    aget-wide v4, v2, v3

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, v2, v3

    long-to-float v2, v6

    mul-float/2addr v2, v5

    int-to-float v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/app/BasicProfiler;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
    .locals 0

    return-void
.end method
