.class public Lcom/jme3/anim/MorphControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/anim/MorphControl$TargetLocator;
    }
.end annotation


# static fields
.field private static final MAX_MORPH_BUFFERS:I = 0xe

.field private static final MIN_WEIGHT:F = 0.005f

.field private static final TAG_APPROXIMATE:Ljava/lang/String; = "approximateTangents"

.field private static final TAG_TARGETS:Ljava/lang/String; = "targets"

.field private static final bufferTypes:[Lcom/jme3/scene/VertexBuffer$Type;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private approximateTangents:Z

.field private nullNumberOfBones:Lcom/jme3/material/MatParamOverride;

.field private targetLocator:Lcom/jme3/anim/MorphControl$TargetLocator;

.field private targets:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private tmpNormArray:[F

.field private tmpPosArray:[F

.field private tmpTanArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/anim/MorphControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/anim/MorphControl;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v0

    sput-object v0, Lcom/jme3/anim/MorphControl;->bufferTypes:[Lcom/jme3/scene/VertexBuffer$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Geometry;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Lcom/jme3/anim/MorphControl$TargetLocator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jme3/anim/MorphControl$TargetLocator;-><init>(Lcom/jme3/anim/MorphControl;Lcom/jme3/anim/MorphControl$1;)V

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->targetLocator:Lcom/jme3/anim/MorphControl$TargetLocator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    new-instance v0, Lcom/jme3/material/MatParamOverride;

    sget-object v2, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v3, "NumberOfBones"

    invoke-direct {v0, v2, v3, v1}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->nullNumberOfBones:Lcom/jme3/material/MatParamOverride;

    return-void
.end method

.method public static synthetic access$100(Lcom/jme3/anim/MorphControl;)Lcom/jme3/util/SafeArrayList;
    .locals 0

    iget-object p0, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/jme3/anim/MorphControl;)Lcom/jme3/material/MatParamOverride;
    .locals 0

    iget-object p0, p0, Lcom/jme3/anim/MorphControl;->nullNumberOfBones:Lcom/jme3/material/MatParamOverride;

    return-object p0
.end method

.method private activateBuffer(Lcom/jme3/scene/Mesh;IILjava/nio/FloatBuffer;)V
    .locals 1

    sget-object v0, Lcom/jme3/anim/MorphControl;->bufferTypes:[Lcom/jme3/scene/VertexBuffer$Type;

    add-int/2addr p3, p2

    aget-object p2, v0, p3

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    if-eq p3, p4, :cond_1

    :cond_0
    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_1
    return-void
.end method

.method private bindMorphTargetBuffer(Lcom/jme3/scene/Mesh;IILcom/jme3/scene/mesh/MorphTarget;)I
    .locals 2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->MorphTarget0:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p4, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/jme3/anim/MorphControl;->activateBuffer(Lcom/jme3/scene/Mesh;IILjava/nio/FloatBuffer;)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p4, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/jme3/anim/MorphControl;->activateBuffer(Lcom/jme3/scene/Mesh;IILjava/nio/FloatBuffer;)V

    add-int/lit8 p3, p3, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p4, p2}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/jme3/anim/MorphControl;->activateBuffer(Lcom/jme3/scene/Mesh;IILjava/nio/FloatBuffer;)V

    add-int/lit8 p3, p3, 0x1

    :cond_2
    return p3
.end method

.method private ensureCapacity([FI)[F
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-array p1, p2, [F

    return-object p1
.end method

.method private ensureTmpArraysCapacity(II)V
    .locals 1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpPosArray:[F

    invoke-direct {p0, v0, p1}, Lcom/jme3/anim/MorphControl;->ensureCapacity([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpPosArray:[F

    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpNormArray:[F

    invoke-direct {p0, v0, p1}, Lcom/jme3/anim/MorphControl;->ensureCapacity([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpNormArray:[F

    :cond_1
    iget-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/jme3/anim/MorphControl;->tmpTanArray:[F

    invoke-direct {p0, p2, p1}, Lcom/jme3/anim/MorphControl;->ensureCapacity([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/anim/MorphControl;->tmpTanArray:[F

    :cond_2
    return-void
.end method

.method private getMaxGPUTargets(Lcom/jme3/renderer/RenderManager;Lcom/jme3/scene/Geometry;Lcom/jme3/material/Material;I)I
    .locals 5

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getNbSimultaneousGPUMorph()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getNbSimultaneousGPUMorph()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/anim/MorphControl;->getRemainingBuffers(Lcom/jme3/scene/Mesh;Lcom/jme3/renderer/Renderer;)I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v1, p4

    const/16 v2, 0xe

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v0, p4

    const-string v1, "MorphWeights"

    invoke-virtual {p3, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v2, v0, [F

    sget-object v3, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    invoke-virtual {p3, v1, v3, v2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "NumberOfTargetsBuffers"

    invoke-virtual {p3, v1, p4}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_3

    if-lez v0, :cond_3

    const-string v1, "NumberOfMorphTargets"

    invoke-virtual {p3, v1, v0}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v1}, Lcom/jme3/renderer/RenderManager;->preloadScene(Lcom/jme3/scene/Spatial;)V
    :try_end_0
    .catch Lcom/jme3/renderer/RendererException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p4, 0x1

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/jme3/anim/MorphControl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "{0}: failed at {1}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/jme3/anim/MorphControl;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p4, v1}, [Ljava/lang/Object;

    move-result-object p4

    const-string v1, "{0}: {1}"

    invoke-virtual {p1, p3, v1, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p2, v0}, Lcom/jme3/scene/Geometry;->setNbSimultaneousGPUMorph(I)V

    return v0
.end method

.method private getRemainingBuffers(Lcom/jme3/scene/Mesh;Lcom/jme3/renderer/Renderer;)I
    .locals 8

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/scene/VertexBuffer;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->MorphTarget0:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-lt v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->MorphTarget9:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v6, v7, :cond_2

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/jme3/renderer/Renderer;->getLimits()Ljava/util/EnumMap;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Limits;->VertexAttributes:Lcom/jme3/renderer/Limits;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v3

    return p1
.end method

.method private getTargetNumBuffers(Lcom/jme3/scene/mesh/MorphTarget;)I
    .locals 2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private initCpuMorphTarget(Lcom/jme3/scene/Geometry;)Lcom/jme3/scene/mesh/MorphTarget;
    .locals 3

    new-instance v0, Lcom/jme3/scene/mesh/MorphTarget;

    invoke-direct {v0}, Lcom/jme3/scene/mesh/MorphTarget;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/scene/mesh/MorphTarget;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;Ljava/nio/FloatBuffer;)V

    :cond_0
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/scene/mesh/MorphTarget;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;Ljava/nio/FloatBuffer;)V

    :cond_1
    iget-boolean v1, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/scene/mesh/MorphTarget;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;Ljava/nio/FloatBuffer;)V

    :cond_2
    return-object v0
.end method

.method private mergeMorphTargets(IFLcom/jme3/scene/mesh/MorphTarget;Z)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpPosArray:[F

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p3, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p4}, Lcom/jme3/anim/MorphControl;->mergeTargetBuffer([FFLjava/nio/FloatBuffer;Z)V

    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpNormArray:[F

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p3, v1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p4}, Lcom/jme3/anim/MorphControl;->mergeTargetBuffer([FFLjava/nio/FloatBuffer;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/jme3/anim/MorphControl;->tmpTanArray:[F

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p3, v0}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/anim/MorphControl;->mergeTargetBuffer([FFLjava/nio/FloatBuffer;Z)V

    :cond_2
    return-void
.end method

.method private mergeTargetBuffer([FFLjava/nio/FloatBuffer;Z)V
    .locals 3

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    aput v1, p1, v0

    :cond_0
    aget v1, p1, v0

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeCpuBuffer(ILcom/jme3/scene/mesh/MorphTarget;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/jme3/anim/MorphControl;->tmpPosArray:[F

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/jme3/anim/MorphControl;->tmpNormArray:[F

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :cond_1
    iget-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/mesh/MorphTarget;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/jme3/anim/MorphControl;->tmpTanArray:[F

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :cond_2
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    new-instance p2, Lcom/jme3/anim/MorphControl$TargetLocator;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/jme3/anim/MorphControl$TargetLocator;-><init>(Lcom/jme3/anim/MorphControl;Lcom/jme3/anim/MorphControl$1;)V

    iput-object p2, p0, Lcom/jme3/anim/MorphControl;->targetLocator:Lcom/jme3/anim/MorphControl$TargetLocator;

    iget-object p2, p0, Lcom/jme3/anim/MorphControl;->nullNumberOfBones:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParamOverride;

    iput-object p1, p0, Lcom/jme3/anim/MorphControl;->nullNumberOfBones:Lcom/jme3/material/MatParamOverride;

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpPosArray:[F

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpNormArray:[F

    iput-object v0, p0, Lcom/jme3/anim/MorphControl;->tmpTanArray:[F

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/scene/Geometry;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->isDirtyMorph()Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v11, p1

    move-object/from16 v18, v1

    move v1, v3

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v7

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMorphState()[F

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v9

    aget-object v10, v9, v3

    invoke-direct {v0, v10}, Lcom/jme3/anim/MorphControl;->getTargetNumBuffers(Lcom/jme3/scene/mesh/MorphTarget;)I

    move-result v10

    move-object/from16 v11, p1

    invoke-direct {v0, v11, v5, v7, v10}, Lcom/jme3/anim/MorphControl;->getMaxGPUTargets(Lcom/jme3/renderer/RenderManager;Lcom/jme3/scene/Geometry;Lcom/jme3/material/Material;I)I

    move-result v12

    const-string v13, "MorphWeights"

    invoke-virtual {v7, v13}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    move v14, v3

    move v15, v14

    move/from16 v17, v15

    const/16 v16, 0x0

    :goto_1
    array-length v13, v9

    const v19, 0x3ba3d70a    # 0.005f

    if-ge v14, v13, :cond_3

    aget v13, v8, v14

    cmpg-float v19, v13, v19

    if-gez v19, :cond_1

    goto :goto_2

    :cond_1
    if-lt v15, v12, :cond_2

    add-float v16, v16, v13

    goto :goto_2

    :cond_2
    aget-object v13, v9, v14

    invoke-direct {v0, v6, v10, v3, v13}, Lcom/jme3/anim/MorphControl;->bindMorphTargetBuffer(Lcom/jme3/scene/Mesh;IILcom/jme3/scene/mesh/MorphTarget;)I

    move-result v3

    aget v13, v8, v14

    aput v13, v7, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v14

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    array-length v3, v7

    if-ge v15, v3, :cond_5

    :goto_3
    array-length v3, v7

    if-ge v15, v3, :cond_4

    const/4 v3, 0x0

    aput v3, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v18, v1

    :goto_4
    const/4 v1, 0x0

    goto :goto_8

    :cond_5
    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-lez v3, :cond_4

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getFallbackMorphTarget()Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-direct {v0, v5}, Lcom/jme3/anim/MorphControl;->initCpuMorphTarget(Lcom/jme3/scene/Geometry;)Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/jme3/scene/Geometry;->setFallbackMorphTarget(Lcom/jme3/scene/mesh/MorphTarget;)V

    :cond_6
    add-int/lit8 v15, v15, -0x1

    aget v12, v7, v15

    add-float v16, v16, v12

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    invoke-direct {v0, v12, v10}, Lcom/jme3/anim/MorphControl;->ensureTmpArraysCapacity(II)V

    move/from16 v12, v17

    :goto_5
    array-length v13, v9

    if-ge v12, v13, :cond_9

    aget v13, v8, v12

    cmpg-float v14, v13, v19

    if-gez v14, :cond_7

    move-object/from16 v18, v1

    goto :goto_7

    :cond_7
    div-float v13, v13, v16

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v14

    aget-object v14, v14, v12

    move-object/from16 v18, v1

    move/from16 v1, v17

    if-ne v12, v1, :cond_8

    const/16 v17, 0x1

    move/from16 v20, v17

    move/from16 v17, v1

    move/from16 v1, v20

    goto :goto_6

    :cond_8
    move/from16 v17, v1

    const/4 v1, 0x0

    :goto_6
    invoke-direct {v0, v10, v13, v14, v1}, Lcom/jme3/anim/MorphControl;->mergeMorphTargets(IFLcom/jme3/scene/mesh/MorphTarget;Z)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v18

    goto :goto_5

    :cond_9
    move-object/from16 v18, v1

    invoke-direct {v0, v10, v3}, Lcom/jme3/anim/MorphControl;->writeCpuBuffer(ILcom/jme3/scene/mesh/MorphTarget;)V

    mul-int v1, v15, v10

    invoke-direct {v0, v6, v10, v1, v3}, Lcom/jme3/anim/MorphControl;->bindMorphTargetBuffer(Lcom/jme3/scene/Mesh;IILcom/jme3/scene/mesh/MorphTarget;)I

    aput v16, v7, v15

    goto :goto_4

    :goto_8
    invoke-virtual {v5, v1}, Lcom/jme3/scene/Geometry;->setDirtyMorph(Z)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    move v3, v1

    move-object/from16 v1, v18

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public controlUpdate(F)V
    .locals 0

    return-void
.end method

.method public isApproximateTangents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/anim/MorphControl;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/MorphControl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/MorphControl;->jmeClone()Lcom/jme3/anim/MorphControl;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "approximateTangents"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    const-string v1, "targets"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setApproximateTangents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Geometry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/anim/MorphControl;->nullNumberOfBones:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Spatial;->removeMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/MorphControl;->targetLocator:Lcom/jme3/anim/MorphControl$TargetLocator;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V

    :cond_1
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/anim/MorphControl;->approximateTangents:Z

    const-string v1, "approximateTangents"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/anim/MorphControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "targets"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
